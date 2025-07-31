entry:    
    @r4 u16 @r1 <M> @r5 @r2
    mov u8 (&&+3) (@r5/2) u16 ^@r3 @r4

    mov *block && <>
    cmp && ^*block @r9
    lsl (u16+1) @r2 ^@r7 @r5 @r7 u8 @r8

    jmp u32 M @r5 (^<M>/2) ^u32 u64
    movk ^@r1 (&&/1)
    lsl <M> @r7 (@r5/0_1) u64 &&
    jmp @r1 @r9 ^@r8 M <>
    dw M @r11 (M+0_1) ^@r12 @r12 u16

    movk (^*main/0_2) (@r9/0_1) (@r12/2) @r11 @r6 ^*main

    cmp @r1 ^@r5 u64
    jmp ^*block ^@r11
    @r3 @r12 ^M <> *main ^<>

    jmk M @r11

    mov @r9 @r7 @r3 ^<M> *main *block M
    mov && M
    mov ^@r11 @r8 @r11 *block @r3 ^*block ^&&
    movk @r8 ^@r1

    jmk @r12 *block (@r1/3) @r7 @r8 <> u32
    jmp *main (^u64+0_2) u16
    lsl ^@r8 @r6 (M+1) @r9 u32 ^@r7
    push @r6 @r3 ^u8 *main @r1 <M>

    push @r8 @r3 (@r4+2) @r6 u8
    jmk @r3 ^u16 <> <M>

    jmk @r10 u16 (&&+3)

    ldp (@r5/3) u8 u32 @r11
    ldp (@r2+0_2) *main @r3 u16 @r8 @r9 ^@r6
    push ^u32 ^@r9 @r2 u8 ^u64 (^u64+0_1) ^<M>
    jmk @r7 M (@r2+0_1) (^<M>/2) @r8 @r10 @r9
    cmp @r5 @r2 u8 ^u32 *block ^u64 @r5
    mov u32 u8 ^<M>
    ldp ^M @r12 @r12 ^u64 (@r2/3) @r6
    jmp @r11 (@r9+0_2) @r12 ^@r8 @r9 *main
    jmp *block (*block/1) (*main+1) @r6 @r10 ^@r4
    movk @r6 *main
    mov ^@r6 <> *block @r2 @r12
    cmp @r11 @r12 <M>

    @r2 @r12 (@r11+0_1) @r2
    push ^u64 ^@r1
    jmp @r10 <> @r1 @r8 @r7 u64

    push @r7 && u16 ^u32 u64 (^@r10+2) *block
    cmp <> @r8
    cmp (@r1/0_2) <> @r4 @r8
    @r12 @r2 @r5

    jmp @r9 @r2
    @r6 @r4 @r9
    movk @r1 ^<> u16

    movk u16 (@r2+1) @r7 *main
    jmp @r9 @r10 ^@r9 @r7 u8 @r10 @r1
    @r4 @r1 *main

    @r5 u8 (@r2+3) @r8 *main u8 && ^<M>
    jmp <> ^u64 (@r12+1) @r9 &&

    cmp @r1 @r11 (@r1+3) u32 ^u8 @r5 ^@r2

    movk @r8 @r5 ^<> @r6 *block @r1
    cmp *main *block (@r8/3) @r9
    movk u32 @r5 @r2 *main *block ^M (@r12/0_1)
    mov u8 @r9 ^@r10 ^@r5 (@r7+2) *block @r8
    push ^@r4 @r9 @r8 <> ^@r12
    movk ^@r5 && ^@r4 @r9
    mov (*main+0_1) M ^@r6 @r3

    @r9 <M> ^@r10 ^@r10 *block
    ldp (^<>+3) ^M u8 @r8 @r6 *block

    @r5 (^<>+0_2) ^u64 @r9 ^@r8 ^@r10
    jmk ^u8 (@r6+1) ^u16

    ldp @r8 @r9 u8 @r6 u32
    jmk u8 <M> @r11

    push ^@r8 && @r8
    lsl M @r3 u32 <M> *main

    dw @r11 u32
    cmp @r4 u32 (<>+1)
    lsl <M> (<>/0_1) @r4 (@r10/3) (@r1/1) <M> (<M>/0_1)

    cmp @r8 *block M
    lsl u64 u64 *main @r10 *block ^@r11 u32
    jmp ^M @r4 *main @r3 @r6 u8
    movk <> (@r3+3) ^@r7 @r12 && && @r11
    movk ^@r5 u32 (*main/1) @r8
    lsl M ^@r7 &&

    lsl @r11 <M> *main ^u16 @r6 @r10 (@r11+3)
    jmk @r4 (^@r7+1) (u64+1) ^@r4 ^@r9 @r2

    lsl @r9 <M> <M> u8
    dw u8 <M> u64 *main ^<M> *block
    jmk @r8 @r11 (<>/1) <> u32 @r8 @r5
    @r2 @r9 ^u64

    @r5 @r3 @r10 *main @r2

    @r4 @r2 u16 &&

    mov @r9 @r12 @r4 ^<> @r8

    @r10 @r10 @r1 *block

    dw @r2 M <M> M
    dw @r9 u64 ^&& *block @r10
    ldp M && @r12 (@r7/2) u16 ^@r1 (u32+0_2)

    @r9 <M> @r2 (^@r3/1) (@r2+2) <M>

    dw @r11 ^*main (@r10+0_1)

    push ^*main ^*block @r6 ^<> &&

    dw u32 u64 M
    ldp @r6 u8 @r3 ^@r6 u32 u16 @r10
    cmp @r12 @r3 &&
    @r1 @r9 (@r6/1) @r11 u64
    lsl (@r8+0_1) @r12 @r6 u64 @r6 @r7 @r11
    lsl ^@r10 <>
    ldp @r4 u64 ^@r4
    push *main (u16+2) *block ^@r5
    @r11 @r10 (@r2/0_2) @r8

    dw @r8 u32

    push @r1 <> @r10 ^@r6 (^@r9+0_2) u64

    @r1 M (*block+0_2)
    ldp (^*block+2) ^@r7 <> (@r11+2) ^@r7 @r5 @r8

    mov <> *block && *block
    @r12 (u64+2) *block ^@r9 ^@r5 (@r7/3) <M>
    mov u64 && @r8 @r12

    @r5 (@r2+0_2) @r8 <M> @r10 @r8 u32
    push @r3 @r8
    dw @r10 && *block @r6 (@r4/0_1) @r3 (@r6+0_1)
    dw u32 @r8 @r10 @r8 M *main

    @r10 && && @r1 @r9 ^*block @r8
    lsl ^@r6 @r5 u64 ^@r2 u8 u8 ^<>
    movk <> @r1 @r12 ^u16
    ldp (@r2/0_2) ^@r11 <M>

    @r7 @r7 @r8 M

    lsl *main ^@r2 @r6 *block @r4
    @r5 @r10 @r6 <M> @r10 u8

    dw ^@r11 M

    movk ^@r4 (@r2+1) @r7 ^@r11 u16 *block
    jmk @r5 @r1 @r5

    ldp @r8 @r9 @r3 @r10
    cmp (u8/3) u32 M

    lsl (@r10+2) @r8 u64 ^@r11 ^u32 M
    @r11 ^@r2 <M>

    cmp ^@r11 @r10
    ldp @r11 (u8/3) <>
    push ^&& @r6 @r6 *main u32
    jmp ^@r4 @r8 ^@r11 @r6 (@r6+0_1) @r6 @r10
    push <M> (M+0_1) <> ^u8
    push (@r7/1) ^@r12
    ldp @r8 && ^<>
    movk u64 @r7 @r12 ^<> *block <>
    dw <> M @r7 u8 @r4 u16 @r5
    @r7 *main ^@r7 M @r1

    jmp u64 (<M>/1) ^@r2 (*main+1) @r3
    @r2 (@r12/0_2) @r8 @r11 ^<> (u64/0_2) @r7

    jmk <> M @r2
    jmp @r12 (@r7+1) ^@r12 @r12 @r4
    @r7 @r9 (@r9/0_1) @r8
    mov ^@r7 @r12 (@r9+3) *block @r7 @r7
    jmp @r9 ^*main M @r4 @r8 @r7 @r3
    movk M u16 @r11 ^M && @r2 ^<M>
    movk <M> (&&+0_2)
    mov ^M && u64
    jmp u8 (@r10/0_1) (^@r5/0_2) u8 (^@r5/0_2) ^*main (*main/2)

    jmp (@r9+2) && <M> *main ^@r2

    cmp *block @r10 ^u64 @r6 *main
    movk M (^<>/0_1) @r11 *block
    jmp @r1 @r1 @r6 ^u32
    dw @r7 @r11 (@r2/0_1) u8 @r2

    jmk *block @r2 @r10 @r4
    jmk @r2 <> @r1

    push *block M @r5 ^@r9
    @r5 @r5 *block u8 @r11 @r11
    movk (@r12/1) (@r4+0_2) @r6 &&

    movk ^@r3 @r11 u32 <> @r6 (&&/3)
    cmp ^<> ^@r3 u8

    push @r2 *block @r5 u16 ^@r9
    lsl <> @r4 *block u32 ^@r7

    mov ^u16 (@r12/0_2) (u8/0_2)
    @r3 && <> (&&/0_1) u64 *main

    @r12 <M> <> u32
    dw ^@r2 @r3 ^@r8 ^@r4 (^<M>/3)
    @r12 @r2 <> @r6
    ldp (@r7+0_1) u16 ^@r1 (^u64+0_1) ^@r9 @r12 M
    cmp @r8 ^u8 (@r1/2)
    mov ^&& ^@r12 ^@r7

    mov <> (@r11+0_2)
    push (^@r6+0_1) @r6 (*main+3) <M>

    lsl @r10 M <M> ^@r10 ^@r8 ^u64 (^@r7+0_2)

    jmp (<M>+2) @r10 u8 u32 u64 ^M
    @r1 u64 (@r4+0_1)
    movk (u8/0_2) ^@r6 @r5

    dw <> @r12 @r5 @r4
    @r3 @r5 (^*main/1) @r5 u8 u8 @r1 M
    dw (^@r9+1) ^@r11

    @r2 @r4 @r3 ^@r4 u64 @r4 (@r3/2)

    @r5 @r1 ^@r6 ^@r1 @r7 @r6 ^u8
    mov @r7 u16 @r11 (^@r7+0_1) @r10 M ^<M>

    jmk @r2 @r3 @r5 @r9 @r6 ^u16 &&
    lsl ^@r11 <>

    lsl @r3 @r7 @r7 @r1
    ldp <> @r6 <> M ^@r12 @r3 M
    push *main @r4 u64 (^u16/1)
    cmp ^@r2 <M> ^@r2

    @r10 ^@r10 ^u16 && @r2 @r2 <> ^@r8

    movk ^@r8 ^@r6 @r9 @r3 u8
    jmp @r7 @r3 ^@r10 (<M>+0_2) M (<M>+0_1)
    lsl ^@r4 (@r7/3) @r6
    @r12 @r3 @r11

    push ^*block @r4 <M> @r9

    cmp M (@r8+3) (@r11/0_2)
    lsl @r1 @r12 @r2 @r11 ^@r3

    ldp ^@r5 u64 @r8 @r1 @r12 u64

    @r9 ^@r7 @r12 @r6 @r7 (@r8+2) @r5
    movk @r8 *block ^@r7 u32 (^u32+0_2) @r11
    @r10 u64 (^&&/3) @r6 u8 ^M @r2
    ldp (@r7/0_2) @r7 @r10 @r10 @r1 <>
    jmp && ^@r8 ^@r5 @r1 ^@r9 @r4 ^@r6
    jmp ^<M> @r10 u64 *main @r12 @r8 @r2
    jmk (@r10/0_1) u32 @r6 ^u64 @r3

    cmp <M> u8 M @r5
    cmp @r10 ^@r6 @r7 (@r12/0_2) ^@r6 u32 @r5

    jmk @r3 ^@r11
    dw (&&/1) u16 u16
    cmp ^u32 && (&&+1) @r8 <> (^@r2/0_2) <M>
    dw (@r3+0_2) ^u32 ^<M> @r10 u64 *block

    dw u32 (u16/0_1) @r5
    @r11 @r7 @r11 u32 @r10
    @r1 ^@r12 u64 <M> @r12

    push ^@r11 M @r6 u64 u16 (@r5/3)
    ldp *block @r7 @r5 @r9 (@r4+3) (@r1/0_1)

    jmk @r3 (@r12/1) u8
    jmk @r11 @r2

    jmk (M/0_1) @r3
    cmp @r2 @r3 <> @r4
    jmp <> @r2 (<>+0_2) @r5 ^@r5 (^@r1/0_2) &&
    jmk @r4 (@r7+0_1) *block <> *main ^@r5 ^@r2

    jmp @r11 ^@r11 ^*main
    ldp u64 @r10 ^<>

    @r4 ^@r1 *block

    dw u16 @r3 @r9 <> ^u16 @r3 u8
    @r4 (M/3) ^@r5 && @r4 @r11

    dw <M> @r12
    dw @r11 <M> <> u8 && @r4 @r12
    movk @r7 u64 @r1 @r4
    @r7 <> @r12
    jmk @r10 @r2 ^*main

    dw *block u16
    @r9 u16 @r10 u64 u64

    cmp (&&+0_2) *block @r8 (@r7+0_1) (<>+1)
    @r2 (^<M>+0_2) @r8 <> <> @r7

    cmp ^u32 @r11 *block @r3 @r4 ^*block
    movk <> ^@r8 @r6
    @r6 @r12 ^<> (u8+0_2) ^u8 (@r5+2)
    push ^@r1 (@r10/3) @r5 @r7 @r8
    jmp ^@r11 (@r3/3) @r11 @r10 @r6
    ldp <> ^<M> @r4 @r9
    mov u16 u32
    @r7 ^@r1 (@r5/2)
    ldp @r2 (@r2+0_2) @r1

    lsl @r5 @r7

    cmp u64 ^@r12 @r2
    @r3 <M> @r4 (<>+1) ^@r2 u16 ^@r1
    mov (^M+2) u64 u32 @r3 (*block+0_2) (@r9+2) (*block+0_1)
    cmp ^<M> (^@r9+1) && <M>
    @r12 ^@r11 u64
    jmk M <M> ^@r12 u32 @r6 <>
    jmk ^@r1 <> u32
    jmk M u64 u8 (^&&/0_2)
    mov ^u64 ^@r6 @r3 @r8 @r5
    jmp @r1 @r2 @r4 *block (@r1/2) M @r7
    lsl @r12 ^<> (@r1+0_2)
    @r5 && @r3 @r4
    cmp @r7 (*main+0_1) &&
    lsl @r9 u32 ^<M> ^@r9 @r9

    movk (@r2+3) @r2
    dw ^@r2 *main @r6 <>
    @r5 <M> <> &&
    push <M> @r8 @r7
    cmp @r2 (u8/3) @r4 <M> @r5
    jmp *block @r9 &&

    @r8 @r12 ^u16 <M> u8 @r3
    jmp @r1 (@r11/1) @r2 u32 *main ^@r2 @r10

    jmp <> @r5 *block (^@r2+3) <M>
    mov @r12 *main u64

    jmp <M> <> (u32/1) &&
    jmk @r8 @r6 ^@r5 @r6
    jmk ^&& @r2 @r12 u32 ^u32 ^@r2 ^u64

    cmp @r1 M <M>

    cmp @r3 *main (@r1+3) @r6 @r9
    push @r8 ^*block @r7 *main @r12
    dw @r3 @r11 @r11 @r11 (^@r12/3)

    lsl ^@r1 @r2 @r1 (^@r4+2) @r10 ^@r8
    push @r4 ^M (<M>/2) ^&& @r12

    jmk ^@r8 <>
    cmp @r10 @r4 <> M *main
    cmp @r12 && ^@r11 (&&/2)

    dw <> @r2 @r4 u64 ^@r5 @r12 ^&&
    mov @r8 @r11 @r12 @r1 @r11 @r8
    jmk M @r3 u32 @r5 ^@r2 <>
    jmk @r6 @r6 (M+1) ^u32
    @r7 M @r6

    jmk (^@r12+3) @r3
    jmp u32 (@r10/2)
    push *main <M> *main
    lsl ^u8 && (@r7+3)
    movk (@r2+2) @r4 <M>
    push @r9 @r5

    movk M <M> u64 u64 ^*block M M
    lsl @r3 <M>
    movk @r8 ^@r7 ^@r7 (u64+1) (u64+0_2) @r4

    @r6 @r2 &&
    dw @r6 @r12 *main @r9
    push ^*main @r8
    mov u8 (@r8+0_2) *main *main ^u64 (@r9+3) @r5
    @r11 @r1 @r10 @r11 <M> *block *block
    ldp @r1 @r12
    jmk <M> @r6
    dw @r12 @r1 u64 u32 u8
    lsl u8 *block (@r11/2) @r3 (@r5/0_1) u16 @r2
    jmp ^@r3 <> (@r2+0_2)
    @r7 u8 u16

    @r4 ^<> M @r7 u8 @r4 @r8 M
    ldp ^*block <> *block (@r8/0_2) @r1 @r4
    ldp M u16 @r8
    jmp u32 @r8 && @r2 *main
    dw @r1 && u32

    lsl @r1 <> (u8/3) @r9 @r7
    @r6 @r12 @r11 @r9 @r8 @r7 @r9 u64
    ldp @r2 @r5 @r6 u16
    jmk (^@r5/0_1) (^&&/3)

    dw @r9 @r9 *block M <> (u8+0_2)

    @r4 u16 u16 M @r11 u16 *block (^@r12+1)
    @r9 ^@r1 @r6
    jmk @r3 *block

    @r2 ^u16 u32 @r7
    lsl @r10 ^@r4

    mov @r9 (@r7+0_2) (@r4+2) (<M>/2)
    jmk (@r5+2) @r12 M ^<M> <> (@r10+1) @r3
    dw @r5 @r7
    @r7 @r4 *block @r5 (@r1+2) @r10 @r6
    push u16 *block <M>

    ldp M u64 u32
    movk u32 (M+0_1) (u16/2) (^@r9/0_1)
    @r7 @r12 <M> ^*block

    jmp ^@r7 u32 (u64/3) u64
    ldp (u64/0_2) ^@r7 && @r12

    @r12 ^@r4 @r3 M
    jmp @r2 (@r10/0_1) && *block *block
    jmk ^u16 (u64+0_2) @r2 @r3
    @r7 ^@r7 ^@r9 @r11 (^@r6/1) *main @r8 <M>
    @r5 @r12 (@r10/3)
    dw M @r6 @r6 @r4

    @r10 <> @r11
    jmp *block <M> u16

    jmp u32 u16 <> @r1 <> ^@r8 ^@r12

    @r3 @r7 @r4 ^M @r12 && @r11 u8
    jmp @r10 u64 @r5 @r9 ^@r9 ^<M> @r7

    @r8 ^u32 @r12 (*main+2) (^u8+2) *block (^&&+0_2) @r12

    push ^@r6 (@r5+1) ^*main @r2

    ldp @r5 @r7 @r5

    cmp ^*main @r7 *main (@r4+3)

    dw ^@r12 ^@r5 <> <> (@r11+0_2) @r2
    jmp @r4 @r11
    dw @r1 @r4 @r8 @r1 (u16+0_2)

    @r5 <M> <M> @r6 @r4 ^u16 u16
    lsl @r7 @r12 (*main+0_2) && && <M> @r1

    jmp <M> ^@r5 @r8 u8 u64 @r12 @r8
    mov (*block+3) <> ^u32 @r3 (<>+0_2) M @r5
    @r5 && ^&&
    cmp @r10 (&&+2) @r4 &&
    jmk @r7 @r9
    mov && @r8 ^u64 (@r12/0_2)
    push <M> @r12 (^@r7/2) @r9 @r8 ^@r6 @r2
    movk @r5 u32 ^@r9 u64 (@r5+0_1) (M+2)
    ldp ^@r6 u16 ^@r8 @r11 <M> (u16+1) <M>
    push && u16 @r12 (&&+1) @r6 @r1
    movk (<>/3) @r6

    ldp M @r2 u8 ^u8
    @r10 @r1 ^@r3 (@r2+0_1) ^u8

    cmp @r7 @r3 (@r7+0_1) ^<M> <>

    jmk (@r10+1) u64 u32 && ^u32 u32

    movk (@r9+0_2) @r1 ^@r8 &&

    @r12 M @r5 ^u8 (@r4/3) (@r4+3) &&
    mov (@r8+0_2) ^@r10 M @r9 ^M @r1 u8
    cmp @r4 @r2 (@r4/0_1)
    @r3 @r3 *main @r5 ^@r1 (u16+1) @r1 u64
    mov (^&&+2) @r2
    jmk && @r8
    dw @r2 @r8

    lsl u16 ^&& @r12 ^@r8 @r2
    dw @r1 @r1 (&&+2) (@r4/0_2)
    cmp @r11 (@r4/3) @r1
    lsl && (@r10/0_1) @r11 @r1 u8 @r1 ^M
    movk ^@r2 ^@r7 @r7 ^*block ^@r7 u16
    dw @r5 @r9 ^u64 @r12 @r9 ^<>

    mov *main ^@r9 ^*main @r1 @r5 (@r8+1)
    jmk (*block/3) @r7 @r2
    @r7 @r3 @r5 *main (^<M>/0_1)
    @r11 ^<M> (@r10/0_1) (^u32/3) @r2
    cmp @r10 @r2

    @r3 u64 (u32/0_2) @r5 *main (u8+0_2) @r11 @r9

    jmp u16 (^@r7/3) u16 @r9 @r1
    movk @r4 @r2 ^u16 @r1

    push <M> u64 @r5

    cmp @r3 ^@r2 @r8 (@r11/0_1)

    dw u32 @r10 (&&+0_1) *block @r4
    movk <> <M> (@r10+0_2) && (@r5+0_1)
    movk M *main
    push u8 @r9 @r1 @r12 @r5
    @r10 @r4 <>

    @r5 @r10 @r2
    @r8 && ^u16 @r6 u32 M <M> ^u64
    jmp @r12 <M> @r12
    lsl @r10 ^@r8 @r6 @r8 ^@r9
    mov (u16+0_2) @r8
    @r12 ^*block @r1 @r1

    lsl (@r2/2) (@r11+0_1) (@r11/1) @r11 @r6 u16 @r1
    cmp *main @r7 *main ^@r7
    lsl @r9 *block M @r5
    ldp @r12 @r9 ^@r4 <>
    movk @r11 @r4 @r4
    push *block ^@r4 u8 ^u8 ^u32
    mov u64 @r10 && (<>+1) u8
    jmp @r2 (u64/2)
    push @r7 @r9 @r12 ^@r2
    cmp @r6 @r2 u64 @r1 @r5
    @r2 *main @r9 ^*block
    jmp <> (@r1/1) @r4 @r4 @r6 ^u16 @r8
    mov @r5 && (@r11+0_2) @r8 @r2 ^u32 (u16/1)
    @r11 @r10 @r6 <M> u32 ^@r3
    push @r1 @r5 @r2 ^*main ^*block
    ldp ^@r8 && @r5 @r8 @r7 @r5 @r4

    dw ^u32 M @r8
    @r3 ^u64 *main && u8 u16 <M>

    mov ^@r10 ^@r2 (^@r10+2) <> ^&& (^u8+0_1)

    mov @r11 @r8

    @r6 @r9 && u32 <M>

    cmp ^@r2 (@r1+0_1)
    ldp ^@r1 <>
    cmp <> <M> *main (@r1/1)
    movk *main @r10 @r8 @r5 *main
    ldp (@r3+1) ^@r9 u32
    @r11 @r7 @r12 M (^@r2+0_2) (^*main+0_2)
    cmp @r12 (@r1+0_2) u64 (^<M>/3)
    @r8 @r7 @r10 @r12 (@r10/2)
    dw (@r2/1) u32 u64

    push *main u8 (^u64+3)

    jmp @r5 (@r4+0_1)
    push (@r12/0_1) u32
    @r2 @r2 u64 @r11 (@r12+1)

    dw @r10 (<M>/0_2) ^*block
    lsl && ^@r7

    @r2 @r6 @r2 @r7 ^@r9 (@r2/0_1)

    dw (<>+2) (u16+0_2) ^*block &&
    lsl && @r8

    cmp (*block/0_2) u16 (<M>+2) @r3 ^<M> @r8 *main

    ldp @r6 ^u8 @r4 u64
    lsl u16 &&

    jmp ^@r6 (^@r2+0_2)

    push u64 (^u64/0_2)
    mov M @r11 @r9 (*main/3) @r12
    mov (^u8+2) <> @r12 @r3
    @r2 @r12 *main @r8 @r12 @r1
    jmk @r12 u16 (u32+2) ^u16 ^@r1
    jmp ^*main <>
    ldp @r6 @r4 <>

    @r4 @r9 ^@r4 (@r2+0_2)
    mov ^u8 @r11
    dw @r12 @r12
    @r10 *main u32 u32 @r10 <> ^@r9
    jmk (*main/3) ^@r6 u32 u32 @r10 ^M (^@r6+3)
    @r2 ^@r7 *main ^*main

    dw ^@r2 (@r10+1) ^@r7 @r10

    @r8 ^@r7 ^@r4 (@r8/3) <M>
