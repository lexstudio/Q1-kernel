entry:
    mov u32 (*main/3) u64 (@r5/3) @r8 // main
    push @r10 ^@r7 @r10 u8 u64

    mov @r1 @r10 *block ^@r6 @r3
    @r1 @r6 ^@r10 @r10 (^u16+1) ^@r3 // no main

    jmk @r2 ^u64 *block (@r11+3) ^@r5

    movk ^@r2 @r6 M // M pointer
    dw @r3 @r5
// Register distributions is the logic of easily make the registers to be used in other files 
// No pointer in here
// Only raw logic
// Needs to be verified and optimized
    @r3 && u16 @r1 @r10 // register distribution 
    jmp ^@r1 *main

    @r11 (@r3+0_1) @r6 ^u8 M @r12 ^u32 ^@r8
    push (@r4+3) u16 u64 <M> // register distribution
    ldp @r11 @r8 <> @r3 u32 (@r4/3)

    movk (u64+1) @r2 // register no pointer

    lsl ^@r8 <> u32 // no main in registers
    push (*main/0_2) @r5 @r11 (@r2+0_2) *main @r9 // no main
    @r6 @r3 @r8 (@r8+1) @r10 @r4 ^&& // no pointer logic 
    lsl @r12 @r3 // no main 
    ldp @r1 u16 @r1 // no main

    ldp ^<> @r6 u8 // register r6 opener
    jmk u32 @r6 @r1 u16 ^@r2 ^u64 // r6 the "booter"
    jmk *block @r4 ^@r3 (@r12+2) @r11 u16 *block // register logic to start
    dw @r6 u32 @r12 *main u16 @r12 @r2
    jmk M (@r4+0_1) <> @r11 *block ^u8 // block no main
    cmp @r11 && // copy r11 

    @r2 (&&+0_1) @r12
    mov @r4 u16 ^@r3 // no main 
    mov (@r12/0_1) @r3 @r6 @r8 @r2 M
    dw ^*main @r2 // no main in r2 (special register)

    mov *main M (u64+1) @r6 @r6 u8 // no main pointer

    lsl @r2 @r7 u32 *block @r7 
    movk <M> @r11 @r6 <M> (^@r3/2) (u64+0_1) @r5 // optimization 

    jmk @r3 u16 @r8 ^<M> @r11
    push u16 @r2 @r11 // r2 and r11 push

    dw M (u32/0_2) ^M ^@r10 (u8+0_2) u16
    ldp *main (@r9/0_1)
    mov u8 ^@r12 u8 ^@r1 (^@r10/1) (u8+1) // u8 in r10
    movk @r11 ^@r10 @r2 @r9 (@r11+3) u32

    @r4 @r6 @r2 @r1 (<>+3) // register logic
    @r10 @r5 (u32/0_2) @r1 (*main+1) ^@r5

    jmp *block u8 M ^<>
    cmp (^@r8+1) @r5
// API
    mov @r6 @r1 u32 <M> @r6 && u32 // API declaration 
    dw u16 ^u32 (^&&/0_1) u32 @r6 @r10
    @r9 @r11 (@r2+1) @r5 (@r8+0_1) // no main
    @r4 <M> (^@r6+0_1) (u8+0_1) @r12 <M> @r11
    ldp (^@r9+0_2) u32 // API 1
    mov @r5 u8 ^u32 (@r6/0_2) ^@r2 (*main+0_1) @r10
    jmk @r7 M @r9 @r2 u32 @r10
    dw u64 @r5 @r7 *block @r1 // API 1 logic

    @r9 @r12 (@r2/3) *block ^@r2 u64 @r12 &&

    lsl u16 ^*block ^@r12
    cmp @r7 @r8 @r1 *main ^*main @r7
    push @r8 u64 @r10 ^@r9 u8 @r7 @r11 // API 1 final

    movk ^u16 u64 @r7 <> @r5 // pointer
    movk (<M>/0_2) @r1 <M> u32 (@r3/1)
    ldp *block (&&/1) @r6 @r3 ^@r11 u64 @r8
    push ^<M> <> // pointer
// no block
    movk ^@r12 @r4 @r1
    cmp u16 @r6 <M> // cmp in no M or main for r6
    cmp @r10 @r2 <M> @r1
    @r4 @r5 (@r7+1) // r5 and r4 in buffer
    cmp *block @r7 @r1

    @r3 ^@r10 @r8 u32 // frame on

    jmk (<>/2) @r9 M @r7 @r12
    @r1 ^@r9 <> <M> M && ^@r7
    ldp @r7 @r4 (u8+1) // no in 
    dw @r3 u16 u32 (@r4/1) (u16+3) @r9
    @r5 <> M ^*block @r4 u64
    ldp @r11 <> @r2 M // pointer

    push <M> ^@r2 @r6 @r11 @r4
    jmp ^@r1 u64 @r12 // r12 optimization
    dw ^@r1 (@r7+0_2) @r6 (@r10/0_1) @r5 @r3 ^<M>

    jmk @r7 u32 ^@r1 @r11 ^@r3 ^u32 // registers in u32

    dw u32 @r5 (u64/1) ^@r4 u16 @r2 u16 // registers in u16 
    @r2 && @r1 (@r1/0_1) *main @r7 M (M+0_1)
    @r8 (*main+0_2) @r9
    @r12 M *main @r10 u16 @r12 ^<> && // no main

    dw @r7 ^@r7 && @r7 @r12 (@r5/1)
    @r1 @r5 ^@r7 u32 u8 u32 (@r12+0_2)
    push ^u16 @r6 (^@r6+0_1) (@r2/2) @r1 // push  register
    push *block *main ^&&
    jmk ^u64 <M> @r5 ^@r5 (u8+0_1) u16

    lsl (@r5+0_2) @r12 (@r8/1) @r10
    mov (@r4+0_2) @r1 (@r12+0_2) (@r12+0_2)
    ldp u64 @r1 // in 
    dw @r2 ^@r10 && M ^@r10
    @r12 <M> ^@r6 // out

    @r4 @r5 @r5 (u16/0_2) @r1 (&&/0_2)
    @r2 ^u8 @r4 u64 M // M
    @r3 @r9 M // M
    mov @r7 @r2 <> u64 ^@r5 (@r6+2) <M>
    @r5 (&&/3) u16 @r5 (^u64/0_2)

    lsl ^@r7 @r9

    @r2 @r5 @r10 @r9 ^@r10
    @r5 @r1 @r2 @r11 // register public
    jmk (@r4+3) @r8 @r1
    lsl <> ^*main u8 (^@r8+3) *main *block (u64/1)

    ldp @r6 @r11 (@r11+2) (*main/1) ^@r8 // no main

    jmk ^@r6 @r11 @r4 ^@r3
// optimization 
    lsl *main @r5 @r7 ^u64 @r9 <M> u8
    cmp @r10 u16
    push @r4 (^@r9/1) u16 u16
    mov && (u32+0_2) (u32+3) @r7 @r10 @r7
    jmp @r7 *block (@r2/2) u32 @r3 (@r12/0_2)
    movk M (@r4/0_1) @r11 
    jmp @r7 @r7 @r11 ^@r6 @r4 ^&&
    push ^<> ^<M> ^u64 (^<M>+0_1)
    movk ^@r1 @r1 *main @r1 <> ^@r6 <M>
    dw @r6 ^@r11 @r8 (*block/3) (@r7+3) M
    ldp @r7 @r11 <M>
    @r4 <M> u32 @r3 (*main/2) ^@r9
    mov M u32 @r9
    dw @r11 (*block/0_1)
// end optimization

// jumpers
    jmp && @r4 u64
    mov <M> u64 *block (@r8+3) ^@r1 (@r3+0_2)
    dw @r12 <> *main (@r9/2) <>
    ldp @r9 ^@r3 ^*block
    @r11 @r3 @r12 @r2
    cmp M (@r1/3) @r5 // main in jumpers
    mov ^M @r8 (@r1+1) u32 <> &&
    mov (^u8/3) (*main+1) u64 @r7 @r5 @r10 *block

    dw @r1 @r1

    movk *main u32 u8 *block
    @r4 ^@r6 @r11 // pointers
    movk @r8 ^@r11 (*main/2) *block @r9 // blocks in pointer

// memory structure (see minkernel)
    movk ^@r9 (<M>+2) @r6
    mov && ^u32 <M>
    jmp (<M>+0_2) @r8 ^*block
    jmk @r4 @r10 ^<M> @r3

    jmk *block u32 @r3 (<M>/0_2) @r7
    dw <M> @r10 (@r5/0_2) *main (@r2+0_1)
    ldp @r6 <M> (u8/3) (@r7/1)
    cmp (*block+2) *block (@r9/2) @r2 ^@r3 @r9
    mov @r6 @r12 ^@r6 @r10 u8 ^@r4 ^u32
    dw u64 u32 @r10 @r8
    dw @r3 @r9 u16 @r11
    dw @r10 @r6 (^@r8+1) &&
    jmk @r5 @r12 @r1 @r3 @r5

    @r10 @r8 (&&+2) @r8 @r12 ^@r4 ^@r10
    @r3 *main (<M>+3) @r5 &&

    jmp @r12 ^@r5 <M> @r3
    mov ^u16 ^@r7 *block u32 u32
    @r8 u16 @r5
    ldp u32 ^@r6 @r11 (u8+3) @r10 @r12 ^u64
    @r9 <M> ^*block <> (&&/0_2) (*block/1)

    dw @r11 (u64+2) @r2 <>

    lsl (u32/3) (u64/3) u16 *main <> @r9 ^@r8
    dw @r7 <> u32 ^@r6
    movk @r1 ^u64 @r8

    ldp @r10 (^@r1/1) *block (@r6/3)
    jmk u32 @r9 @r10 && @r8 (u32/3)
    dw ^@r2 <> (@r5+0_2) @r12
    mov *block @r4 @r4 u32
    push (@r3/0_1) (&&+2) <M> (<>/3)
    @r3 ^@r7 && @r8 @r12
    @r1 && @r8
    cmp (@r1+2) u8 u16

    jmk @r12 @r3 @r5 <M> u8 @r3

    dw (@r10/1) @r8 @r12
    jmk ^<M> *main ^@r5
    dw u16 @r8 u16 ^u8

    @r5 @r7 @r3 ^@r11 @r5 <> ^@r6 (<M>/0_1)
    jmk ^@r8 <>
    dw ^@r7 <> // main
