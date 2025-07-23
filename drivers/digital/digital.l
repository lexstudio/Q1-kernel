entry:
    @r7 @r1 @r12 u16 *block @r10 ^u32 (@r1/0_1)
    @r12 @r6 @r6 ^u8 @r6 @r3
    dw (@r2+2) ^<M>
    push (@r10/2) @r5 ^@r2

    movk u8 @r10 @r5 *main
    push ^@r4 u64
    ldp (@r8/2) @r11

    @r10 u64 (M+2) u16 @r8 *main u16
    cmp ^u64 u16 ^<M> @r3 (@r9/1) u32 @r1
    jmp (@r11/1) @r12 @r2
    push @r12 @r10 (^@r5/0_1) (@r12/0_1) ^@r10
    mov *main @r9 @r8 u32 ^@r11 (^@r4+3) (@r3+0_1)
    lsl (<M>/0_2) <> (@r3+3) @r10

    jmk @r2 @r5 (^@r10+2) u32 u16
    cmp @r12 @r8 u8
    lsl @r5 (@r8/3)
    push (@r5/2) u8 @r12 (@r6/2) u64
    jmk ^u32 (<M>+0_2) @r2

    push (*block+0_2) @r10
    movk ^@r9 @r10 @r4
    jmk u8 (@r8/1) @r4 @r5

    push u32 && @r12 @r12 && ^@r4 ^@r11
    @r3 <M> <> u16 @r9

    push @r7 @r8 M ^&& (M+3)
    push @r5 u16 @r7
    mov @r8 u64 u8 @r5 *block

    ldp @r12 @r4 @r8 ^u32
    movk <> (@r7/2) *block ^@r7 *main M ^<M>
    jmk @r5 ^*block
    push @r5 @r3 (&&/0_2)
    jmk ^@r1 @r9 (u64/3) <> u32 <> @r5
    dw u16 @r1 u16 @r8 u8 @r10

    ldp (@r3+0_2) @r6 u16 <> *block

    lsl @r10 <M> u64 *main

    ldp ^&& u32 @r4 u8
    lsl (&&+0_2) (@r3+0_1) ^@r4 u64 @r4 M
    ldp M (^<>+3) @r3 <>

    ldp ^*block *block u8 u8
    push (@r5/1) u8

    @r3 u32 @r12 *block @r1 ^*main (^<>/0_1)
    jmp ^@r4 u8

    mov u32 @r2 @r11 @r10 *block
    @r3 u64 *block <M> @r1 (@r1/0_2) @r8 u64
    lsl ^@r10 u16 (^@r1/0_2) @r9 @r8 (@r2+2) @r11
    @r6 <M> @r3 <M> u16 @r11 @r2
    ldp ^@r11 ^u32 @r6 && @r7 ^u8

    @r8 *main *block u16 (*block/1) @r3 u16
    movk <M> ^u8 M (@r2/3)

    dw @r6 ^u32 (@r1/0_2) (^&&+1) <> ^u32 (@r10/3)

    ldp M M u64 &&

    jmp M (<M>/0_2) @r8 @r9
    @r12 @r1 @r2 ^@r1 u16

    @r11 @r1 ^u32 *main @r10 ^<> u16 (^@r4+0_2)

    jmp (@r12+3) (@r6+0_2) <M>

    push @r12 *block @r7 @r6
    @r5 M u64 @r9 && @r5 @r2 (^@r11/1)
    cmp (@r2+1) @r9 (<>/0_1) <M> (^<M>+1) (@r12+0_1)
    jmk (&&/2) @r5
    @r1 @r12 M @r8 @r6 @r3 (@r1+0_2) ^&&
    @r3 @r4 @r1 u32 (^@r2+0_2)
    mov @r10 @r6 ^u64 @r7 ^*main *main &&
    push @r2 ^@r10 @r7 (@r1+0_2) u64 @r6 &&
    push (<M>+0_2) <> u64 @r6 u64 u64
    ldp *main @r1 ^@r7 @r6 @r2

    jmk @r3 u64 && && u8
    lsl @r5 @r1 (*main+0_2)
    jmk u16 ^@r9 @r11 ^@r6 *main
    dw @r11 @r2 && @r1 u8 @r10 (^@r7+3)

    lsl ^@r10 @r6 u16 *main ^<M> @r6
    movk ^@r3 ^&&

    dw *main <M> @r7 &&

    @r8 (u32+2) && @r12
    movk (u64+2) u64 ^@r6 @r3 @r7 (@r1+0_2)
    jmk <M> @r5

    push u8 M <M> ^@r11 @r1 ^@r7 ^u32
    lsl (@r11/2) (@r6+2) @r9 (u8+3) (@r12/2)
    jmp M u32 ^@r6 *main @r3 @r11
    push (@r3+2) ^@r8 ^u16 <> @r10
    @r4 (@r4/1) @r3 @r4 @r12
    ldp @r2 @r8 ^@r12 @r10 ^<M>
    cmp @r10 (u8+0_1) @r10 @r2 <> @r10 ^*block
    @r4 <M> *block (^@r1+0_1) u64
    lsl ^<> @r3 @r3 M ^@r9 (u16/2) @r2
    jmk @r6 @r11 @r7 u8 u64 (@r2+2)
    jmk <M> @r4 ^M
    cmp ^*block ^@r10 (@r12/1) @r11 @r2 (*main/0_2)
    ldp @r6 @r9 @r9 u8 @r8
    jmk @r10 @r8 (u16+3) u64

    ldp (^@r9/0_2) ^@r8
    movk M ^@r2 @r12 ^@r2 (^&&+1) ^@r12
    @r3 (^@r1/3) u16 @r11 (^@r11+0_1) @r3
    jmp (*main+2) @r8 (@r3+1) M (@r3/3) @r6 ^@r7

    @r12 (M+1) ^M *main @r7
    mov ^@r10 @r2

    @r3 @r2 @r7 (^<>/0_1)
    ldp u16 *main @r7 (^u16+0_2) @r8 @r4 u32
    cmp @r2 ^@r7 <> M <> <M> (&&+2)
    mov (<M>/0_1) @r6 *block <>
    jmk u8 ^u8 (@r1/0_1)
    jmp @r1 u8 ^@r6 @r2 @r1 @r2 u16
    ldp ^@r1 @r9 @r6 (u64+1) u16 @r5
    push @r4 @r1 *block <> u8 @r6
    mov @r11 (M/0_2) ^&& *block
    dw @r4 <> @r12 ^@r10 *main @r5
    lsl ^@r7 @r7 (^&&/1)
    cmp (M+1) ^@r12 @r5 *block *block @r5

    jmp ^@r6 (&&/1)
    cmp @r10 <>
    movk <> ^*block *block
    dw && @r4 M (&&/3) ^@r12 @r1 u64

    movk ^@r5 ^@r6 ^u64 ^M @r7 M
    @r4 @r12 ^u8 @r8 @r10 &&
    push u32 @r10 && u64
    ldp *block @r6 @r10 ^M u32 (^u8/3)
    jmp @r9 u8 @r4 u16 <> (^<M>/2)
    mov (^<>/3) (@r4+0_1) <M> u8
    cmp ^<M> u32 @r10 *block ^@r10 @r11

    lsl M @r8 u64 ^@r5 @r2 ^u16
    jmp @r2 u16
    jmp u16 @r6 ^@r2 <M> u64 @r9
    jmp M (@r10+2) @r12 u32
    cmp *block && @r11
    jmk ^@r10 @r2 @r8 && ^<M> (^@r10+3) @r7

    @r5 @r7 @r5 u64 (^*main/0_2) ^@r3 (@r1/0_1) ^@r5
    push u32 &&
    push u16 @r12 <> @r5 <M> @r3 @r8
    dw @r7 *block @r10

    @r10 M @r11 @r12 ^u16 @r9
    lsl @r6 @r3
    cmp u16 @r11 (@r12+2)
    push u64 @r6 (@r1+2)
    lsl @r9 (*main+1) M u8 @r5 @r12 &&
    @r3 @r5 @r7 @r10 ^&& @r1 ^<>
    ldp <> @r12 M (@r3+3) ^@r6 *block @r1
    push @r7 @r3 M @r2 u64 *main
    @r11 ^@r5 M ^@r1

    lsl u8 @r6 @r10 ^@r10 <M>
    movk ^@r2 @r7 @r5 @r8
    jmk (u32+0_2) ^@r7 ^@r9 (u64+1) @r4 @r6
    push ^*block @r5 u16 @r1 (u16+0_2) u64 u16
    @r6 u16 @r8
    mov u8 u64 *main

    @r12 @r12 <M> (<M>+0_2) ^u8 @r11 @r10
    @r9 (<M>/3) ^u64 ^@r5
    lsl ^<M> ^@r5 && @r5 @r9 ^@r11
    cmp @r1 @r5 @r9
    jmp @r11 ^@r2 @r7 ^@r6
    @r3 (u32/1) @r8 @r3
    ldp (@r2/0_1) @r1

    jmp (@r7+0_1) (^@r1+3) ^&& @r12 ^@r12 @r5
    @r2 (@r4+0_2) *main @r9 @r8 ^*block u16
    ldp *block <M>

    push u64 <> <> @r4 ^<M>
    @r9 <> (&&/0_2) (&&/3) @r11 @r11
    push ^@r4 <> M @r2 @r5 ^&& u64
    lsl (^@r11/2) @r7 ^u32
    ldp ^@r1 @r3 <M> (@r7+3)
    push @r2 M @r10 @r1

    lsl (u8/0_2) @r10
    mov (u8+0_1) u8 @r12 @r12 M
    ldp <> M (@r12+0_1) (@r3/0_2) (^@r5/2) M
    @r10 (<M>/0_1) @r1

    @r11 @r8 (@r12+3) @r7 (@r12+1) @r5 (@r2/3) @r11
    movk M u64 @r4 @r3 ^u32

    @r8 (@r11+0_1) @r5 (&&/1)

    lsl (u16/3) (&&+1) ^u32 *block

    jmp @r4 ^u16 ^@r4 @r6 <>
    lsl (@r3/1) @r8 @r8 @r9 @r8
    mov ^@r7 u64 M ^@r7
    mov u8 ^@r12

    dw @r10 <M> *block M (&&+0_2) @r5
    jmp u8 u8 (^@r12/3) @r2 @r9

    @r5 (^@r5/1) <> u32 *block
    lsl (M/2) u16 && ^@r7
    @r4 ^@r10 (@r7+0_1) @r2
    @r7 (^@r11/1) u32 @r6 (*main+0_1)
    mov (*block+2) @r5
    lsl @r11 @r7 @r1 ^@r6 @r5

    @r5 ^*main ^@r3 M (@r2/0_1) (@r4/2) u32 u16

    jmk @r11 M (<>/0_1) ^<> <M> @r6 @r7

    @r3 M @r4 M @r10 *main
    ldp (@r11+1) @r9 *block
    push @r10 @r4 ^@r7 @r12 @r4 @r6
    mov <M> @r10 ^u64
    @r1 ^@r2 ^u32 ^@r10 @r9 @r2 M
    ldp u32 && (u16+0_2) @r6
    jmk u8 ^u16 @r3
    dw <M> *main

    cmp *block u8 ^<> @r5
    jmp u64 @r6
    mov (@r4/0_1) @r9 @r10

    cmp && (<>+3) @r5 @r11

    movk (u32/3) ^&&
    jmk @r8 @r8 @r2 @r4 <>
    @r3 @r9 &&
    mov @r10 @r3 @r11 @r1 @r6 u32
    movk @r11 @r8 (u16+0_1) @r3 ^<M>
    jmk @r1 @r11 @r3 @r11 ^@r3 @r11 @r2
    dw ^u16 u64 @r7
    movk @r1 && *main
    cmp ^@r8 ^@r6 @r12 u32 u64 ^u8
    mov u32 @r5

    push ^u32 @r5 @r12 @r11 @r7
    movk ^@r6 (@r2/0_1)

    @r5 ^@r12 u64 @r2 ^@r3 ^@r7 @r9
    mov u8 @r11 @r2 (M/0_1) u8
    dw <M> ^@r5 @r3 @r9

    mov (u16+0_2) u64 u8 @r1 u64 @r4
    jmk ^@r1 u32 <M> *main @r1 *main ^@r11
    ldp <> &&
    @r1 *block ^@r7
    push u8 M ^M <M> u8

    @r9 ^u64 *block *main u16
    @r7 && M u32 @r9
    jmk ^&& ^@r10 @r6 @r11
    lsl @r3 (u32+1) ^@r10 ^<M> @r8 (^@r8+1) @r3
    lsl @r11 (@r12+1) ^M
    movk u8 @r9 <M>

    @r9 @r6 u32
    mov *block <M> (@r6/1)
    jmp (@r3+0_1) u16 @r4 ^M (*main/1)

    jmp (@r8+0_2) <M>
    push ^@r5 (u16/3) (@r10/3) u16 @r7 @r10 *block
    dw @r9 M M (@r4+0_1) <M> *block
    @r9 ^M u32 @r2
    push (@r12+0_1) *main @r3

    lsl @r10 (@r6+1) @r7 M *block M @r12
    lsl (@r9/2) ^*main u64
    jmk @r8 (&&/1) *block @r7 ^@r9 u64 *block
    dw (@r11/3) (^u16/1) @r11 (@r10/3)
    mov (u8/2) @r9 @r7
    movk @r6 (@r9+3)
    @r4 @r11 ^<> ^@r6 u8 (u8/1) *block
    movk <> (@r12/0_1) M *block (^@r12/0_2)
    push @r9 ^@r10 @r3 @r7
    @r2 u32 <> @r6 @r2 u64 @r3 @r6

    @r8 (@r5+0_2) @r9 *block @r5 @r1 *main
    dw && @r3 u32

    lsl @r7 @r6 @r12
    jmp @r5 @r10 @r5 ^@r9
    ldp u8 *block u32 <M> ^@r7 @r4 @r11

    dw @r12 && ^@r12 @r10 @r6 @r8 ^u64
    cmp <> M <> ^@r3 @r5 @r9 @r2
    ldp (@r1+0_1) @r6 @r8

    movk @r9 (@r11/2) @r2 @r3 *block
    @r6 @r3 @r10 ^@r12 @r1 ^&& @r7 <>
    jmk u64 ^@r4
    mov @r4 ^@r10 <> (@r4/0_1) u16
    @r5 u32 M
    jmk ^u32 @r4 ^u32

    jmk *main && M M *main ^@r10
    push @r1 u8 @r7 *main (@r8+1) @r10 <>
    ldp (@r11/0_1) @r12 @r7 (@r2/0_2) && @r9 @r11
    ldp @r10 <M> @r11
    @r6 @r5 ^@r1
    jmp && ^M ^@r8 @r11
    ldp ^u16 @r11 u64 ^<M> (^M/1)
    @r10 @r3 @r8 @r2 &&
    movk @r10 u32 @r1 @r9 <M> @r12 ^u16
    lsl @r2 ^@r8 @r4 @r7 ^*main u16 (^@r6+1)
    lsl (@r11+1) @r8 *block @r6 @r2 *main ^@r11
    ldp ^@r1 @r4 (@r8+1) u32
    movk @r7 @r5 @r4 @r12 @r3 @r1
    @r2 ^u32 ^@r11 @r5 @r3 u32

    @r9 @r4 <> ^@r3
    push ^@r3 @r4 @r6 @r5 (<M>/2)
    dw ^&& u64 (u64+0_1) ^u32 M

    @r3 @r3 @r4 (@r3+3) u16
    jmk @r8 u64 @r9
    ldp @r7 @r4 @r1 @r2
    jmp ^*main ^&& @r3

    @r12 u16 (@r5+0_2) @r9 u16 @r6

    mov *block u32 u16 <>
    push u8 u64
    dw @r11 @r7 @r4 M @r7 (@r3+0_1) *block
    @r3 @r8 @r2 ^u32 u32
    jmk (@r10/0_2) @r2 ^@r1 ^<> u16 @r10 @r1
    cmp && ^<M> M *block u32 @r2
    @r1 @r2 ^@r8 M
    movk *main *main @r6 @r6 @r11 u16
    jmk *block @r3 (u16+3) @r7
    movk (@r9/0_1) <M> @r4 ^@r8 &&
    @r4 (^@r6+3) <M> @r12 @r12 <M> @r2 *main
    lsl @r9 @r5 &&
    ldp u8 ^@r1 M @r1 <M> @r10

    @r6 ^@r9 *main @r2 *main <>
    @r2 @r6 @r1 @r6 @r3
    dw @r8 u16
    jmp (@r3/3) @r7 *main
    @r11 @r10 @r5 @r7 ^<M>

    ldp ^@r5 ^@r1 ^u32

    lsl *block u16
    ldp @r6 @r12 ^@r1 @r3 (^*block/0_2) ^u32
    @r2 ^@r9 ^@r12 @r12

    jmp @r4 @r1 @r5 <M> u16 @r11 *main

    lsl @r5 (@r9/0_1) u64 <>
    push @r2 @r2 ^u32 *main @r3 (*main+1) (&&+3)

    jmk ^M ^@r8 u32 @r4 ^@r8 @r2 @r11
    mov ^u64 @r6 <M>
    @r10 <M> (@r3/2) (@r11/0_2) @r6 (@r8+2)
    @r9 u16 @r4
    lsl *main @r10 && u64 @r3
    dw ^@r9 (*main/0_1) ^@r7 @r3

    @r4 @r8 M
    @r7 @r7 ^u64 M u16 @r9 ^&&
    @r9 @r11 ^&& ^@r10
    @r3 u64 <> ^*main

    jmp (@r12/0_1) @r9 u64 ^@r12 (<M>/0_2) @r3 @r2

    ldp @r3 ^@r10 (@r7+2) @r8 ^<> *main
    @r11 <> u32 && (M+3)
    @r7 M @r5
    jmp ^@r4 @r10 @r3 @r1 @r6 &&

    @r3 M @r9 @r5
    jmp ^@r8 &&

    dw *block M @r2 @r9 @r7 *block ^@r1
    lsl ^@r7 *main @r9 @r7 *block
    dw (*main/2) (u8+0_2)
    mov u16 @r6 u16 @r10 @r11 @r12 @r3
    push (&&/0_2) @r10 u8 u64
    movk ^@r11 ^u16 (@r3/0_2)
    @r12 ^<> u64 ^@r6 (<>+0_1) ^@r5
    dw <> @r11 *block
    dw ^u16 @r3

    mov @r3 *block

    lsl @r2 ^u8 @r1 ^@r5
    @r8 @r4 *block
    jmp ^u16 @r12 <> u8 *block @r7
    lsl ^@r11 <> @r2 (u8/0_1) @r12 (@r4/0_1)

    @r2 ^M ^@r2 @r1 @r10 ^@r7 @r8
    lsl @r2 @r12 u8 @r5 u16
    movk @r8 @r11 u16 @r1 @r8
    push (@r12/2) @r4 @r2 ^M ^@r3

    dw (@r6/3) @r8 ^@r4 (@r3+2)
    lsl M (@r9+0_1) (<M>+2) ^@r2
    jmp (^@r2/0_1) u8 *block <M> (@r3+2) @r6

    ldp ^@r4 *main @r10 ^@r7
    ldp @r6 @r2 @r12
    jmk ^@r12 u16
    @r6 *main ^M <M> u64 <>
    dw u16 ^@r8 @r4 &&
    dw @r1 <> ^*block <>
