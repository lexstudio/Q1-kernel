entry: 

    movk u8 ^@r5 (@r7/0_1) @r7 // no main
    mov @r11 @r9 ^&& ^*block (&&/0_2) u32 ^@r8
    jmk u32 @r10 (u16+2) u16 // register in u16 
    mov (&&+1) @r12 (@r7+0_1) @r7 @r11
    lsl @r12 u64 M // u64 M 
    cmp *block @r6 (&&/0_2) && (M+2)

    @r8 ^M u16 // pointer for u16
    lsl ^<M> @r11 (M+2) *block @r8 ^@r10 @r5

    jmp ^@r8 @r11 @r2 // register
    movk @r5 *block @r4 ^u8
    jmk ^@r1 @r12 M // pointer for registers
    movk @r5 <> ^@r6 (@r8/2) u64 @r10 u8

    jmp ^@r1 <M> @r3 ^u16 @r1 // logic point start

    jmk <> @r7

    @r1 u16 ^@r12 // register in u16 
    @r7 @r9 ^u32 ^@r5 @r11
    @r7 (@r9+2) <M> @r9 @r6 ^u8 // register 

    mov (^@r4/1) ^@r8 u64 (@r9+1) @r7 M @r9
    mov u8 (^@r10/0_2) && <> <> // pointer for logic
    jmk @r12 (&&/0_1) @r8 @r9 M
    @r7 @r8 @r1 (@r12/0_2) (u64+3) (@r7/1) @r2 *main // main
    @r4 *main @r3 @r12 @r1 <> (u64/0_2) @r12
    @r2 (@r1/1) @r7 @r3 @r5 ^*main u16 // main
    jmp @r2 (@r6/0_1) (^<M>/2) @r11 @r7 @r5 (@r9+2)
    movk @r6 @r1 @r12 @r11 *main @r5 ^@r3
    cmp ^@r7 (*block+3) (@r7/0_1) ^@r2 (@r5+2) <M> ^u16 // pointer for logic

    @r8 (@r2+0_1) @r8 (*main/0_1) (@r1+3) <M>
    dw <M> *block u64 // block clean
    cmp ^@r1 && u64 @r6 @r10 @r8
    @r9 u16 (@r4+3) @r1 @r8 u16 // register in u16
    push u64 @r4 @r10 ^<> @r10

    dw ^*block <> ^u16 // block clean
    jmp ^u16 (@r2+1) M @r3 (@r2+0_1) ^@r7 @r7
    cmp <M> M @r5 && *main (@r8+2)  // main 

    push ^@r1 @r7 @r10 // register
    @r2 u64 *block <> @r9
    lsl @r4 ^<M> u64 @r8 @r11 M

    lsl @r4 @r6
    mov ^@r4 <>

    jmp u64 ^u8 ^@r10 @r11 u32 // logic jumper
    jmp @r2 (u32+0_2) @r11 <M> (M/2) &&

    cmp u8 @r6 @r11 ^<M> (M+1) (^@r9+3) @r12 // advance pointer (see docs)
    @r8 M @r2
    @r10 (@r6+0_2) ^@r1 @r5 (@r6/3) ^@r8 u64 *main
    @r8 u64 ^@r2
    @r2 ^M @r4
    lsl <M> @r10 *main
    push u32 *block M @r10 @r3 // push in block
    jmp ^@r11 (^@r5+0_1) // register jump to none if error


    dw ^@r6 u16 @r3 (@r11+0_1) ^@r6 *block @r8 // clean block from push
    @r7 (@r10+3) <M> *main @r1 @r3 @r7

    movk @r11 ^@r12 u64 // no main
    lsl u32 (@r2+0_1) @r6 ^@r2 @r7 u64 <>

    mov *block ^@r3 ^@r7 @r8 ^<M> @r4 // block pointers
    movk @r5 @r6 @r10 u8 ^@r5 (@r4/1) *block
    cmp (@r3+2) u8 (@r11/0_2) @r8 @r8 (&&/3)

    mov @r9 ^M <> u8 @r10 // mov in 

    jmp (*main+1) @r10 @r1
    jmp @r9 (u64+3) @r4 ^<M> ^@r7 @r5 (@r3+0_1)
    cmp (u32/0_1) @r8 ^@r9 <> @r12 && // pointer for u32 blocks
    @r5 <> (u8/3) ^u8 <> u8 ^@r12 @r9 

    push ^*main @r9 @r4 u32 *main ^@r8 ^@r5 // main push

    jmp && <M> (*main+0_1)
    ldp (u64/0_1) ^u64 (&&+2) (@r6/0_2)
    @r6 @r5 @r5 @r8

    lsl @r11 @r10 && @r3 u16
    cmp && (^@r5+1) M @r5 ^@r11 @r6
    jmp @r4 @r11
    dw (@r1+1) u32 ^*main @r12 (^&&/0_1) && // main clean if push error

    jmp ^u32 @r3 @r10 @r8 // jump if error
    movk (@r11/0_1) M (&&/0_2)
    mov @r8 (@r5/1) <M> // pointer for error

    @r7 @r6 u16 ^@r11 @r12 M
    jmp u8 @r8 @r11 @r4 // small register cache
    dw @r12 <M> u64 @r1 ^@r1 ^u16
    jmk @r2 M @r11 ^@r8 // cache access 

    @r10 *main @r3 @r7 M @r8 @r8 *main // cache main

    dw M @r4 // clean pointer 
    jmk (^*main+0_2) (^@r6/2) ^u64 (^M+1) @r4
    @r10 M u8 && (@r3/2) (M+2) u16 @r11
    @r11 ^<> <> // pointer
    @r10 @r5 @r5 u16 @r8 @r2 *block ^M
    cmp @r4 *main @r3 // main
    jmp ^@r6 @r8 && @r3 <> ^@r7 @r6
    jmp @r2 @r10 @r6 @r9 @r3 @r12 (^u32+3) // cache registers
    cmp <> @r7 ^u32 // cache pointer

    @r1 @r3 @r10 <> @r11 // registers for cache
    mov (<M>/2) *main *block ^@r9 // block for cache
    movk <M> *block // block pointer for cache
    @r8 @r11 *block *block @r7 (u8/0_2) ^u32
    jmp (*main+2) ^*block (@r6+1) <M> u32 @r9 // cache
    movk ^@r1 @r2
    @r1 && @r2 @r7 <M> ^@r9 (&&+2) @r1

    mov *main <> @r1 *main // main cache
    @r11 @r4 u64

    jmp @r2 ^u64 // cache register for u64
    @r6 ^@r3 <> u8
    cmp ^@r8 M u16
    dw u32 <> *main (@r7+2) && @r4 u64 // u64 register for cache
    movk @r4 @r6 @r1 (u8+0_2) u32 @r10

    lsl @r7 *main @r8

    @r12 (@r2+3) @r7 u16 ^@r11 @r11 (<>/1) *main
    push (^M+3) &&
    jmk (M/3) @r12 && ^@r4 @r10

    jmk ^@r1 @r12 u8 <M> @r8 u64 @r7 // optimization
    jmk ^M M u64
    movk <M> u64 @r2 (&&/0_1) (@r11+0_1) (@r4/0_1) u16

    push @r11 *main @r4 (^<M>/3) (u8+0_1) *main u64
    @r11 @r7 ^&& (<>+3) ^@r4 @r5 <>

    lsl ^&& ^@r10 (M/1) @r8 @r9 u64

    jmk && @r8 @r7 <> @r11 @r11 (@r1/0_2)
    push @r3 && @r1 @r11
    movk (M/0_1) @r12 @r4 <> @r11

    @r5 (@r5/2) ^@r3 ^@r1 M

    push ^@r12 @r5 u16 @r10 u16 @r6
    jmk ^*main @r10 @r1 @r10 @r2
    lsl @r6 @r2 M u32 @r5 u16 (<M>/2)
    @r9 (^u8+2) ^<> <> @r4
    jmp M @r9
    push @r10 u32 u32 (^@r6+0_1) ^@r12
    mov ^<> (u8/3)

    push @r3 ^@r9 u8 ^u16 @r5 @r9 (@r7+2)
    ldp <> u32 (@r9+0_1)
    jmp @r3 @r9 ^@r3 (@r10+3) M
    cmp @r2 ^u64 ^@r6 &&
    push u32 ^u32 @r11 @r3 @r5 @r4 ^@r11

    jmk @r8 @r1 (@r9+3) @r9 @r5 @r5
    dw *main @r2 @r3
    mov u64 @r2 @r4

    @r9 @r4 @r1 @r1 u32 @r12 u8 (@r5/0_1)
    jmp (@r7+1) @r5 (^@r9/0_2) @r7 (^@r6/0_1)
    movk (@r1+3) @r4 <M> (u32/0_2) <> u8
    movk @r11 *main <> (^@r7+0_2)
    push u16 u16 (u32+0_2) @r10 (^&&/1) ^M

    cmp <> ^&& ^@r8
    @r2 @r3 @r8 *block @r1 u64 @r12

    cmp (@r2/0_2) @r2 ^@r6 @r10
    @r9 @r3 @r4 @r8 u8 (@r10/0_1) (<>+2)

    dw @r3 ^u16

    jmk @r10 @r3

    jmk ^@r8 *block @r7 ^@r1 @r8
    ldp @r7 @r3

    @r2 (@r2/2) *block <> @r12 *main ^u8 <>
    @r6 u16 && *block ^@r1 ^@r4 @r2
    cmp ^@r1 @r6
    @r1 *main M @r5 @r11 @r10 @r12
    cmp @r4 (@r7+0_1) u32 @r10 ^@r5 @r9 (@r2+3)
    dw @r2 @r5 ^@r3 @r8 u16 ^@r3 *block

    ldp *main && ^<> ^@r7
    dw ^@r9 @r5 && u32



    dw @r7 ^@r8 @r7 @r7
    push ^*block @r10 *main
    movk @r4 @r5 @r8 <> @r11
    @r1 @r9 @r4 (&&+0_2) @r11 (&&/2)
    @r2 u8 (<>/1) ^@r8
    jmp ^u16 ^@r2 <M> ^@r12 @r11
    ldp (@r10/2) u32 ^@r1 ^@r12 @r9
    cmp M u8 (@r4/0_2)

    movk @r12 u32 u64 u64 ^u64 (@r8+1) @r11
    cmp @r12 u16 @r1 u64 (@r5+3) (@r7/3) M
    mov @r8 @r10 @r11 (@r10/0_1) ^*block
    jmk M u32 *block (@r4/3) ^@r2 (@r2+0_1) *block
    mov ^@r2 @r6 *block @r9 (@r6/2)
    @r3 @r1 @r2 ^&& @r6 *main @r5
    @r7 @r12 (@r6/2)
    push && u32 <> @r6
    ldp @r6 u8 (^@r4+1) (^<M>+0_1) @r6

    lsl ^*main ^@r12 (^@r10/1) u16 @r9
    lsl *main (@r8/3) <M> (@r12+2) ^@r4
    mov ^<M> (@r1+3)
    ldp M (^@r8+0_1) @r9 ^@r11
    jmk @r7 ^u64 @r7 ^<M>

    lsl *block <> @r7 @r7 @r4 (M+0_1) (@r8+2)
    dw (@r12/0_1) ^@r1 (^<>/1) (@r8/0_2) *main u64
    mov @r11 @r12 @r1 @r7 @r4

    @r7 @r1 (@r8/3)

    @r3 u8 @r3 ^@r5 @r12 *block
    dw <> @r9 @r4
    dw <M> u16 u64 @r4
    jmp @r9 ^@r6 M @r10

    push u16 u64
    jmk (*block+3) u32 @r10 @r2 ^@r3
    cmp ^@r4 u64 *main ^*main @r4
    jmp @r9 ^*block <>
    @r4 @r10 @r7 ^@r11 ^@r11

    movk (^@r11+0_2) ^@r4

    @r4 @r8 @r1 *block @r8

    ldp u8 @r8 <M> (^@r9+0_2) @r6 @r4
    jmk u16 && ^@r11 @r1
    movk ^@r11 @r7 u32 @r1
    @r10 <> <M> ^@r1 ^<> ^@r1 @r2 @r12

    ldp @r12 (@r2/1) (*main/2)
    @r1 && u8 @r10 (@r6/0_2)
    mov @r12 @r2 (u16/3) (<>/3) @r1 @r9 @r6

    movk u8 @r3 ^@r5 <M> @r10

    @r8 && <M> ^u16 ^*block

    ldp <> M u32 (&&+1) (@r3/3) @r2 @r6
    movk (@r11/1) @r2
    push ^@r6 M @r10 @r6 <M> @r2 @r7

    cmp @r1 (@r5/0_1) (@r8+0_1) @r1 M ^u8 ^@r6
    mov u16 ^@r5 ^@r7 @r2 ^@r9

    jmk u32 @r3 ^u16 <>
    jmp && @r7 ^<> u8 *main @r11
    dw @r4 @r6 u16 ^@r5 u8
    jmp @r8 @r12 @r3 ^<M> @r7

    @r12 <M> u8
    mov *block M @r1 u16
    @r11 @r11 @r7 ^@r10 ^M (u16/3) (M/0_2)
    movk u32 @r9 @r6 u32
    cmp @r7 @r2 && &&
    push (@r7/1) @r9 @r7 @r11 *main @r5

    movk (@r7/1) u64 (^@r12/1) &&
    lsl ^&& *main <M>
    @r1 (@r2+1) @r12 @r1 ^@r6 (@r2/3) @r2 ^u32
    lsl @r3 u32

    jmk u8 u64 ^*block (@r7+2)
    @r3 ^@r8 @r3 u8 <M> @r3
    jmk @r7 u32 u64 && @r2 @r11
    @r7 @r11 <> ^*main (<M>/1) (@r9+2) ^@r10 <M>
    lsl @r3 (@r9/3) @r12 <>
    mov (u8/0_2) ^@r8 ^@r4 u64 @r12 ^@r7 @r2
    ldp (M/0_1) <> (&&+0_2) (@r9+3) u16 ^@r12 @r7

    ldp ^@r11 <> (<M>/0_1) (u32/0_2) u32 @r11 @r6
    mov (@r8/3) && (*block+0_2) (<M>+0_2)
    push *block ^<M> u16
    movk @r12 M ^*block

    dw @r12 @r11 (@r6+2)

    dw M M

    lsl @r9 @r9 (u16+1) <> @r7
    movk M ^@r4
    ldp @r9 @r6 @r9 ^@r1 @r9
    push ^@r2 ^<M>

    jmk u64 @r7 @r5
    cmp ^@r4 @r11 <M> @r12 u32 &&
    cmp (@r3+2) <>
    dw @r5 *block @r2
    @r4 @r4 ^@r1

    mov @r11 @r2
    ldp ^@r5 *block @r9
    lsl *block u16 @r5 M @r9
    ldp @r2 ^@r9 *block
    push *main ^@r2 (@r7+2) @r7
    ldp <M> @r8
    dw (@r6/2) (@r6+3) @r7 @r2
    push (u32/1) <M> M
    push (*block/2) @r10 @r1 ^@r6 ^@r9
    @r9 *main (@r3/2) ^@r2 u64 <M> *main &&
    cmp M ^@r6 ^@r3
    @r3 ^<M> @r12 @r6 *main *block <M>
    cmp @r9 u16 @r9 @r9 ^*main
    @r11 *block @r2 && @r12 @r1
    movk @r10 (^M/2) @r3 ^@r12 M (@r1/3)

    @r7 && @r12

    cmp (@r4+1) u64 @r4 @r4
    movk @r3 @r10 u64 @r8
    push ^u64 @r6
    ldp ^@r9 ^<> *main

    @r4 <M> @r12
    lsl (&&/3) @r1 ^&& @r1 @r11

    lsl ^<M> && ^@r2 && M

    dw ^*main u32 @r11 ^*main ^@r1

    mov ^@r4 ^@r11 @r8 @r5 @r5 ^u8 ^@r7

    movk @r4 (@r6+0_2) @r8
    mov @r10 && @r8 @r10
    dw ^<> @r4
    @r11 *block u16 ^u8

    ldp u64 @r6

    dw @r4 @r6 ^<M> ^@r7 u64 (M+0_2) @r6

    @r8 @r10 @r2 ^*block @r12 @r3 @r9
    lsl @r7 && (@r5/1) M @r3
    @r9 @r1 @r6 @r2

    lsl && @r12 @r10 *block

    ldp u32 u16

    jmk @r10 @r12 u8

    mov ^@r9 (*main/3) @r1 @r12 ^@r7

    @r2 M (@r2/1) @r3 *block <> ^u16
    jmk ^@r7 ^@r7 u8 @r6 ^u64 *block u8

    movk ^@r4 <M> @r12 @r4 (@r12/3) *block
    ldp <M> (^@r4/0_2) @r4
    push @r3 *block (@r6+3) M @r12 @r1 u16

    movk @r4 ^*block && u32 ^<M> ^@r4
    jmk @r10 (@r6/1) @r6 M
    dw u32 @r3 ^@r10 (@r8/1) <> u8
    dw (<M>+2) @r4 u64

    push (u64+2) ^u32

    mov @r11 @r1 @r12 @r3 @r9

    jmk ^@r9 *block @r10
    jmk @r9 @r9 @r9 @r2 (@r10+0_2)
    jmk u32 M @r10
    lsl u8 ^<M>
    cmp @r1 *block <> @r6 @r12 @r6
    cmp @r12 (<>+2) @r10
    @r5 u64 ^*block u8 u8
    lsl @r6 @r5 (@r5/2) ^@r6 (@r12/1)

    lsl @r3 ^u64 @r6 *block ^@r11 @r8 ^M
    ldp @r1 @r9 @r8 ^<> M
    jmk M @r8 && @r1
    ldp u8 @r3
    @r11 *main @r11 @r7

    jmp @r10 (*block+3) @r10 u64 (@r8/3) (&&+3) ^u16
    movk @r11 u64 u32 @r1 *block

    jmk (^@r8+3) *block

    jmp ^@r10 @r9 ^@r1 <> @r2 (@r1/1)
    mov && (^@r11+1)
    @r6 (@r3/1) @r11 <> *block <>
    push @r10 (^@r5+3)
    cmp u8 (@r6/2) @r3 @r11 @r7
    @r1 @r12 ^*block
    push @r6 u8 (u8+0_2) @r10

    mov @r11 u64 @r6 @r8 @r6

    mov @r4 @r8 @r3 (@r12/1)
    push @r8 (^u32/0_1) *main u64 ^<M>
    movk (^@r12+0_2) u64 @r8 u64 @r2 (M+1)
    lsl @r10 @r10 @r7 (^@r2+0_1) (@r2+3) (u64/0_2) @r12
    cmp (@r11/1) ^@r4 (u64/0_2)
    lsl u16 <M> (u8/3) @r5 u16
    @r4 (u8+0_2) *block M @r4 @r8 (@r5+1) @r1
    @r8 (^u16+2) ^@r7
    jmp @r6 @r4 && ^M
    lsl @r12 <> ^@r4 *main @r12 u64

    push M @r9 (*main/0_2)
    push @r1 @r8 @r5
    movk @r11 && (&&+0_1) (@r3+3) (u64/0_1) (@r2/1)
    lsl ^@r4 (@r3+1) ^&&
    @r11 ^@r3 <M> @r5 &&
    @r5 @r2 (@r8/0_2)
    @r7 u32 M u32 u8
    dw (@r9+0_2) @r12 ^@r5 *main @r6
    jmk @r2 @r12 (^@r11/3)

    mov (@r6/3) @r5 ^@r10 ^@r3 ^@r11 && @r6
    mov ^*main ^@r9 @r8 (M+3) @r9
    cmp @r5 @r8 @r11 *block
    movk (u32+1) ^@r7 <M>
    @r7 (&&+0_2) @r10 @r1 (M/0_2) ^@r5 u32 ^M
    mov u16 @r9 <M>
    @r8 u64 @r11 u8

    ldp @r10 @r7 *main
    @r1 ^@r3 && (@r8+3)

    dw @r9 u8 u64 @r6 <> (@r10/2) (u8+3)
    @r8 @r7 <> *main ^@r8 ^*block <>
    jmp (^u64+0_2) ^&&
    cmp @r8 @r8 ^@r4 <M> (^@r12+0_2)
    ldp ^@r8 u8 (@r11+1) (^@r2+0_1)

    movk (^@r3+2) @r11
    @r6 ^@r5 ^*block (@r2+0_1) @r12 M

    @r10 ^M <> ^@r6 u16 (<M>/1) ^@r6 M
    lsl @r9 ^*main <M> (u8+0_1)

    jmp u8 u8
    jmp ^u8 u16 (@r6+0_1) ^@r7 M ^@r10
    @r8 M u16 <M> u8

    push <M> @r1 *main @r4 @r7 u64 ^@r6
    mov @r2 ^@r12

    @r4 <> u16 @r12 @r8 @r9
    jmp (@r8/2) @r1 ^@r7 *main (^<>/1)
    dw @r2 u64 @r6 @r3 @r3 (@r6/1)
    cmp @r6 @r7 <M> @r10
    movk @r7 (^M+2) u16 (@r6+1) (@r2/1)

    mov @r9 *block

    push (^@r6/2) ^u8 ^@r6 @r11 ^u16
    cmp @r11 <M> ^<M> u32 *main
    dw @r9 (@r4+0_1) <M>

    dw @r1 ^@r3
    @r10 (*block/1) <M> @r11 u8
    movk (u16+3) u64 @r12 @r11 ^@r10 (*block/1)
    ldp u8 u8 *main (@r11/1) u64

    @r4 @r6 @r7 @r1 u32 *block @r5
    ldp @r12 (<M>/2) @r7 @r12 *main
    lsl (^u64+0_2) @r11 ^u8 @r6 u8 @r2 (@r4+2)

    movk @r4 @r1 @r1 @r7 @r8 @r3 @r4

    jmp u64 *block @r12 ^<> ^@r4 <M> @r7

    @r10 @r12 @r3 @r6

    cmp ^@r9 *block @r2 ^@r12 (@r9/0_2)
    ldp @r7 @r8 u8 @r10 @r11
    push (<M>+3) u32 @r5
    push @r6 (^@r11/1) @r12
    jmp *main && ^@r4 @r12 (@r4/1) @r8
    ldp ^*main @r1 (<M>/0_1) (*main/1) (@r9/1) ^@r11
    @r12 @r5 @r2 (^@r8+0_1)

    @r6 (^<M>/0_2) (@r6/3) *main @r11
    jmp @r5 (@r8/0_2) ^@r10 ^@r9 <M> @r3
    cmp @r12 ^u64
    jmk @r1 (<M>+0_1) <> @r8

    lsl <M> @r1 && ^@r7 (^@r10/1)

    jmp @r6 @r4
    jmp <> <> @r6 @r2 @r11 *block (@r5/0_2)
    mov (^*main+3) ^<M> ^*block

    movk (@r11+0_2) u16 (u16/1)

    @r4 @r6 ^<> @r5 @r7 u64

    jmp u8 u64 ^u8 @r12 @r10 @r2
    jmk @r6 && <M> (<M>+0_1) ^@r9 ^u32 @r9
    push ^<M> @r3 ^*block (M+0_1) u8

    movk u16 @r3 @r12

    push @r7 && @r10 *main (^u16/1) *block @r5
    push *block @r12 && @r12 @r4
    ldp u64 ^@r12 ^<M>
    jmp ^u64 @r1 M ^@r9
    @r5 ^<M> *main @r9 ^<>
    @r5 @r5 <M> @r1 @r12 @r2

    @r1 @r10 && u32 *block u32
    jmk @r4 u64 @r6 @r4 ^@r6 @r6

    mov @r11 @r11 @r6 (u64+1)
    cmp *block @r11
    dw ^@r1 ^@r2 (@r10+2) @r5 @r6 <>

    @r10 u16 @r9 u64 u16 u64 u16 @r2
    mov ^@r7 @r4 ^u16
    cmp @r9 @r4 @r3 *block

    mov && <> (@r7+0_2) (@r5+0_2) u16 *block M
    push (&&/2) @r3 && @r7 ^u32 @r4 <M>
    cmp ^@r6 @r3 @r9 ^@r6 @r12 @r6
    lsl @r1 u32 @r9

    jmk @r10 @r8 @r10

    movk @r3 u32 (^@r1+3) @r3
    @r9 ^@r1 @r1 u64 (^&&/3) u8
    jmp @r6 u8
    jmk @r9 u64 @r11 <> @r11 (@r1+0_2) u8
    movk (@r1+1) ^*block
    push u16 (^@r3/0_1) @r9 <> @r11 @r6 ^@r4
    dw @r11 u32 (@r2/3) @r2 @r9 @r3
    ldp M @r5 @r9
    jmk @r2 (<M>+0_2) @r3 @r10 ^@r1
    push *block (@r10/1) @r12 (^@r11/0_1)
    jmp (&&/0_2) u64
    @r12 <> ^M @r6 M @r1 @r10 @r5

    dw (*main+3) @r5 ^u16 @r6 @r10 <M> (u64+2)

    @r3 @r9 && (@r1+0_2)
    cmp <> (@r6/2) @r9 @r2 *main @r12 @r11
    dw ^u16 ^@r8 ^@r10 @r5 <>
    push ^<M> <> *main @r1 u8
    cmp (@r1/2) @r8

    movk @r6 ^*main @r7 *block <>
    jmk (@r2+3) ^@r6

    mov @r6 (^@r12/1) <M> @r11 ^@r5 @r3 ^@r12
    @r6 @r2 @r8
    jmk (^@r3/0_1) <M>
    @r5 @r4 @r11
    movk ^<M> @r12 @r10 *block <M> M
    jmk ^*block ^@r4
    @r8 @r2 u8 <M> u8 @r11 @r8 u32
    cmp @r6 ^@r2 *main

    @r11 <M> ^@r3
    lsl (@r5+3) @r7

    dw M @r11 (u32+1) ^@r12 *block @r3
    dw && @r1
    @r2 ^u32 ^@r1

    push && @r4 ^&&
    jmk M u16
    lsl @r10 ^@r1 ^u16 (^@r5/0_2)
    cmp ^@r11 @r9 && @r3 *block <>
    dw (@r8/1) u32 *main ^@r11 u16 (^M+2)

    cmp @r6 ^u16 @r3 @r3 <M> <> @r4
    push ^&& (*main+2) @r5 ^@r7 @r2
    jmk (@r5+2) <M>
    @r3 ^@r10 ^*block @r7 ^u8
    ldp *block @r2 u32 @r12 *block u16 ^M
    mov @r5 u16
    mov @r3 @r11 u8 @r12 *main @r7

    ldp ^@r9 <> ^@r8
    cmp u16 @r11 ^@r7 u64 u32 @r11 (@r12+0_1)

    ldp @r9 M
    ldp @r3 u16 @r10 @r10
    jmp u8 ^@r5 @r6 @r9

    mov @r8 (u16/0_2) @r9 (<M>+0_1)
    @r8 (*block+3) @r2 ^@r1

    jmp @r11 @r2 <> @r4 @r11 @r10 @r6
    jmp ^u8 ^u32 (@r7+3) @r2 (u32+0_2)

    @r1 u64 (@r4/3) M u8 ^@r8

    movk <> @r8 @r7
    push (@r5+0_1) (u64/0_2) ^<M> u64 ^@r8 u32 (<>/0_1)
    lsl (<M>+0_1) ^&& (&&+1) @r1
    push ^@r10 @r6

    @r7 @r8 *main

    dw && u8 @r2 *main ^@r9 @r9 ^@r10
    ldp @r1 @r2

    push @r9 &&

    @r12 @r7 *main (u8/0_2) @r3 <M> u64 ^*main
    movk @r6 ^@r7 @r5 M

    movk (@r1+2) ^@r10 (*main/1) @r2 (^@r2+3)

    jmk @r10 ^@r2 ^u64 u64 ^@r6 ^@r7

    @r8 u32 *main (^@r8/3) <M> @r7

    @r9 ^@r11 @r1
    cmp ^u8 @r2 ^&& @r3 u8 u16 @r2
    mov @r7 (@r8/0_2) @r2 @r8 u16 @r9
    @r10 <> ^@r9 &&
    lsl <> @r8

    dw @r10 @r9 u16 &&
    cmp ^@r8 (u8/2) @r8 ^@r9 M @r5

    dw (u64+0_2) @r7 @r1 (u64/3) @r11 @r7 @r5
    lsl @r8 u8 (@r3+2) u8 @r7 && @r5
    ldp @r11 ^@r10
    movk *block (*block/0_2) (^u64+1) && ^*main &&
    mov @r5 && *block ^@r6
    cmp (u64/1) M

    cmp @r2 M @r5 @r10 @r5
    dw ^<> ^@r10 ^u32 @r9
    mov (@r2/1) @r2
    dw *main ^u32 @r11 @r5 @r7 @r3
    @r1 @r1 @r8
    @r11 M ^u16 ^@r10 @r8 @r11

    lsl @r1 (@r4+2) <>
    push u16 @r11 @r7

    dw @r7 @r11 (@r4+2) @r7 *main

    ldp @r10 *main u32
    cmp (@r10/0_2) ^u16 u16 (M/0_2) @r9 ^u16 @r8
    ldp @r4 @r11 (@r11/2) @r7 <M> u16 (@r6+0_1)
    @r3 *block ^@r12 @r12 (<M>+3) *block
    movk ^u16 (u8/3)
    @r7 (u16+2) @r8
    jmp @r11 @r1
    movk (&&/3) @r5

    @r4 *block *main u16 ^@r8 M @r1 *block
    jmp u32 @r12 u16 (@r8/2)

    jmk u32 *main *block
    movk && *block

    push ^M u64 M <M> @r6 (@r7+2)
    lsl @r1 @r5 ^@r2 ^u64 ^@r7
    @r12 ^u32 ^@r5 @r1 @r5 *main (*main/2) ^u16
    mov @r8 @r6 u8 <> @r2 && @r2
    @r10 u8 @r1

    cmp @r3 && @r10 @r8
    @r6 u8 @r9 @r9 && *main
    ldp (@r4+2) (@r2+3) @r12

    mov ^@r4 (@r1/0_2)

    push @r1 *block ^<M> @r3 u32 u32

    dw (^@r4+0_1) u16 @r2
    @r9 *main (*block/1) u8 ^@r8
    cmp @r4 @r4 ^@r4 @r3
    @r5 M @r4 *main @r7 u8
    lsl ^@r6 (@r11+0_2) (@r12+2) <M> *main
    mov u32 @r6 u8
    @r3 @r5 @r8 @r12 u16 @r7 ^@r12 &&
    jmp ^@r12 @r7 (@r8+0_2) (u8+3) <M> @r10 ^@r7
    ldp @r5 @r3 u8 ^u32
    dw @r4 ^<M> u16 && u8
    @r1 && (@r1/0_2) @r5 ^@r2 (^@r2+0_1) u32
    push @r6 <> M @r8 <> <>
    mov @r6 @r9 @r6 @r6 u16 @r8 @r2

    cmp u8 u32 ^u64 @r7 *block @r1
    @r7 @r7 && @r7
    movk ^@r5 ^@r12 <> ^u16
    @r3 @r1 <M>
    cmp @r10 (u64/1)
    ldp ^<> @r2
    movk ^@r2 ^@r11 @r8
    @r10 @r12 u64
    push @r5 u32
    jmk M @r2 ^M @r4 ^@r6 @r3
    cmp ^&& M u64 @r1 ^@r7 u32 (^@r1+2)
    dw *block ^*main ^u8 *block u64 @r1 @r1
    movk @r4 @r10 @r3 @r10 @r6
    mov (@r1+2) @r2 (@r9+3)
    cmp @r1 @r5 @r10 ^@r3
    movk @r12 (M/0_1) ^*main ^<> @r1 @r4

    jmk @r10 u8 ^<M> u32 @r9 ^@r10 &&
    movk @r2 *block
    push <M> @r7
    @r10 *block ^@r2 @r8
    movk u64 ^@r12
    @r11 <M> ^<> @r1

    dw u16 u32 ^@r12 @r4 (u8+0_1)
    jmk ^@r9 u8
    @r6 ^@r4 (@r4+2) u32 @r5 u16 <M>

    @r4 ^@r9 @r12 u32 ^*block u8

    @r12 u32 u16

    movk u32 ^@r1 (@r5+1)
    mov @r2 @r10
    push @r11 @r1 (^u64/2) (*block/3) ^&& u32

    @r4 ^u8 @r9 u16 *block

    dw @r8 @r2 && u64 @r4 u16 <M>
    dw @r3 (@r12/1) *main (u16+0_2)
    jmp (@r5+3) ^@r6 @r3 @r7
    mov (^u32/0_1) ^*main (M+1) (^@r2+0_1) @r2 M (^u8+0_1)
    mov @r5 ^M
    lsl u8 <> *main ^u64 M ^@r10 @r8
    mov @r8 @r8 (u8+3) ^u64

    mov @r9 u32 @r11 (*main/0_1) M
    @r7 ^@r4 && && ^@r5 u8 ^@r12
    lsl @r7 @r9 && @r10 ^u16 ^u32 u16
    ldp ^@r3 @r2 @r12 @r5
    @r1 (@r9/0_1) *block (@r2/2) ^u32 @r2 ^@r12 *main
    mov u64 @r11 ^<> (u32/1) ^u16 u16 (^@r1/3)
    dw (u8/1) M u64 (^@r5/0_2) @r9 u16 @r12

    mov ^@r1 @r10
    @r2 u32 && @r1

    lsl (@r6+0_1) &&

    mov @r3 @r9 (^@r12+0_1) @r12 @r7
    mov @r7 u16 ^@r11 u64 u64 <M>
    @r12 ^@r8 ^<M>
    jmk <M> @r6 @r10
    jmp @r12 <M> @r2
    jmk @r9 u8
    cmp @r6 @r11
    @r2 @r7 @r2 ^@r1
    dw @r1 @r10 u32 @r3
    lsl ^@r11 (u16/0_1) (<>+0_1)
    mov @r7 <M> && ^*main

    push @r4 @r8 (@r11/0_2) <> @r5 *main @r6
    push @r11 (@r4+0_1) ^@r9 @r6 *main (u16+2) (@r4+0_2)
    @r11 u16 @r8 (u16+3) @r1 @r12 (@r5/1) u8

    cmp <> (@r4+1)

    @r7 ^*block ^u64 @r4 *main
    lsl <> ^@r5 @r3 @r1 (@r7/2) u8 (@r11+2)

    ldp @r5 (u32+0_2) @r4 (@r7+2) ^u32 @r6
    cmp @r5 M
    push @r7 <> ^@r1 ^@r11 (u32/1)
    mov @r7 &&
    mov @r9 @r1
    push ^@r12 @r3 <> ^u16 u8
    movk <M> <M>
    @r8 u16 &&
    mov <> @r10 @r6 (u64/1) u32 (u8/2) ^@r11
    mov <M> u64
    mov @r11 @r7 @r12 ^u16
    dw (u32/1) *block
    dw @r10 <M>
    dw (u16/3) u16 @r11

    ldp (@r12+1) ^@r7 (@r2/0_2) (@r12/3) u16 u16
    cmp (u32/0_2) @r1
    cmp ^@r1 @r12 @r12 @r8 @r3
    push ^u32 (^u64/3) (@r2/0_2) *main @r6 u64
    @r3 @r7 (u16+3) ^@r5
    mov @r3 (@r12+2) u8

    push (^*block+1) @r7 ^@r7 (u32/3)
    lsl @r5 u32
    jmk (M/1) @r5 (*main+1) @r9 @r12 @r10
    jmp @r3 <M> u32 (@r2+2) u32

    dw ^@r12 u64 *block @r1 (<>/2) @r9 u16
    dw @r9 (@r10/0_2)
    cmp *block @r3 (@r4+2) (u16/0_2) @r6
    ldp *main u64 ^u64 (<M>+0_2) ^@r9 ^@r2
    @r3 @r9 <M> M @r2
    jmk <> u32 (u32+1) @r8 u8

    push (u16+0_2) @r7 *main @r12 (@r6/1)
    movk M @r4 @r12 u16

    @r7 u64 @r2 @r8 && @r4 ^@r11 @r1
    @r4 *main @r7 @r3 (<M>/0_2) @r4 ^&&
    @r3 ^<> M ^@r1 <M> @r11 *block ^@r4

    dw (@r3/0_2) ^@r6 @r10 ^@r1 ^@r2 (M+3) (@r12/0_2)
    jmk @r5 (*block+2) @r11 @r7 @r2 ^@r8
    ldp *main @r1 ^@r11 ^u64 (@r4+2) @r2
    @r3 <M> u16 ^@r4 ^u16 @r4 @r6

    @r5 @r12 u8 ^@r12 <M> @r9 u16
    push @r2 @r1 @r4
    mov @r6 u32 @r1 ^u32 @r3 (@r11/0_1)

    lsl u64 u64 <> M ^@r8 (@r6/0_2)
    ldp (<>+3) @r4

    @r8 @r3 @r3 @r3
    ldp ^<> @r1 @r1 u64

    mov ^@r10 @r9 (@r7+0_1) @r3
    cmp @r8 (@r3+3) *main u32

    movk @r8 ^@r4 @r3 @r6 ^@r12 <> <M>
    @r4 @r8 u8 @r3 ^<M> ^@r9
    jmp *block @r2

    @r5 u64 ^@r2 (^@r8/1) ^@r1 ^@r11 @r3
    @r10 (@r12/2) (*block/1) ^@r4 (^<M>/2) @r11 @r6
    ldp ^@r7 (@r2+1) (@r8+2) *main @r12
    cmp @r3 @r8
    jmk (@r3/2) @r4 @r1 @r9 @r12 (u32/2)

    dw u16 @r4 u64

    jmk u16 @r5 u8 ^*main ^u8 ^@r3 @r7
    @r2 @r3 u8 @r4 ^@r7 @r1 (@r1/0_2) @r7
    dw @r11 ^u16 (u32+1) @r8
    @r8 (<>/0_2) ^@r8 @r4 *block
    cmp ^<> u16 *block ^u32

    jmk <> @r12
    cmp ^u8 @r6
    @r9 (@r12+1) @r4 @r12 u8 @r9

    mov ^u64 @r1 M <> (u32/1)
    jmk u16 ^@r12 u32 @r1 ^@r6 u16

    @r9 ^<M> *main (@r10+2) @r7
    jmk *block u16 ^@r11 u16

    push u16 *block

    movk (@r11/2) (^@r1+0_2) ^@r6 @r8 ^@r4
    ldp u64 ^@r6 @r9 @r1
    movk @r4 *block

    @r12 @r9 @r11 u16
    push (&&+0_2) @r9 && (M/2) @r3 ^@r12 @r6
    jmp (@r7+0_2) ^@r6 (@r9/0_2) @r10 @r6 @r8 ^<M>
    push @r9 <> u32 M

    ldp u8 *main (@r1/0_2) u64
    @r7 @r6 u32 *main ^<M> ^@r12 @r5
    jmk u32 @r3 ^@r5 (@r12/0_1) @r8 (@r5/1) (@r10+0_2)
    push @r2 ^@r10 @r8 @r1

    mov @r1 @r5 M (^&&/0_2)

    lsl && (^@r10/0_1) u16
    ldp @r5 <M> (^u16/1) *block @r8

    jmk && ^M ^<> @r3 u8 ^u32
    cmp <M> @r9 (@r11+3) @r9 @r3 @r4 (*block/1)

    @r9 (<M>/0_1) @r9
    jmp @r8 @r12

