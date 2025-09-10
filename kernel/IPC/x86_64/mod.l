entry:
    @r3 ^u16 @r7 (u8+1) @r1 @r9
    dw ^@r11 <M> @r4 ^u16 u32
    movk @r3 ^@r2 <>
    lsl (M+2) @r2 @r4 ^@r2
    lsl && ^@r11
    movk (^u64+0_2) u32 u32 @r4 @r9
    lsl @r9 @r4

    cmp u16 @r4
    jmk <> @r2 (@r6/1) ^@r4
    dw ^M @r8 @r12 @r12 @r2 M

    ldp ^@r3 @r2 ^@r2
    movk @r11 @r8
    ldp (*main/3) @r7

    jmp ^<M> ^u32 ^@r11 (u64/1) <> ^u32
    @r10 @r7 && u64
    movk ^@r8 <> && @r4
    dw (@r1/3) @r1 @r1 ^&& *block @r1

    cmp <M> ^@r4
    jmk @r11 @r11 (@r5/3) ^<M> ^<M>
    push @r8 M @r11 @r7 @r1
    movk (@r7+2) ^@r9 u64 u32 ^@r12
    cmp @r6 (M+3) ^@r1 (@r7/2) @r7 @r3 ^@r1
    mov <> ^@r5 @r5 @r4 ^@r3
    ldp (u32+2) @r11
    jmk @r10 ^*block
    mov @r7 @r8 @r12 @r5 @r4 u32 (u32/3)
    cmp @r9 @r12 @r3 *main (@r10/0_2)
    jmp @r11 ^u64 u16 @r3 u32

    dw u16 u8 (u64/2) @r1 u32 u32
    ldp @r1 u32 ^u8 <M> ^@r12

    push && @r9 u16 (@r11/3)
    ldp @r2 @r5
    jmp (@r3+0_2) @r5 @r9 @r1
    lsl @r2 @r7 (*main/0_2) (u16/0_2) u16 ^*block M
    @r2 @r9 *main u32 u16 @r6
    mov <M> @r8
    @r9 @r5 @r4
    mov (u8+0_1) @r1 *block ^*main
    @r2 @r6 @r4 u64 @r8 u64
    jmp (@r4+2) ^@r8 ^@r12 ^@r8 <M>
    dw ^*block ^@r9 @r2 <M> u64

    ldp u8 ^@r7 *main u16
    jmp u32 @r12 <> @r2 u64 @r10 @r6
    dw <> ^@r9 @r4 @r4
    @r9 @r2 @r12 ^@r5 &&
    jmp @r8 @r10 @r9 u64 ^M <M>
    jmk @r9 <> @r10
    @r10 M @r10 @r7 @r8 <M> @r12
    ldp u8 @r8 @r6 @r9
    mov ^u16 @r5 *block ^@r2 (@r6/0_2) @r10 ^@r8

    jmp ^@r11 @r12 @r5
    lsl u64 (@r4+0_1) ^*block
    jmk ^@r8 ^@r11 @r12 u8 @r3 ^@r7 @r11
    cmp *main @r9 (<>+2) @r1 M @r2
    lsl @r9 @r3 <M> @r2
    jmk && @r4 *main @r4 (@r6+0_1) ^M ^&&

    mov *block ^@r11 M
    ldp u8 (^u16/2) (@r6/2) (u8+0_1) ^*main
    cmp u16 *main @r1 u8 @r6 @r12 &&
    push ^M @r1 @r1 @r2 ^@r3
    jmk @r7 (@r1+0_2) @r3 @r5

    push ^@r10 @r9 *block @r5 @r4
    dw @r4 ^<>

    @r2 (u16/2) (^@r4+0_2) @r4 *main
    cmp @r10 (@r11/2)

    jmk @r1 @r11 @r5 u32 u32 (*block/0_2)
    push ^*main ^&& u32 @r3 <M> u32

    mov (<>/2) M ^@r6 u8 (u8/0_1)

    ldp ^@r12 <M> @r9 u8 <M>
    push @r6 @r6 ^@r9 @r1 @r8
    dw (u8+2) (@r5+0_1) (@r11/0_2)
    @r9 ^@r10 ^@r4 ^&& @r3
    ldp @r1 (u64/3) (@r12/0_2) @r6 @r8

    lsl *main <> (@r2+1) @r4 @r6 @r11 ^*block

    push (@r8/0_2) *block
    push *main @r5 @r12 u16

    @r5 <M> (@r5/0_1) *block <M> u32 @r7
    @r6 @r6 (@r5/3) (*block/0_2) @r4 (@r4/0_1) @r8
    jmp <M> ^u32 (u8+1) (@r12/3) (u16+3) @r10 &&
    dw @r2 *block
    ldp @r2 @r4
    jmp @r7 (u64+0_1)
    cmp @r9 @r5 ^@r3 ^@r1 @r8 @r2 ^&&
    ldp @r11 @r3 (^@r1+3) ^@r2 u8
    jmk <M> u8 u8
    jmk u8 *block u8
    mov @r8 *block @r8
    @r7 (@r1/2) M u64 ^@r9 ^&& @r10 @r5
    dw u64 ^*main @r12 ^u64
    push ^@r3 (@r6/2) ^@r9 u8 @r7 @r4
    dw *main (^@r11/0_2) @r3 (@r5+1)
    lsl (@r8+0_2) <> (u32+0_1) ^M
    @r12 @r1 <M>
    @r9 @r1 @r4 @r5 *main
    ldp <> @r1 @r1
    lsl *block ^@r10 (@r9+1)
    push @r12 *block ^u8 @r4

    @r1 (@r11+2) @r2 *block
    push <M> @r5 ^@r10
    jmk ^@r4 && @r3 ^*main

    @r5 @r3 (@r8/2)
    movk @r4 <> @r6 @r5
    @r1 @r4 @r2 u64 u16
    @r2 @r4 @r3 (^@r7/0_2)
    jmp ^<> (^@r2/0_2) u16
    mov (^u8/2) @r2 ^@r11
    @r5 @r2 *main @r4

    mov ^@r2 (@r12/1) u32
    lsl ^&& M @r7

    cmp u32 @r11 ^<M> @r8 @r1 @r10

    movk @r5 (@r8/0_1)
    @r9 @r8 && ^@r4 @r6 (@r9+3)
    jmp @r5 @r10 @r1
    lsl @r3 <> @r7 (^@r2+0_1) @r1 @r10 @r1
    ldp ^&& u8 @r10 (<M>+0_1)

    jmp (<M>/0_2) ^@r4 M @r5 u32 ^@r5 u16
    mov && (@r1+1) ^*main @r7 @r7 @r9 @r2
    push @r3 ^@r12 (*block+0_2) ^u16 @r4 @r9 &&
    lsl ^@r6 @r11
    lsl *main @r2 <M> <M> ^@r11
    @r7 *main @r4 && @r10 @r7 @r4 @r4

    ldp ^u64 ^@r8 @r2 @r6
    mov @r11 *block <>
    jmp ^@r8 <M> @r10 @r11 *main
    movk ^*main (^@r10/1) ^u16 (@r6+2)
    push *main (@r4+2) ^@r1 (@r8+0_1)

    @r3 @r11 @r11 @r5 (u32/2)

    dw @r2 <M> u32 ^*main @r6 @r9
    cmp M <> @r4 @r4 @r9 ^@r7 u32
    ldp @r5 ^u64 M @r10 *block *block
    movk u64 @r10 ^@r10 (u32+2) @r10 @r1

    jmp @r7 ^@r8 ^&& @r4
    @r1 u16 @r10 @r5 @r3
    push @r1 ^u32 (^@r6/0_2) @r7
    jmp @r5 <M> (@r6+0_1)
    @r4 ^u64 *block <M> @r1 @r11 @r6

    jmp <M> @r4
    push (^@r3/2) (<>/1) @r11

    jmp u8 (@r10/0_1) ^@r12

    cmp u8 ^u64 <M> ^@r9 u8 @r4

    ldp @r9 (^u8+1) *block
    lsl @r12 @r9 @r2 <>
    mov ^*main @r9 (M/0_2) @r3 ^<M> u32 u32
    @r3 @r5 @r12 @r5

    mov @r10 @r8 ^M
    jmp @r5 u16

    @r3 @r7 @r7 (@r4+3)

    jmk && *main ^@r3 u8 u16 ^@r10
    push (^*block/0_1) u16 @r6 @r6 @r5
    push *main *main @r7 @r8 ^*block @r3

    lsl *main @r11 @r1 u16 ^@r9 @r9
    @r4 @r10 @r3
    jmp @r1 @r3 @r10 @r1
    movk u8 <M> @r5
    mov @r5 @r4 u32

    @r6 @r10 ^@r12 @r11 @r1

    ldp u8 <M> @r10 *block && M ^<M>
    push u32 @r3 @r5 @r10 u8
    @r9 @r6 @r2 @r6 @r12 ^u16 <M> @r2
    push (^u8+0_2) @r6 (@r8+0_1) @r10 @r12 &&

    @r10 *main <> @r5 u8 @r7

    @r2 (*block/1) @r11
    @r5 u64 (@r7/3)

    jmp ^M @r8 @r3 @r4 ^@r6 (@r8/0_1)
    jmp *block ^u16 u8 *main @r2 && <M>
    lsl <M> @r1
    movk @r1 ^@r3 @r3 ^@r6 @r5
    jmp ^@r9 <M> u32 ^u8 @r2
    dw @r2 ^u32 ^u32 @r12 (@r8/1)
    mov @r4 (*main+3) <> M (@r7/0_2) (@r6+2) (^<>+0_2)

    movk @r9 @r1 ^u64 u8 @r10 u64
    jmk ^@r3 <M> @r8 u32 (@r2/0_2)
    jmk ^@r7 @r4 (&&+3) ^*block
    @r3 (u8/2) u8 u16
    @r4 @r3 ^@r4
    lsl @r10 @r6

    @r3 @r2 <> (@r7+0_2) (@r11+0_1) @r12 (@r1/0_2) ^*main
    movk ^*block @r1
    @r5 (*main+2) @r9 ^M @r3 (^M+2) (^@r10+1) <>
    ldp ^@r3 ^@r11 ^@r10 ^@r5

    push u64 ^@r3 *main <> <>
    mov @r6 @r9 ^@r12 *block <M> @r11
    @r1 (@r11+0_1) u8 ^@r10

    @r8 <> M u16
    jmp && (<>/2) ^@r1 @r6 ^@r8 @r8 @r9

    mov @r2 (*main+1)
    lsl u64 *block @r1 @r1 *main <>

    jmp @r11 ^@r4 ^@r10
    @r5 @r4 <M> @r10 <> u8

    @r11 (u32/0_2) @r4 @r12 @r1 M *main

    dw u32 @r4 (@r11/1) @r2 (^@r1+1) @r3
    lsl (u16+2) u16

    movk *main ^@r10 (@r3/0_2) <>
    dw && (^u32+0_1) ^@r6
    lsl @r9 u8 u8 (<M>+2) M <> M

    movk u32 @r1 ^@r6 @r5 @r2 u64
    push <> @r7 @r10 @r10 <>
    @r10 @r10 @r12 @r6 @r8 ^@r9 @r5 (@r8+2)

    ldp (@r7/1) @r9 (@r3+1) @r11 @r1 <>

    @r6 (@r4/1) ^@r5
    mov (^*block+0_1) u32 @r7
    movk (^@r2+0_2) u64 ^@r10 M @r4 u8
    @r10 ^<M> u64 (&&/2) @r4 *block
    mov ^@r11 @r11 ^u64 (^<>/0_1) u8 <M>
    dw @r12 u16 (@r9/3) ^@r8
    @r4 && @r7 ^@r8 ^@r1 @r2 ^@r11
    push <M> @r8 ^@r7 @r7
    lsl *main *main && M @r10 u8 (^M/3)
    jmp ^@r10 @r12 <M> @r6 *block @r10

    @r3 u32 (^*block/3) @r6

    ldp (*main+0_2) (&&+3) ^@r11 u32
    @r10 ^@r2 &&
    cmp ^@r2 *main ^@r10 *block <>

    cmp M (u32+0_2)
    @r8 *main ^@r10 ^@r5 u64 <M>
    cmp (^@r6/2) *main @r1 <> M ^@r6
    ldp @r7 u64 M
    jmk ^@r6 ^&& @r3 (^M+3) @r2 && @r9

    movk @r3 @r8 M ^@r7 @r6

    mov *main M @r10 (@r7+0_1)

    lsl (^@r8/3) u8 @r2 @r11 u16 @r2

    @r3 (@r1+3) @r12

    mov @r9 (^@r10+2) @r4 @r10 *block

    ldp ^<> @r5 @r10 u64 @r2
    mov M *main @r10 *main @r5 (@r5/2) <M>

    ldp @r2 <M> u32

    @r2 (@r5/3) (@r12/1) (^@r7+0_2) ^@r8 u64 @r5
    @r5 (@r12/0_1) ^u32 (u64+3) *block @r5 ^@r10 &&

    @r10 ^@r5 <> && ^@r9 @r7 u32 (@r1+3)
    ldp (^@r12/0_2) @r8 (^@r9/0_1) (M/3) @r3 @r4
    cmp *block ^u32 @r1 u16 @r7 @r12

    dw (*main+1) ^*main ^@r6 (*main+2)
    lsl M M
    push @r3 @r5 @r9 @r5 ^@r2
    @r5 u64 ^M

    @r12 u8 @r12 @r9 @r7

    jmk *block ^@r12 @r10 @r8 ^<M>

    jmp @r12 @r8 (<M>/2) ^<M> ^u32
    jmk (@r10/0_2) u64
    ldp @r5 @r8 ^@r6 *main @r4

    ldp <> u16 && @r4

    @r6 <M> @r7 @r8 @r11 ^@r1 @r10
    movk u32 @r10 @r11 @r3 @r5 @r5 ^&&
    cmp @r9 ^*main @r3
    dw *main @r4 <M> (@r4+0_1) M
    cmp ^<> (^@r5/1) ^u16 ^@r12 @r4
    dw (u64+2) && @r8

    movk @r2 *block @r6
    push ^*block u64 @r12 @r12

    @r12 *main && ^@r9 *main
    dw @r6 <M>
    jmp @r4 (^*main/3) u32 u32
    dw @r12 @r12 (&&/0_2) (@r8+2) @r4 @r10

    ldp @r7 u32 @r7
    jmk (@r3+0_1) @r3 <> && u16

    @r9 && @r11 ^u64 (@r6+0_1) @r8
    ldp ^*main @r8

    movk u16 @r11 *block
    push (^@r7+0_2) (^*main+0_2) @r2 *main *block (u8/2)
    @r3 u16 @r3

    @r11 <M> @r3 @r10 @r11 @r3 u16
    @r12 u8 @r2 @r6 ^*main @r7 @r10
    @r12 @r8 ^@r5

    ldp @r3 @r3 ^@r1 (@r6/3) (*main/0_2)
    jmk && && (^*main+0_1)

    jmk @r11 u32 (@r5+2) *main (M/3) u32 (@r2+3)

    mov && M @r11 ^@r9 (u64/0_1)

    mov @r9 u64 u64 @r2 u8 @r4
    lsl (<M>/0_2) @r3 ^*block ^@r7 @r3 @r12 (@r5/0_2)
    movk <M> @r10 @r3
    jmp @r4 @r4 @r8
    @r4 ^M u32 @r7 M u8 @r1

    ldp ^@r1 ^@r4 (@r10/3) ^@r8 (^@r1+1) @r8

    @r7 ^@r4 u64 <M> ^@r1 (<>/0_1)
    jmp u32 @r6 @r2 @r7
    @r11 (@r8/0_2) @r4 @r6 u16 (u64/3)
    dw @r8 @r2 ^@r6 (^@r2+0_2)
    push ^@r2 @r1 @r12 (@r5+1) ^u64 @r12 (@r2/3)
    @r5 @r4 ^&& u32 M u64 <M> @r7

    jmk @r5 ^@r4 (^u64+0_2) u32 (<M>+3)

    dw @r6 @r4 M ^@r4 u16 @r11 ^@r10

    mov u8 && (u64+2) u16 *main @r8 ^@r12
    movk ^@r1 (@r12+0_1) ^*main ^@r10 @r12 @r11
    movk @r4 u32 @r1
    dw @r7 ^*block (<>+0_2) @r12 @r4 <M>
    @r9 M @r11 @r12

    @r6 M ^M

    dw ^@r5 @r5 (^*main/3) (@r11/2) u16 @r11 @r10
    jmp ^@r10 @r5 @r12 u32 @r12 (@r1/3)
    cmp ^u8 @r9
    lsl @r6 (^*main/0_1)

    @r12 @r5 @r6 @r5
    jmk u32 @r7
