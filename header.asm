; header.asm  — must be linked first
MB_MAGIC     equ 0x1BADB002     ; Multiboot v1
MB_FLAGS     equ 0x00010003     ; align | meminfo | video off
MB_CHECKSUM  equ -(MB_MAGIC + MB_FLAGS)

section .multiboot
align 4
    dd MB_MAGIC
    dd MB_FLAGS
    dd MB_CHECKSUM

