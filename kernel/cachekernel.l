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
    cmp && (^@r3+0_1)

    @r3 (*block+1) (@r11/2) @r9 @r4
    lsl u16 @r7
    jmk ^@r6 u64 M @r1
    dw (@r12/0_1) (^@r6/0_2)
    mov @r7 u32 @r8 @r6
    movk ^@r6 ^@r10 @r3 @r4
    dw u64 @r12 @r7 (^u16+0_1)
    @r5 u32 @r9 u32
    @r1 u32 @r8 @r7 @r1 (u8/2)
    movk ^<> (u64+0_2)

    jmk u16 <> @r5 <>
    @r6 @r6 u64 @r1

    push (@r7+0_2) u8 (@r12+2)
    cmp ^@r4 @r5

    cmp @r7 @r5 ^@r9
    jmp M @r8 @r10
    push @r6 (@r6+1) @r1 u16 @r7
    ldp u16 *main @r11 <> M @r12

    push <M> ^<> (u32+0_2)
    jmk *main @r5 ^*main u32 @r4 *main
    mov *block M @r1 @r11 ^@r9 ^u64 @r8
    ldp @r11 *block
    mov (^@r2/2) u16 @r2 ^@r8
    mov <M> @r9

    push (@r11+1) @r5 (*main/1) (^u64/0_1)
    push @r7 ^u32 <M> (<>/0_1)
    lsl (^@r3/0_1) @r10 M (@r3+1) (^@r12+0_2) @r12
    ldp ^u16 @r9 @r11 @r7 @r2
    movk u32 ^u32 u16
    dw @r7 (^@r11/0_1) ^u8 *main ^<M> (^@r4/3) (^@r12+1)

    cmp <M> @r7 @r2 ^u8 @r10 (^u64/0_2) @r12
    lsl *block <> @r9 && u64
    @r2 @r5 ^@r6 @r12 *main ^@r6 ^u64 @r7
    @r3 @r5 u8 (@r6/2) @r3 (@r1+1)

    mov <M> M *block (@r10+2) ^@r4
    dw u8 ^u64 u64
    movk M @r8

    movk @r7 ^<>

    lsl (u8+3) @r1 @r9 u16 @r8 @r6

    jmk @r8 u16 <> ^@r4
    jmk @r4 ^@r5 @r1 ^@r3 @r7 u32
    @r3 @r2 @r12
    push (@r10/1) &&
    jmp @r11 ^@r11 @r6 ^<>
    push @r1 (u8+0_1) (<M>+0_2) @r9 @r5

    @r6 (M+3) *main

    dw @r2 (<M>+3) <M> @r4 @r7 <M>
    movk @r3 (@r3/3) @r9 @r11 (^<>/3) M
    dw @r4 @r7 ^@r4 @r10
    dw *block @r2 ^M (@r10/3) u8 @r6

    push @r5 @r4
    mov u64 @r3 M (*block+1) @r7 ^<> M
    jmk <M> (^*main/0_2) @r8 u64 u8 (^u64+0_2) u8
    mov && u64 (@r10+0_2) u16 (@r12/0_2) (^&&+1) @r2
    @r9 @r8 @r4 @r1 @r1 @r5
    @r3 @r1 @r9 @r5 @r9
    jmp && && @r8 @r12 @r6 @r2 @r6
    push (@r3+1) M @r2 u32 <> u32 ^@r8
    cmp @r11 @r4 (@r1/1) (*main+0_2)
    @r11 (^@r10+0_2) <M> <> @r2 (@r8/0_2)

    @r3 u32 u8 u32
