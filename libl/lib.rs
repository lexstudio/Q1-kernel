#![no_std]
#![feature(linkage)]

use core::arch::global_asm;

#[cfg(target_arch = "x86")]
global_asm!(
    r#"
    .section .init
    .global _init
    _init:
        push ebp
        mov ebp, esp
        // Created a new stack frame and updated the stack pointer
        // Body will be filled in by gcc and ended by crtn.o

    .section .fini
    .global _fini
    _fini:
        push ebp
        mov ebp, esp
        // Created a new stack frame and updated the stack pointer
        // Body will be filled in by gcc and ended by crtn.o
"#
);

// https://wiki.osdev.org/Creating_a_C_Library#crtbegin.o.2C_crtend.o.2C_crti.o.2C_and_crtn.o
#[cfg(target_arch = "x86_64")]
global_asm!(
    r#"
    .section .init
    .global _init
    _init:
        push rbp
        mov rbp, rsp
        // Created a new stack frame and updated the stack pointer
        // Body will be filled in by gcc and ended by crtn.o

    .section .fini
    .global _fini
    _fini:
        push rbp
        mov rbp, rsp
        // Created a new stack frame and updated the stack pointer
        // Body will be filled in by gcc and ended by crtn.o
"#
);

// https://git.musl-libc.org/cgit/musl/tree/crt/aarch64/crti.s
#[cfg(target_arch = "aarch64")]
global_asm!(
    r#"
    .section .init
    .global _init
    .type _init,%function
    _init:
        stp x29,x30,[sp,-16]!
        mov x29,sp
        // stp: "stores two doublewords from the first and second argument to memory addressed by addr"
        // Body will be filled in by gcc and ended by crtn.o

    .section .fini
    .global _fini
    .type _fini,%function
    _fini:
        stp x29,x30,[sp,-16]!
        mov x29,sp
        // stp: "stores two doublewords from the first and second argument to memory addressed by addr"
        // Body will be filled in by gcc and ended by crtn.o
"#
);

// risc-v has no _init / _fini functions; it exclusively uses init/fini arrays

#[linkage = "weak"]
#[no_mangle]
extern "C" fn relibc_panic(_pi: &::core::panic::PanicInfo) -> ! {
    loop {}
}

#[panic_handler]
#[linkage = "weak"]
#[no_mangle]
pub unsafe fn rust_begin_unwind(pi: &::core::panic::PanicInfo) -> ! {
    relibc_panic(pi)
}
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

#[cfg(target_os = "linux")]
#[macro_use]
extern crate sc;

#[cfg(target_os = "")]
extern crate syscall;

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
