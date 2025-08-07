use core::sync::atomic::{AtomicUsize, Ordering};

use aero_syscall::{OpenFlags, SysDirEntry};

use alloc::sync::Arc;
use alloc::vec::Vec;

use spin::RwLock;

use crate::fs::cache::DirCacheImpl;

use super::cache::{DirCacheItem, INodeCacheItem};
use super::inode::FileType;
use super::FileSystemError;

#[derive(Debug, Copy, Clone)]
pub enum DuplicateHint {
    Exact(usize),
    Any,
    GreatorOrEqual(usize),
}

pub struct FileHandle {
    pub fd: usize,
    pub inode: DirCacheItem,
    // We need to store the `offset` behind an Arc since when the file handle
    // is duplicated, the `offset` needs to be in sync with the parent.
    pub offset: Arc<AtomicUsize>,
    flags: RwLock<OpenFlags>,
}

impl FileHandle {
    /// Creates a new file handle.
    pub fn new(fd: usize, inode: DirCacheItem, flags: OpenFlags) -> Self {
        Self {
            fd,
            inode,
            offset: Arc::new(AtomicUsize::new(0)),
            flags: RwLock::new(flags),
        }
    }

    #[inline]
    pub fn is_writable(&self) -> bool {
        self.flags()
            .intersects(OpenFlags::O_WRONLY | OpenFlags::O_RDWR)
    }

    #[inline]
    pub fn is_readable(&self) -> bool {
        // FIXME: switch to Linux ABI for fcntl. mlibc defines O_RDONLY as 0 so, we have to infer
        // the read-only flag.
        let flags = self.flags();
        flags.contains(OpenFlags::O_RDWR) || !flags.contains(OpenFlags::O_WRONLY)
    }

    pub fn flags(&self) -> OpenFlags {
        *self.flags.read()
    }

    pub fn set_flags(&self, flags: OpenFlags) {
        *self.flags.write() = flags;
    }

    pub fn read(&self, buffer: &mut [u8]) -> super::Result<usize> {
        let offset = self.offset.load(Ordering::SeqCst);
        let new_offset = self.inode.inode().read_at(self.flags(), offset, buffer)?;

        self.offset.fetch_add(new_offset, Ordering::SeqCst);
        Ok(new_offset)
    }

    pub fn write(&self, buffer: &[u8]) -> super::Result<usize> {
        let offset = self.offset.load(Ordering::SeqCst);
        let new_offset = self.inode.inode().write_at(offset, buffer)?;

        self.offset.fetch_add(new_offset, Ordering::SeqCst);
        Ok(new_offset)
    }

    pub fn seek(&self, off: isize, whence: aero_syscall::SeekWhence) -> super::Result<usize> {
        let meta = self
            .inode
            .inode()
            .metadata()
            .ok()
            .ok_or(FileSystemError::IsPipe)?;

        if meta.file_type() == FileType::File || meta.file_type() == FileType::Device {
            match whence {
                aero_syscall::SeekWhence::SeekSet => {
                    self.offset.store(off as usize, Ordering::SeqCst);
                }

                aero_syscall::SeekWhence::SeekCur => {
                    let mut offset = self.offset.load(Ordering::SeqCst) as isize;
                    offset += off;

                    self.offset.store(offset as usize, Ordering::SeqCst);
                }

                aero_syscall::SeekWhence::SeekEnd => {
                    let mut offset = meta.size as isize;
                    offset += off;

                    self.offset.store(offset as usize, Ordering::SeqCst);
                }
            }

            Ok(self.offset.load(Ordering::SeqCst))
        } else {
            Err(FileSystemError::IsPipe)
        }
    }

    pub fn dirnode(&self) -> DirCacheItem {
        self.inode.clone()
    }

    pub fn inode(&self) -> INodeCacheItem {
        self.inode.inode()
    }

    pub fn duplicate(&self, dupfd: usize, flags: OpenFlags) -> super::Result<Arc<FileHandle>> {
        let flags = *self.flags.read() | flags;
        let new = Arc::new(Self {
            fd: dupfd,
            inode: self.inode.clone(),
            offset: self.offset.clone(),
            flags: RwLock::new(flags),
        });

        new.inode.inode().open(new.clone())?;

        Ok(new)
    }

    pub fn get_dents(&self, buffer: &mut [u8]) -> super::Result<usize> {
        let inode = self
            .inode
            .inode()
            .dirent(self.inode.clone(), self.offset.load(Ordering::SeqCst))?;

        // We are allowed to chop off the name of the entry though not the header
        // itself.
        if buffer.len() < core::mem::size_of::<SysDirEntry>() {
            return Err(FileSystemError::TooSmall);
        }

        if let Some(entry) = inode {
            let mut reclen = core::mem::size_of::<SysDirEntry>() + entry.name().len();

            if reclen > buffer.len() {
                reclen = buffer.len();
            }

            let name_size = reclen - core::mem::size_of::<SysDirEntry>();

            let file_type = entry.inode().metadata()?.file_type();
            let file_type: aero_syscall::SysFileType = file_type.into();

            let sysd = unsafe { &mut *(buffer.as_mut_ptr().cast::<SysDirEntry>()) };

            sysd.inode = entry.inode().metadata()?.id();
            sysd.offset = reclen;
            sysd.reclen = reclen;
            sysd.file_type = file_type as usize;

            unsafe {
                // Copy over the name of the inode.
                sysd.name
                    .as_mut_ptr()
                    .copy_from(entry.name().as_ptr(), name_size);
            }

            self.offset.fetch_add(1, Ordering::SeqCst);
            Ok(reclen)
        } else {
            // nothing to read
            Ok(0)
        }
    }
}

#[repr(transparent)]
pub struct FileTable(pub RwLock<Vec<Option<Arc<FileHandle>>>>);

impl FileTable {
    pub fn new() -> Self {
        let mut table = Vec::new();
        table.resize(256, None);

        Self(RwLock::new(table))
    }

    pub fn get_handle(&self, fd: usize) -> Option<Arc<FileHandle>> {
        let files = self.0.read();

        if let Some(Some(handle)) = &files.get(fd) {
            return Some(handle.clone());
        }

        None
    }

    pub fn log(&self) {
        let files = self.0.read();

        for handle in files.iter().flatten() {
            log::debug!(
                "file handle: (fd={}, path=`{}`)",
                handle.fd,
                handle.inode.absolute_path()
            )
        }
    }

    pub fn close_on_exec(&self) {
        let mut files = self.0.write();

        for file in files.iter_mut() {
            if let Some(handle) = file {
                let flags = *handle.flags.read();

                if flags.contains(OpenFlags::O_CLOEXEC) {
                    handle.inode().close(flags);
                    *file = None;
                }
            }
        }
    }

}
