block:    
    lsl (u8/0_1) <M> ^u32 u8 M <M>
    movk @r4 @r12 @r9 (@r5/1) @r2 @r9 u8

    jmp @r7 @r9 u8 @r6
    jmp ^@r7 ^@r8 *main

    ldp (@r4/0_2) ^*block

    @r8 u8 <> @r10 @r5 @r12 u16 (^@r5/1)
    jmk @r6 @r8 ^@r12 ^u8 ^@r7 @r7 (^@r9+1)

    push @r8 ^<M> ^@r7 *block
    @r3 ^@r11 @r7 u32
    jmp u32 u16
    mov M ^u8 ^u64 <M> (@r1/2) @r2

    @r10 @r9 ^@r11 && *block

    jmk u16 ^u8 &&

    jmk (u64+1) @r4 @r6 @r9 @r5 u32 u8
    jmp ^@r5 u8 (^u64+3) u16 <> (@r3+0_2)

    @r12 @r5 u8

    @r4 ^*main @r1 u16 (@r10/0_2) u32
    push @r7 @r1 @r8 (@r12/2) (@r12+1)
    movk u8 u32 @r8 u8

    jmk ^*block <M> u8 u64 u64
    jmk @r5 @r1 @r4 (*block+0_1) (^*main/2) ^u8
    jmk M @r3
    jmp (<>/3) (@r7+0_2) ^@r5

    movk ^M @r12 *main ^<M> u8

    dw u8 (u32/2) @r4
    jmp *main u64 u16
    movk (u8+0_2) @r2
    jmk ^@r5 (u64+2) (u32+1) (u8+1) (@r1/1) &&

    dw (@r5+0_2) <>

    push (&&+2) u32 (@r12+0_2) (^u8/3) ^*block

    jmk ^@r4 ^<> *main @r3 *main
    mov @r6 @r1
    push u32 ^@r9
    cmp u32 (@r3/3) ^u64 <> @r6 (^@r6/0_2) <M>

    lsl ^@r11 && @r8 @r5 @r9 u8
    jmp @r4 (@r4/1) @r9 && (*block+0_1) @r9

    ldp (^@r9+2) ^u32 @r9 ^@r4 <M>
    jmk @r11 ^*block u8 <M> ^@r7 (u16/3)
    lsl u32 @r9 u8 <> (@r12/2)
    jmk ^u16 @r6 @r10

    jmp @r2 ^<> @r4 @r4 @r7

    movk @r9 @r6 *block (@r8+1) (@r7/3)
    cmp @r5 <>
    ldp @r12 (@r4/3) @r10
    lsl ^@r5 u64 (@r4/2) u8 @r9
    cmp @r3 *block
    push ^@r12 @r6
    jmk u16 (^@r10/0_2)
    mov ^@r6 &&
    ldp u8 ^@r1 @r2 @r3 u8 @r1 (@r11/0_2)
    mov @r9 ^u8 *block
    @r11 ^@r10 (@r5+2) (@r6/0_1) *main (@r2+3) @r1
    mov @r12 @r7 (@r3/0_1) && M @r4

    mov @r7 (<M>+0_1) @r2 @r5 M @r10
    cmp ^&& @r4 <>
    dw *main @r10 @r3 && (@r2/0_1) @r10
    push <> (@r8/2) <M> ^@r6 ^@r8 u8 (u32/0_2)
    jmk ^&& u16 (*block/2) @r9

    push u64 @r5 (<>+1) (u32/3) u8 (@r6/0_2)
    cmp @r9 ^@r1 *main <M> u64 @r2 @r3
    movk @r12 @r12 (<M>/0_2)
    dw @r11 @r8 u8 u64 @r9 u32 u64
    jmp (<>/0_2) (@r8+0_2)
    lsl u64 @r11 (^@r10/2) ^@r8 @r8
    dw *main @r6 ^@r10 (@r9/0_2) @r1
    movk (@r4+0_2) @r1 ^@r5 && <>

    ldp u64 (*block+1)
    @r8 (M/0_2) M @r10 u8 M
    cmp ^u16 ^@r8 @r9 @r7 u64 @r6
    @r6 (@r2+1) ^@r2 && u64

    @r10 *block @r5 @r6 *main @r8

    lsl @r10 ^@r3 u8 ^@r10 ^&& @r6 (u64/0_2)
    ldp ^u32 @r8 (u8/0_2) (@r6/3)

    jmp @r4 @r2

    @r8 (M+2) @r8 ^*block
    push @r10 @r10 (@r4/2) u8

    @r11 @r5 <> @r9 @r8 @r2
    mov @r4 u32 (@r8/2) u8 @r4 *block

    @r9 (u32/0_1) &&
    ldp && ^@r5 @r9 && ^@r12 <M> @r5
    ldp ^<> <> @r2 @r8 @r7
    @r12 *block @r5 @r8 @r2 u16 ^@r5 (u16/0_2)
    cmp @r7 <M> @r6 (@r5+0_2) @r12 ^@r5 <M>

    mov @r9 ^M (^@r1/2) (M+0_1) u64 @r4 @r8

    lsl @r9 @r9 (u8+1) @r4 *main @r12 u8

    dw @r11 u16 *block @r7 &&
    @r3 *block u64

    dw (*block+1) @r1 @r12 ^u64 *main
    movk (u8/0_2) u32
    movk ^@r8 @r8
    push @r2 @r2 && (*main/2) @r1 *main @r1
    jmk @r4 M u16
    lsl @r1 (@r11+1) ^*main @r4 @r4 @r6 ^@r1

    jmp *main @r1
    movk (^<>/1) (^*main+1) ^@r7 ^u64 @r12

    @r7 ^M (@r1+3)
    movk ^@r4 u16
    jmp @r5 @r11 u16 (<M>/0_2) <> <> <>
    mov @r12 *main
    mov && u16 @r4
    ldp @r8 ^@r7 @r7 (@r9+1) ^@r1 @r1

    movk @r6 <> *main @r2 u32 (<>+3) @r11
    push u16 @r7 @r3

    dw @r11 u32
    jmk <> ^<M> @r6
    ldp M @r7 @r5 @r7
    movk @r7 *block *main @r3 @r10
    @r12 ^@r3 @r7 @r8 @r4 @r5 ^<> &&
    @r8 (u32/3) @r6 @r9 u64 u16 @r6

    mov u16 @r1 (^M+0_1) @r7 ^u64 @r5
    lsl ^@r2 u32 ^u16
    @r9 M u16 @r8 @r2 @r2 (@r10+3)

    jmk @r7 @r12 @r2
    jmk ^<> @r6 (@r10/2)
    jmp ^u32 ^<M> (*block+1) ^@r9 u16 @r5
    cmp u8 @r5 <M> <> <> ^@r11

    push (^<>/0_2) ^@r7
    @r8 *block (@r3/3) *block @r8 (*main/0_1)

    @r12 @r11 @r6 @r3 u16 @r11
    movk @r11 M @r11 @r8 @r5
    push @r10 <M> ^@r3 *block
    jmp ^&& u8 (@r12+3)
    jmp @r2 (^@r11/3) @r9 @r5 M
    lsl ^u16 @r10 *main ^@r1 @r10
    @r5 ^@r2 ^@r5 M @r12 @r3 (*main+2)
    lsl ^@r12 ^@r10 (@r5+1) @r3 u32 u8 ^@r8
    dw (@r11/1) @r6 *block @r5 (@r10+3)
    ldp @r4 ^@r9 ^@r12 ^@r5 @r5
    dw u16 @r12 (@r3+0_2) @r9

    @r10 (@r10+0_2) (@r10/3)
    dw u32 @r6 u16 ^u16 *block
    dw M @r11 && (u16/0_2) u16 u16 @r10
    ldp @r5 (^*block/0_2) @r3 ^@r7 <>
    @r12 @r1 *main @r10 u32
    mov u32 ^M (^@r4/3) ^@r5
    movk ^@r1 @r5 ^@r9 ^<> (@r3+1) @r10 @r10
    ldp @r7 <>
    mov *block u16 (^@r2/0_2) u64 u8
    cmp @r7 @r2
    cmp ^*main ^@r3
    movk && u64 *main ^*block @r7
    @r11 (u8+0_1) M @r3 @r8 @r9

    movk @r5 (@r6/0_2) (^*block/0_2)

    movk @r5 @r3 @r4 @r6 (@r5+1)

    @r7 M @r4 @r2 <> u64 (@r5+2)
    movk ^u16 @r8 (^@r6+3) (u32+1)

    ldp ^@r12 ^u32 @r3 (@r7/1) @r4
    @r3 *block @r1 (*block+0_1) @r7

    movk @r11 u16 @r12 (^@r12+0_2) (@r9/2) ^<M> (@r3+0_2)
    dw && (^@r9+3) @r6
    cmp @r7 @r4 <M>
    jmp ^<> @r5 @r6
    jmk @r9 @r4 ^@r11 *main (@r6+0_2) ^@r5 (^@r8+1)
    jmk u8 *block *block
    @r2 && (u64/0_1) <M>
    dw @r4 (<>/3) ^@r3 @r7
    jmp *main *main @r11

    jmk ^*main *block (<M>/2) <> @r9 @r6
    jmp @r4 u8 *block @r5 @r9 @r7 @r9

    jmp *main @r3 u16 (^@r3+3)
    movk M u32
    movk <> @r7 (^@r7+2) @r8 M u64
    jmk u32 @r4
    @r1 (u32+2) u16 @r4 (^<M>+0_2) @r1 u32
    mov @r7 u32 ^@r2 @r6 (<M>+1) ^u16
    cmp @r3 @r3 @r3 @r11 @r9 u8 ^@r4

    cmp && u64 && (^@r3/1) && @r11 @r9
    ldp @r10 @r6 @r4 ^*main (@r3+0_1) <> <>

    dw u32 u64
    @r1 ^*block @r2 @r5
    jmp u8 u16 u32
    dw @r7 u8 ^<M> @r2 @r10 u64 @r3

    jmp ^@r1 &&
    movk && u16 ^@r3 (^@r6/0_1) ^@r9 (@r6+3) @r5
    @r12 <M> @r12 *main @r8 @r3
    jmp @r9 *block

    jmk @r2 M u32 (@r11+1)
    dw @r5 @r8 @r4

    @r9 && u8 && <M> @r1
    ldp ^@r8 @r12 ^u64 @r10 (^@r9+0_2) ^@r12 u16

    mov <M> @r7 u32 (@r7/0_1) ^@r12 ^@r12
    push (u16/3) ^@r11 @r6 @r5 @r1
    @r5 ^M M (@r1/0_2)
    movk ^u8 && M u16 u8 @r7
    @r1 M @r2 @r11 u16

    mov @r12 @r1 @r7 @r7

    lsl ^@r6 @r3 (u16+1)
    cmp <M> (@r1/1) ^M ^@r1
    jmp && u64 ^@r10 (u32/0_2) @r7
    lsl ^@r6 <>

    @r5 ^@r1 *main <> *block ^u64
    lsl (@r5/0_1) <> ^@r1 @r3 <M> (@r12+2) @r7
    dw *main ^u16 ^@r10 ^@r9
    dw @r11 @r7 *main
    movk ^@r5 (^<>+3) (@r8/0_2) @r8 (<>+1) u64
    @r5 @r3 *block

    mov <> M u16 @r12 @r8

    cmp @r4 ^@r6 (@r7/1) ^@r12 @r1

    push ^@r12 @r7 @r11
    @r12 u64 @r3 ^u16 @r2 (&&/3) @r11

    mov @r3 @r9

    jmk *block && @r4 @r1
    @r12 M @r5 @r3 (@r3/0_2) @r1 ^@r2 &&
    push ^@r8 ^*block @r11 u64 && @r10
    jmk @r1 M (^&&+0_2) @r8 @r2 ^*block ^@r11

    cmp @r11 @r12 ^<M>

    cmp u64 <>
    cmp u32 *main

    jmp @r5 *block ^M ^@r1 @r11 @r5 ^@r7
    push ^@r8 ^u8 (^@r9+3) ^<> ^@r1 (@r6/0_1) @r1

    jmp ^u32 <> @r11
    ldp u64 <M> ^<> u16 @r1 @r3 @r4
    push u8 u8 @r1
    jmk ^&& M @r8 @r3
    @r3 ^u64 @r3 @r12 @r8 @r2

    push @r10 @r2 (^@r7/3)
    ldp u16 (u64/0_1) @r4 M (@r3+0_1) <> *main

    cmp <M> @r1 u8 *block ^u64 ^@r4 ^@r9
    ldp && @r4 ^u8 && @r2 *main
    push (*main/1) @r2 ^@r12 @r6

    ldp ^@r5 @r6 ^M ^&& @r8 *block (@r11+0_2)
    jmp (^M/3) @r3 @r8 <> @r1

    push @r2 *main (^@r11+0_2) <M> u32
    jmp u64 @r1

    lsl @r4 (<M>/0_2) @r1 ^&& M *block
    ldp u64 ^@r7 @r6 (<M>/1)

    mov ^@r7 @r4

    dw @r12 (<>/0_1) ^@r10 <M> @r1
    dw M &&

    cmp <> @r11 <M> u32 @r1 u8
    lsl @r9 ^&& u64 (@r11/0_1)
    lsl @r4 (*block+1) M
    mov *main ^<> @r3 @r11 (u8+0_2) M @r3
    dw (u32+2) (^u32/0_2) *main <M> (@r12/0_2)
    @r11 @r5 (M+0_2) @r1 @r4 <M> u16

    mov ^@r4 @r2 @r10

    push (M+0_2) &&
    lsl *block @r2 @r12 && @r6 ^@r3

    mov <M> @r4 u8 u64 @r2 M &&

    ldp u16 @r10
    jmk *main && @r5 @r1
    movk ^@r1 *main (@r5/3) ^M M
    push @r4 ^@r12 @r4 M *block

    movk (@r12/0_2) @r3 @r10
    @r8 (u8/0_1) (@r10/2)
    jmp u64 (@r1+0_2) <M> (^u64/3) @r8 ^@r10

    cmp @r7 <> ^u8 u16 @r8
    @r7 @r1 u64 ^@r6 (@r10/3) (<M>+0_2)
    push @r12 @r3 (^<>+3) @r4 @r4 @r10 @r10
    @r8 (@r2+1) ^@r8 *main @r3 && @r1

    cmp (M/1) @r11

    push @r12 (u8+2)

    dw (u16/1) @r9 @r7 @r6 u16
    push <M> *block && *block

    jmp @r3 ^*block
    jmk @r4 <> *main @r2 && @r4
    jmk ^&& @r6 ^<M>
    lsl && @r4 u8 u8 *main
    lsl u64 ^u16 (@r8/2)
    jmp ^@r7 (*block+1) @r5 @r12
    @r5 @r8 ^*main *block
    mov ^&& @r10
    dw @r7 u8 @r8 @r12
    @r12 ^@r8 u8 @r10 @r10
    ldp @r11 @r7 @r12

    dw ^&& @r5 ^<>
    @r1 ^<> ^u32
    ldp @r6 @r11

    jmp && ^@r11 u64 u64
    jmk u64 ^<> <> @r11 @r1 @r10 (^@r10/1)
    @r10 (&&/0_1) @r12 @r3 @r5 @r5

    jmk u16 ^@r10 *main ^*main @r10

    lsl (^u32+1) @r2
    push ^@r10 (@r11+0_2) (u8/1) <> @r7 (u64+3)
    lsl u16 (@r7+2)

    @r6 (u64+0_2) @r11 ^&& u8 @r12 @r9 ^@r1

    jmp u32 (^&&+2) @r11 @r7 @r3 u16
    lsl ^u32 @r9
    @r11 (^@r8+3) u64 ^@r10
    dw *main @r4 ^@r8 (@r2+2) ^@r3 ^@r4
    dw @r1 @r6 M @r12 u32
    @r9 u64 &&
    @r5 @r3 @r2 @r9 ^@r2 @r4

    cmp @r3 (@r4+3) &&

    jmk @r1 @r9 @r9 (^@r6/3) @r10
    ldp u32 *block @r7 *main @r2 ^@r10 <>
    @r8 (@r10+2) ^@r3 ^u8 @r4 ^@r4 *main
    lsl u32 @r3 @r3 @r11 u32
    jmp (u16+0_2) *block

    ldp u64 (<M>/1) @r2 @r3 ^u32 u32
    jmp u32 @r2

    jmp @r4 ^*block <M> ^<M> ^M <M>
    dw ^@r1 (^@r9+3) @r5
    mov u16 @r5 *main
    @r5 (@r9/0_1) @r9 @r10 @r11
    lsl @r10 u32 @r10
    mov @r11 @r12 *main (@r5+3) @r11
    cmp (^@r1+2) @r3 (&&+3) <M> @r5 ^<>
    @r6 @r8 @r1 @r8 (@r2/0_1) @r1 <>

    cmp @r3 u8 @r3 @r8
    ldp *main @r6 @r7
    @r9 u64 @r4 (^@r9/3) ^<> @r7 @r10 @r7
    jmp *main @r12 @r4 M
    @r11 *block @r10 *block @r6
    jmk *main ^@r10

    ldp @r7 (^@r10/2) M <> && ^@r4
    dw @r3 @r7 (*main/2) u32 <M> *block @r11

    jmk @r8 u8 ^@r3 (@r4+1)
    jmp ^@r4 @r5 ^@r2 u64 (u32+2) *main (@r9+3)
    mov ^@r7 @r5 ^@r3
    dw && u64 && M

    movk *block ^*main
    jmk (M+2) u64 (<>/2)
    jmk ^*block *main <>
    jmp ^@r12 @r2 @r2 @r7 u16 (@r12+1) u64

    jmp (@r2/3) (@r11+1) M @r8 @r6 @r1

    push @r2 u64 <M>
    jmp M <> *main

    push @r1 @r3 (@r4/0_2) && u16 (<>+0_1)
    jmk <> @r8 @r4 u64

    cmp @r5 @r9 @r2 @r8 (^*block/0_2) (*main+0_2)
    mov u8 ^u8 @r9 @r12

    mov @r5 ^u32 && u8 @r12 @r7
    cmp @r2 ^@r4
    ldp ^@r8 ^&& (@r5/2) (@r3+1)

    movk u8 ^u64 @r4 *main
    cmp @r10 @r7 (*block+2) @r1 ^u8 @r7 (@r4+0_2)

    cmp (^@r3+0_2) @r8 ^@r1 (@r3/1) (@r7/1) @r6
    lsl <M> *main ^@r5
    push && ^<>
    jmk @r11 ^*main @r12 *main <M> @r8
    jmp *block && @r7 @r7 M ^@r5

    @r12 <> u16 @r4 <> @r5 @r6
    cmp ^u16 u16 @r2 @r7 @r10
    push *main M <M> *main @r6 u64 (<>/0_2)
    jmk @r10 @r5 @r12 M <> @r4 M
    push @r12 @r11 @r5 @r4
    push @r11 ^@r2 u32 *main
    lsl (@r8/3) @r7 u8 @r8 ^u64 (u8+3) @r7
    dw *main ^&& @r8
    lsl (@r7/2) *block @r6
    dw @r8 @r7
    jmk @r2 ^@r1 (^u8/0_2) ^@r2 @r11 @r12 @r12
    cmp @r7 (@r12/3) @r9 @r11 @r9 <M>

    @r10 ^@r2 (^u8+0_1) u64 ^*main @r11 ^@r10 u32

    push <M> u32 (@r2/0_1) (*block/3) (u32/1)

    @r4 @r11 @r7 @r8

    @r9 (@r11/3) u32 ^M *main @r9 @r4 ^u64

    ldp *block @r2 @r8 (@r12+3)

    ldp @r9 u16 && *main && ^@r9 @r7

    cmp @r10 @r2 (^@r12+0_2) @r4 u32 u32
    jmk (u8/2) ^<> u16
    ldp @r2 (^u64/3) <M>
    jmk *main M
    movk *block @r5 *block ^@r3
    @r3 @r7 @r7 *main (^@r7/2)
    movk @r3 @r11
    jmp @r4 @r3

