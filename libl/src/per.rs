pub mod sessions;

use aero_syscall::WaitPidFlags;
use alloc::sync::{Arc, Weak};

use hashbrown::HashMap;
use spin::{Once, RwLock};

use core::cell::UnsafeCell;
use core::ops::Range;
use core::sync::atomic::{AtomicBool, AtomicU8, AtomicUsize, Ordering};

use crate::fs::cache::{DirCacheImpl, DirCacheItem};
use crate::fs::path::PathBuf;
use crate::fs::{self, FileSystem};
use crate::mem::paging::*;

use crate::arch::task::ArchTask;
use crate::fs::file_table::FileTable;
use crate::syscall::ipc::MessageQueue;
use crate::syscall::ExecArgs;
use crate::utils::sync::{Mutex, WaitQueue, WaitQueueError, WaitQueueFlags};

use crate::userland::signals::Signals;

use intrusive_collections::{intrusive_adapter, LinkedList, LinkedListLink};

use super::scheduler::{self, ExitStatus};
use super::signals::{SignalResult, TriggerResult};
use super::terminal::TerminalDevice;
use super::vm::Vm;

#[derive(Debug, Copy, Clone, PartialEq, Eq, Hash, PartialOrd, Ord)]
#[repr(transparent)]
pub struct TaskId(usize);

impl TaskId {
    pub const fn new(pid: usize) -> Self {
        Self(pid)
    }

    /// Allocates a new task ID.
    fn allocate() -> Self {
        static NEXT_PID: AtomicUsize = AtomicUsize::new(1);

        Self::new(NEXT_PID.fetch_add(1, Ordering::AcqRel))
    }

    pub fn as_usize(&self) -> usize {
        self.0
    }
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum TaskState {
    Runnable,
    Zombie,
    AwaitingIo,
    AwaitingIoDeadline,
}

impl From<u8> for TaskState {
    fn from(x: u8) -> Self {
        match x {
            0 => TaskState::Runnable,
            1 => TaskState::Zombie,
            2 => TaskState::AwaitingIo,
            3 => TaskState::AwaitingIoDeadline,
            _ => panic!("invalid task state"),
        }
    }
}

struct Cwd {
    inode: DirCacheItem,
    filesystem: Arc<dyn FileSystem>,
}

impl Cwd {
    fn new() -> Self {
        let root = fs::root_dir().clone();
        let fs = root.inode().weak_filesystem().unwrap().upgrade().unwrap();

        Self {
            inode: root,
            filesystem: fs,
        }
    }

    fn fork(&self) -> Self {
        Self {
            inode: self.inode.clone(),
            filesystem: self.filesystem.clone(),
        }
    }
}

struct Zombies {
    list: Mutex<LinkedList<SchedTaskAdapter>>,
    block: WaitQueue,
}

impl Zombies {
    fn new() -> Self {
        Self {
            list: Mutex::new(Default::default()),
            block: WaitQueue::new(),
        }
    }

    fn add_zombie(&self, zombie: Arc<Task>) {
        assert!(!zombie.link.is_linked());
        assert_eq!(zombie.state(), TaskState::Zombie);

        let mut list = self.list.lock();

        log::debug!("making process a zombie: (pid={:?})", zombie.pid());

        list.push_back(zombie);
        self.block.notify_all();
    }

    fn waitpid(
        &self,
        pids: &[usize],
        status: &mut u32,
        flags: WaitPidFlags,
    ) -> Result<usize, WaitQueueError> {
        let mut captured = None;

        self.block.wait(WaitQueueFlags::empty(), &self.list, |l| {
            let mut cursor = l.front_mut();

            while let Some(t) = cursor.get() {
                for pid in pids {
                    if t.pid().as_usize() == *pid {
                        captured = Some((t.pid(), t.exit_status().clone()));
                        cursor.remove();

                        return true;
                    }
                }

                cursor.move_next();
            }

            if flags.contains(WaitPidFlags::WNOHANG) {
                return true;
            }

            false
        })?;

        if let Some((tid, exit_status)) = captured {
            // mlibc/abis/linux/wait.h (`W_EXITCODE`)
            match exit_status {
                ExitStatus::Normal(code) => {
                    *status = (code as u32) << 8;
                }

                ExitStatus::Signal(signal) => {
                    *status = signal as u32;
                }
            }

            Ok(tid.as_usize())
        } else {
            // If `WNOHANG` was specified in flags and there were no children in a waitable
            // state, then waipid() returns 0 immediately.
            *status = 0;
            Ok(0)
        }
    }
}

pub struct Task {
    sref: Weak<Task>,

    arch_task: UnsafeCell<ArchTask>,
    state: AtomicU8,

    pid: TaskId,
    tid: TaskId,

    sid: AtomicUsize,
    gid: AtomicUsize,

    parent: Mutex<Option<Arc<Task>>>,
    children: Mutex<intrusive_collections::LinkedList<TaskAdapter>>,

    zombies: Zombies,

    sleep_duration: AtomicUsize,
    signals: Signals,

    pub executable: Mutex<Option<DirCacheItem>>,
    pending_io: AtomicBool,

    pub(super) link: intrusive_collections::LinkedListLink,
    pub(super) clink: intrusive_collections::LinkedListLink,

    pub vm: Arc<Vm>,
    pub file_table: Arc<FileTable>,

    pub message_queue: MessageQueue,

    cwd: RwLock<Option<Cwd>>,

    pub(super) exit_status: Once<ExitStatus>,

    controlling_terminal: Mutex<Option<Arc<dyn TerminalDevice>>>,
    systrace: AtomicBool,

    // for debugging only. may remove in the future.
    pub mem_tags: Mutex<HashMap<Range<usize>, String>>,
}

impl Task {
    /// Creates a per-cpu idle task. An idle task is a special *kernel* process
    /// which is executed when there are no runnable taskes in the scheduler's
    /// queue.
    pub fn new_idle() -> Arc<Task> {
        let pid = TaskId::allocate();

        Arc::new_cyclic(|sref| Self {
            sref: sref.clone(),
            zombies: Zombies::new(),

            arch_task: UnsafeCell::new(ArchTask::new_idle()),
            file_table: Arc::new(FileTable::new()),

            message_queue: MessageQueue::new(),

            tid: pid,
            sid: AtomicUsize::new(pid.as_usize()),
            gid: AtomicUsize::new(pid.as_usize()),
            pid,

            executable: Mutex::new(None),

            vm: Arc::new(Vm::new()),
            state: AtomicU8::new(TaskState::Runnable as _),

            link: Default::default(),
            clink: Default::default(),

            pending_io: AtomicBool::new(false),

            sleep_duration: AtomicUsize::new(0),
            exit_status: Once::new(),

            children: Mutex::new(Default::default()),
            parent: Mutex::new(None),

            signals: Signals::new(),
            cwd: RwLock::new(None),

            systrace: AtomicBool::new(false),
            controlling_terminal: Mutex::new(None),

            mem_tags: Mutex::new(HashMap::new()),
        })
    }

    /// Allocates a new kernel task pointing at the provided entry point function.
    pub fn new_kernel(entry_point: fn(), enable_interrupts: bool) -> Arc<Self> {
        let pid = TaskId::allocate();

        Arc::new_cyclic(|sref| Self {
            sref: sref.clone(),
            zombies: Zombies::new(),

            arch_task: UnsafeCell::new(ArchTask::new_kernel(
                VirtAddr::new(entry_point as u64),
                enable_interrupts,
            )),
            file_table: Arc::new(FileTable::new()),
            message_queue: MessageQueue::new(),
            vm: Arc::new(Vm::new()),
            state: AtomicU8::new(TaskState::Runnable as _),

            tid: pid,
            gid: AtomicUsize::new(pid.as_usize()),
            sid: AtomicUsize::new(pid.as_usize()),
            pid,

            link: Default::default(),
            clink: Default::default(),

            sleep_duration: AtomicUsize::new(0),
            exit_status: Once::new(),

            executable: Mutex::new(None),
            pending_io: AtomicBool::new(false),

            children: Mutex::new(Default::default()),
            parent: Mutex::new(None),

            signals: Signals::new(),
            cwd: RwLock::new(None),

            systrace: AtomicBool::new(false),
            controlling_terminal: Mutex::new(None),

            mem_tags: Mutex::new(HashMap::new()),
        })
    }

    pub fn has_pending_io(&self) -> bool {
        self.pending_io.load(Ordering::SeqCst)
    }

    pub fn set_pending_io(&self, yes: bool) {
        self.pending_io.store(yes, Ordering::SeqCst)
    }

    pub fn signals(&self) -> &Signals {
        &self.signals
    }

    pub fn clone_process(&self, entry: usize, stack: usize) -> Arc<Task> {
        let arch_task = UnsafeCell::new(
            self.arch_task_mut()
                .clone_process(entry, stack)
                .expect("failed to fork arch task"),
        );

        let pid = TaskId::allocate();

        let this = Arc::new_cyclic(|sref| Self {
            sref: sref.clone(),
            zombies: Zombies::new(),

            arch_task,
            file_table: self.process_leader().file_table.clone(),
            message_queue: MessageQueue::new(),
            vm: self.process_leader().vm.clone(),
            state: AtomicU8::new(TaskState::Runnable as _),

            link: Default::default(),
            clink: Default::default(),

            sleep_duration: AtomicUsize::new(0),
            exit_status: Once::new(),

            tid: pid,
            sid: AtomicUsize::new(self.session_id()),
            gid: AtomicUsize::new(self.group_id()),
            pid,

            executable: Mutex::new(self.executable.lock().clone()),
            pending_io: AtomicBool::new(false),

            children: Mutex::new(Default::default()),
            // sus? fixme?
            parent: Mutex::new(None),

            cwd: RwLock::new(Some(self.cwd.read().as_ref().unwrap().fork())),
            signals: Signals::new(),

            systrace: AtomicBool::new(self.process_leader().systrace()),
            controlling_terminal: Mutex::new(
                self.process_leader()
                    .controlling_terminal
                    .lock_irq()
                    .clone(),
            ),

            mem_tags: Mutex::new(self.mem_tags.lock().clone()),
        });

        self.add_child(this.clone());
        this.signals().copy_from(self.signals());

        this
    }

    pub fn fork(&self) -> Arc<Task> {
        let vm = Arc::new(Vm::new());
        let address_space = vm.fork_from(self.vm());

        let arch_task = UnsafeCell::new(
            self.arch_task_mut()
                .fork(address_space)
                .expect("failed to fork arch task"),
        );

        let pid = TaskId::allocate();

        let this = Arc::new_cyclic(|sref| Self {
            sref: sref.clone(),
            zombies: Zombies::new(),

            arch_task,
            file_table: Arc::new(self.file_table.deep_clone()),
            message_queue: MessageQueue::new(),
            vm,
            state: AtomicU8::new(TaskState::Runnable as _),

            link: Default::default(),
            clink: Default::default(),

            sleep_duration: AtomicUsize::new(0),
            exit_status: Once::new(),

            tid: pid,
            sid: AtomicUsize::new(self.session_id()),
            gid: AtomicUsize::new(self.group_id()),
            pid,

            executable: Mutex::new(self.executable.lock().clone()),
            pending_io: AtomicBool::new(false),

            children: Mutex::new(Default::default()),
            parent: Mutex::new(None),

            cwd: RwLock::new(Some(self.cwd.read().as_ref().unwrap().fork())),
            signals: Signals::new(),

            systrace: AtomicBool::new(self.systrace()),
            controlling_terminal: Mutex::new(self.controlling_terminal.lock_irq().clone()),

            mem_tags: Mutex::new(self.mem_tags.lock().clone()),
        });

        self.add_child(this.clone());
        this.signals().copy_from(self.signals());
        this
    }

    fn this(&self) -> Arc<Self> {
        self.sref.upgrade().unwrap()
    }

    fn set_parent(&self, parent: Option<Arc<Task>>) {
        *self.parent.lock() = parent;
    }

    fn remove_child(&self, child: &Task) {
        let mut children = self.children.lock_irq();

        if child.clink.is_linked() {
            let mut cursor = unsafe { children.cursor_mut_from_ptr(child) };

            child.set_parent(None);
            cursor.remove();
        }
    }

    fn add_child(&self, child: Arc<Task>) {
        let mut children = self.children.lock_irq();

        child.set_parent(Some(self.this()));
        children.push_back(child);
    }

    pub fn exit_status(&self) -> &ExitStatus {
        self.exit_status.get().unwrap()
    }

    pub fn set_sleep_duration(&self, duration: usize) {
        self.sleep_duration.store(duration, Ordering::SeqCst);
    }

    pub fn load_sleep_duration(&self) -> usize {
        self.sleep_duration.load(Ordering::SeqCst)
    }

    pub fn waitpid(
        &self,
        pid: isize,
        status: &mut u32,
        flags: WaitPidFlags,
    ) -> Result<usize, WaitQueueError> {
        if pid == -1 {
            // wait for any child process if no specific process is requested.
            //
            // NOTE: we collect all of the zombie list's process IDs with the children
            // list since the child could have been removed from the children list and
            // become a zombie before the parent had a chance to wait for it.
            let mut pids = self
                .zombies
                .list
                .lock_irq()
                .iter()
                .map(|e| e.pid().as_usize())
                .collect::<alloc::vec::Vec<_>>();

            pids.extend(self.children.lock_irq().iter().map(|e| e.pid().as_usize()));
            self.zombies.waitpid(&pids, status, flags)
        } else {
            self.zombies.waitpid(&[pid as _], status, flags)
        }
    }
}
