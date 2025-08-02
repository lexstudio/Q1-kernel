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
    
    @r2 @r10 <> *main (u32/0_1)

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



