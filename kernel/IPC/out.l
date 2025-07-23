entry:
// Indentification of output type (digital or vga)
    @r9 @r1 @r11
    @r9 ^<M> ^@r3

    jmp <> u8 ^@r11 ^@r1 *block
    lsl @r6 @r5 u16 ^@r9 @r2 @r7 @r8
    dw <M> ^@r7
    ldp @r7 <M> u8

    jmk @r1 u8

    mov @r11 *block ^*block (u64/0_2) ^u8 @r9
    @r6 M @r2
    @r6 @r1 @r4 @r5 (&&+3) @r10
    @r4 @r1 ^@r10 ^@r5 @r11 ^<> @r8 @r3
    ldp @r5 @r3 @r8 ^*main @r8 ^@r6
    jmp (@r12/3) @r9 ^&& && &&

    dw @r7 <>

    dw @r8 (u32/2) @r7 (^@r12/3) u64 @r5 @r5
    cmp u8 && @r8

    jmk u64 @r9 @r4 (u64/1) u8 ^M
    cmp <M> @r8 @r8 (@r2+0_1) @r10 (@r4/0_1) (@r1/1)
    @r8 @r8 @r5 @r11 @r5 ^M u32
    jmk @r5 u16 ^&&
    movk M @r10 <M> *block *main ^@r4 @r11
    dw (^@r6+1) (^@r9+0_2) @r11 u16 (u64+0_1) ^*block
    lsl @r4 @r8 (*main+0_2) (u8+1) u16 <>

    jmp u16 ^*main <M> u16 *block <M>
    cmp @r11 @r9 u32 @r8 @r6 @r9 M

    lsl (@r1/3) (^u8+1)
    dw ^@r8 && ^&& <M> u8 @r10 @r9
    @r10 @r9 @r12 (*block/2) @r11 ^u32 ^@r11 u64
    push @r5 @r10 (^@r11+0_2) u64

    dw @r11 *block @r3 u16 <>
    @r1 @r5 @r11

    dw u16 @r12

    jmk <M> (M/3) ^@r3
    mov u32 *main ^u8 @r1 <M> (@r8+1)

    jmk (M+3) ^@r10 @r3
    lsl ^M ^@r12
    dw <> u8 (@r6+1) @r9 (@r9+3)
    mov ^@r4 && u64 u16 <> (@r3+3) (u32/1)
    mov @r7 (*block/3) @r9 u16

    dw ^@r4 ^u8 *block &&
    dw u64 (@r2/3) ^@r2 @r1 (u64/0_2) (@r5/3) ^@r9
    jmk @r12 (@r12+2) (@r3/0_1)
    jmk ^@r11 (@r1+2)
    lsl @r7 @r5

    jmp ^<M> (*block+0_2) (@r3+3)
    mov u16 <> @r8
    jmk && u16 *main @r4

    dw @r11 M

    lsl @r12 @r1 @r1 <> ^&&
    push && ^@r7 @r2 M *main @r3 u8
    lsl *main @r9 ^u8 ^u16 @r6
    movk @r8 && M *block (<>/3) (^<>/0_1) M

    mov <M> (M/2) (u64+3) @r11 <M> u64

    @r7 @r9 @r9 *block ^@r4 ^@r6
    push u8 *main (M+2) (^@r12+1)

    jmp @r7 (@r3+2) @r7 ^<> u32 ^@r9 @r7
    ldp <> @r5
    cmp u32 *main @r7 ^@r6 u32 @r11
    @r2 ^*block *main *main
    push @r5 u8 (@r8/2)

    lsl u8 @r4 @r9 u16 (u16/2) ^@r6 ^u32

    jmp M @r4 u8 (^<M>+0_2) <M> u16 (@r10/2)
    @r12 @r8 && (@r12/1) @r7 u64 @r3
    @r8 @r11 ^u8 u32 u32 ^@r11 (u16+0_1) &&
    mov ^u8 u16 ^*block @r11 @r8
    @r1 *main (*block/2) u32 @r1
    cmp *block (u32/2) (@r9/0_1) @r11 u8 M @r4
    mov ^@r2 @r1
    cmp u8 @r3 u16 u32 ^*block

    push *block @r6 ^<> M ^u64 (@r4+0_1) ^&&

    push u64 u64 u16 @r8 u16
    dw @r4 @r2 u32 (@r12+0_1) @r9 *main u16
    push (^@r8/3) @r6 ^&& u64

    ldp @r7 *block @r3 @r5 ^u64

    movk *main @r10 @r5 <M>

    cmp (@r12+0_2) M @r11 ^@r12 @r10
    jmk ^@r1 @r3 (^@r3/3) @r1 @r3
    jmp ^u64 ^u8 *block (@r4+1) && (u32+0_1) u32
    cmp <> u16 @r8

    jmp (u32/0_2) M @r8 ^&&
    @r10 @r10 @r4 <M> u32 u8
    jmp @r11 (@r6/0_2) ^@r6 && @r6
    jmk ^@r7 @r11 @r3 <M> u64 @r9

    lsl @r3 @r6 @r1 ^&& *block ^@r11
    mov (M+1) <M> @r5 u16 (&&/0_1)
    movk M @r3 u32 ^@r9 ^u32 @r4
    push @r7 ^u16
    push u16 @r6

    dw ^@r2 ^*main
    movk @r8 @r10 u32 u64 && @r9
    jmp @r6 @r10 u16
    movk (@r3/2) (<M>/2) @r11 ^M (*block+0_1) @r7

    movk <M> @r10
    cmp @r10 @r4 ^M
    cmp (@r1/2) (u8/0_1) @r9

    @r3 (@r9/1) *block M <> *block @r4 ^u16

    push @r9 ^@r9 u16
    jmp u16 <> @r3
    jmp u8 u16 @r9 @r9 (@r6+0_1) (&&+1)

    jmp ^@r9 @r7
    @r12 M @r10 @r12 @r4 ^u8
    lsl @r6 ^@r6 @r1 @r4 u8
    movk @r8 @r7 ^*main u8 <M> u8 (@r7+1)
    dw @r6 @r11 ^u16 @r11 @r7 @r6 (u16+1)
    ldp @r6 ^@r6 ^@r7
    lsl <M> *block @r2 @r7 @r10

    @r1 (^@r3+3) @r3 M u8 @r4 (<M>+2) ^@r2

    @r3 *main @r4 @r8 ^M @r4 <> (@r5+1)
    push (*block+0_1) (@r4/0_1) @r1
    lsl ^<M> (u64/1) ^<M> @r9
    @r7 ^@r12 M ^@r1 u16 u32 ^@r6
    dw (<M>+2) u16 @r3 @r11 @r2 u32

    jmk @r5 @r2 (M+2)
    ldp ^@r4 @r7 ^@r11 @r6
    jmk (@r8+1) @r5 @r6

    cmp @r5 ^u32
    jmp (@r10+3) <M> (^@r8+0_2)
    @r2 u8 u16 @r9 ^@r1 <> *main @r3
    movk @r7 @r10 @r6 @r5 *block
    cmp ^<> @r11

    mov @r9 *block ^<> <M> @r8

    mov M @r4 @r8

    mov u32 @r6 @r4 u32 u32 (@r12/0_2) @r11
    cmp u8 @r10 ^@r11 @r1 ^@r12 *block ^<>
    jmk (@r1+1) && ^u64 ^M @r5
    @r10 @r9 @r3
    cmp ^u64 @r1 <> @r1 <>
    ldp (@r4+0_2) @r1 && <M> @r9 ^@r4 @r2
    lsl ^@r5 <> <M>

    cmp (u32/2) &&
    ldp @r12 u32 ^@r5 @r3 @r3 *block
    mov u32 (@r5+3) u32 ^&& *main

    movk ^*main @r10
    cmp ^&& @r4 @r3 ^*block *main ^M ^@r2

    jmp && ^u8 *main <> @r5 *main
    jmp @r5 @r7 <M> u8
    ldp u16 && @r12 ^@r5 @r1 u8
    jmk M @r1
    mov @r4 *main (<M>+1)
    push (@r1+0_1) u32

    lsl (*main+1) ^*main <> <M> ^@r7 u8 @r8

    dw ^@r7 @r5 u16 @r3 ^<M> *block
    ldp M (@r8+0_1) (@r8+0_1) (&&/1) *block (@r9/1)
    @r1 && *main
    jmp ^@r9 && ^u16 (@r12/0_1) @r9 (@r8+3)
    jmp ^u8 (@r12/0_2) @r2 @r8 ^@r12 @r5 ^u64
    cmp <M> (@r9+3) ^u8 *main (u16+0_1) @r2 <M>
    movk @r4 (^@r12+2) @r1 ^@r12
    push (<M>+2) <M> @r5
    lsl <M> u32 u8 @r10 @r3 @r8
    ldp ^@r6 ^u8 ^@r5 @r10 @r3 *main <>
    @r2 @r4 @r6 ^@r2 @r12
    mov @r12 @r12 @r7 @r6 @r10

    ldp ^*main ^@r12
    dw @r4 u8 <M> (@r1+0_2)

    lsl @r11 @r2 @r7 @r1
    movk @r5 (@r4+3) @r11 M ^@r12 M
    ldp u32 <> @r8 ^&&

    dw @r9 @r7 (^<M>/0_1)
    lsl (@r5/0_2) (@r4+1) @r12 (M+2) ^@r4
    dw u32 ^@r11 ^&& u8 @r7 ^@r7
    @r7 ^u16 @r1 u32 // end
