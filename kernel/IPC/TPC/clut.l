entry:
    cmp @r12 @r9 <M> @r10 ^M @r11
    movk @r4 @r10 u32 @r7 @r1 @r5
    movk *main @r12
    movk (*main+2) @r2 (*block/0_1)

    @r8 @r11 && ^@r2 ^@r3 ^<M>
    @r9 (@r5+2) @r4 <M> @r1

    dw @r5 (@r2/1) && @r9 u8 @r2
    push @r4 <>

    ldp (u32/0_2) u16 @r5 ^<M> @r5 ^@r7 @r4

    movk <> *main @r5 @r8 u32 @r12

    cmp ^&& @r4 (u8+1) (@r6+0_1) (M/0_2)

    ldp @r7 ^&& @r12 &&
    push ^u32 (<>+0_1)
    jmk @r6 @r10 ^M (^@r5+1) @r3
    mov @r2 @r8
    ldp u32 (^u8/0_1) @r3 @r2 M <M> ^&&
    @r8 M @r3 (@r5/3) ^M @r7 @r1
    movk M @r7 u8 ^@r8 (@r11/2)

    ldp && @r9
    ldp @r5 ^u32 @r4 @r6 <> @r2
    movk M (@r9/0_2) @r1
    movk @r2 @r9 ^@r11 u64 (<>+3) ^u8 <M>
    @r12 ^@r1 @r10 ^@r1 @r2 ^@r6 @r9 ^@r7
    @r7 ^u64 (@r6+1) (@r3/0_2) @r2
    lsl u8 ^u32 @r10 *block @r12
    push <M> u64 (@r9/3) u64 @r8 <>

    @r4 u16 @r6 @r11
    jmp u64 ^@r5 u16 ^u32 @r9
    push @r1 (^*main+1)
    @r5 ^@r10 @r12 @r6
    cmp <> u64 @r3 (^@r10/2) ^&&
    mov u32 @r5 u16 @r9 <M> u64 *main

    cmp ^@r8 (^@r11+3) (u16/1) @r8 <M> @r11
    @r6 @r2 ^@r3 @r2 @r1 (u16+0_2) ^@r6
    ldp @r9 u64 M
    @r8 u8 M @r1 <> ^*main

    @r3 @r2 *main (@r12/1) ^@r8 @r4 ^u8
    push <M> <M>

    mov @r8 @r11 @r4 @r6

    ldp @r11 *block @r1 @r9 @r5

    cmp @r1 <M> ^@r2 M
    ldp (^@r10/0_2) u8 @r2 @r11
    @r4 @r6 <M>
    mov (@r2+0_2) ^u8
    push @r8 @r11
    movk M ^@r7 ^@r12 @r3 (@r5/0_1) (@r9+0_2)
    movk @r10 <M> ^@r8 ^&&
    @r3 <> @r7 @r1

    jmk @r6 u16 ^M

    dw @r1 u16 @r1 u16 @r7 (@r4+3) @r1
    ldp @r1 @r7

    ldp && u16 @r12 <>
    ldp @r5 (u16+0_2) *block (@r8+0_1) <>

    @r2 @r12 @r12 @r6
    lsl u64 (^@r6+0_1)
    lsl @r8 @r9 && (@r4+0_1)

    push <> (@r11/0_1) @r2 @r2 M @r4

    dw @r1 @r6 @r2 @r10 u64
    push @r2 u32 @r6
    jmk @r9 @r7 (@r8/0_2) @r3

    @r9 u16 @r12 (@r3/0_1)

    jmk @r9 (M/0_2) @r3 (^@r6/0_2) ^@r1 u64
    @r6 @r2 ^&& (@r11/2) &&
    @r9 ^@r9 @r2 *main (@r1+3) @r9 @r5
    jmk M @r9 && @r1

    @r4 ^@r4 @r5
    jmp u32 u8 @r5 @r3 u64 @r11
    push @r10 ^@r6 @r5 ^@r2 @r5

    jmk ^@r11 ^@r12 (u64/0_1)
    lsl u64 *main
    movk @r3 ^@r11 @r7 M ^@r11 @r11
    movk @r6 (@r5/3) u8 u32
    @r10 @r10 u8 <> *main
    ldp (^u64/1) <> *block (@r8+0_2)

    push ^*main (<>+2) (u32+2)

    @r3 @r11 *main ^@r9 @r4 @r11 ^@r9

    dw @r3 @r7
    mov u64 (^@r8/0_1) <> *main @r10
    lsl u64 <>

    cmp ^@r6 @r7
    jmk u64 *block
    push @r5 @r2 ^*main @r6 <>
    ldp @r7 (@r1+2) ^@r4 *block <M> u32 <>
    jmp @r9 M @r11 @r1 @r4
    @r3 @r8 <> ^@r5 *block && (@r8/2) u64
    @r8 @r1 && ^@r5 *main @r6

    @r8 u8 u8 ^@r5 @r6 @r2 *main &&

    @r3 ^*main <M> <> ^@r2 ^@r11 ^@r10
    push @r4 @r2
    @r6 @r10 ^M @r2 (u8+1) @r10 ^u32 @r8
    jmp @r9 @r11

    jmk (@r12+0_2) ^@r2

    ldp <> @r11 @r8 @r8 @r11 ^@r6 ^@r1
    jmk ^@r8 (@r10+2) @r10
    @r2 ^@r1 u64 u8 ^u64 (^@r5/1) && @r1
    ldp M ^@r6 u64

    dw @r2 ^&&
    dw @r9 @r11 && (&&+1)
    lsl ^@r2 @r11 @r1
    jmp @r10 u16 @r1
    @r1 <M> ^u32
    mov *block *main *main u16 @r6 @r10

    ldp <M> @r7 @r2 u32 u8 (u64+0_1)
    push *block <> *block @r11 ^u64 <> *block
    dw u64 @r10 @r3 (@r3+1)
    movk @r2 *main
    ldp u16 <M> ^@r5 @r9 (^u64/3)

    jmp @r4 @r10 (@r2/0_1) <> (@r11/0_1) @r2
    jmk *block @r5
    mov M (u8/3) @r6 && (@r5+0_1)
    @r8 @r4 ^@r5 &&
    @r5 u16 (*block+0_1) @r12 *main @r3
    movk @r9 *block @r7 (u64/2) ^@r2

    lsl u8 ^@r8 @r2 *block u32
    ldp && *block (M+0_2) ^<M> ^@r6 (@r1+0_1) ^u32
    movk ^@r10 @r7 @r11 u16 @r7 ^*block

    dw *block @r8

    jmp @r12 (<>+0_1) *block
    jmk @r8 *block ^u8 u16 ^<M> *main (@r1+0_1)
    ldp *main u8
    movk ^@r1 @r4 M *block @r4 <M> u16
    cmp (<M>+3) @r8 <> @r6 (@r3+1) @r12 (@r7/2)
    @r2 @r6 @r9
    jmk @r2 u16
    @r5 @r11 ^@r7 && <> @r1 @r1 @r6
    @r6 @r6 u16 (@r5/2) u64 ^u16 ^@r11 u32
    ldp M (@r1+0_2)
    lsl (^u32/0_2) @r1 @r12
    push @r5 @r4 @r7
