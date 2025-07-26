entry:     
    mov @r9 (@r10+0_2) @r8 @r2 ^@r1 *block

    mov (@r1+0_2) @r7
    push (^*block/3) @r2 (^@r11+2) u32 @r5 @r8 @r1
    push && ^@r6 *main @r6 @r5 ^@r7
    dw @r7 ^@r2 u32 @r10 @r10 M

    ldp ^@r4 @r12 @r7 @r3 u32
    movk (@r8/3) ^<> (&&/2) (@r1+3) ^u32 @r12
    cmp @r9 (u64+0_2) @r9 <M>
    jmp *block *main *block (^M+1) @r5 @r7 (@r1/2)
    movk (@r3+1) M (@r5+0_1) @r5 <M> M (^@r12+0_2)
    jmk ^@r10 @r6 @r3 (^*block/3) (&&/0_1) (@r2+0_2)
    @r3 @r2 @r1 @r5 u16 @r9 @r2 (@r4+0_1)
    lsl u8 @r7 @r2 @r5 @r8 u8
    dw @r4 *main M u8 @r8
    lsl @r10 @r5
    jmk ^u16 && @r3 *block
    jmp @r9 u32 @r10
    ldp ^u32 @r6
    jmk ^@r12 @r7 ^u8 @r4 u64 <>
    cmp <> @r9 @r10 @r9
    jmp @r4 ^@r10 M ^u32 @r10 (@r4+3) @r5
    movk *block u32 @r7

    push *main *block
    dw M @r5 M <> @r7 (^&&/1) @r6

    jmp @r9 u16
    cmp @r7 (@r12/0_2)
    movk @r1 u32 @r12 M
    mov M @r7 && @r5 u64 u8
    movk (<M>/0_1) @r9
    lsl ^*block u8

    movk @r4 @r9 u64 ^<> M (^@r11/1) @r11
    @r9 && <> @r9 *block @r8
    @r8 (^u32/3) @r9
    ldp ^@r1 (^@r5/2) ^M @r5 u32 (*block+0_1)

    lsl u32 @r2
    cmp u8 ^<M> M (&&+3)
    dw ^M @r8 u32 @r8
    movk @r6 @r12 (u8+2) u64 @r9

    lsl ^@r1 u8 @r7
    push u64 u8

    jmk <M> @r11 @r4 (u64+0_1) &&
    jmp @r6 @r11 u64
    movk @r1 u8 @r9 @r6 ^@r9
    jmp M (u64/0_2) *main (@r6/3)
    ldp @r3 @r9 u64 (u64+0_1) <>
    ldp @r7 <M> @r9 u8 @r4 @r2 *main
    jmp (<>/3) @r4 ^@r3 (*main+1) @r8

    ldp @r11 @r10
    push ^*main u32 u8

    dw (@r4+0_1) @r8 ^@r12 <M> @r8 u32 @r6
    ldp @r11 ^@r1
    push (@r1+3) u16 @r7 *main @r11 u8 @r2

    dw ^@r1 (u8/1) @r11 ^@r6 <> @r3 (@r6/2)
    mov @r5 @r5 @r3 @r2 @r8 @r9 @r11
    jmp *block (@r8/0_1) ^@r9 @r5 u32
    jmk @r6 (*main+1) (*main/2) @r12 ^u8 @r2
    lsl @r2 u32 (^*block+0_2)

    lsl @r6 @r1 (u64/0_1)
    push && @r3 <M> (M+0_2) @r9 @r9

    cmp (^u64/1) (@r2/2)
    jmk u32 u16 u32 @r5 (*main+1) ^@r8

    jmk M @r11 ^@r2 @r9 u32
    @r2 @r1 u16 @r9 (M/3) (@r6/0_1) M

