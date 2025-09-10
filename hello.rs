#![no_std]
#![no_main]

use core::arch::asm;

const MSG: &[u8] = b"hello world\n";

#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
    unsafe { sys_exit(1) }
}

#[no_mangle]
pub extern "C" fn _start() -> ! {
    unsafe {
        let _ = sys_write(1, MSG.as_ptr(), MSG.len());
        sys_exit(0)
    }
}

// ---------- x86_64 ----------
#[cfg(target_arch = "x86_64")]
unsafe fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    let ret: isize;
    asm!(
        "syscall",
        inlateout("rax") 1usize => ret,   // __NR_write
        in("rdi") fd,
        in("rsi") buf,
        in("rdx") len,
        out("rcx") _, out("r11") _,       // clobbered by syscall
        options(nostack),
    );
    ret
}

#[cfg(target_arch = "x86_64")]
unsafe fn sys_exit(code: i32) -> ! {
    asm!(
        "syscall",
        in("rax") 60usize,                // __NR_exit
        in("rdi") code as usize,
        options(noreturn),
    )
}

// ---------- aarch64 ----------
#[cfg(target_arch = "aarch64")]
unsafe fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    let ret: isize;
    asm!(
        "svc 0",
        in("x8") 64usize,                 // __NR_write
        in("x0") fd,
        in("x1") buf,
        in("x2") len,
        lateout("x0") ret,
        options(nostack),
    );
    ret
}

#[cfg(target_arch = "aarch64")]
unsafe fn sys_exit(code: i32) -> ! {
    asm!(
        "svc 0",
        in("x8") 93usize,                 // __NR_exit
        in("x0") code as usize,
        options(noreturn),
    )
}

