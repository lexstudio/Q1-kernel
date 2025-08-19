//! POSIX C library, implemented in Rust.
//!
//! This crate exists to provide a standard libc as its public API. This is
//! largely provided by automatically generated bindings to the functions and
//! data structures in the [`header`] module.
//!

#![no_std]
#![allow(warnings)]
#![allow(non_camel_case_types)]
#![allow(non_upper_case_globals)]
#![allow(unused_variables)]
#![feature(alloc_error_handler)]
#![feature(allocator_api)]
#![feature(array_chunks)]
#![feature(asm_const)]
#![feature(c_variadic)]
#![feature(core_intrinsics)]
#![feature(int_roundings)]
#![feature(maybe_uninit_slice)]
#![feature(lang_items)]
#![feature(let_chains)]
#![feature(linkage)]
#![feature(naked_functions)]
#![feature(pointer_is_aligned_to)]
#![feature(ptr_as_uninit)]
#![feature(slice_as_chunks)]
#![feature(stmt_expr_attributes)]
#![feature(str_internals)]
#![feature(strict_provenance)]
#![feature(sync_unsafe_cell)]
#![feature(thread_local)]
#![feature(vec_into_raw_parts)]
#![feature(negative_impls)]
#![allow(clippy::cast_lossless)]
#![allow(clippy::cast_ptr_alignment)]
#![allow(clippy::derive_hash_xor_eq)]
#![allow(clippy::eval_order_dependence)]
#![allow(clippy::mut_from_ref)]
// TODO: fix these
#![warn(unaligned_references)]

#[macro_use]
extern crate alloc;
extern crate cbitset;
extern crate memchr;
extern crate posix_regex;
extern crate rand;



#[macro_use]
mod macros;
pub mod c_str;
pub mod c_vec;
pub mod cxa;
pub mod db;
pub mod error;
pub mod fs;
pub mod header;
pub mod io;
pub mod iter;
pub mod ld_so;
pub mod platform;
pub mod pthread;
pub mod start;
pub mod sync;
pub mod std
use crate::platform::{Allocator, Pal, Sys, NEWALLOCATOR};

#[global_allocator]
static ALLOCATOR: Allocator = NEWALLOCATOR;

#[no_mangle]
pub extern "C" fn relibc_panic(pi: &::core::panic::PanicInfo) -> ! {
    use core::fmt::Write;

    let mut w = platform::FileWriter::new(2);
    let _ = w.write_fmt(format_args!("RELIBC PANIC: {}\n", pi));

    Sys::exit(1);
}

#[cfg(not(test))]
#[panic_handler]
#[linkage = "weak"]
#[no_mangle]
pub fn rust_begin_unwind(pi: &::core::panic::PanicInfo) -> ! {
    relibc_panic(pi)
}

#[cfg(not(test))]
#[lang = "eh_personality"]
#[no_mangle]
#[linkage = "weak"]
pub extern "C" fn rust_eh_personality() {}

#[cfg(not(test))]
#[alloc_error_handler]
#[linkage = "weak"]
#[no_mangle]
pub extern "C" fn rust_oom(layout: ::core::alloc::Layout) -> ! {
    use core::fmt::Write;

    let mut w = platform::FileWriter::new(2);
    let _ = w.write_fmt(format_args!(
        "RELIBC OOM: {} bytes aligned to {} bytes\n",
        layout.size(),
        layout.align()
    ));

    Sys::exit(1);
}

#[cfg(not(test))]
#[allow(non_snake_case)]
#[linkage = "weak"]
#[no_mangle]
pub extern "C" fn _Unwind_Resume() -> ! {
    use core::fmt::Write;

    let mut w = platform::FileWriter::new(2);
    let _ = w.write_str("_Unwind_Resume\n");

    Sys::exit(1);
}
use crate::userland::scheduler::get_scheduler;
use crate::userland::task::TaskId;

use crate::utils::sync::{Mutex, WaitQueue, WaitQueueFlags};

use _syscall::SyscallError;
use alloc::collections::VecDeque;
use alloc::vec::Vec;
use spin::Once;

// TODO: Make this reassignable in case we want to handle the root node's death, so
// someone else can take over (e.g. system server but after it's restarted)
static IPC_ROOT_NODE: Once<usize> = Once::new();

struct Message {
    from: usize,
    data: Vec<u8>,
}

pub struct MessageQueue {
    queue: Mutex<VecDeque<Message>>,
    blockqueue: WaitQueue,
}

impl MessageQueue {
    pub fn new() -> MessageQueue {
        MessageQueue {
            queue: Mutex::new(VecDeque::new()),
            blockqueue: WaitQueue::new(),
        }
    }
}

fn handle_receive(
    pid_ptr: &mut usize,
    output: &mut [u8],
    msg: Message,
) -> Result<usize, SyscallError> {
    output[0..msg.data.len()].copy_from_slice(&msg.data);

    *pid_ptr = msg.from;

    Ok(msg.data.len())
}

#[syscall]
pub fn send(pid: usize, payload: &[u8]) -> Result<usize, SyscallError> {
    let target = get_scheduler()
        .find_task(TaskId::new(pid))
        .ok_or(SyscallError::EINVAL)?;

    let message_queue = &target.message_queue;
    let mut queue = message_queue.queue.lock();

    // Push the message to the message queue of the provided task.
    queue.push_back(Message {
        from: get_scheduler().current_task().pid().as_usize(),
        data: payload.to_vec(),
    });

    // Notify the task that it has a new message if its awaiting for one!
    message_queue.blockqueue.notify_all();

    Ok(0)
}

#[syscall]
pub fn recv(pid_ptr: &mut usize, output: &mut [u8], block: usize) -> Result<usize, SyscallError> {
    let current = get_scheduler().current_task();

    if block == 0 {
        // nonblocking read
        let mut msgqueue = current.message_queue.queue.lock();
        let item = msgqueue
            .pop_front()
            .expect("empty message queues should always be deleted!");

        if item.data.len() > output.len() {
            msgqueue.push_front(item);
            return Err(SyscallError::E2BIG);
        }

        return handle_receive(pid_ptr, output, item);
    }

    let mq = &current.message_queue;
    let mut our_queue = mq
        .blockqueue
        .wait(WaitQueueFlags::empty(), &mq.queue, |msg| {
            msg.front().is_some()
        })
        .unwrap();

    let msg = our_queue
        .pop_front()
        .expect("ipc_receive: someone else stole our message!");

    if msg.data.len() > output.len() {
        our_queue.push_front(msg);
        Err(SyscallError::E2BIG)
    } else {
        handle_receive(pid_ptr, output, msg)
    }
}

#[syscall]
pub fn discover_root() -> Result<usize, SyscallError> {
    match IPC_ROOT_NODE.get() {
        Some(pid) => Ok(*pid),
        None => Err(SyscallError::EINVAL),
    }
}

#[syscall]
pub fn become_root() -> Result<usize, SyscallError> {
    if IPC_ROOT_NODE.is_completed() {
        Err(SyscallError::EINVAL)
    } else {
        IPC_ROOT_NODE.call_once(|| get_scheduler().current_task().pid().as_usize());

        Ok(0)
    }
}
