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
    movk ^*block <> *block @r9
    jmp @r2 @r8 u32
    dw @r1 @r3 ^u16
    cmp @r1 @r8 *block <>

    movk @r8 @r6 @r5 *block ^*block @r12
    @r3 @r5 u64 ^M @r7
    jmp @r7 @r2 u8

    mov *main ^u8 && *block ^@r6 @r10 <M>

    cmp u8 ^@r7 @r2

    lsl @r8 @r9 *main @r9 (<>+3) @r3 u16
    dw @r8 *block u64 (@r6/0_1) @r5 @r6

    @r5 @r8 && @r5 (^@r6/3)
    @r1 (@r12/2) @r11 <>
    @r2 (@r11/0_2) @r9 (^<>/3) && ^@r11 (@r6/3) (<M>/1)

    jmp ^@r11 @r9 ^@r12 u64 @r10

    movk u64 *block <>
    lsl @r11 && u8 *block ^&& (<M>+0_1) ^M
    movk ^@r10 @r8 (u16/0_1) <> @r1 <> @r2
    movk (@r5+2) @r6 @r7 @r9 @r5 @r9 u8

    cmp ^@r9 ^<M> (@r11+3)
    cmp @r9 u32 u8 ^u16 @r3 (@r1+1)
    cmp u8 (^@r8/3) @r4 u16 (M+0_2) @r8

    movk <> (<>/1) @r11 @r9 (&&/2) @r4 u32

    push u64 <> @r9 @r5

    movk *main <> @r5 M u32 *main

    @r6 (M/0_2) @r9 u16 @r5

    @r6 ^@r10 u8 *block <M>
    @r3 u16 u8
    jmk (M/3) <M> @r2
    @r12 @r9 <M> <> @r2 && u8 (^@r3/3)
    @r9 && && @r6
    lsl <M> @r3 ^@r10 @r11
    ldp M ^@r10 @r8 (<>+0_1) @r8 M
    ldp *main u64 @r7 u32 @r8 && @r10
    @r3 *main ^u16 ^@r1 && @r1 *block
    ldp @r4 (*block/0_1)
    @r12 M ^u64 @r5 @r5 (&&/1) @r2 M
    movk ^&& @r2 @r2 ^<>
    @r11 @r7 *block ^@r2 (@r11/0_1) @r3 @r1
    ldp *main ^u64 u64 @r4 @r1
    dw ^@r3 (@r7/1) ^M @r11 ^&& @r10 ^@r6

    @r4 @r1 <> ^&& u16 <M> @r10 M

    ldp @r10 @r1 (^&&/0_1)
    jmp (^@r7/0_1) @r8
    jmp @r2 (u16/0_2) u64 (<M>/1) M @r12 u8
    jmp @r4 @r11 @r11 @r6 ^M (@r12+0_2)

    movk @r2 (@r8+3) ^@r1 u16 && (<M>/0_1)

    jmp <> && <>

    ldp ^@r8 (^@r11+1) ^<> ^@r2 @r10 @r11
    lsl *main (@r3+1) @r8 <M>
    jmk M @r10 ^<M> u8 ^@r7
    lsl ^@r4 @r7 @r4

    @r1 && ^@r12 ^<> @r7
    dw @r10 M (@r9+0_2)
    @r1 @r3 @r3
    mov ^@r3 u8 && <M> M @r8
    movk *main ^u64 @r5 <> <M> u16 ^u8

    jmp u16 @r4 <M> (u8+1) @r6 @r10 @r2
    mov ^@r4 @r1
    mov @r2 && *main @r9
    @r7 @r3 ^u32 u64 u8
    jmk @r8 (@r5/0_1) @r10
    cmp <M> (*main/0_2) (@r11/3) @r2 (&&+0_1) ^@r1 *block
    mov @r12 u8 u8 @r10
    @r12 @r9 u16 @r12 u64

    lsl ^*block (u64+3) (&&/3) ^@r7

    jmp M @r10 ^@r3 @r1 <M> *main
    jmp @r3 <>
    mov (^@r6+0_2) (u8+2) *main @r5 <> @r2 @r11
    lsl <M> ^@r3 u64 @r11 @r9 (<>/1) u32

    @r8 u64 *main @r9 @r8 @r3
    movk <M> *block
    movk *block @r5 @r7
    @r12 ^@r11 u8 (*block+0_1)
    mov *main (@r9+0_1) ^@r10 @r12 @r3
    movk @r4 @r3 ^@r4 u64 (@r10/0_2) ^u64 @r1
    lsl (@r2/3) u64 @r1 (@r10/1) && (M+3) ^@r7
    push ^@r12 @r10
    dw ^@r9 @r1 @r12 && @r9

    ldp u16 u8

    lsl @r6 @r2 <M> (&&+1)
    dw @r3 (@r12/0_1) @r2 (*block/1) (@r5/2)

    push (@r2/3) (<>/0_2) ^u64 @r4
    lsl @r2 u8 @r4 ^@r3 ^u8
    dw u64 @r10 @r12 (<>/0_2) @r1
    @r11 @r11 @r6 M
    jmk @r10 @r5 (*main/3) <M> &&
    movk (u32+3) @r2 @r8 M
    @r6 u16 @r9 (u32/0_1) ^u64 (^@r8/3) *block u8
    movk @r11 @r4 ^@r10 (@r8+1) @r11
    jmp @r9 @r2 (u64+0_2)

    movk (M/3) @r9 (M+2) (@r3+1) @r11 @r11 @r11
    @r10 @r9 ^<> ^u64 ^<> (@r1/2) ^@r12
    @r10 (u16/0_1) u8 ^@r11
    mov ^<M> @r11 ^@r7 @r6 @r1 *block

    push ^u8 ^*main @r12 *main ^@r2 @r1 @r9
    @r5 <M> ^<M> @r12 @r4

    movk (@r9/1) (@r2+1) M @r3
    jmk u16 ^@r12 @r10 @r9 u32
    mov u8 @r8
    @r3 @r1 ^@r9 *block <M> @r11 u64 (@r6/1)
    lsl ^u32 @r5 @r8 ^@r3 @r2 @r1
    @r7 u32 (@r10/2)
    @r3 u16 @r11 @r12 u16 *main
    lsl @r9 ^u8
    lsl @r8 *main

    @r4 @r10 (<>+0_1) *block u8 *main
    push ^@r7 @r12 @r5 *main u64 @r6

    mov ^@r3 ^u32 @r11
    mov @r1 @r11 u64
    jmp @r12 ^M u64 ^@r5
    movk <M> (M/0_2)
    @r5 ^@r6 @r10 @r5
    push @r5 u8 @r3

    lsl @r3 @r6 @r1 @r5
    cmp ^@r10 (@r6/0_2) @r6 @r11 <M>

    @r4 u16 M ^&& M ^@r6

    movk u8 @r4 (<M>+0_1)
    lsl u16 @r8 @r5 @r7 @r6 ^@r9

    jmp (@r8/0_2) <M> (*main+2)
    dw u32 ^*main @r12 u64
    @r10 @r10 (@r6+1) (u16+1) *block *block

    mov M && M (@r6+1) @r3 @r1 *block

    push @r4 u32 @r6 (&&/3) (&&/0_2) @r4
    lsl u32 @r5 @r7

    movk @r10 ^&& *main *block @r1 @r4 @r4
    @r5 u64 ^@r3 @r12 u32 ^@r2

    @r5 @r8 u64 ^@r10
    lsl @r11 u8 <M> u64 ^u8
    ldp @r8 <> @r4 M M

    dw ^M @r11
    @r4 @r8 u8 <> @r2 *block (&&+1)
    lsl @r5 @r5 @r7 <M> u32 @r7 u32
    push (@r1+0_2) u32 @r4
    dw @r1 <M> (<M>+3) ^M @r7

    cmp @r4 M ^@r10 @r5 u8 @r4
    cmp (@r6/1) @r4 @r10 M M ^u32
    cmp u32 (@r5+0_2) (@r10+0_1)
    movk @r5 @r2 @r4 @r1 && (u8/2)

    cmp @r1 @r7 *block @r5
    jmp @r4 <M>
    dw u32 u8 ^@r8 ^M ^@r6

    push ^*main @r9 @r4
    cmp ^@r9 @r3 @r8 ^@r11 <M> (@r10/0_1)
    push <> @r8 @r8 @r11 @r7 (@r7/1)
    ldp @r3 @r9 @r3
    @r2 @r3 ^u64 @r4

    lsl @r11 @r5 <M> @r2 @r4 <M>

    ldp ^<M> ^u64 ^M M (@r12/1) ^@r9 @r10
    @r2 u8 @r3 (^@r1/2) @r12 M M @r2
    ldp @r11 (u8/0_2)
    @r5 *main ^@r10

    jmp (@r2+0_2) && @r8 M ^@r6 <> @r9
    ldp (@r9+0_1) @r8
    lsl (@r5+0_2) @r10 @r9 u64 @r9 @r11 u64
    cmp @r1 @r6 (@r9+1) u32 @r3
    lsl u32 *block

    @r5 u32 (@r4+0_1) @r11 @r10

    @r7 @r2 *main @r11

    @r3 ^@r1 @r12 @r3
    push ^@r3 @r5 @r3 @r2 u16 (@r9+3) @r1
    @r1 u8 (u8/0_2) @r5 @r10 <> <M> *main
    @r3 <M> (^@r8+0_1) @r10 <> u16 *block @r2

    @r3 @r1 <> && @r10 (^@r12+2) @r10 u64
    @r6 @r2 @r8 ^@r11 (u32/0_2) @r12 @r8
    push (@r10/0_2) && @r2

    @r5 @r4 &&
    lsl *main @r12
    dw @r2 @r8 ^<M> ^*main u16 ^@r8 *block
    jmk @r9 @r9
    cmp <M> ^@r11
    @r4 @r5 @r5
    cmp @r4 (u64/1) <M> u16 && (@r1/0_2) ^@r3
    movk @r1 @r2 <M> (@r7/1) @r6
    @r1 ^@r2 && ^&& @r10
    dw @r10 *block u64 @r11 @r9 ^@r11 @r9
    jmp @r3 ^u8 ^@r1 ^@r10

    @r4 (^@r9/1) ^<> ^&& *main (@r10+0_1)

    movk u64 *main @r7 @r9 (@r8/0_1) @r6 (^*main/1)
    push *main (^@r10/0_2) @r1 u16 @r3 && @r8

    dw ^u64 @r3 @r4
    ldp && @r10 *main @r1 (@r11+3) <M> @r5
    @r3 (@r6/3) @r1 ^M ^u32 @r2 ^@r11
    ldp (@r12+2) @r1 u32 &&
    push @r5 <> @r9 @r8 ^u32

    cmp @r3 ^u8 M @r11
    cmp M u16 u8
    cmp @r2 @r5 @r6 M
    cmp @r2 @r6 (^&&/2) @r2 @r11 @r9
    mov <M> @r10 ^u64 u32 u32
    movk @r1 *block ^@r2 @r5 @r1 u16
    @r12 @r9 ^@r1

    lsl ^@r8 u64
    @r10 ^@r11 ^@r5 ^@r11 u16 @r11 *main @r9

    jmk u64 u8 *main
    lsl @r9 @r1 *main (M+2) @r11 @r11
    jmp @r9 ^@r9 <M>

    jmp *block @r11 (@r9/1) ^@r12 u8 M

    @r7 @r5 &&
    ldp ^@r7 <M>

    ldp @r6 @r7
    @r12 @r1 ^u64 *main @r12 @r9 @r10
    @r8 ^u32 *main @r5 ^<> @r3 @r2
    push @r1 (M/0_1)
    push (@r3/1) ^<> ^u32 @r11 M

    push ^@r1 ^*block @r6 u64 ^@r3 ^*main

    dw (@r8+0_1) ^u16 @r11
    @r6 @r7 @r4 @r10 @r5 <M>

    @r12 (<M>/0_1) (@r7+3) @r5
    push M M
    @r7 (@r6/0_1) <> (^@r1+2)

    @r11 @r7 @r9 (@r5/2) ^@r9 @r2 *main @r6
    cmp (^<>/2) @r11 ^<>
    @r4 @r1 @r5 @r8 (M/1)
    ldp @r1 (@r8/3)
    push @r2 @r12 @r6 ^@r7 ^u16 @r3

    movk u16 @r12 *block @r12 ^@r8 @r12
    lsl <> @r1 *main
    push u32 ^<M> ^<M> (<M>+0_2) (@r9+0_2) ^&&

    jmk ^@r3 u16 <> @r2
    @r7 (@r2/2) (u64/0_1) &&

    movk @r12 @r9

    push M <M> @r8 @r12 @r2 u32

    @r4 @r8 @r3 *main ^*main
    push ^u32 @r4 ^<> ^@r7 @r4 @r3
    push (@r6+0_1) u8 u8
    cmp && @r6 ^@r3 ^@r1 u8 @r9 <>
    lsl *main @r6 ^@r9 @r8 @r12 &&
    @r1 (@r11/3) @r8 u8 <M> @r5

    jmp (u32+1) <M> (@r4+2) <M> @r9 *block @r4
    @r2 @r11 @r2 @r2 ^@r5 (^@r6+0_1)
    jmk @r5 @r10
    push @r2 ^@r9 @r11
    ldp @r7 @r5 u16 @r11 @r9 *main u64
    mov @r9 (u16+2) ^<M> ^u16 @r3 u32

    @r8 u8 ^@r3 (@r6/2) <M> <M> @r9 <>

    jmk @r8 @r1
    lsl @r2 <M> (@r12+2)

    dw u16 (^@r2+2) @r9 @r3 ^@r8 *block @r12
    @r6 (u16/2) u64
    push u8 ^@r7 @r5 ^<M> (<M>+0_2)
    @r7 @r7 *main (@r6+0_1) @r12 ^@r6 @r5 ^@r10
    lsl && @r3 @r2 @r11
    @r8 u32 @r11 ^@r8
    push <M> <> ^u32 u16 ^@r5 @r7
    ldp @r12 M @r9 @r3

    movk ^@r1 @r6
    @r7 <M> ^<M> (@r4+3) @r9 @r7 (@r3+0_2)
    cmp M @r5 @r11 @r8 *main u32 ^&&

    jmk u32 @r1 *block @r12 <M>
    dw ^*block @r8 *block @r10
    lsl <> *block u8 @r8 ^*main ^u64 *block

    dw @r5 *block u32 ^@r7 ^*block
    cmp @r7 @r8 (@r3+1) @r2 ^@r1
    @r2 (^&&/0_2) M u64 u8 ^@r9 @r4
    lsl @r9 && ^M
    cmp *main M @r9
    jmk *main ^@r8 *main
    jmp ^u64 @r12 (u64/0_2) @r12 <> <M> *block
    ldp ^<> ^@r12 @r7

    jmp @r10 @r12 u8 ^@r1 u32 u16
    movk @r12 @r8 @r8 (u8+3) @r7 u8 ^<M>
    lsl @r4 @r12 ^@r9 @r11
    dw ^@r10 <> @r9 ^@r6 @r11 ^@r7
    @r10 @r6 (u32/1)
    ldp @r5 @r8 ^@r3 ^u64 @r10 ^@r4
    push (^@r2+0_1) @r7
    lsl @r5 @r3
    push ^@r1 ^u32 M

    push ^@r3 <> @r3
    jmp *main u64 (@r6+2) @r3 (@r6/0_1)

    mov *main u64
    @r10 @r4 @r1 *main <M> ^@r6 @r5 *main
    cmp @r2 ^u16 @r6

    push M @r7 <M> @r6 (^@r4+3) @r10 ^u16

    dw && <M> @r4 <M> @r10 @r3
    dw ^@r1 @r3 *block
    jmk @r7 ^@r8 u8 @r2 @r6
    lsl ^@r5 (^u32/2) @r8 @r4 @r5
    cmp (@r7/1) (@r2+0_2) (^*main+3) u64 @r11
    jmk <M> u64 *block *block

    movk ^u8 (*block+0_1) (u32/0_2)
    @r11 @r4 ^&&
    mov u32 <>

    @r3 @r9 @r7 u8 u16 *block
    @r7 @r2 (<>/1) @r11 *main ^<>
    dw @r8 M @r12

    jmp ^@r6 u64 u8 ^@r7 <M> ^&&

    @r5 (@r9+0_1) @r10

    jmp (M+1) @r6 @r7 @r2 ^@r10 @r3 u16
    push @r7 *main (^<M>+2)
    jmk && @r11 ^*block (@r10+0_2) (^*main/1) ^u16
    movk @r4 ^u64

    jmp ^&& @r7 @r11 @r4 @r8 <>
    @r10 u16 (*main/2) @r12 @r7
    lsl u32 @r5 ^&&

    @r2 @r4 @r6 @r7 && *block

    mov @r9 *main @r10 <M>
    mov ^u64 ^M
    cmp u64 @r3 ^<M> u64 @r4 *main
    @r7 u8 @r12 u8
    jmk <M> ^@r6
    ldp @r12 @r2
    jmp @r4 ^@r8 @r9 (@r7/2) @r12 <M>
    cmp @r12 <> *main

    ldp @r8 @r6
    movk && u16 *main ^@r6 ^u16 (<M>/0_1) ^u8

    @r11 ^@r6 @r1 u32 ^@r5 @r1 @r7 *main

    @r8 @r9 (@r4/3) @r8
    jmp <M> M M *main u16
    @r11 (^@r4/3) ^@r4 && @r10
    dw && @r11
    @r9 (M+3) (^&&+0_2) u64 @r5 ^@r10 @r6 @r7
    cmp u32 (^*main/2) ^<M> <> @r12 u32
    lsl && *block
    @r2 @r2 ^@r10 @r1 (<>/0_1) ^u64

    push ^@r3 ^u16 @r9 @r1 (@r8+0_2) u16 @r5

    @r2 u8 (*block+1)

    mov ^@r7 @r9

    @r1 *main <M> @r10 u32 <> @r1 @r6
    jmk ^@r8 @r10 u8 <> (u16+3)
    lsl @r12 (u32/0_1) @r11 @r6 <> @r1
    @r5 @r1 ^@r1 &&
    cmp @r11 @r4
    jmp @r4 @r9 ^*main @r3
    @r2 u8 @r12 ^@r9 *main ^@r10 @r8
    mov u64 *main @r2 u64 *block ^M
    @r4 @r4 (^@r2/0_1) <>
    movk @r9 *main M @r12

    movk (*main+0_1) @r2 @r11 (*main+3) ^@r11 @r9 @r3
    ldp ^*main (^u64/0_1) && @r12 u64 @r2
    movk @r6 ^*block @r12 @r4 M
    jmp @r8 @r7 <> && (^@r5/1) @r10

    ldp (@r2/0_2) @r3
    ldp <> @r9 ^@r2 ^@r7

    ldp (u32+0_2) @r1 (@r9+1) u16
    mov @r11 @r7
    mov ^@r10 ^@r6 @r10 @r9 @r11 @r10 @r5

    jmp @r1 *block ^@r9 *main
    jmp ^<> ^<M>

    movk @r8 <M> ^u64 @r1 @r3 @r10 @r7
    movk @r2 @r9 (^@r5+0_1)

    jmk @r2 @r11 && @r6

    movk && (u64+2)

    lsl @r6 (@r3/3) @r12
    @r10 *main @r9 ^@r12 @r12 @r10 @r11 @r9

    @r9 ^@r2 *block *main && @r4 <>
    lsl M u16 u8 @r4 @r5
    dw @r2 @r2 <M> M
    ldp @r11 && u64 @r8 ^*main @r5 ^&&
    cmp <M> (@r11/0_1) @r2

    push (^u8+3) ^@r3 u16 ^<>
    ldp *block <M> @r1 @r1
    dw @r5 ^@r11
    movk @r8 u8 @r2 && @r1 ^u8 *block

    movk M <> @r9 (^u32/0_1) u32 <> @r6
    push ^@r5 <M> && ^*main
    @r11 ^*main @r8 u16 @r9 @r3 @r8 &&
    dw @r12 <M> (@r9+0_2) @r10

    movk *main *block

    @r11 ^u64 ^@r1
    movk ^*main @r9 @r5
    dw @r1 ^u64 ^@r5 (@r9/2) u8 u8
    movk @r10 ^@r7 u64
    @r1 @r11 &&

    @r8 && (u32+1) u16
    jmp @r6 @r4 (^@r7+3) ^@r10 ^@r7 && &&
    jmk M @r3
    jmp u16 *main (@r7/0_1) ^*main ^@r10 *block

    @r1 @r7 ^u32
    ldp (@r6+0_2) ^*block (u64+2) u16 && ^@r10

    mov (u8/2) @r9 *main @r3 u16 @r9 @r7

    @r1 @r5 @r10 @r2 ^@r6 ^@r2 @r8

    lsl ^@r1 @r2 ^@r12
    cmp @r7 u64 *main @r11 @r9 ^@r2

    mov @r5 @r10 ^*main ^@r1 u32 @r1 @r9
    @r12 @r10 *main <M> @r10 @r1
    @r3 @r8 @r9 *main
    @r8 @r1 u64 (@r4+3) @r8 u64 (*main+3) u32
    cmp (@r12+3) @r6 (u32+1) <M> <M> @r9 u16
    @r3 (@r7/2) @r5
    push u16 (*main/1) u32 && *block @r10
    dw M (@r8/0_1) @r3 ^M ^@r5
    jmp @r5 ^@r11
    dw @r10 <> ^@r10 ^M @r11
    cmp ^@r9 <M> ^M (u32/3) && ^<>

    lsl @r7 *main *block @r6 @r8 @r1
    jmp @r4 ^<>

    jmk @r5 *main (*main/0_2) &&
    mov u64 @r5 (^<M>/1) @r5 ^@r6 u8 @r5

    push ^u32 @r6 *main

    movk @r7 M
    dw @r3 @r11 &&
    push (*block/1) @r9

    jmk ^@r9 ^<> (@r11+2) ^@r6 u32

    lsl @r3 *block
    jmk ^*main @r10 @r4
    movk @r12 @r10 u8 ^<> ^@r10
    dw (@r12+2) M
    jmp && u64 ^*block u64 @r2
    cmp u16 @r6 @r11 ^@r12 @r1 @r8

    jmk ^*main ^u16 u16 <> (@r10+3)
    dw ^*main <> (<M>/1) @r9 ^u8 @r3 ^@r4
    cmp M && @r8 (u32/1)
    dw @r2 (^&&/3)
    dw @r8 @r7
    jmp <> (<M>+0_1) (^<M>+3)

    @r10 ^@r2 @r2 ^@r7 ^@r4

    movk @r8 <>
    cmp @r12 @r6 ^@r2

    @r9 @r1 ^&& ^M @r3 @r7 ^M

    @r3 ^@r4 u16 (<M>+2)
    @r4 u64 @r3
    @r8 u16 @r4 <> u32 *block @r10

    mov @r10 (^@r11/0_2) ^@r7 @r8 @r6 ^*main
    mov @r5 @r12 @r1 <> @r4 (@r10/2)

    @r4 @r2 u8 @r8 u32

    ldp @r11 ^<> ^@r2 @r5 @r3 @r7 ^@r11

    @r5 @r2 ^@r10 *block
    @r3 <M> (^@r5+0_1) @r4 (^u64/0_2) @r4

    jmp M @r11 ^@r4
    jmk (@r4+2) (u64+2) <> @r7 ^u32
    @r9 @r8 @r1
    ldp @r9 *block *block ^&& &&
    movk && ^*block @r5 @r1 (^@r4+1) (u16+2)
    @r8 (&&+0_2) @r5 u16 @r12
    push ^@r5 *main u32 @r10 u64 M
    jmk ^@r8 @r11 *main @r5 @r3
    movk (@r2/1) ^@r1 (@r5+2)
    jmp @r7 @r6 *main (^*main/1) ^@r10 @r11

