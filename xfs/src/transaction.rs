use alloc::{
    boxed::Box,
    collections::{BTreeMap, VecDeque},
    vec::Vec,
};
use core::{
    cmp::min,
    mem,
    ops::{Deref, DerefMut},
};
use syscall::error::{
    Error, Result, EEXIST, EINVAL, EIO, EISDIR, ENOENT, ENOSPC, ENOTDIR, ENOTEMPTY, ERANGE,
};

use crate::{
    htree::{self, HTreeHash, HTreeNode, HTreePtr},
    AllocEntry, AllocList, Allocator, BlockAddr, BlockData, BlockLevel, BlockPtr, BlockTrait,
    DirEntry, DirList, Disk, FileSystem, Header, Node, NodeLevel, RecordRaw, TreeData, TreePtr,
    ALLOC_GC_THRESHOLD, ALLOC_LIST_ENTRIES, DIR_ENTRY_MAX_LENGTH, HEADER_RING,
};

pub struct Transaction<'a, D: Disk> {
    fs: &'a mut FileSystem<D>,
    //TODO: make private
    pub header: Header,
    //TODO: make private
    pub header_changed: bool,
    allocator: Allocator,
    allocator_log: VecDeque<AllocEntry>,
    deallocate: Vec<BlockAddr>,
    write_cache: BTreeMap<BlockAddr, Box<[u8]>>,
}

impl<'a, D: Disk> Transaction<'a, D> {
    pub(crate) fn new(fs: &'a mut FileSystem<D>) -> Self {
        let header = fs.header;
        let allocator = fs.allocator.clone();
        Self {
            fs,
            header,
            header_changed: false,
            allocator,
            allocator_log: VecDeque::new(),
            deallocate: Vec::new(),
            write_cache: BTreeMap::new(),
        }
    }

    pub fn commit(mut self, squash: bool) -> Result<()> {
        self.sync(squash)?;
        self.fs.header = self.header;
        self.fs.allocator = self.allocator;
        Ok(())
    }

    //
    // MARK: block operations
    //

    /// Allocate a new block of size `level`, returning its address.
    /// - returns `Err(ENOSPC)` if a block of this size could not be alloated.
    /// - unsafe because order must be done carefully and changes must be flushed to disk
    pub(crate) unsafe fn allocate(&mut self, level: BlockLevel) -> Result<BlockAddr> {
        match self.allocator.allocate(level) {
            Some(addr) => {
                self.allocator_log.push_back(AllocEntry::allocate(addr));
                Ok(addr)
            }
            None => Err(Error::new(ENOSPC)),
        }
    }

    /// Deallocate the given block.
    /// - unsafe because order must be done carefully and changes must be flushed to disk
    pub(crate) unsafe fn deallocate(&mut self, addr: BlockAddr) {
        //TODO: should we use some sort of not-null abstraction?
        assert!(!addr.is_null());

        // Remove from write_cache if it is there, since it no longer needs to be written
        //TODO: for larger blocks do we need to check for sub-blocks in here?
        self.write_cache.remove(&addr);

        // Search and remove the last matching entry in allocator_log
        let mut found = false;
        for i in (0..self.allocator_log.len()).rev() {
            let entry = self.allocator_log[i];
            if entry.index() == addr.index() && entry.count() == -addr.level().blocks() {
                found = true;
                self.allocator_log.remove(i);
                break;
            }
        }

        if found {
            // Deallocate immediately since it is an allocation that was not needed
            self.allocator.deallocate(addr);
        } else {
            // Deallocate later when syncing filesystem, to avoid re-use
            self.deallocate.push(addr);
        }
    }

    fn deallocate_block<T: BlockTrait>(&mut self, ptr: BlockPtr<T>) {
        if !ptr.is_null() {
            unsafe {
                self.deallocate(ptr.addr());
            }
        }
    }

    /// Drain `self.allocator_log` and `self.deallocate`,
    /// updating the [`AllocList`] with the resulting state.
    ///
    /// This method does not write anything to disk,
    /// all writes are cached.
    ///
    /// To keep the allocator log from growing excessively, it will
    /// periodically be fully rebuilt using the state of `self.allocator`.
    /// This rebuild can be forced by setting `force_squash` to `true`.
    fn sync_allocator(&mut self, force_squash: bool) -> Result<bool> {
        let mut prev_ptr = BlockPtr::default();
        let should_gc = self.header.generation() % ALLOC_GC_THRESHOLD == 0
            && self.header.generation() >= ALLOC_GC_THRESHOLD
            && self.allocator.free() > 0;
        if force_squash || should_gc {
            // Clear and rebuild alloc log
            self.allocator_log.clear();
            let levels = self.allocator.levels();
            for level in (0..levels.len()).rev() {
                let count = (1 << level) as i64;
                'indexs: for &index in levels[level].iter() {
                    for entry in self.allocator_log.iter_mut() {
                        if index + count as u64 == entry.index() {
                            // New entry is at start of existing entry
                            *entry = AllocEntry::new(index, count + entry.count());
                            continue 'indexs;
                        } else if entry.index() + entry.count() as u64 == index {
                            // New entry is at end of existing entry
                            *entry = AllocEntry::new(entry.index(), entry.count() + count);
                            continue 'indexs;
                        }
                    }

                    self.allocator_log.push_back(AllocEntry::new(index, count));
                }
            }

            // Prepare to deallocate old alloc blocks
            let mut alloc_ptr = self.header.alloc;
            while !alloc_ptr.is_null() {
                let alloc = self.read_block(alloc_ptr)?;
                self.deallocate.push(alloc.addr());
                alloc_ptr = alloc.data().prev;
            }
        } else {
            // Return if there are no log changes
            if self.allocator_log.is_empty() && self.deallocate.is_empty() {
                return Ok(false);
            }

            // Push old alloc block to front of allocator log
            //TODO: just skip this if it is already full?
            let alloc = self.read_block(self.header.alloc)?;
            for i in (0..alloc.data().entries.len()).rev() {
                let entry = alloc.data().entries[i];
                if !entry.is_null() {
                    self.allocator_log.push_front(entry);
                }
            }

            // Prepare to deallocate old alloc block
            self.deallocate.push(alloc.addr());

            // Link to previous alloc block
            prev_ptr = alloc.data().prev;
        }

        // Allocate required blocks, including CoW of current alloc tail
        let mut new_blocks = Vec::new();
        while new_blocks.len() * ALLOC_LIST_ENTRIES
            <= self.allocator_log.len() + self.deallocate.len()
        {
            new_blocks.push(unsafe { self.allocate(BlockLevel::default())? });
        }

        // De-allocate old blocks (after allocation to prevent re-use)
        //TODO: optimize allocator log in memory
        while let Some(addr) = self.deallocate.pop() {
            self.allocator.deallocate(addr);
            self.allocator_log.push_back(AllocEntry::deallocate(addr));
        }

        for new_block in new_blocks {
            let mut alloc = BlockData::<AllocList>::empty(new_block).unwrap();
            alloc.data_mut().prev = prev_ptr;
            for entry in alloc.data_mut().entries.iter_mut() {
                if let Some(log_entry) = self.allocator_log.pop_front() {
                    *entry = log_entry;
                } else {
                    break;
                }
            }
            prev_ptr = unsafe { self.write_block(alloc)? };
        }
// asdkfj ief jsd kjcv iegtjhfysar skcje c
        self.header.alloc = prev_ptr;
        self.header_changed = true;

        Ok(true)
    }

    /// Write all changes cached in this [`Transaction`] to disk.
    pub fn sync(&mut self, force_squash: bool) -> Result<bool> {
        // Make sure alloc is synced
        self.sync_allocator(force_squash)?;

        // Write all items in write cache
        for (addr, raw) in self.write_cache.iter_mut() {
            // sync_alloc must have changed alloc block pointer
            // if we have any blocks to write
            assert!(self.header_changed);

            self.fs.encrypt(raw, *addr);
            let count = unsafe { self.fs.disk.write_at(self.fs.block + addr.index(), raw)? };
            if count != raw.len() {
                // Read wrong number of bytes
                #[cfg(feature = "log")]
                log::error!("SYNC WRITE_CACHE: WRONG NUMBER OF BYTES");
                return Err(Error::new(EIO));
            }
        }
        self.write_cache.clear();

        // Do nothing if there are no changes to write.
        //
        // This only happens if `self.write_cache` was empty,
        // and the fs header wasn't changed by another operation.
        if !self.header_changed {
            return Ok(false);
        }

        // Update header to next generation
        let gen = self.header.update(self.fs.cipher_opt.as_ref());
        let gen_block = gen % HEADER_RING;

        // Write header
        let count = unsafe {
            self.fs
                .disk
                .write_at(self.fs.block + gen_block, &self.header)?
        };
        if count != mem::size_of_val(&self.header) {
            // Read wrong number of bytes
            #[cfg(feature = "log")]
            log::error!("SYNC: WRONG NUMBER OF BYTES");
            return Err(Error::new(EIO));
        }

        self.header_changed = false;
        Ok(true)
    }

    pub fn read_block<T: BlockTrait + DerefMut<Target = [u8]>>(
        &mut self,
        ptr: BlockPtr<T>,
    ) -> Result<BlockData<T>> {
        if ptr.is_null() {
            // Pointer is invalid (should this return None?)
            #[cfg(feature = "log")]
            log::error!("READ_BLOCK: POINTER IS NULL");
            return Err(Error::new(ENOENT));
        }

        let mut data = match T::empty(ptr.addr().level()) {
            Some(some) => some,
            None => {
                #[cfg(feature = "log")]
                log::error!("READ_BLOCK: INVALID BLOCK LEVEL FOR TYPE");
                return Err(Error::new(ENOENT));
            }
        };
        if let Some(raw) = self.write_cache.get(&ptr.addr()) {
            data.copy_from_slice(raw);
        } else {
            let count = unsafe {
                self.fs
                    .disk
                    .read_at(self.fs.block + ptr.addr().index(), &mut data)?
            };
            if count != data.len() {
                // Read wrong number of bytes
                #[cfg(feature = "log")]
                log::error!("READ_BLOCK: WRONG NUMBER OF BYTES");
                return Err(Error::new(EIO));
            }
            self.fs.decrypt(&mut data, ptr.addr());
        }

        let block = BlockData::new(ptr.addr(), data);
        let block_ptr = block.create_ptr();
        if block_ptr.hash() != ptr.hash() {
            // Incorrect hash
            #[cfg(feature = "log")]
            log::error!(
                "READ_BLOCK: INCORRECT HASH 0x{:X} != 0x{:X} for block 0x{:X}",
                block_ptr.hash(),
                ptr.hash(),
                ptr.addr().index()
            );
            return Err(Error::new(EIO));
        }
        Ok(block)
    }

    /// Read block data or, if pointer is null, return default block data
    ///
    /// # Safety
    /// Unsafe because it creates strange BlockData types that must be swapped before use
    unsafe fn read_block_or_empty<T: BlockTrait + DerefMut<Target = [u8]>>(
        &mut self,
        ptr: BlockPtr<T>,
    ) -> Result<BlockData<T>> {
        if ptr.is_null() {
            match T::empty(ptr.addr().level()) {
                Some(empty) => Ok(BlockData::new(BlockAddr::default(), empty)),
                None => {
                    #[cfg(feature = "log")]
                    log::error!("READ_BLOCK_OR_EMPTY: INVALID BLOCK LEVEL FOR TYPE");
                    Err(Error::new(ENOENT))
                }
            }
        } else {
            self.read_block(ptr)
        }
    }

    unsafe fn read_record<T: BlockTrait + DerefMut<Target = [u8]>>(
        &mut self,
        ptr: BlockPtr<T>,
        level: BlockLevel,
    ) -> Result<BlockData<T>> {
        let record = unsafe { self.read_block_or_empty(ptr)? };
        if record.addr().level() >= level {
            // Return record if it is larger than or equal to requested level
            return Ok(record);
        }

        // If a larger level was requested,
        // create a fake record with the requested level
        // and fill it with the data in the original record.
        let (_old_addr, old_raw) = unsafe { record.into_parts() };
        let mut raw = match T::empty(level) {
            Some(empty) => empty,
            None => {
                #[cfg(feature = "log")]
                log::error!("READ_RECORD: INVALID BLOCK LEVEL FOR TYPE");
                return Err(Error::new(ENOENT));
            }
        };
        let len = min(raw.len(), old_raw.len());
        raw[..len].copy_from_slice(&old_raw[..len]);
        Ok(BlockData::new(BlockAddr::null(level), raw))
    }

    /// Write block data to a new address, returning new address
    pub fn sync_block<T: BlockTrait + Deref<Target = [u8]>>(
        &mut self,
        mut block: BlockData<T>,
    ) -> Result<BlockPtr<T>> {
        // Swap block to new address
        let level = block.addr().level();
        let old_addr = block.swap_addr(unsafe { self.allocate(level)? });
        // Deallocate old address (will only take effect after sync_allocator, which helps to
        // prevent re-use before a new header is written
        if !old_addr.is_null() {
            unsafe {
                self.deallocate(old_addr);
            }
        }
        // Write new block
        unsafe { self.write_block(block) }
    }

    /// Write block data, returning a calculated block pointer
    /// 
    /// # Safety
    /// Unsafe to encourage CoW semantics
    pub(crate) unsafe fn write_block<T: BlockTrait + Deref<Target = [u8]>>(
        &mut self,
        block: BlockData<T>,
    ) -> Result<BlockPtr<T>> {
        if block.addr().is_null() {
            // Pointer is invalid
            #[cfg(feature = "log")]
            log::error!("WRITE_BLOCK: POINTER IS NULL");
            return Err(Error::new(ENOENT));
        }

        //TODO: do not convert to boxed slice if it already is one
        self.write_cache.insert(
            block.addr(),
            block.data().deref().to_vec().into_boxed_slice(),
        );

        Ok(block.create_ptr())
    }
}
