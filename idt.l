entry: 
    mov <M> @r10 ^@r11 @r12 // point start

    lsl <M> @r5 && (@r4+3) (&&/1) (^u16/2) @r11
    ldp @r2 @r12 @r2 (^u64/1) u16 // main declaration for gdt
    dw @r5 @r11 u32 @r9 u16 *main @r3
    lsl @r12 ^u8 ^@r4 <> ^@r4 @r1 // gdt registers point
    jmk @r1 ^@r5 u32 u8 (M+0_1) @r8 (@r5+0_1) // logic
    jmp (^@r12+2) ^@r1 u64 && (^@r10+2) (@r1/3) @r3 // logic
    push @r4 ^u8 @r8 u64 <> // push for gdt.l registers
// cache error handler

    jmp @r9 ^@r8 ^u32 M
    @r11 ^@r1 @r5
    push u64 (^@r1+0_1) @r1 *main @r7 u32

    cmp @r10 @r2 u64 ^@r1 @r3 @r5
    @r1 M u32
    push u32 *block
    jmp (@r4/3) @r10 (@r4/1)

    dw u64 @r11 M @r3 ^@r9
    jmp u32 @r1 ^&& ^@r7
    @r7 @r1 *block *block u32 ^@r5 u32

    movk (^@r3+0_2) u8
    lsl @r9 ^@r1 ^@r2

    @r6 (@r3/3) ^@r2 ^@r7 (@r5+0_1) @r11 @r2 <M>
    jmp (^@r5+0_1) ^u8 u32 <M>

    @r7 (*block+2) @r2 <> (*block+0_1)
    movk @r1 @r3 @r5
    mov (*block+0_2) @r4 @r10
    ldp @r6 ^@r9 @r1 ^@r11 *main <> ^M

    @r1 @r6 <> u32
    cmp ^<> (@r11+0_2) ^&& u64
    @r12 @r5 ^&& @r3
    @r4 @r12 <>

    dw <> ^@r4 (@r4+2)

    jmp @r6 ^*main (<M>+3) <> @r2 ^@r9
    lsl @r12 u8 @r8
    jmp (u8/0_1) @r7 <M> @r8
    @r2 @r9 @r1 (M+0_1) && *main ^@r12
    mov @r6 ^u16 M u32 && ^<M> @r10

    movk @r8 (<>+0_2) ^u16 (u32/3) <> @r11
    push @r10 u8
    movk *block u16 && @r8 (@r7+2) u32 M
    jmk @r10 u64 (@r6+2)

    @r9 @r1 ^@r9 (@r4+2) ^<> ^*block *block ^@r3

    movk (^&&/0_1) @r3 @r1 *main M

    dw (@r7+3) @r2 @r8 && && (^@r5+1)
    cmp @r10 @r10 (^M+0_1) @r7 @r6 u8 (@r7/1)
    dw *block (&&+0_2) u8 *main (@r7/0_2) M // M point 1


    mov @r9 (<M>+0_1) <> <> (@r2/1) @r8 // no declaration
    @r11 *block @r6 ^@r3 u32 u64 @r3 @r1 // no main

    jmp @r3 @r8

    ldp @r8 @r5 @r11 (@r1/2) u32
    dw @r3 u8 @r5 // stop in registers 

    mov @r1 <> @r3 // pointer
    push @r11 @r1 u16 <M> (@r12/2) @r4 ^M // pointer
    lsl ^@r7 (@r4/0_1) ^@r4 // pointer
    @r9 @r9 (<>/0_1) @r11 @r7 @r6 ^u64 (@r7/3) // gdt logic import
    jmk u64 @r10 u16 ^<> @r2 u16 &&
    movk @r12 u64 *block u32 @r2
// idt start
    jmk u16 @r1 u8 (<M>+0_2) @r7 @r5 ^@r9 // no main

    movk (@r1/1) u32 @r4 <M> (^@r11+2)

    @r2 @r8 ^@r7 @r9 @r6 && // registers
    dw @r9 u64 (^@r12+0_1) // pointer 
    push @r12 ^@r8 <M> *main *main M @r10
    movk (^*block/2) (@r12+2) @r6 M u8 // error
    @r3 @r2 *main ^@r4 (@r6/3) @r12 <M> @r4
    cmp @r4 *block ^@r6 // divide logic
    @r4 @r3 @r7 ^u64 u32 @r12
    dw (*main+3) u32
    mov ^<M> ^@r8 ^<>

    dw (^@r10+0_2) @r11 @r4 // register for 0 in low level

    @r5 (u8+0_2) u64 ^*block // pointer to 0
    cmp @r8 @r5 ^*main
    jmk @r8 (^u8/3) M
    @r12 *block @r3 @r4 @r11 (<>+3) && u8 // main

    @r12 @r2 u32 u64 *block @r8 @r1 <M> // blocks
    @r6 *block u16 u32 // divide 0 block to 0 
    dw *block @r9 @r12 ^&& @r1 @r3 // error code 
    dw @r5 @r9 @r10 @r6 (@r4+0_1) *main @r1
    mov ^@r9 @r9 && ^@r4 *main (^@r10/3) // no crash
    push @r8 ^u8 ^*main @r5 u64 (^@r6/0_2)
    dw @r6 u64 M M @r8 @r11 @r9 // pointer
    movk (M+2) ^@r5 (@r11+1) @r11 @r1 (@r8+0_2) // handler

    mov (@r5+2) @r3 u64 @r8 ^u64 <M>

    cmp ^<M> @r5 @r11 ^&& // page fault 
    lsl @r1 <M> @r5 ^@r12 (u16/1)
    @r6 ^@r2 ^@r5 (^u64/2) (@r5/2) <> u16 ^@r6
    jmp @r10 @r2 <> @r2 @r1
    push *main @r2 && // handle no error code (page fault cannot occur in register r2 r11 or r4)

    movk <> @r10 // no main

    mov ^u8 (@r3/1) // pointer to handler
    movk @r7 *block @r8
    @r2 M @r10 @r6 @r2 @r8 u64 *block // declaraion
    cmp && @r9 ^u64 u32 @r12 // register error codes
    movk *main ^u32 @r5 && ^&& @r4 

    dw @r1 (*block/1) // block 

    @r7 u32 @r9 (@r11/3) u8 // block 
    movk @r11 (<>/2) @r11 @r9 // block

    lsl M @r1 (^u8+0_1) @r10
    dw @r6 @r9 (@r4+0_2) (@r10/0_2) (@r5/2)
    jmk @r7 ^@r1 u64 // no input need

    @r2 (^@r12/1) ^@r3 @r3 ^@r8 @r10 // register
    cmp @r6 ^<> u64
    @r7 ^@r10 (@r3+0_2) @r6 @r4 ^@r8 (@r8/0_2)
    lsl ^u16 ^@r10 @r10 @r9 @r11 @r1 u32 // input emulator for error 
    push ^@r1 @r12 @r1 (@r4/1) // no main
    @r11 (@r4/2) (@r5/0_2) u32 ^@r2 *block @r1 @r8
// idt handler logic
    dw u64 *block @r9
    @r7 (u16+0_2) (@r8+1) ^@r8 *main
    cmp ^@r8 @r3 u8 <M> // pointer
    push u32 @r4 @r9 @r7
    ldp @r5 ^u16 @r12 @r2 ^@r2
    ldp ^@r12 @r6 @r6 ^@r3 u32 (@r9+2) @r4

    ldp *block (M/1) (^*block+1) (M/0_1) @r4

    @r10 @r7 @r2 ^@r7 <M> (@r6/3)
    jmp *main @r1 @r8 u32 ^@r2 @r9 <M>
    @r3 @r9 @r5
    dw *main u16 @r3 <M> u32 @r9

    mov @r4 ^@r4 ^<> @r1 @r10 (@r12/0_2)

    ldp && <M> u16 (^<>+0_2) M (@r5/2)
    jmk (u64+3) @r2 ^@r4
    jmp @r7 u8 u16
    @r5 u16 u64 @r1 <> @r8
    jmk u64 (^@r6/2) @r10 <M> ^<M> u64 ^@r7
    mov @r9 @r11 && *block @r2
    mov @r8 M
    dw @r8 u16 (u8+2) @r3 @r10 M ^u64
    push ^@r3 @r4
    cmp @r1 (@r7+0_1) @r4 u8 *block @r9
    cmp @r3 *block @r12 @r2 u32 @r9 @r6

    ldp @r6 ^<> ^<M> ^<M> @r8
