; boot.asm  —  512-byte boot sector that prints “Hello world”
bits 16                 ; we start in 16-bit real mode
org  0x7C00             ; BIOS loads the sector here

mov  si, msg            ; point SI at the text
mov  ah, 0x0E           ; BIOS teletype function

.print_char:
    lodsb               ; AL ← [SI], SI++
    cmp  al, 0
    je   .halt
    int  0x10           ; BIOS interrupt prints AL
    jmp  .print_char

.halt:
    hlt                 ; sit forever

msg db 'Hello, kernel world!',0 ; zero terminator

times 510-($-$$) db 0   ; pad to 510 bytes
dw    0xAA55            ; boot-signature

