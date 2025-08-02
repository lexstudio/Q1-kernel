use core::{fmt, marker::PhantomData, mem, ops, slice};
use endian_num::Le;

use crate::BLOCK_SIZE;

const BLOCK_LIST_ENTRIES: usize = BLOCK_SIZE as usize / mem::size_of::<BlockPtr<BlockRaw>>();

/// An address of a data block.
///
/// This encodes a block's position _and_ [`BlockLevel`]:
/// the first four bits of this `u64` encode the block's level,
/// the rest encode its index.
#[derive(Clone, Copy, Debug, Default, Eq, Hash, Ord, PartialEq, PartialOrd)]
pub struct BlockAddr(u64);

impl BlockAddr {
    // Unsafe because this can create invalid blocks
    pub(crate) unsafe fn new(index: u64, level: BlockLevel) -> Self {
        // Level must only use the lowest four bits
        if level.0 > 0xF {
            panic!("block level used more than four bits");
        }

        // Index must not use the highest four bits
        let inner = index
            .checked_shl(4)
            .expect("block index used highest four bits")
            | (level.0 as u64);
        Self(inner)
    }

    pub fn null(level: BlockLevel) -> Self {
        unsafe { Self::new(0, level) }
    }

    pub fn index(&self) -> u64 {
        // The first four bits store the level
        self.0 >> 4
    }

    pub fn level(&self) -> BlockLevel {
        // The first four bits store the level
        BlockLevel((self.0 & 0xF) as usize)
    }

    pub fn is_null(&self) -> bool {
        self.index() == 0
    }
}

/// The size of a block.
///
/// Level 0 blocks are blocks of [`BLOCK_SIZE`] bytes.
/// A level 1 block consists of two consecutive level 0 blocks.
/// A level n block consists of two consecutive level n-1 blocks.
///
/// See [`crate::Allocator`] docs for more details.
#[derive(Clone, Copy, Debug, Default, Eq, Hash, Ord, PartialEq, PartialOrd)]
pub struct BlockLevel(pub(crate) usize);

impl BlockLevel {
    /// Returns the smallest block level that can contain
    /// the given number of bytes.
    pub(crate) fn for_bytes(bytes: u64) -> Self {
        if bytes == 0 {
            return BlockLevel(0);
        }
        let level = bytes
            .div_ceil(BLOCK_SIZE)
            .next_power_of_two()
            .trailing_zeros() as usize;
        BlockLevel(level)
    }

    /// The number of [`BLOCK_SIZE`] blocks (i.e, level 0 blocks)
    /// in a block of this level
    pub fn blocks(self) -> i64 {
        1 << self.0
    }

    /// The number of bytes in a block of this level
    pub fn bytes(self) -> u64 {
        BLOCK_SIZE << self.0
    }
}

pub unsafe trait BlockTrait {
    /// Create an empty block of this type.
    fn empty(level: BlockLevel) -> Option<Self>
    where
        Self: Sized;
}

/// A [`BlockAddr`] and the data it points to.
#[derive(Clone, Copy, Debug, Default)]
pub struct BlockData<T> {
    addr: BlockAddr,
    data: T,
}

impl<T> BlockData<T> {
    pub fn new(addr: BlockAddr, data: T) -> Self {
        Self { addr, data }
    }

    pub fn addr(&self) -> BlockAddr {
        self.addr
    }

    pub fn data(&self) -> &T {
        &self.data
    }

    pub fn data_mut(&mut self) -> &mut T {
        &mut self.data
    }

    pub(crate) unsafe fn into_parts(self) -> (BlockAddr, T) {
        (self.addr, self.data)
    }

    /// Set the address of this [`BlockData`] to `addr`, returning this
    /// block's old address. This method does not update block data.
    ///
    /// `addr` must point to a block with the same level as this block.
    #[must_use = "don't forget to de-allocate old block address"]
    pub fn swap_addr(&mut self, addr: BlockAddr) -> BlockAddr {
        // Address levels must match
        assert_eq!(self.addr.level(), addr.level());
        let old = self.addr;
        self.addr = addr;
        old
    }
}

impl<T: BlockTrait> BlockData<T> {
    pub fn empty(addr: BlockAddr) -> Option<Self> {
        let empty = T::empty(addr.level())?;
        Some(Self::new(addr, empty))
    }
}

impl<T: ops::Deref<Target = [u8]>> BlockData<T> {
    pub fn create_ptr(&self) -> BlockPtr<T> {
        BlockPtr {
            addr: self.addr.0.into(),
            hash: seahash::hash(self.data.deref()).into(),
            phantom: PhantomData,
        }
    }
}

#[repr(C, packed)]
pub struct BlockList<T> {
    pub ptrs: [BlockPtr<T>; BLOCK_LIST_ENTRIES],
}

unsafe impl<T> BlockTrait for BlockList<T> {
    fn empty(level: BlockLevel) -> Option<Self> {
        if level.0 == 0 {
            Some(Self {
                ptrs: [BlockPtr::default(); BLOCK_LIST_ENTRIES],
            })
        } else {
            None
        }
    }
}

impl<T> BlockList<T> {
    pub fn is_empty(&self) -> bool {
        self.ptrs.iter().all(|ptr| ptr.is_null())
    }
}

impl<T> ops::Deref for BlockList<T> {
    type Target = [u8];
    fn deref(&self) -> &[u8] {
        unsafe {
            slice::from_raw_parts(
                self as *const BlockList<T> as *const u8,
                mem::size_of::<BlockList<T>>(),
            ) as &[u8]
        }
    }
}

impl<T> ops::DerefMut for BlockList<T> {
    fn deref_mut(&mut self) -> &mut [u8] {
        unsafe {
            slice::from_raw_parts_mut(
                self as *mut BlockList<T> as *mut u8,
                mem::size_of::<BlockList<T>>(),
            ) as &mut [u8]
        }
    }
}

/// An address of a data block, along with a checksum of its data.
///
/// This encodes a block's position _and_ [`BlockLevel`].
/// the first four bits of `addr` encode the block's level,
/// the rest encode its index.
///
/// Also see [`BlockAddr`].
#[repr(C, packed)]
pub struct BlockPtr<T> {
    addr: Le<u64>,
    hash: Le<u64>,
    phantom: PhantomData<T>,
}

impl<T> BlockPtr<T> {
    pub fn null(level: BlockLevel) -> Self {
        Self {
            addr: BlockAddr::null(level).0.into(),
            hash: 0.into(),
            phantom: PhantomData,
        }
    }

    pub fn addr(&self) -> BlockAddr {
        BlockAddr(self.addr.to_ne())
    }

    pub fn hash(&self) -> u64 {
        self.hash.to_ne()
    }

    pub fn is_null(&self) -> bool {
        self.addr().is_null()
    }

    pub fn marker(level: u8) -> Self {
        assert!(level <= 0xF);
        Self {
            addr: (0xFFFF_FFFF_FFFF_FFF0 | (level as u64)).into(),
            hash: u64::MAX.into(),
            phantom: PhantomData,
        }
    }

    pub fn is_marker(&self) -> bool {
        (self.addr.to_ne() | 0xF) == u64::MAX && self.hash.to_ne() == u64::MAX
    }

    /// Cast BlockPtr to another type
    ///
    /// # Safety
    /// Unsafe because it can be used to transmute types
    pub unsafe fn cast<U>(self) -> BlockPtr<U> {
        BlockPtr {
            addr: self.addr,
            hash: self.hash,
            phantom: PhantomData,
        }
    }

    #[must_use = "the returned pointer should usually be deallocated"]
    pub fn clear(&mut self) -> BlockPtr<T> {
        let mut ptr = Self::default();
        mem::swap(self, &mut ptr);
        ptr
    }
}

impl<T> Clone for BlockPtr<T> {
    fn clone(&self) -> Self {
        *self
    }
}

impl<T> Copy for BlockPtr<T> {}

impl<T> Default for BlockPtr<T> {
    fn default() -> Self {
        Self {
            addr: 0.into(),
            hash: 0.into(),
            phantom: PhantomData,
        }
    }
}

impl<T> fmt::Debug for BlockPtr<T> {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let addr = self.addr();
        let hash = self.hash();
        f.debug_struct("BlockPtr")
            .field("addr", &addr)
            .field("hash", &hash)
            .finish()
    }
}

#[repr(C, packed)]
#[derive(Clone)]
pub struct BlockRaw([u8; BLOCK_SIZE as usize]);

unsafe impl BlockTrait for BlockRaw {
    fn empty(level: BlockLevel) -> Option<Self> {
        if level.0 == 0 {
            Some(Self([0; BLOCK_SIZE as usize]))
        } else {
            None
        }
    }
}

impl ops::Deref for BlockRaw {
    type Target = [u8];
    fn deref(&self) -> &[u8] {
        &self.0
    }
}

impl ops::DerefMut for BlockRaw {
    fn deref_mut(&mut self) -> &mut [u8] {
        &mut self.0
    }
}

#[test]
fn block_list_size_test() {
    assert_eq!(mem::size_of::<BlockList<BlockRaw>>(), BLOCK_SIZE as usize);
}

#[test]
fn block_raw_size_test() {
    assert_eq!(mem::size_of::<BlockRaw>(), BLOCK_SIZE as usize);
}

#[test]
fn block_ptr_marker_test() {
    let ptr = BlockPtr::<BlockRaw>::marker(0);
    assert_eq!(ptr.addr().level().0, 0);
    assert!(ptr.is_marker());

    let ptr = BlockPtr::<BlockRaw>::marker(2);
    assert_eq!(ptr.addr().level().0, 2);
    assert!(ptr.is_marker());
}
use alloc::vec::Vec;
use core::{fmt, mem, ops, slice};
use endian_num::Le;

use crate::{BlockAddr, BlockLevel, BlockPtr, BlockTrait, BLOCK_SIZE};

pub const ALLOC_LIST_ENTRIES: usize =
    (BLOCK_SIZE as usize - mem::size_of::<BlockPtr<AllocList>>()) / mem::size_of::<AllocEntry>();

/// The RedoxFS block allocator. This struct manages all "data" blocks in RedoxFS
/// (i.e, all blocks that aren't reserved or part of the header chain).
///
/// [`Allocator`] can allocate blocks of many "levels"---that is, it can
/// allocate multiple consecutive [`BLOCK_SIZE`] blocks in one operation.
///
/// This reduces the amount of memory that the [`Allocator`] uses:
/// Instead of storing the index of each free [`BLOCK_SIZE`] block,
/// the `levels` array can keep track of higher-level blocks, splitting
/// them when a smaller block is requested.
///
/// Higher-level blocks also allow us to more efficiently allocate memory
/// for large files.
#[derive(Clone, Default)]
pub struct Allocator {
    /// This array keeps track of all free blocks of each level,
    /// and is initialized using the AllocList chain when we open the filesystem.
    ///
    /// Every element of the outer array represents a block level:
    /// - item 0: free level 0 blocks (with size [`BLOCK_SIZE`])
    /// - item 1: free level 1 blocks (with size 2*[`BLOCK_SIZE`])
    /// - item 2: free level 2 blocks (with size 4*[`BLOCK_SIZE`])
    /// ...and so on.
    ///
    /// Each inner array contains a list of free block indices,
    levels: Vec<Vec<u64>>,
}

impl Allocator {
    pub fn levels(&self) -> &Vec<Vec<u64>> {
        &self.levels
    }

    /// Count the number of free [`BLOCK_SIZE`] available to this [`Allocator`].
    pub fn free(&self) -> u64 {
        let mut free = 0;
        for level in 0..self.levels.len() {
            let level_size = 1 << level;
            free += self.levels[level].len() as u64 * level_size;
        }
        free
    }

    /// Find a free block of the given level, mark it as "used", and return its address.
    /// Returns [`None`] if there are no free blocks with this level.
    pub fn allocate(&mut self, block_level: BlockLevel) -> Option<BlockAddr> {
        // First, find the lowest level with a free block
        let mut index_opt = None;
        let mut level = block_level.0;
        // Start searching at the level we want. Smaller levels are too small!
        while level < self.levels.len() {
            if !self.levels[level].is_empty() {
                index_opt = self.levels[level].pop();
                break;
            }
            level += 1;
        }

        // If a free block was found, split it until we find a usable block of the right level.
        // The left side of the split block is kept free, and the right side is allocated.
        let index = index_opt?;
        while level > block_level.0 {
            level -= 1;
            let level_size = 1 << level;
            self.levels[level].push(index + level_size);
        }

        Some(unsafe { BlockAddr::new(index, block_level) })
    }

    /// Try to allocate the exact block specified, making all necessary splits.
    /// Returns [`None`] if this some (or all) of this block is already allocated.
    ///
    /// Note that [`BlockAddr`] encodes the blocks location _and_ level.
    pub fn allocate_exact(&mut self, exact_addr: BlockAddr) -> Option<BlockAddr> {
        // This function only supports level 0 right now
        assert_eq!(exact_addr.level().0, 0);
        let exact_index = exact_addr.index();

        let mut index_opt = None;

        // Go from the highest to the lowest level
        for level in (0..self.levels.len()).rev() {
            let level_size = 1 << level;

            // Split higher block if found
            if let Some(index) = index_opt.take() {
                self.levels[level].push(index);
                self.levels[level].push(index + level_size);
            }

            // Look for matching block and remove it
            for i in 0..self.levels[level].len() {
                let start = self.levels[level][i];
                if start <= exact_index {
                    let end = start + level_size;
                    if end > exact_index {
                        self.levels[level].remove(i);
                        index_opt = Some(start);
                        break;
                    }
                }
            }
        }

        Some(unsafe { BlockAddr::new(index_opt?, exact_addr.level()) })
    }

    /// Deallocate the given block, marking it "free" so that it can be re-used later.
    pub fn deallocate(&mut self, addr: BlockAddr) {
        // When we deallocate, we check if block we're deallocating has a free sibling.
        // If it does, we join the two to create one free block in the next (higher) level.
        //
        // We repeat this until we no longer have a sibling to join.
        let mut index = addr.index();
        let mut level = addr.level().0;
        loop {
            while level >= self.levels.len() {
                self.levels.push(Vec::new());
            }

            let level_size = 1 << level;
            let next_size = level_size << 1;

            let mut found = false;
            let mut i = 0;
            // look at all free blocks in the current level...
            while i < self.levels[level].len() {
                // index of the second block we're looking at
                let level_index = self.levels[level][i];

                // - the block we just freed aligns with the next largest block, and
                // - the second block we're looking at is the right sibling of this block
                if index % next_size == 0 && index + level_size == level_index {
                    // "alloc" the next highest block, repeat deallocation process.
                    self.levels[level].remove(i);
                    found = true;
                    break;
                // - the index of this block doesn't align with the next largest block, and
                // - the block we're looking at is the left neighbor of this block
                } else if level_index % next_size == 0 && level_index + level_size == index {
                    // "alloc" the next highest block, repeat deallocation process.
                    self.levels[level].remove(i);
                    index = level_index; // index moves to left block
                    found = true;
                    break;
                }
                i += 1;
            }

            // We couldn't find a higher block,
            // deallocate this one and finish
            if !found {
                self.levels[level].push(index);
                return;
            }

            // repeat deallocation process on the
            // higher-level block we just created.
            level += 1;
        }
    }
}

#[repr(C, packed)]
#[derive(Clone, Copy, Default, Debug)]
pub struct AllocEntry {
    /// The index of the first block this [`AllocEntry`] refers to
    index: Le<u64>,

    /// The number of blocks after (and including) `index` that are are free or used.
    /// If negative, they are used; if positive, they are free.
    count: Le<i64>,
}

impl AllocEntry {
    pub fn new(index: u64, count: i64) -> Self {
        Self {
            index: index.into(),
            count: count.into(),
        }
    }

    pub fn allocate(addr: BlockAddr) -> Self {
        Self::new(addr.index(), -addr.level().blocks())
    }

    pub fn deallocate(addr: BlockAddr) -> Self {
        Self::new(addr.index(), addr.level().blocks())
    }

    pub fn index(&self) -> u64 {
        self.index.to_ne()
    }

    pub fn count(&self) -> i64 {
        self.count.to_ne()
    }

    pub fn is_null(&self) -> bool {
        self.count() == 0
    }
}

/// A node in the allocation chain.
#[repr(C, packed)]
pub struct AllocList {
    /// A pointer to the previous AllocList.
    /// If this is the null pointer, this is the first element of the chain.
    pub prev: BlockPtr<AllocList>,

    /// Allocation entries.
    pub entries: [AllocEntry; ALLOC_LIST_ENTRIES],
}

unsafe impl BlockTrait for AllocList {
    fn empty(level: BlockLevel) -> Option<Self> {
        if level.0 == 0 {
            Some(Self {
                prev: BlockPtr::default(),
                entries: [AllocEntry::default(); ALLOC_LIST_ENTRIES],
            })
        } else {
            None
        }
    }
}

impl fmt::Debug for AllocList {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let prev = self.prev;
        let entries: Vec<&AllocEntry> = self
            .entries
            .iter()
            .filter(|entry| entry.count() > 0)
            .collect();
        f.debug_struct("AllocList")
            .field("prev", &prev)
            .field("entries", &entries)
            .finish()
    }
}

impl ops::Deref for AllocList {
    type Target = [u8];
    fn deref(&self) -> &[u8] {
        unsafe {
            slice::from_raw_parts(
                self as *const AllocList as *const u8,
                mem::size_of::<AllocList>(),
            ) as &[u8]
        }
    }
}

impl ops::DerefMut for AllocList {
    fn deref_mut(&mut self) -> &mut [u8] {
        unsafe {
            slice::from_raw_parts_mut(
                self as *mut AllocList as *mut u8,
                mem::size_of::<AllocList>(),
            ) as &mut [u8]
        }
    }
}

#[test]
fn alloc_node_size_test() {
    assert_eq!(mem::size_of::<AllocList>(), crate::BLOCK_SIZE as usize);
}

#[test]
fn allocator_test() {
    let mut alloc = Allocator::default();

    assert_eq!(alloc.allocate(BlockLevel::default()), None);

    alloc.deallocate(unsafe { BlockAddr::new(1, BlockLevel::default()) });
    assert_eq!(
        alloc.allocate(BlockLevel::default()),
        Some(unsafe { BlockAddr::new(1, BlockLevel::default()) })
    );
    assert_eq!(alloc.allocate(BlockLevel::default()), None);

    for addr in 1023..2048 {
        alloc.deallocate(unsafe { BlockAddr::new(addr, BlockLevel::default()) });
    }

    assert_eq!(alloc.levels.len(), 11);
    for level in 0..alloc.levels.len() {
        if level == 0 {
            assert_eq!(alloc.levels[level], [1023]);
        } else if level == 10 {
            assert_eq!(alloc.levels[level], [1024]);
        } else {
            assert_eq!(alloc.levels[level], [0u64; 0]);
        }
    }

    for addr in 1023..2048 {
        assert_eq!(
            alloc.allocate(BlockLevel::default()),
            Some(unsafe { BlockAddr::new(addr, BlockLevel::default()) })
        );
    }
    assert_eq!(alloc.allocate(BlockLevel::default()), None);

    assert_eq!(alloc.levels.len(), 11);
    for level in 0..alloc.levels.len() {
        assert_eq!(alloc.levels[level], [0u64; 0]);
    }
}
