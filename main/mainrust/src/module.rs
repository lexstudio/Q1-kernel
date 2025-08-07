use core::mem::size_of;

use crate::{drivers, extern_sym, fs};

/// Inner helper function to make sure the function provided to the [`module_init`] macro
/// has a valid function signature. This function returns the passed module init function as
/// a const void pointer.

#[derive(Debug, Copy, Clone, PartialEq, PartialOrd, Eq, Ord)]
#[repr(C)]
pub enum ModuleType {
    Block = 0,
    Other = 1,
}

#[derive(Debug, Clone)]
#[repr(C)]
pub struct Module {
    pub init: *const (),
    pub ty: ModuleType,
}

unsafe impl Sync for Module {}

#[macro_export]
macro_rules! module_init {
    ($init_function:expr, $ty:path) => {
        use $crate::modules::ModuleType;

        #[used]
        #[link_section = ".kernel_modules.init"]
        static __MODULE_INIT: $crate::modules::Module = $crate::modules::Module {
            init: $init_function as *const (),
            ty: $ty,
        };
    };
}

/// This function is responsible for initializing all of the kernel modules. Since currently
/// we cannot read the ext2 root filesystem, we link all of the kernel modules into the kernel
/// itself (this is temporary and modules will be loaded from the filesystem in the future).
pub(crate) fn init() {
    let modules_start = extern_sym!(__kernel_modules_start).cast::<Module>();
    let modules_end = extern_sym!(__kernel_modules_end).cast::<Module>();

    let size = (modules_end.addr() - modules_start.addr()) / size_of::<Module>();
    let modules = unsafe { core::slice::from_raw_parts(modules_start, size) };

    unsafe {
        // TODO: refactor this out
        let mut modules = modules.to_vec();
        modules.sort_by(|e, a| e.ty.cmp(&a.ty));

        let mut launched_fs = false;

        for module in modules {
            log::debug!("{module:?} {launched_fs}");

            if module.ty != ModuleType::Block && !launched_fs {
                let mut address_space = crate::mem::AddressSpace::this();
                let mut offset_table = address_space.offset_page_table();

                #[cfg(target_arch = "x86_64")]
                drivers::pci::init(&mut offset_table);
                log::info!("loaded PCI driver");

                fs::block::launch().unwrap();
                launched_fs = true;
            }

            let init = core::mem::transmute::<*const (), fn() -> ()>(module.init);
            init();
        }
    }
}
