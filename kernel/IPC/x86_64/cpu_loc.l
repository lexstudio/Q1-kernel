entry:
   
    jmp @r2 @r11 @r12 @r6 u8 (^@r5/1) @r11
    jmk ^*main @r3 ^u32 @r3 @r4

    @r10 ^@r4 ^u8 <> @r3 <M> (*block+1)
    cmp u16 (@r1+0_1) @r7 @r11 *block
    movk *block @r11 @r4
    @r8 ^u64 (@r11/1)

    ldp (^@r6+0_1) @r12 (@r11/2) @r10 <> ^@r11 ^*main
    @r4 (^@r10/3) @r1
    ldp ^@r2 @r1 @r7
    mov @r8 @r11 <> @r10 (@r8/3) @r8 @r8
    push ^@r7 <M> u32 (u16+3)
    push M @r1 ^@r11 && @r8

    cmp <> (@r6+0_1) @r6 u16
    dw @r3 (*main+1) ^@r6 ^u8 ^@r3 u64 u16

    @r10 @r5 @r7 u16 @r7 @r5 @r6 M
    lsl @r6 <M> @r6

    cmp ^@r7 ^@r4 (*block/3)
    lsl (@r6/1) @r10 @r1
    lsl @r9 @r8 <M>

    lsl M @r3 @r3 (u16+1) (@r1/3)
    mov u32 (&&/2) @r4 ^@r2 ^@r3 @r10 @r3
    push @r12 ^@r12 u64 (^@r4/0_2) ^@r7 @r3

    jmk (@r11+0_2) u32 @r11 && @r7 @r5
    jmk u16 @r10
    movk @r9 *block ^@r12 M ^u16 (*main+2)
    lsl (u64/3) @r8 *block

    cmp @r1 @r5 @r8 ^M (@r10/3) @r9 @r2
    @r12 ^@r3 (@r9/0_2)

    mov @r11 @r2 u16
    mov ^@r1 @r9
    movk @r3 u8 *main <M> <> (^@r1/0_1)
    cmp @r9 u64 @r12 @r11 (^*block/3) @r4

    lsl u32 (u64/1) ^u64 @r3 u8
    cmp @r3 @r2 @r4 u16 (@r3+1) <>

    ldp @r2 u8 (@r7+3) && (@r5/2)
    mov (@r10/0_2) u32

    lsl u32 ^u8 && u32 u32 ^*block
    movk @r9 (<>/2) @r6 (u64/3) (*block+2) (u64+2)
    movk @r10 M ^u32 (*block+1) @r6 @r9 @r4

    @r11 @r8 <> <> (@r3/2) u32 <M> <>

    push <M> @r11 (@r9+2) u32 @r12 @r1 &&

    dw u32 && @r12 u16 @r10
    movk u64 @r4 ^@r11 @r3 @r4 u16 @r3
    @r10 (@r2+2) ^@r4 ^@r7 @r8
    push @r9 M ^@r10

    push ^@r4 M u64 @r7
    mov && && ^<> @r2 @r8 M <>
    lsl M ^@r8 @r5 @r7 ^@r8 @r7 @r9

    @r12 u32 @r11 @r5 (@r12/0_1) <>
    jmp <M> <> u16 @r8 @r5 @r8 ^@r4
    cmp @r3 (@r10+3) @r11 @r5 (u64/0_2)
    mov <> (<>+3)
    cmp *main ^@r2

    movk M *block @r2 *main u64
    @r9 @r1 *main *main <M> @r3 (@r12/0_2)
    jmp *main @r8 @r11 ^@r4 ^u16 u64

    ldp u32 @r6 ^@r12 *main (@r6+0_2) u16 (^&&+1)
    dw @r8 *main (@r6/3) @r5 ^@r2 ^@r6
    mov *block ^@r10 <M> *main (u32+1)
    cmp (u32+1) *main
    dw @r6 ^@r11 @r9 @r7
    lsl @r9 u16 (@r3/2) (@r11/0_2) @r8
    @r9 @r1 ^u64 @r10 ^*main @r11 @r3 (@r2/3)
    movk ^@r3 @r4 @r2 @r10 ^M
    jmk @r3 u16 @r5 u16 u16
    jmp ^@r12 (@r11/0_2) u64 @r12

    movk (@r12+3) *main M && @r4 ^<>
    cmp @r11 ^*main (M/0_1) (*main/0_2) (^<M>+0_1)
    @r11 @r4 && (@r1+3)

    @r8 *main && <> *main @r1 <M>
    mov ^@r7 @r12
    cmp u8 @r1 <> u8

    push ^u8 u8 && ^&& @r1 ^@r4
    dw u8 ^u16 <> @r2 u16 @r10 ^u8
    @r2 ^@r10 u64 u64 *block @r11
    jmp M (@r3/0_2) (M+0_2)

    push @r6 *main @r9 @r9
    @r12 <> ^u16 (@r8+3) @r1 (^u64+3) u64 @r8
    movk u32 (*main+2) @r1 u16 @r4 @r9
    jmp @r2 @r12 @r1 *block @r1
    dw (@r9+0_1) *block @r12 ^*main ^u64 (@r10+0_2) <>

    @r6 (&&+0_1) *main u64 (@r3+2) (^@r5/3)

    @r9 u8 ^@r6 *block (@r4/0_1) u8 u8 @r11
    jmp u16 @r7 *block

    movk *main (^@r10+1) @r9 @r2 u8
    mov u8 u16 (u16+3) (*block/0_2) M u8

    @r1 @r12 (@r2+1) @r4 ^@r12 ^@r6 (u16+1)
    mov ^@r1 *block u16 *block ^@r12 ^@r7 ^@r7
    jmp @r5 *main ^M u8 @r9 M ^@r7

    mov (^u16/0_2) u8 (@r2+3) @r3 @r9 ^@r4

    push *block @r4 @r11
    movk @r2 @r3 M u64 @r2 u16
    dw (@r10/1) @r6 (*main/3)
    mov <M> (@r5+0_1) @r8 @r9 ^@r7 ^&&

    mov @r3 ^@r9 ^@r2 u16
    lsl @r9 u64 (@r7/3)
    dw @r3 ^u16 u64 u8 @r2 ^M
    lsl ^*main ^u64 (@r2/1) ^@r6 @r2 ^M

    @r8 u8 (@r10+0_1) @r1 (@r1/0_1) u8 ^*main

    lsl (@r6+0_2) (@r10+0_2) @r8 && (^@r11/3)
    ldp @r10 @r4

    jmk (^*main+0_1) @r8 @r12 @r10 (@r10+0_1) M
    cmp @r1 @r6 @r11 *block u16

    @r10 @r8 && *block @r10
    dw && <M> @r5 u32 @r7 @r8
    jmk <M> @r2 @r5 *block

    lsl u8 @r8 ^&& <> ^<M> @r1 u8
    lsl ^u64 ^@r12 @r6 ^M
    mov ^M <M> (^@r8+0_2) @r5 &&


    dw ^@r12 <M> @r4
    @r5 (^*main+3) <> @r3 (@r4+0_2) @r12 <> u64

    jmk ^@r12 @r2 @r9 @r1 @r10
    @r12 u16 @r1 ^<M> ^@r11 ^<M> ^&&
    @r6 @r6 @r9 M M (u32+1) (^@r3+0_2)
    mov @r7 @r5
    mov *main && ^u32 M
    mov <> &&

    jmk ^@r5 (@r10+0_2) @r10
    jmp @r10 @r9 @r3 @r6
    movk ^u16 *block @r2 @r4 ^@r4 ^@r10
    @r10 ^<> *main (<M>/3)

    @r7 @r12 *block u32 u16 *block M
    jmk @r6 @r9 @r10 ^@r10

    push ^u16 @r12 @r2 M ^@r2 @r7
    jmk (<M>/2) ^@r5 @r10 @r1
    mov ^@r10 ^*main

    dw ^@r3 @r6 (^@r9+3) @r2
    ldp @r6 @r2 u16 ^@r11 @r6

    mov (@r9+1) <M>
    mov u16 @r11 @r2 M @r5 @r10 ^&&
    cmp @r10 @r12 ^@r3 *block @r8

    @r7 @r8 <M> @r1 @r11
    @r8 && @r9 <> ^&& (@r4/1) @r10
    ldp (@r11+2) (@r7+2) (u16+0_1) M (^*block+2) (@r7+3) <M>
    push @r10 (*main/0_2)

    dw @r2 @r9 @r6
    lsl (@r2+0_1) ^*block @r6 u8

    movk ^<M> (@r4+3) @r10 @r11 @r11 u8

    jmp ^@r4 M ^@r8
    cmp (^<>/2) M (*block/3) ^@r11 (u64+0_2) M u8
    mov (<M>+0_2) M ^@r10 *block @r8 u16 u32
    movk @r1 u16 @r3 @r6

    dw *block @r6 && ^<> *block

    dw @r4 @r11 M ^@r10
    mov (u32+0_2) @r2

    cmp && @r6 @r4 @r6 ^@r11 @r1 @r8
    ldp ^*main @r6 *main

    jmk ^<> ^@r10
    @r1 @r5 @r6 @r1 ^@r10 (@r10/0_2) @r2 @r4

    jmp (@r4+2) @r9 u32 ^&& <M> *main
    movk u16 @r6
    lsl @r3 && (<M>+0_2) @r3

    movk @r11 <M> @r11 u32
    ldp @r8 ^u8 <> @r1 ^*block @r10 @r2
    jmp (u64+0_2) @r8
    lsl (@r11+2) (@r4+2) ^@r4 @r3 (@r1+1)
    mov @r12 <M>
    @r10 u64 @r1 @r3 @r10 M (^@r2/0_2) u8
    cmp u16 u16 @r8 && u8
    push ^@r1 @r6

    jmp ^@r9 u64 (^@r8+0_2)

    ldp (@r6+1) u32 u64

    cmp (^@r10+0_1) @r10 @r11
    movk @r11 (@r2/0_2) @r10 @r7 @r4 <M> u8
    jmp @r9 ^@r8 ^*block
    dw *main ^@r5 (@r11+0_2)
    dw (&&/2) (M+3) (@r10/1)
    @r10 u64 @r10 @r3

    push (^@r11/0_1) <M> ^@r9 @r9
    lsl @r6 ^@r8 <> @r2 ^@r8
    jmk *block @r1 @r1 (@r1/2)

    ldp @r6 (@r2+3) @r12 @r4 ^@r6 ^@r4 ^@r7

    lsl u8 (^@r12/0_1) (^@r9/0_1) @r3 (@r7+1) u64 ^@r2

    lsl (*main/0_1) @r7 (@r7/0_2)

    jmp ^@r3 && (@r10/1) *block <>
    jmk ^@r5 @r6 *block @r6

    jmk @r8 @r4 (*block+0_2) && <M> *block @r4
    @r1 && *main *main @r3 ^@r5 u8 u64
    lsl ^<M> <M> @r9 @r1
    @r5 @r3 @r1 ^u32
    mov ^<> (@r10+2)

    @r6 ^@r6 @r5 @r2 <> @r11 @r9 u16
    lsl u16 ^&& <> @r8 @r5 (@r1/3) @r10
    @r4 (@r5+3) @r1 <> u16 @r5

    jmk ^u64 ^*block <M> @r8 u32 @r7 *block
    dw (M+2) u64 ^M @r1 u64 (<M>+0_1)
    push (^@r10/0_1) <> @r11 u8
    movk @r11 @r7 (u64/3) @r9
    dw u32 <> @r7 &&

    mov @r12 ^@r4 (@r8/3) u64 ^@r2
    jmk ^@r11 <M> @r10 ^u8 u16
    cmp @r5 @r10
    @r9 (^*block/0_1) @r5 u16 *block M

    lsl @r7 @r7 ^&& u32 u16 ^<>
    mov *block ^@r10 @r5 ^@r9
    lsl ^u16 <M> @r5
    push @r1 (@r10+0_2) @r4 *block *main && M
    jmk u32 (&&/1) ^<M> u8
    lsl && @r8 @r4 (@r5/0_1)
    jmp M @r2 *block @r4

    lsl *main ^u64 (<>/3)
    cmp ^<> @r4 && @r9
    ldp ^<> u64 M @r4 @r2 <M> u16
    cmp @r6 && (@r9+2)
    dw @r7 (<M>+3) @r8 M @r3 @r3 ^*block
    ldp @r6 u8
    @r5 @r7 ^u64 @r8 @r11 (u8+1)
    jmk u32 <> ^*main @r5

    mov @r12 *block M (@r11/2) (u64+0_2) <M>
    ldp (<>/2) ^@r5 ^u64 (u8/1) u8 @r6 &&
    @r1 @r8 ^@r9 @r6
    @r2 ^@r5 @r5 <M> ^<M> @r6 u64 @r4
    mov ^u8 @r11 @r2 @r3 *main @r6
    dw u8 ^u8 ^*block <M> @r1 @r9 u16
    push (^@r12/3) @r6

    movk @r12 u8 @r10
    cmp @r10 @r7 @r4 u16 @r10
    push (@r7+0_1) @r12 @r3 (@r5/0_1) u8
    jmp @r1 (@r12+0_2) *main @r3 ^<>
    cmp @r2 *main ^u16 (@r2+1) <M>
    lsl @r8 (@r11/0_2)

    mov *main @r10 M @r1
    push (^@r11/0_1) <M> u8 @r10 @r8 ^@r10 @r6
    @r11 (^&&+3) && u32 u8 ^@r4 ^@r11

    mov (^@r8/2) u32 u64 @r2 @r7 ^u16
    dw (@r4+0_2) ^u16 && @r9 (^@r2/0_2) ^u16

    ldp u8 @r7
    dw (^@r11+3) @r9 @r2 @r1
    ldp ^u32 ^@r5 && ^M <>
    @r2 ^u32 u16 *main <M> ^u64 && u64
    cmp *block @r1 u64 @r3 @r1 u64 @r5
    mov *block <M> (u32/2) ^u16 @r7 M
    dw *block (*block+0_1) @r12 (@r3+2) @r7 (^@r11/0_2)
    lsl ^@r1 M *block @r11
    jmp (^<M>+2) (^*main+0_2) @r9 @r10 (<>/0_2) (@r5+1)
    @r9 @r11 u8 @r2 @r10 <M> @r6 ^u32

    push (@r8+2) u64 && @r10 @r12 && @r10

    jmp @r6 (^@r9/2) (@r10/3)
    jmp (u64/3) @r4

    @r7 @r5 (@r6/1) M && @r10 ^@r2
    movk @r6 u8
    @r12 @r11 @r9 @r2 u8 M
    cmp ^<M> <> @r9 @r9 @r3 ^@r2 *block

    lsl u32 u64 @r12 u32 ^<M> (&&+3)
    lsl @r11 ^<>
    mov u16 @r10
    lsl @r4 @r8 @r8 @r4
    mov ^@r4 u64 @r1 M
    @r11 @r4 u64 u8 u64 @r7

    @r9 u32 @r5 (@r5+0_1) ^*main u16

    movk @r4 <M> @r4 ^@r6 @r10 @r6
    ldp ^@r10 (u16+1) @r5 @r8 @r4
    jmk @r8 <> @r10 u16 @r2
    lsl @r3 ^@r10
    mov (@r8/0_2) u64 u8 @r3
    jmp @r8 && (@r11/2)
    @r9 @r12 u8 (^@r9+0_1) (@r10+0_2) *block @r12 @r6
    @r8 @r9 ^@r8 ^u64 u32 ^@r4

    jmp @r2 && (@r6+1) @r7
    push *main u8 @r5 <> u8 @r12 @r10
    mov @r10 (@r7/3) && (@r8+0_2)
    @r4 ^@r8 ^M M @r5
    lsl ^@r12 @r3 @r9 @r4 (@r9/1) ^@r7 ^u32
    @r5 @r5 (u8+0_2) && <> (@r11/1)
    push @r2 ^@r2 <M>

    movk @r11 u64 (*block/1) (^@r2+3) *block @r8
    @r2 *main @r7 *main
    jmk @r11 *block *block (<M>+0_2) *block
    jmp @r3 @r11 (@r2+2)
    mov ^<M> @r1 *block @r10
    dw *block @r4
    @r7 ^&& ^u32 <>

    @r5 u16 @r7 @r12 @r9
    cmp @r9 (@r12/1) *main (@r9+3)

    jmp (u64/0_1) @r9
    jmk ^@r1 u32
    movk @r4 @r6 (@r1/1) (*main+2) @r3
    @r2 ^@r3 @r12 <M>

    @r9 (@r9+0_2) ^@r5 @r10
    jmp @r7 u8 ^@r1 @r5 ^@r11 u64 @r3

    cmp @r8 u16 u64 *main u16 (@r7/3) u8

    dw <> u8
    cmp u64 <> u32 @r2 @r7 @r6
    @r8 @r8 (@r3/1) @r3 ^@r4

    cmp @r10 u8 @r8
    push ^@r7 @r4 @r7

    @r3 <> M
    jmp @r1 <>

    mov @r12 (&&+1) ^u8 @r8

    push @r9 (u8/1) @r10 u32 @r2 @r10

    lsl @r5 (@r11/3) *main ^&& ^M

    lsl @r6 u32 @r1 @r9 @r8 ^&&
    ldp ^@r9 u32 (^u8+3)
    ldp @r11 @r11 @r8 u8
    mov ^<M> ^u64
    lsl @r3 && @r9 @r5 @r5
    @r3 @r3 u16 (^@r6/0_1) @r3 @r1 u16
    mov @r1 ^M @r7 *block
    movk @r7 @r12 ^M *main
    @r10 @r11 M u16
    push @r6 u32 u32 ^@r10 <> ^@r2 M

    @r7 (@r11+2) @r4 *block @r6
    @r4 ^u8 && <> @r9 && ^@r1
    dw (u32+0_1) u32 ^@r11 @r1

    @r6 @r2 (^u8/1)
    movk @r10 *block @r4
    movk @r4 ^u32 ^u8

    dw @r11 M

    ldp ^&& @r8 u8 u32 u64

    dw @r7 u16
    ldp @r7 @r11 @r2 ^@r6 u32

    ldp <M> u8 (@r6+0_2) @r5 @r12

    jmp u32 ^@r12 @r1 M <> @r8

    mov @r9 @r9 @r5 *block
    @r12 (@r7/0_1) && *main
    ldp <> ^u16 u16 (&&/0_2) && u64
    jmk ^u64 u8
    jmp @r11 u64
    ldp && ^u32 @r8 (<>/3) *main (*block/0_1) (@r9/1)
    @r4 @r8 (^M+3)

    push M @r5 *block ^@r3 *block <M> @r3

    jmk u64 <> @r2 *main @r11
    mov M @r5 M @r1 @r2 <M>
    cmp ^u16 u16 @r3 @r3 ^*main
    push @r12 *block u16 <>
    @r5 @r2 @r1 u32 ^@r8 @r4
    ldp @r4 (@r6/0_1) (*block/0_2) (@r2+1)

    ldp (M/0_2) ^<M> @r7 *block (@r9/3)
    jmk @r6 ^@r2 (^u16+3) ^<M> @r5 ^<M>

    push (<>/0_1) u8 ^*main
    @r2 @r7 u16 @r8 @r11 u8
    jmk ^<> @r12 ^u16 @r4 ^@r8 <> ^@r8
    push @r3 u16 u64 @r5 (*block+0_1) @r10 M
    movk @r6 (^M/1) (*main+1) ^@r3
    dw *block (<M>+1) @r8 <M> @r5 (&&+2) ^@r7
    lsl ^@r8 ^<M> <M> u32 @r4 ^&&
    @r11 u16 @r5
    @r7 @r5 @r3 @r6

    mov (@r2+1) &&
    @r5 u32 <M> <> @r7 @r12 @r4
    dw @r5 u8 (^u64/1) @r5 ^u16 (^@r8+0_1)
    mov u32 ^@r8 @r2 @r2 @r10 <M>
    @r10 @r12 @r11 ^@r9
    @r4 (@r5/0_1) @r11 @r4 (^u64+1)
    dw M @r5 ^M @r3 *block u8
    jmp (^*block/1) u8 ^@r8 u16
    @r4 <> u8
    lsl @r8 @r11
    cmp ^@r5 @r5 @r6 u8 *main @r5
    mov u64 ^@r6
    push @r6 @r5 u8 ^*block @r5 (@r12/0_2)
    @r4 (<>+2) <M> @r8 @r11
    cmp @r3 && @r12 @r8

    mov *block ^u64

    cmp (*main+3) (^@r5/0_1) @r6 <M> @r7 @r1 @r9
    dw u16 u8 <> @r3 ^u32 @r3 @r10

    jmk @r11 ^u32
    jmk (M+3) @r1 @r12 @r11 (@r11+2)
    lsl (^<>+0_2) u32 @r5 @r2 @r1 u64 &&
    movk @r7 ^u64 ^@r12 @r10 @r7
    push @r6 @r8 @r8 @r6 u32 @r8
    movk *block ^@r10
    jmk <M> @r6 u64 @r5 M
    dw (^@r2/0_1) @r12
    jmp ^u32 ^@r6 ^u32 u64

    dw && u8 @r7 @r11
    jmp <> ^@r1 u32 && @r4
    lsl @r1 ^@r3 u64 &&
    @r11 *block u64 ^@r2 @r10 ^*block
    @r12 @r1 *main @r2 (M+0_2) <M> @r8 u8
    lsl *main @r7 @r6 u16

    jmk @r1 @r4 @r3 ^@r10 @r5
    cmp @r3 @r8 ^u64 @r9 @r9 @r1 *block
    lsl @r7 <M> ^@r10 ^@r6 *main

    @r5 @r10 (*block+2) ^@r12 (^*block+2) (u32+1)
    dw ^@r9 <> @r6 M
    dw u32 (@r2+0_2) @r6 @r2 &&
    ldp @r2 @r6 @r11 ^@r10 (@r11/2) @r12 @r9
    push <M> u32 @r3
    @r4 @r11 ^@r8 (@r12/0_2) @r12 ^@r5 M @r12

    push @r9 @r11 ^@r11 ^@r1 (@r11+3) *main
    cmp @r4 M *block u32 ^@r5 @r4
    ldp *block @r1 @r3 ^@r2 u16 ^@r3

    cmp @r8 u64 @r11
    lsl <M> u8 @r11 (u32/0_1) &&

    ldp @r11 @r2 @r1 ^@r7 @r9 @r5
    movk (^<>+0_1) <> @r10 @r5
    @r3 M @r7 u64
    jmk @r2 *main @r6 (^M+0_1)
    jmp u32 @r2 ^M
    lsl u32 @r9 @r2 @r11 ^*main @r10

    lsl @r12 u8 @r2
    jmp @r12 @r3
    movk *block <> (@r10/1) @r7 ^@r2 ^<M>

    lsl u64 && (^@r12/3) @r8 @r2

    dw <M> @r6 @r1 (u32/0_2) (u64/3) (&&+2)

    push u16 u16 @r1 (@r4+2) ^@r5
    ldp (*block+3) @r5
    jmk *block (<>+3) @r6

    dw (@r3+3) *main (@r9+0_1) <M>
    cmp @r4 *main (u8/1)
    @r10 u64 @r2 u16

    @r8 *main ^u8 M @r9 (@r1+3) @r6 @r9
    @r5 @r10 ^&& (^<M>/0_2)

    @r10 @r6 *block (@r12/1) @r8 @r7 (@r12+1)
    movk ^@r7 u8 ^&& @r9 *main ^@r9

    lsl @r9 ^@r1 (@r8/0_2)

    jmk <> @r9 @r3 @r1
    @r10 <> (M+0_1) ^<> (M/0_1)
    jmk @r6 ^<M> M
    @r4 *block ^@r7 @r2
    @r3 (u64+0_1) @r10 *block (u64+0_2) @r7 ^<M>

    @r1 @r10 (^@r9/1) @r1 *main
    jmp (@r12/2) @r4 ^@r4 @r2

    @r8 @r7 ^@r8 @r3 (u64/3) u8

    @r8 ^<> @r6 u16 @r6
    jmp ^@r5 u8 @r2 (@r11/0_2) @r3 ^u8
    dw && *main ^@r3 ^u32 <M> *block ^@r2

    lsl ^@r10 M && (^<>+1) (^@r7/1) @r12
    lsl @r10 @r9 (u8+1) u64 && @r6
    ldp @r9 *main u64 (u8/1) ^@r12 u64
    movk @r12 @r2 *main (^u16+0_2) @r2 ^<>
    dw ^@r9 @r10 @r12 u64 @r3

    jmk M u64 @r6 @r6 @r5 @r11 @r11

    movk @r4 @r8 &&

    mov @r4 @r2 @r8

    push @r6 (&&/1) @r3 ^@r3

    lsl ^u64 ^&&
    cmp @r7 *main u16
    push u16 ^@r8
    dw @r12 (^@r4+1)
    @r8 @r2 u64 @r4 ^@r3

    dw M ^<> @r7 (u64+2) ^u32 ^u8 @r12
    ldp @r12 (@r3+1) @r9
    mov @r12 u8 (^@r6/2) *main
    movk && *block <M> <> ^@r4 @r8 ^*main
    @r3 @r1 *block (^&&/3) u32 @r6 @r12

    movk ^@r6 M @r8 u64
    mov ^@r12 @r4
    lsl *main @r7 (@r2/1) @r9 @r11 @r1 @r3
    jmk u8 *block && @r11 @r10 <M>
    push (u8/3) M @r1 && @r11

    ldp ^@r6 (@r10+0_2) <> ^@r2 ^u8 M ^@r8
    jmk @r12 u16 M (@r11/3) ^u8
    jmk ^@r11 @r2 (@r10/2) ^<> (M+0_2)

    dw ^&& ^@r3 <>
    ldp @r10 @r2 @r2
    jmp ^@r3 u8 @r12 @r8 (*block/0_2) u8 u64
    cmp @r3 @r5 *block u64 ^&& u64 M
    dw @r9 *main u64

    jmp u16 *main
    jmk <M> @r1 @r10 && (u64+0_2)

    ldp u8 u32 *block

    dw u32 u64 <> ^@r9
    jmp @r3 ^@r6 ^u8
    @r8 ^@r3 u64

    push u8 @r10
    @r9 u8 u32 @r3 @r8
    push <M> @r8 u16 *block

    dw @r10 u8
    @r6 *block u64 (M/1) (<M>+3)
    lsl u64 *main @r7 u32
    movk u16 @r12 ^@r8

    jmp @r7 @r11 && @r11 @r11
    cmp (u32+3) u64 ^@r2 (@r6+3) u16
    movk (@r5+2) @r2 *block

    @r7 @r1 @r9 @r5 <M>

    lsl @r5 @r8 (@r12/1) @r2 *main @r1
    push @r10 @r7 @r3 ^u16 @r7 (*block+0_1) @r6
    dw @r3 u32 (@r2+2) ^@r9
    cmp @r3 @r2 @r12 @r10 @r6 @r12
    dw @r2 ^@r12 &&
    @r5 @r1 ^u16
    lsl u32 (&&/0_1) (^@r10/1) ^@r7 ^u16

    cmp (@r9+0_1) @r6 (@r3+1)

    ldp u8 && @r11
    lsl (^*main+2) (@r7/3)
    dw @r3 (&&+0_1) M
    @r3 @r10 <>
    dw @r3 ^u64

    lsl @r2 (u16+1) <M>
    @r2 @r9 @r2 @r6

    ldp (u32+0_1) @r6 <> ^@r8
    @r2 (^*main+0_1) @r7 *block @r10 u8 ^&&
    cmp @r3 u8
    jmp @r1 <M> @r5

    dw ^u64 @r5

    @r5 u16 ^@r11 ^M u8 @r7 (u8/3)
    @r11 (@r1/2) u16 @r8
    @r2 u8 u8 (*block/0_2) ^M
    cmp ^*block (@r4+0_2)
    jmp @r6 @r2 @r11 @r12 @r11 (^@r6/1)
    dw u16 u32 @r7

    dw @r4 @r7 @r3 @r9
    lsl @r10 u32 u32
    @r1 *main @r1 (@r7/1) ^M
    @r7 <> <>

    cmp ^@r2 (<>+0_2) @r3

    @r8 *block @r2 ^u8
    lsl *main @r9 u64 ^u16 ^@r4 (*main+0_2) @r12
    dw @r1 @r4 (@r5+1) @r7 @r12 @r11 u32
    movk ^*main ^@r10 M <M> <M> @r1
    mov && u32
    jmk <M> @r4 @r7 *main ^*block @r12 @r6
    mov @r1 @r5 (@r4/2) <M> (^@r11+2) @r11 @r2
    movk u32 @r2 @r12
    push ^<M> <M> @r10
