entry:
    @r2 u64 @r3 // main register for this action
    lsl (M/2) @r3 u8 @r12 ^@r1 (^@r8+0_1) // importer for the device() list for the keyboard type id
    jmp (M/2) @r9 @r1 ^@r8 // register jump to the list
    dw @r4 @r12 @r8 && @r7 @r8 // list error
    push @r12 @r5 *main ^@r9 ^@r10 (@r10/0_2) u8 // push name
    cmp (<>/0_2) (u8/2) *main // main 
    dw @r9 <M> @r10 ^@r2 @r6 ^@r5 ^@r4
    ldp @r8 (@r7+2) ^@r2 @r4 ^@r10 ^u32 ^@r1

    movk u16 u8 @r8 *block ^@r10 u32 // search for "keyboard" or input type 
    push @r1 (^u8/0_1)
    jmk @r2 u64 ^*main M // main 

    jmk ^@r1 @r8 *main u32 @r3 @r7
    @r10 ^u32 @r3 (*block/0_1) ^u64 @r3
    lsl @r2 @r1 @r7 @r10 // list
    mov *main (@r4+3) // main 

    mov @r3 @r4 @r2 ^<M> @r11 ^@r8

    mov @r5 @r6 // register for it

    @r8 (@r2+1) @r8 ^@r5 ^*block
    jmk @r9 <> (^*main+2) @r12
    @r6 <M> u8 ^u32 u32 u32 *block u32

    @r3 @r12 @r12 // register type (double @r12 for the assembly translation 120 error )
    @r4 u16 @r12 ^u64 <M> @r9 @r7 ^M
    cmp @r9 @r6 @r9 && // register type (double @r9 for the assembly translation 120 error)

    mov @r7 @r11

    @r12 @r7 ^u8 u16 && M ^@r2
    jmk ^@r11 *block (@r2+0_2) // block for the input
    @r10 ^@r10 @r9
    @r4 ^u64 (u64/1) @r3 @r10

    @r9 <M> u16 @r9 @r2 ^&& @r9

    ldp u8 @r10 (@r7/2) @r12 @r5 @r1 ^@r10
    dw @r6 *block ^u64 @r1 ^@r1 @r4 // fix pointer
    ldp (@r10/3) (@r4+2) M @r12 (^@r1+1) @r11

    dw M ^u16 @r2 (@r8/3) u8 @r10
    ldp @r7 (<>/0_2) *block @r9 <M> @r7 @r3 // block as buffer start
    cmp @r12 @r6
    push *main && (@r1+3) ^@r9 @r2 @r10 @r2 // buffer for the device 
    @r7 @r1 (@r6/3) u64 (@r12+0_1) ^@r1 @r11
    dw ^@r11 @r7 *block u32
    dw @r6 @r11 (u16+2) <M> <M> // pointer to the device 

    movk @r10 u8
    jmp @r3 *main <M> u8 @r11
    ldp u32 u16 && ^@r4

    jmk ^@r11 (@r1/1) @r2

    movk *main ^@r4 (@r10/0_2) @r11
    lsl ^@r10 ^@r2 (@r4/3) @r3 && ^@r10 // list extraction for the keyboard
    lsl @r12 @r7 && @r12 // new list for ids
    mov (u16+0_2) (u32+3) ^u64 u64 @r1 @r8
    movk && *main @r10 u8 ^@r9 M // yeah main
    mov u32 (^@r12/2) @r8 ^u64 u8

    dw @r10 ^@r5 (u32/1) u64 ^@r11 // if register fail
    jmp *block u64 (<>+3) <> @r4 @r7
    push (M/0_1) ^@r3 // push pointer to the id

    jmk @r7 @r11 @r7 @r12 ^*main u64 // and now the keyboard is ours

    ldp ^&& ^@r7 *block // buffer allocation for it


    mov @r7 (*main+1) (*block/2) <> @r7

    cmp (^@r1+0_1) (^@r12/0_2) ^@r7 u8 u8 @r7

    @r1 u32 @r6 ^@r12 @r1 ^M
    jmk u32 @r5

    movk @r10 && ^@r3 (u16/0_2)
    mov (^u16+2) (*block/2) <> (u64/3)
    mov <> ^@r1 @r12 (*main/1) @r12

    push ^*main *block @r3 M
    ldp ^@r6 ^@r1 u32 <M> (<>/2) @r5 *main // main in keyboard
    cmp @r1 && @r11 ^@r3 @r3

    @r12 (@r11+3) u16 @r8
    jmp (^@r8+0_1) ^@r11 (^@r12+0_1) ^u64 @r2
    lsl @r6 @r3 u32

    movk ^@r4 @r5 u8 *block M

    push @r11 M u8 <> (u16+0_2)
    @r9 @r7 u32 @r11
    jmp ^@r8 ^@r8 @r10 (@r7/3) u8
    dw ^&& (@r12/2) (^@r4/3) (<>+3) *main @r1 @r6
    jmp @r3 @r11 (^u16/3) ^M @r5 (@r10+0_1) M
    movk ^u64 (<M>/0_2)
    @r9 && @r12 (^u8/2) @r1 u32 (u32+3) u8
    @r4 <> @r8 @r11 (^@r4+1) (@r10/0_2) (u16/3)
    movk ^@r6 @r11 (@r9+3) @r7 ^@r4 @r8 ^@r8
    push @r9 @r12 M (^*block/2) // push the block and pointer to the keyboard

    lsl ^@r3 @r5 (@r7+2) @r3 ^@r12 @r4 // register the strokes
    @r3 @r12 @r3 // in this registers
    push ^*block @r4 *block @r2 && M @r6 // push the register with the strokes  
    @r8 (^@r12+2) u8 

    @r8 (^@r7+0_2) *main u64 *block @r7 @r10 @r8 // main for the register 

    @r8 @r5 ^@r9 <> u64 (@r11+1) u64 // pointer to the register
    ldp <> u8 u8 ^@r9 u16 @r9

    @r2 *main M u64 && @r10 @r3 // @r10 and @r3 are going to have the main for this id 
    @r9 @r9 @r2 ^@r8 @r9
    @r9 && ^@r10 @r12 @r4 *block @r8 // register block
    push u16 && @r12 ^u8 M (@r3+2)

    lsl @r8 *block <> @r12
    @r5 u32 @r3 (@r6/0_2) ^u8 ^@r7 (M+3)
    cmp u64 <> @r11 @r4

    @r3 && @r1 @r7 @r10 @r12 // register

    jmp ^u64 u8 ^@r7 (^@r5/0_1) @r5 (*main/3) @r7
    jmk @r8 *block M <> u64 (@r10/0_1) ^<M> // pointer
    dw @r12 @r6 u8 u32 && (<>/0_1) @r11 // error handler for registers

    @r6 u16 (^*block/0_2) u8 u8 && ^@r10 @r9

    movk ^@r8 @r2 *block @r12 && u8

    @r5 @r5 && u8 //register 

    lsl *main (<M>+0_2) @r7
    @r1 @r11 @r12
    mov (@r10+2) @r2 (@r1+0_2) ^u64 @r3
    lsl <M> @r11 @r8 ^u64
    dw @r11 *main @r11 @r7 @r12

    cmp u32 (@r1/0_2) @r7

    lsl @r3 *main (@r10/3) && @r2 @r8
    jmp @r7 @r6 @r4 ^u32 ^u32 ^M u16
    ldp @r12 @r9 @r7 ^@r12 <M> u16
    mov @r7 && u64
    movk @r5 @r1 u16 @r7
    jmp M (@r2+0_1) && @r6
    mov @r7 <> u16 @r3 @r12 ^<M>
    lsl *main u32 @r11
    push && ^@r8 u64 (@r10+0_2) @r8

    ldp ^&& M
    @r9 (@r11+0_1) u16 ^@r6 <> @r2
    ldp @r12 @r6 @r3
    ldp @r1 <M>
    push ^&& @r12 ^*block M u64 @r8
    cmp (^u8+0_2) <> M u8 u64 && (@r6+3)
    jmk u32 && @r9 *block u16 ^@r2 ^u64
    @r11 u8 @r3 @r4 M

    @r12 ^@r7 @r12 (u32/2) @r10

    mov (u32+3) @r10 @r5

    dw @r5 u32 u8 (@r9/2) @r4 @r6
    @r1 @r11 <> <> @r5
    dw @r12 @r6

    @r8 *block @r9 u64 u64 u8 @r11 @r6
    @r12 u16 @r11 @r11
    push (@r8+0_2) @r7 (&&+0_2) @r1 ^@r9 @r6
    @r9 ^@r11 ^@r4 @r12 @r7 @r9 @r8 <>
    @r1 ^@r9 (@r8+1) *main
    lsl @r12 @r6 M (u8+0_1) ^@r7 && u8
    cmp <M> (^&&+3)
    push <> *block @r8 M (<M>+0_2)
    @r10 ^@r11 (^M/3)
    lsl ^@r6 u32 *main u64
    @r5 (^@r7/2) ^@r3 ^@r4 ^*main
    mov @r11 @r9 @r8 M

    movk <M> @r7 @r2 ^u8 (*block+1)

    @r7 @r1 *main ^@r10
    @r6 @r10 <> <> u8 (*main+1) M

    movk u32 u16
    cmp @r4 u8 *block

    lsl @r3 u8 @r11
    ldp *main <> M @r6
    @r9 M @r4
    movk (^@r1/1) ^@r2 M (@r12+3)
    lsl *block (*main+3)
    lsl @r5 ^u32
    movk <M> @r7 ^u16 @r4 ^@r2

    @r7 @r12 ^M

    cmp @r11 @r8 @r4 (@r5/0_2) (^@r11+0_1)
    jmp ^@r3 && (@r2/1) *block M @r6 &&
    @r6 @r1 u64 u16 @r10

    cmp *main *main
    jmp && @r2

    @r8 ^*main (&&+1) u32 u8 u32 ^<>
    movk @r11 *main @r2
    @r2 @r3 (u32+0_2) (^@r8/3) (M+0_2) @r1 && <>
    cmp (@r7+3) @r6 @r12 *main (*main+2) ^@r4
    jmp ^<> <> @r5 @r6 @r8
    dw *main && (u32+0_1)
    @r11 u64 *block

    push @r5 @r8 (@r1+0_1) @r4

    mov <> ^u64 <M> @r5 ^u64
    jmp (^<M>/1) @r7 ^@r7
    @r6 u16 (@r9/1) @r12 @r2 ^@r9
    jmk @r10 @r12 *main (&&/2) ^*block @r11 ^@r8

    @r7 @r6 <M> ^@r9 M @r8 (@r4+0_2)
    @r9 u64 (u32/2)
    lsl u8 @r3

    movk @r9 u16 *block *block <M>

    jmp (@r3+3) @r10 @r2 u16 &&
    jmp @r10 @r10
    @r8 @r11 @r6 @r6 ^@r1 @r3
    @r4 (u8+2) u64
    jmk *main *block ^u16 ^@r9 @r10 @r4 ^*block
    movk @r4 @r11

    dw (M+1) u8 @r10 @r8 @r3 @r1 @r11

    dw ^&& (^@r7/2) @r4 @r5
    jmk @r5 @r10 @r7

    @r8 <> <M> @r9 u16 (@r9+0_1) ^<>

    jmp (@r9/2) @r4 (@r3+2) u64 @r3

    @r4 @r5 *main

    mov @r2 @r9 (@r9/0_1)
    push && @r8 @r2 @r10 @r12 *block

    mov ^@r3 @r10 ^u32 && M ^u8 @r7
    movk @r8 @r7 *main @r10 *main <M>
    jmp u64 M <M> @r8 ^*main ^M
    movk <> u16 ^u16 && <M> @r1 @r8

    dw (*main+3) *main M M @r12
    @r1 <> (@r5/0_2) @r10 <M>

    movk ^u16 ^*block @r7 (^@r6+1) @r1 *block @r5
    @r2 @r3 ^@r7 ^@r10 (<>+1) (@r11/1) *main
    movk @r6 u32 <M> @r10 (@r8/0_2)
    lsl @r7 @r4 @r11 @r4
    lsl @r3 @r8 @r9 @r7 ^&& u8
    mov @r6 ^M M @r6 ^u16

    movk @r6 ^@r11 *main
    @r12 ^M @r8 ^@r10 *main *main ^@r10 ^@r8
    ldp && @r11
    movk (*block/3) (u32/1) @r12 ^M @r8 &&
    @r2 <> u8 ^@r10 u8 (^u8+0_1) ^@r3

    jmk <> (^@r10+2) ^@r11 (^@r6+0_1) M @r8
    jmk @r8 @r12 @r5 *block (@r10/0_2) ^@r10
    jmp @r12 @r2 @r12 @r10 @r3 <> @r6
    cmp @r3 @r10
    ldp @r7 (u64/1) ^@r2 (@r10/2) u16
    @r12 @r9 (^u16+3) u64 <M> ^u16
    jmk *block @r1 @r10 (@r6+2) (^@r9+0_1) u16

    mov @r11 <> (^@r8/2) (@r2/0_1) @r10 (M+0_1)
    dw @r11 @r4
    dw (@r7/2) @r7
    cmp @r1 ^*block @r6 && (@r5/0_2)
    dw ^@r1 ^@r3 (@r3/0_1) && u64
    cmp u64 @r1
    movk (@r2/0_1) @r12
