entry:   
    @r11 @r7 @r3 @r10 // register for use
    mov @r10 @r2 @r5 u64 *block u64
    jmp @r7 (@r1+0_2) @r6 @r9 // register in 

    ldp (u64/3) @r2 *main // main in registers 
    cmp @r6 <M> *block ^u64 @r5 M
    dw *main @r6 @r5 // dw main from register

    dw @r12 @r3 *main <M> ^*block // <> M in main
    jmk M @r9 (@r1+3) @r10 @r6 @r11 @r3 // multii registers in 
    lsl ^@r2 @r1 (<M>+0_2) @r11 
    lsl <> ^@r8 @r2 @r12 // lsl register in register 8 with no main
    jmp @r3 ^@r4 u64 u8 (@r8+0_1)
    movk @r11 @r5 @r12 *block (^@r4+0_1) @r7  // block no main 
    @r9 u64 @r12 <M> // pointer
    movk <M> @r11 (@r7/0_2) @r9 @r1
    @r4 u16 ^@r8 ^@r11 (^<M>+2) M @r7 ^@r2 // u16 pointer in fix registers 
    jmp @r8 ^@r5 (*block+1) //  block declaration for digital start
    push ^<> @r8 @r4 // push the pointers and registers 8 and 4 for digital saturation
    ldp ^@r4 ^@r1 @r8 @r10 @r2 
    cmp @r6 @r7 @r10 ^@r12 u64 (@r9+3) // cmp he close

    @r5 u16 *main ^@r6 @r2 (u32/0_2) <M> ^@r8
    jmp (u32/1) u8 (^u64/0_2) (u64/0_2) @r7 (&&+1) 
    lsl u32 u64 u8 @r11 // registers in no main 
    lsl <M> ^u32 @r10 u8 // first declaration of u32 as a fixed point
    ldp @r6 @r8 ^*main (@r12/3) (u32+0_1) u8 ^@r9
    @r4 @r12 ^@r9 @r8 (@r2+0_1) && ^@r4
    jmk @r9 u16 // u16 in register 9
    @r12 <> @r4 @r4 @r7 @r8
    @r3 @r6 @r4 // registers declaration
    movk *block ^@r5 u16 u32 *block
    @r6 @r7 u16 @r5 @r6 @r11
    @r6 u64 @r2 ^@r2 (@r4/2) // register final pointer before moving to next step in connecter

    dw u64 M <> (@r1+1) // error pointer in register 1 

    push && @r3 (^u16/3) @r10 (<>/1) && ^<>

    @r2 ^@r12 ^@r7 @r8 *block @r2 // pointer declaration for blocks 
    push @r6 *block @r9 
    lsl @r6 <M> (*block/1) ^*main (@r8+0_1) // pointer for main in registers 
    @r11 @r6 (@r6/0_1) @r9 (@r8+3) @r4 ^@r12
    push @r12 u16 @r10 && @r7 (*block+2) // push in block as in connecter for memory 
    @r6 (^@r4/0_1) && // and

    jmp u32 <M> @r9 *block &&
    @r3 ^@r9 @r1 // register declaration for memory 
    @r9 (^@r4+2) (@r6+2) @r1 // new buffer (needs changhing if buffer allocation is changed)
    @r11 @r12 @r3 ^@r1 (<>/1) 
    push @r12 @r8 ^u8 (@r1/1) @r8 ^<M> @r9
    jmk @r4 @r9 u16 // no main
    jmp u32 <> ^M (@r5/2) ^u16 @r7
    @r12 M @r9 u8 *block ^*block // block and static block pointers
    @r9 *block @r1 @r10 u8 *main @r9 M
    dw @r11 u16 ^*block // dw the block
    jmp <> u8 @r12 @r8 <> @r9 (@r1/1) // registe pointer 
    @r12 @r6 ^u16 u16 @r7 M @r1 
    @r4 u32 ^@r1 // u32 in register 1 for static 
    movk (@r5/0_2) <M> ^u16 @r12 (^*block/0_2)
    movk && @r1 ^*block // block in registe *
    push @r6 @r4 @r4 ^@r7 u16 *main (@r8/2)
    jmp @r4 (@r9+3) (@r7/0_2) *main // declaraion of first rule in connecter hdmi logic
    cmp (@r9+2) u64 @r9 && @r11 (@r3/2) // no main

    cmp @r12 *block @r9 ^@r11 <>
    lsl @r4 <M> ^u16 @r7 @r1 (^@r4/0_2) @r11
    push @r2 u16 (@r9/1) @r1
    jmp @r9 @r11 *block @r5 u16 @r9
    jmk @r4 @r8 (^@r9+1) <> ^@r10
    push @r8 ^<> ^&& ^*main (@r6+3)
    ldp (@r4+2) (^@r1+3) u8 <> *main ^@r6 ^u8
    @r12 u32 @r10 @r9 u8
    push @r5 @r1
    jmp M ^*main

    @r10 (@r5/3) @r12 @r11 @r7 u64 u16
    @r8 @r12 ^@r1 ^u32 @r11 @r5

    @r9 u16 @r10 @r12 ^@r5 @r4 @r9
    push ^*main <M> @r8 u8 M

    movk u8 ^u64 ^@r2 ^u64 @r11 (@r10+0_1)
    ldp M (*block+2)
    cmp (^u8/2) @r9 @r11 (<M>+0_1) @r2 @r8

    movk @r9 ^u16 u64 ^@r10 M u8
    @r3 ^@r10 u64 @r10 ^u32 @r4 ^<>

    cmp (<M>+2) u8 ^&&
    cmp && *main @r1 ^@r2
    ldp @r6 @r7 *block @r7 u32 u32 @r11
    push @r9 (@r8+3) M ^@r6
    mov u32 && <> u16 u16
    lsl @r5 @r7 @r4

    push (u8+0_2) u16 (u32/1) u32 ^@r3 &&
    @r10 @r1 (@r12/3) @r4 u16 @r11

    jmk u8 @r3 u8

    mov (@r12/2) <M> @r3 (@r2/2) ^*main @r8 &&

    cmp && (@r4+0_1) ^&&
    push @r1 @r1 <> ^u32 ^&& *block ^M
    @r5 @r12 u8 &&
    @r5 @r11 <M> u16 <> u8

    mov *block @r12 @r6 @r4 ^<> @r4 ^&&
    ldp @r1 <>
    ldp @r7 ^@r5 @r10
    dw *block @r5
    ldp ^@r11 ^&& M @r6 (u16/0_1) @r10 @r3
    push <M> u32 ^@r6 <> @r2 ^@r11

    movk *main ^@r12 @r4 (@r6+0_1) @r11 *block
    movk ^u16 @r6
    @r10 ^<M> @r10 && ^<>
    push (@r12/3) u64 @r2 ^@r10 u16 (@r4/3)
    cmp <M> (^*block/1) @r3 @r10
    movk u8 @r12 *block @r12 ^@r10 @r6
    lsl <> @r6 *main @r7 (<M>/0_2)

    movk @r2 && (u64/0_1) @r6 @r12
    ldp @r10 (<M>+3) @r3 ^M (^u8/1) <M>
    push *block u16 ^@r5 @r3 @r6 (u16+0_2) &&
    cmp ^M && ^@r11 @r11
    mov (u8+1) @r1 *block ^@r12 @r1 <>
    mov @r1 @r8 @r12 (^u16/2) @r12 ^@r2
    jmk <M> u64 @r4 ^@r7 (@r10+2) (M+0_2) @r10
    mov <M> *main @r7 <M>

    movk ^<> u8 @r10
    dw *main @r9 u8 *block @r11 @r10

    mov ^@r8 ^u32 @r7
    movk (&&+0_1) *main *main (@r10+1) u8
    jmk ^@r2 u16 ^*main ^@r7 && u32

    @r11 @r11 &&
    @r5 ^M (@r11+2) (^@r2+2) @r12 <M>

    movk @r8 M @r8 ^@r1

    dw u32 (*block/0_2) @r10 ^@r2 u8 @r5
    push ^*main *main ^@r7
    jmk <> @r10 ^@r4 (@r11+1) ^*block M <M>
    @r3 @r4 (&&+2) (<M>/1)
    @r6 @r9 u32
    jmk u64 (<>/1) && @r9 ^@r4
    mov ^@r12 (*main+1)
    jmp u32 @r5 ^@r11 (u64/2) @r12 <>
    ldp (^*main+0_2) u16 (*block+2) (<M>+2) @r1 @r6 *block

    lsl ^@r5 ^@r8 @r11 @r5 @r8
    movk ^@r12 @r5 ^u8 (M/0_2) M *block u64
    cmp u32 ^@r1 ^u8 @r5 u16 @r9

    cmp @r3 (<>/0_2) u64 @r4 ^u16 u64 (@r1+2)

    jmk M @r9 @r9 *main ^*block ^<M>
    mov ^<> @r2
    jmp ^@r10 u64 @r3 @r8 <M> (*main/0_2)
    movk u8 u16 *main *main

    jmk u8 u64 ^@r2 ^*block (@r10/0_1) @r3

    cmp <M> @r2

    movk (^u32+3) @r12 u64 *block M *block u8

    jmk @r9 @r2 (@r2+2) u32 M u64

    movk ^<M> *main u64 ^@r6 (^@r3/0_2)

