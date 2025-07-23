entry:
    jmk @r1 && u16 <> (u8+0_2) // font declaration and pointer

    @r6 (@r12/1) @r12 <M> // pointer
    lsl @r8 ^u16 // size 
    lsl u32 ^u32 M // pointer for size 
    @r3 u32 @r3 ^@r4 // size arr

    ldp @r5 @r11 @r10 (@r7/0_2) @r8 // register where the font will live
    mov @r2 @r8  "font.otf" // font file

    jmk @r1 M <M> *main *main u32 (@r12/0_2) // font reader

    dw (<M>+1) @r6 // pointer error if font.otf does not exist
    @r12 @r3 <> (^@r2+2) // register pointer
    movk <> @r5 (@r3/0_1) (<M>+0_2)  

    jmk @r2 @r1 u32 @r1 // font 
    push @r3 ^@r6 ^@r4 u32 @r10 // font push

    dw <> && // error handler
    dw @r5 u32 (^@r10+1) @r3 @r8 @r9 // if font cannot appear just delete all the register where it exists
    cmp @r7 @r10 <> (u8+3) u64 *main <> // pointer for main 
    movk @r4 @r3 u32 (@r7/0_1) @r11 @r5 // shower of any font ignoring any poweroff

    jmp (M+3) (@r9+1) *block (@r3+3) @r10 ^u32 @r3 // jmp to push

