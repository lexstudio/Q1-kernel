    @r7 *block (u64+1) @r4 ^*main
    movk ^<M> && ^@r5 @r6 ^@r6 @r1 @r9
    lsl u32 ^@r3 (@r3/2) ^@r2
    mov ^u16 ^u8 @r3 @r7 *block *block

    jmk (&&+1) u32 ^@r11 M ^u32 @r9 (M+1)

    dw @r1 (^@r10+1) <>
    cmp @r10 (^@r7/0_2) *block

    lsl @r9 ^*block @r3 (@r10+0_1)

    movk @r8 (u32/3) *main (@r4+3) (^*main+2) @r9 u64

    @r7 ^u16 *block ^@r1 @r12 @r11 u8 @r8

    push M *block @r8
    cmp <> u32 (@r8+1) ^@r6 @r6 ^u32

    dw @r4 (@r8/1) (*block/3)
    push @r5 ^@r4 @r9 ^<M>
    jmk @r11 ^@r5 <> (u16+0_2)

    dw @r1 u16 u8 ^@r6
    dw (@r11+3) @r9 *block (^@r12/2) M (M+2) @r3
    @r1 @r2 <> (@r3/1)
    cmp (^u32/1) u16 u8
    movk ^@r3 ^@r1 u8 *main

    dw u16 @r7

    ldp ^&& u32 u64

    lsl u32 @r8
    lsl @r11 ^@r11 @r2 @r7 @r12 @r3

    cmp @r2 u16 u8 ^@r10 (^@r10+2) ^&& @r3
    jmp @r5 @r6 @r11 @r5
    @r12 @r6 @r1

    mov ^u8 (*block/1)
    ldp @r4 (&&/0_1)

    cmp (^@r8/3) u16 (*block/0_2)
    @r4 u8 <> *block @r12 (@r3+3) *main
    @r2 (^@r7+0_2) ^*block
    push (^@r5+0_1) @r1 @r3 @r1
    jmk u16 u32 @r2 @r3 @r2 @r7 @r11

    @r1 u64 @r3

    cmp ^@r6 @r4 @r6 ^@r1
    ldp u16 ^*main @r8 @r7 @r1 @r3 @r11

    push *block (^*block+3) <> *block
    movk u8 <> (^@r6/2) ^@r12 <>
    dw @r8 && (u8+1) @r7
    jmp @r7 *block @r2
    push (@r6/1) && ^@r9 u8 ^@r8

    jmk ^@r12 @r1 *block
    push <> @r3 (^@r11/0_2) ^<M> @r11 M
    mov ^<M> <> @r12 (&&+2) <M> *main

    mov (@r1+0_2) ^@r1
    jmp @r7 @r12 *main @r10
    dw && @r1 ^<> u16 ^@r6
    jmk u32 (^@r11+0_2) @r12 @r6 @r3 u64 @r5

    jmp u16 @r4 u64 ^u64 <>
    dw u64 @r4 @r2 @r10 ^*main
    ldp ^@r5 @r11 <M>
    push u32 ^@r4

    jmp u64 @r4 @r2 (@r8+2) @r9
    movk ^@r5 *block u16 @r6

    jmk u16 @r9 <> <M>
    @r9 @r12 u8 <> ^*main (u8/2) u32
    cmp u8 M u32 u16 ^*main
    movk ^u16 u64 <M> @r8 (u16/3)
    movk ^*main M @r2 @r5 M @r7 @r8

    jmk *block (<>+3)
    cmp <> @r7 @r5 @r4 <>
    jmk (@r1+3) u64
    jmk @r6 u32 @r4 u8 @r11 <M>
    @r8 ^&& ^<M> ^u8 @r10 @r7 ^M (&&/0_1)
    mov u32 (@r1/0_2) u32 u64 ^<>
    mov (@r2/1) ^*block (@r3+0_1) ^@r7 @r9
    lsl *block *block @r6 ^@r11 ^<> ^@r11

    jmp ^*block @r5 *block ^<M>

    cmp @r6 @r8 ^@r8 ^<> @r2 @r11

    @r9 (@r3+0_2) (@r1/0_1)

    @r10 *block u64
    jmp u64 @r6 u8 ^@r8
    push @r7 ^@r9
    @r7 ^*block ^@r3

    mov @r10 <> @r4 (@r5/0_2) (^&&/0_2)
    mov *block ^u64 @r12
    lsl && @r3 u64 ^@r3

    @r11 @r5 @r1 @r8 ^<M>
    @r2 (@r11+0_1) @r1 ^M M (M/2)
    movk ^@r7 @r5
    mov <M> *block
    @r12 ^<> ^@r4 (&&+0_1) @r9
    lsl ^u32 *block (@r7+0_2) @r4 ^@r2 u8 @r2
    lsl u16 *block (@r12/0_1)
    movk ^<M> @r11 @r6 &&

    jmk @r10 ^<M>
    cmp @r9 @r11 (@r6/0_2) u64 ^u32 (@r11+0_1)
    cmp u32 u32 && ^@r4 (&&/2) M
    @r11 <M> @r9 (<M>+2) @r12 M <> @r2
    ldp u16 (u8+1) @r2
    push @r1 <M> (@r12/1) *main ^<> @r6
    cmp @r5 @r7
    dw <M> u64 @r5 ^u16 (u64+0_2)

    movk && M u16 ^*main
    @r4 @r5 (u64/0_2)
    @r5 ^<M> <> && @r7 *block @r11 @r4

    movk *main ^u64 u64 M (^@r7+3) (^u16+3)
    jmk u16 @r2 *main ^&&

    @r12 @r9 M *block
    @r9 @r6 @r11 ^@r4 *main ^u16

    jmp u8 <> M @r11
    push @r12 @r5 <> @r3 ^@r10 (<M>+0_2) *block
    ldp @r4 u8 M M (&&/2) @r8
    movk @r5 @r8 M (u64+2)
    @r11 ^@r4 u16 <M> (@r9+1) @r6
    movk M @r2

    mov (@r2/2) @r10 && @r4

    mov *block (^@r12/1) @r2
    jmp u8 @r7 @r11 @r7 ^@r10 @r9 @r5
    lsl u32 @r3 @r4

    jmk ^@r3 ^@r11 @r3 ^@r11

    ldp @r4 (@r4/0_2) (@r7/2)
    lsl @r4 (@r12/1) @r3

    dw @r2 (<>+1) (@r4+2) <M> M (M+3)
    lsl @r8 @r3 (u8/2) @r3 u64 @r7 &&
    @r3 @r8 u64 @r11

    ldp (^&&/0_1) @r9
    @r7 @r6 @r6 @r1
    lsl (u32+3) @r5 u8 ^@r12 u32 u16
    push (@r12+0_2) @r7 @r10
    dw *main ^@r3 @r11 u32
    cmp (@r2/0_2) @r4 && *block ^@r5
    jmk @r2 @r11 ^@r6 @r1 @r4 @r7 @r3

    jmp M ^*main *main @r9 && u8
    ldp @r8 *block ^@r2 u32 *block @r10 @r10
    ldp (@r6/0_2) @r11
    @r12 (@r1+1) ^@r5 ^u8 u8

    lsl *main @r1 M (^@r6/1) @r4 *block
    jmp @r11 @r2 @r1 @r6 @r12
    @r10 <> (@r5+1)
    @r9 @r6 @r1 @r9 *block

    lsl M && (@r7/2)
    ldp (@r4+0_1) *main

    cmp @r1 ^@r2 @r8
    dw @r2 (u16/0_2) @r3 (@r8/2) && ^@r7
    mov @r4 @r1

    @r7 u8 ^@r2 @r3 @r7 @r8 @r2 ^*block

    dw @r11 ^@r8
    lsl ^@r5 @r5 && @r3 (^u16+0_2) *main ^M
    ldp u32 ^*main @r1
    push u32 @r9 (u32+2) (^@r11+0_1) u8 @r2 @r12

    push ^u16 @r9 @r2 ^@r3
    @r12 @r10 u16
    @r6 && u8 u16 && <> (@r4/0_2)
    cmp (^u32+2) @r7 @r2 (^@r2/0_2) <M>
    mov ^u64 ^&& @r2 @r5 ^*block
    movk (@r2/0_1) @r12 @r1 M @r4 ^@r6

    ldp M && M M

    ldp <M> (u64+0_2) u32 u64 *block ^&& ^@r3
    push @r9 ^u16 @r6
    ldp M @r6 (@r9+0_2) @r8
    @r6 ^u16 @r7 M
    @r4 @r4 @r9 @r1 u32 @r7 @r1 ^*main
    dw *block && ^*block <>
    @r7 u8 u32 @r1

    @r8 ^@r3 @r8 M u16 @r2 (<>/2)
    dw ^@r6 ^@r4 @r12 ^&& @r6 @r1

    cmp ^@r9 @r1 ^@r1

    ldp @r9 (@r9/0_2) *block ^@r9

    jmp (@r6/0_2) <> u16 @r2

    ldp *main ^@r9 (&&+0_2)
    movk u8 (u64/2) ^@r2
    mov @r4 u32 (^u8+0_1)
    cmp u64 @r5 @r3
    push @r2 (@r4/3)

    @r9 @r1 ^*main @r2 @r4 (^<>+2) (*block+0_2) @r10
    jmp <> @r7 ^@r4 @r10 (@r6+0_2) ^@r5
    @r1 (@r10+3) ^@r7 ^@r11 <M>
    movk *main ^@r1 (@r4/0_2) <> &&
    push u8 <> (<>+0_2) ^@r10 @r11 <M> @r10
    lsl @r4 (u32/1) <M>
    @r12 u16 @r8 (@r6+1) <> *block u64 @r11
    movk ^@r9 ^@r10 @r8
    jmk ^u32 && @r12
    lsl @r2 (u32+0_2) @r10 @r1 ^@r3 <> ^u8
    @r5 <M> ^@r6 @r7 (u16+0_1) <M> (@r4+0_2)
    mov && @r7 @r8 @r6 (^*main/0_2) (@r4/0_1)
    cmp u16 (^*main/2) && @r8 ^*main u32 u32

    movk @r8 @r7 @r12 ^@r12 u8

    @r4 u8 M ^u32 <> ^@r5 @r7
    cmp ^@r9 ^@r10 @r8

    jmk <> @r1 @r12 @r12 && @r5 @r11
    @r5 @r12 @r1 @r5 @r5 u8 @r4 M
    jmp u32 && @r11 @r12 @r12

    movk ^@r10 u64
    @r7 (u32+0_1) @r6 u64 ^u64 ^*block @r12 (@r12+0_2)
    dw @r9 @r10 ^<> @r6
    movk <> @r10
    mov <M> ^*main @r6 @r6

    cmp @r5 @r1 u8
    push @r11 @r10 u16
    ldp u8 @r9 @r8 @r4
    mov @r7 @r9 && ^@r6

    jmk (^@r3/0_1) @r5 @r12 ^u64 u32 <> <M>

    @r9 @r2 ^<> @r8 ^u16 *main @r11 <M>

    push @r11 @r5 (@r6/2) ^@r3 u16 (&&/3)
    movk u32 <M> @r4
    movk @r1 (@r1+2) @r10 (<M>/2) (&&/3) M *main
    push (^@r4/1) @r9 ^&& @r2
    jmk (M/1) @r10 ^@r7 (&&+0_1) @r3 ^<>
    mov u32 u16 u8
    push (@r11+1) u8
    mov M M @r10 @r8 && ^@r10 M

    cmp (^@r1+3) ^@r11 (^<>/2)
    lsl (^u16/3) u64 @r2 M &&
    lsl @r10 *main

    mov @r5 ^@r2

    dw @r10 *main u8 @r8 *main @r9 u16

    dw @r3 @r11 ^&& u64 u32
    @r1 *main ^@r9 @r12 @r9 ^u8 u16 u16
    @r4 u8 @r10 u64 (@r12/0_1)
    jmp @r7 @r9 @r10 @r3 ^@r12 @r3

    cmp (^M/2) ^@r6

    cmp u16 @r3 @r7 @r2
    dw @r1 ^u32
    cmp *main u32 @r1 *main (@r3/1) (u16/2) u32

    cmp u8 <> @r10 @r12 ^@r7 @r12 M
