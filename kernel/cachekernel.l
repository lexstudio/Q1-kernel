entry:
    movk u16 u16 (<>+1) <M> @r8
    dw ^@r8 *block ^u32 @r6 ^@r7
    @r3 ^@r9 u16 @r2
    movk @r5 (@r3/3) @r12 (<M>+3) M
    @r4 (^u8/1) ^u32 @r9 (&&+0_1) (^u32/0_1) @r10

    jmp @r5 @r7 *block *main @r11

    movk u32 @r8
    @r8 @r4 @r7 (<M>/2) @r6 @r7 @r8 (@r4/0_2)
    @r5 ^@r1 u8 u8 @r6 ^@r1 <>
    jmk M *block @r8 @r11 (@r8+2)

    jmk (^u64/1) <M> @r5
    ldp ^@r3 @r1 @r10 @r11 (@r2/0_1)

    jmp @r6 @r5
    cmp M ^@r12 ^@r10 @r4 @r1 @r7

    movk M (@r2/3)

    @r9 (@r1+2) <M>
    cmp @r7 @r2 && u64 @r3 (@r1/2)
    movk @r10 ^&& @r11 (*main+3) (u64+1) (@r6/1)

    movk ^@r12 @r10 @r3 ^@r7 ^M @r6
    lsl M *block
    jmk @r10 @r11 *block

    lsl u32 @r6 @r2 (^@r8+1) @r4 <M> ^@r9

    dw M ^@r1 @r7 ^<> *block @r2 <M>
    jmk (@r6/0_2) u16 @r10 u64 @r9 *block *block
    @r7 @r6 <>
    push (M+0_2) *main u32

    jmp (@r10/0_2) <> *main u32 @r3 @r1
    cmp @r7 (@r1/1)
    @r9 (u8+0_2) @r11 u8 ^@r9 (@r5/1) @r2 @r12
    mov @r12 @r8
    mov (@r6/3) @r5 ^@r5 @r1
    movk @r11 && ^@r9 <M> (u16+0_2) @r2
    lsl u32 @r7 @r12 (@r9+0_2) ^u16 (@r10/0_2) (u16+0_2)

    mov ^@r11 @r2 @r7 <> (@r1+2) ^@r4 u8
    jmp (M+1) *main @r7 @r8 (@r4/1) (@r10+0_2)
    dw (<>+3) (^<>+1)
    dw @r6 @r7 @r4 ^@r7 M <M> ^@r7

    push @r9 @r6 @r9 @r4 u64 @r6 u8
    jmk @r7 @r2 @r10 u32 @r10 u16 &&

    cmp (@r2/0_2) (u32+2)
    dw @r12 <M> @r9 && @r7 @r9
    @r11 @r9 @r7 @r6 @r9 && @r1
    @r10 (@r10/0_2) (^@r5+1) ^@r12 (*block/0_1) u64 @r8
    ldp @r6 u8

    @r3 (<>+0_2) @r6 @r6

    ldp M *main @r8
    @r7 @r11 && (@r2/0_2)
    ldp ^@r4 @r7 *block ^<> ^u8 ^<> ^@r6

    movk @r11 @r5 ^u8
