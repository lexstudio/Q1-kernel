entry:
    mov u32 (*main/3) u64 (@r5/3) @r8 // main
    push @r10 ^@r7 @r10 u8 u64

    mov @r1 @r10 *block ^@r6 @r3
    @r1 @r6 ^@r10 @r10 (^u16+1) ^@r3 // no main

    jmk @r2 ^u64 *block (@r11+3) ^@r5

    movk ^@r2 @r6 M // M pointer
    dw @r3 @r5

// Buffer new for log and cache
    jmk (@r3/2) (u64+0_1) u64 ^<>
    ldp ^@r12 u64 (@r12/1) @r5
    jmp ^@r9 @r12 (@r2/1)
    dw ^M ^@r5
    mov *block (&&/3) ^@r7 ^@r6
    movk @r6 (M+1) (@r11/0_2) u16 @r11 u32 u32
    mov @r10 (@r3/0_1)
    @r11 @r1 *block <M> <> <>
    ldp M @r7

    @r1 (u32/1) (<M>+1) (@r10/2) u16 ^@r8 @r4 <>
    jmp (@r3/2) @r12 @r11 ^@r5 u8 (^<M>/1)

    lsl (@r9+0_2) ^@r5 ^@r5 *block
    @r8 @r3 @r2 @r9 *block M u32
    jmk (@r2+2) @r6 ^@r12 @r4 *block u64
    dw @r1 (M/1) *block M @r11 u8

    push M @r11 M (u8/1) (^@r1+0_1) ^u8

    cmp (u16+0_2) @r4 @r2

    mov (u16+0_1) @r2
    @r9 @r2 @r5 ^u32 @r6 *block @r3
    @r5 u64 @r10 (u64/3) && (@r7+0_1) ^<M> M
    push <> @r9 @r9 @r8 (@r1+2)
    jmk *main @r12 (^u16+3) (@r7/2) M (u32+0_2)
    lsl @r9 ^*block (M+2) (*main/2) u32 M u16
    jmp ^M u16 ^M
    dw (&&/2) (^@r8+1) ^<> (@r12+2) @r5 ^@r10 <M>
    jmp *block (@r5/2) <M>
    cmp (@r11+1) (^@r6/1) u64
    jmk @r12 @r9 (<>+3)
    dw <M> @r11 @r11

    push (@r8+0_2) u8 *block @r9
    lsl (*block+0_2) *block

    push ^@r2 ^&& @r10 && @r10 @r2 @r12
    @r10 && u16 ^@r11 ^@r9 (^u32+1) ^@r11 ^<M>
    jmk (@r2/3) ^@r8 @r5 @r7

    jmk <> ^u32 @r12 @r3
    movk (@r8/1) @r12 @r12 @r9 @r11 ^<M> <M>
    push u16 @r5 @r3 (@r9/3) ^<> ^M @r5
    @r5 (u32+1) u64 u8 M <> @r9 *main
    movk M @r6 *main *block @r4 @r4

    @r12 u32 @r7 @r9 @r1
    cmp M @r2 u8 u32 @r7
    mov <M> ^u32 u64 ^@r10 @r4 u32 <M>
    mov @r5 *block && ^@r10 @r11 @r8 @r3
    mov @r10 u64 @r7 u64 *main (@r3+2) @r6
    push (*main/2) ^u16 ^@r12 (^@r10/3)
    cmp u64 u64 @r6

    cmp (@r9/1) (@r6/0_1) ^@r3 *block
    mov @r4 @r1
    dw u32 @r1 (<>/2)

    jmk (M+0_2) @r11 u8 @r2 *main u32 @r4

    @r2 M M u32 ^*block u8
    jmk (^*main+0_1) <M> @r6 @r1

    jmp @r6 @r12 ^@r10 @r3 (u16+2) @r9

    jmk @r1 ^u64 @r1 ^@r2 @r7

    mov u32 (@r12+3) @r5 ^@r12 u8 u64

    @r11 @r9 u8 @r3 <M>
    ldp @r7 ^*block
    lsl @r4 @r6 M u8 ^u8 @r7 u64
    @r7 @r6 @r5 <M> && (<>+0_1) // <> pointer
    ldp ^u16 ^u32 ^@r12 @r5 u8

    cmp ^<> @r5 @r7 && u32 @r10
    jmp *block @r8

    jmp u8 <> *main (@r6+3) <M>

    cmp @r10 (@r11+2) @r11 && @r10 ^@r11

    push *main (*main/2) u32 *block ^@r10 @r1
    jmp u32 && *main (^u32+0_2)

    ldp u64 (^*block+2) u8 @r6 M @r9 M
    dw ^@r1 u16 @r9 u8 @r4 @r7

    @r1 @r2 ^@r9 u16 @r4
    jmk @r6 *block @r7 @r11 (^@r11/3) u16 M

    jmk (@r7/0_2) @r6 &&
    ldp ^@r3 @r3 u32 u8
    cmp (&&+3) *main ^&& @r3

    mov @r3 @r6 *block u32 && @r9
    lsl ^u32 u8 && @r12 u64 M u8
    dw @r1 (*block+2)



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
    dw @r6 *main ^u32 <> @r12 && ^u16 @r12 @r2 // cpu cycle skip (save 2 or 3 cpu cycles)
//    dw @r6 u32 @r12 *main u16 @r12 @r2
    jmk M (@r4+0_1) <> @r11 *block ^u8 // block no main
    cmp @r11 && // copy r11 

    @r2 (&&+0_1) @r12
    mov @r4 u16 ^@r3 // no main 
    mov (@r12/0_1) @r3 @r6 @r8 @r2 M
    dw ^*main @r2 // no main in r2 (special register)

    mov *main M (u64+1) @r6 u8 // no main pointer

    lsl @r2 @r7 u32 *block  
    movk <M> @r11 @r6 <M> (^@r3/2) (u64+0_1) @r5 // optimization 

    jmk @r3 u16 ^@r8 M @r11 // fix r8
    push u16 @r2 @r11 // r2 and r11 push

    dw ^u32 <M> @r10 (u8+0_2) ^u16
//  dw M (u32/0_2) ^M ^@r10 (u8+0_2) u16
    ldp ^*main (@r9/0_1)
    mov u16 ^@r12 u16 ^@r1 (^@r10/1) (u8+0_2) // u8 in r10, NEW u16 in r10 because of the ^u32 from the line 51
    movk @r11 ^@r10 @r2 @r9 (@r11+3) u32

    @r4 @r6 @r2 @r1 (<>+3) // register logic
    @r10 @r5 (u32/0_2) @r1 (*main+0_1) ^@r5

    jmp *block u8 <M>
    cmp *block (^@r8+1) ^@r5
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
    mov (@r2+3) @r3 @r3
    @r10 && ^<M> @r12 && @r3 (^@r5+1) (M/2)

    push @r3 ^u32 @r8 u64 ^@r8 u16 (@r9+0_2)

    jmp @r10 M u32 u64
    jmk ^@r2 *main @r6 (@r11+3)
    jmk u64 @r12 *main (@r12/2) @r12 ^@r10 (@r7/2)
    movk u64 M @r4 *main
    push @r2 && @r7

    lsl (@r2+1) ^@r4 @r5 @r3 (@r7/3) @r8 ^<>
    ldp @r12 @r12 ^*block (<M>/0_1) *main
    dw @r4 <> @r10 ^<M> ^@r1
    ldp @r1 (@r10/2) @r3 (^@r1+3) ^@r9 ^*block u32
    @r4 *main ^@r8 @r10 @r10 ^M ^M
    mov && @r1 ^@r7 @r3 @r3 (u16+2)

    jmk ^<M> (@r8/0_1) @r3 @r9

    @r10 (@r11+2) ^@r6 (^@r3/3) @r11 ^@r5

    push @r9 (^u8/0_2) @r8

    push @r4 @r9 (<M>+2) <> @r10 @r11 @r1

    jmk @r9 (@r9+2)
    movk u64 u64 @r2 @r6 @r3 @r7
    @r1 @r1 @r12

    jmp @r4 ^@r4 u64 ^*main @r3
    mov M M && ^@r7 @r5
    @r8 @r12 ^u8 M u8 @r11 u32
    push ^<M> ^@r6 <M> ^@r2 *main @r2 @r8
    @r9 <M> ^@r3 @r10 (u8/0_2) (@r12+2) @r10 M

    @r1 @r10 @r2 ^<> @r7 @r11 @r3 (<M>+0_1)
    @r9 @r6 @r12 *block u64 ^u64 u8 u16
    cmp u64 @r6 M ^@r8 && *block @r5
    dw (*block/1) (&&+0_1) @r8
    @r8 u64 @r10 u64 &&
    jmk @r11 (M+1) && ^*main

    movk @r10 u32 (@r6+3) (@r12/0_2)

    cmp <> ^@r9 *main M u32 @r11
    cmp @r6 <M> (@r12+3) <M>
    ldp ^<> @r11 (*block+0_2) @r6 @r5
    cmp <> (*block/0_2) @r11
    @r11 @r12 @r10 @r4 @r4
    cmp <> @r3 ^@r4 @r2 @r11 (@r3/2)
    lsl ^<M> @r6 @r8

    jmp u16 @r11
    ldp (*main/2) @r4 (@r3+1) *block @r1 @r9
    @r1 @r9 (^u32+3) u64
    @r9 @r12 u8

    jmk (@r8+3) && (^@r11+0_2) M (^*main+3) u8 M
    @r9 ^u8 *block (<>/0_1) @r4 @r9 (^@r1+3)
    jmk ^@r10 M @r4 @r10 <M> ^@r1 <>
    ldp *block @r8 (*main+1)

    jmk @r4 (^@r11+2) u8 u64 @r6 u64
    @r9 @r7 <M> (@r4/0_1) @r1

    ldp u16 *main (^@r5/1) @r6 @r9 @r7

    jmp @r3 @r5 <M> @r10 (@r5+3) *main u8
    mov <> @r7 && ^@r4 @r5
    jmk ^@r6 @r4 ^@r1 @r8 u8 ^@r4

    jmk && &&
    movk @r11 @r6 ^@r6 @r8 <> u8 @r4
    push ^<> <> u8 (@r7+2) ^u64 u8
    lsl @r8 u32 u64 u8
    dw <> (@r5+1) @r4
    push M (*block/0_2) (<>/0_2) <> @r12 u8
    movk @r6 &&
    jmk @r6 M (@r1+0_2) @r4 ^*block @r11 *main

    ldp ^@r5 u16 (*block/3) *main
    @r7 M <> ^@r12 <>
    @r6 (u16+1) @r5 ^@r10
    movk @r4 @r8 *main (@r10/1) *block
    jmp @r11 @r4 <> ^@r2 (@r5/3) <M>

    @r5 u8 @r2 @r9 @r3 @r5
    @r6 <> ^M @r6 @r7 (*block/1) (M+0_2) *block
    @r3 @r9 (@r1+0_1) @r8 ^<> ^@r11 (^@r2+0_1) (@r2+1)
    lsl @r12 <> <> @r6
    movk ^@r7 <> @r12 (^u8+0_2) @r9
    jmp @r8 @r12 @r8 @r11 @r12
    jmp ^@r6 @r9 @r9 M

    dw (@r5/3) ^@r11 @r3 (u16/2) (u32/3)
    push M @r11
    push M (@r3/1) u64 (<M>/1)

    movk @r12 <> &&
    jmp @r12 u64 u64 *block @r9
    cmp *main @r8 @r6 @r1
    @r12 (@r6/1) u16 *main u8 @r11
    dw u64 *block ^@r2 (<M>/0_1)
    @r8 <M> ^u32 (u8+0_1) @r5 @r9 @r6 ^@r9
    ldp ^u16 (@r8+2) @r12 (^u8+1) (@r7+0_1) *main
    @r5 @r7 u8 @r1 <>

    @r1 ^u32 u64 (u32/0_2) <> ^u8 *block u64
    jmk ^@r10 M @r3 M u64 @r4 ^&&
    push && @r11 @r5
    dw *block (@r1/1) ^M @r6

    dw @r10 @r1 M ^@r4 ^@r2
    mov u64 (^&&+3) (^@r1+0_2) @r7 (u8/2) @r10
    jmk <> ^@r5 *main
    push @r11 (<>/0_2)

    @r6 (^&&/3) @r10 *main
    push (<>+0_2) @r5 <> @r7 (^@r1/1) && M
    mov ^@r2 ^@r6 (^*main+0_1) <> @r10 u32
    @r8 u64 *main u32 u32 @r9 (u32/3) ^u32
    lsl @r1 && @r4 @r7 u64 (@r5/2)
    dw u8 <M> @r11 &&
    movk @r7 ^u64
    movk u16 @r1 ^@r3 u8 M <M>
    push (&&/1) @r5 (^*main+2) u8
    @r4 <M> ^@r3
    cmp @r9 @r2 @r2 @r11 ^@r8 (@r11+2) M
    lsl @r12 @r8 @r8
    jmp u32 ^@r5 u16
    @r9 @r8 <>

    cmp (M+3) @r7 &&
    jmk *block @r11 ^@r3 <M> *main
    cmp ^@r5 @r7 @r11 @r7

    ldp ^M ^@r8 @r9 ^u64 u64
    mov u64 ^@r7 (@r6+2) (@r1/3) <M> <M> M
    jmp @r10 (@r9+3) ^*main *main @r11 (@r8/3) ^@r5
    push u16 @r12 <> @r12 *block
    @r6 u64 <>
    lsl <> @r11 @r3 @r4
    @r7 u8 (<M>/1)

    jmk @r6 @r6 @r9
    cmp @r6 (@r6/3)
    @r12 @r12 @r8 u64 @r12 ^@r12 (^u64+3) @r10
    @r8 ^@r9 @r4 *main

    dw ^@r12 M @r9
    jmp *main ^@r11
    jmk @r5 @r3 @r9
    @r4 @r12 @r12 u64
    jmp (u16+0_1) @r10 ^u8 && (u64+3)
    mov @r5 (u32/1) ^@r3 u8
    movk u64 ^u8 u64 ^@r1

    @r12 u64 *main @r10 @r3 @r10 &&
    ldp (u16/3) *main u64

    @r1 @r12 @r11 (^*main/3)
    @r8 @r7 ^u64 *main <> @r10
    mov && (u64+2) u32 @r7 @r12
    lsl @r5 ^@r1 u16 (M+0_2) u32
    jmp ^&& *block @r6 @r5 u64 (<>+2)

    push M ^<> <M> M

    @r12 u64 @r9 @r6 *main @r8
    mov @r6 @r4

    mov ^@r4 @r7 *main M @r3 u8 u16

    push ^@r5 ^@r4

    dw (@r2+1) @r12 u64 (^@r4/2) @r8 @r9

    movk u32 @r2 @r7 &&
    ldp u16 ^@r1
    ldp u8 @r4 (@r1+2) ^<M>
    jmp (@r5+1) *main (^&&/3) @r12 @r2 (^u32/0_1) @r1
    lsl <> @r3 *block ^@r12 ^u32
    ldp @r4 *main
    jmk M ^u32 u16 ^@r7 M

    ldp ^@r4 u64
    push <M> @r11 u32
    movk u32 @r6 @r8 @r8

    mov @r7 (u32+3) ^@r7 @r11 ^@r3 @r5

    dw @r10 *main (@r12+0_2) u8
    dw && @r3 u64 u32 @r3 @r2 @r12
    ldp <> @r10 (<>+0_1)
    jmk @r1 && (@r6+2) u16 @r3 ^*main
    movk ^@r11 ^@r12 (@r4+1) (^@r3/0_1) ^<>

    push @r5 ^@r12
    @r2 u8 u64

    lsl (^@r10+0_1) @r4 ^@r6 <> u32 ^M
    @r4 u8 && (@r9/1)

    cmp u8 (@r7/0_1) (@r6+0_1)
    lsl (@r2+2) ^u8
    @r9 <M> @r9 ^@r11
    ldp (@r7+3) u16 @r7 @r7 (@r12/3)
    @r10 u32 @r11 
    @r11 ^&& @r5 @r11 (@r9/0_2) @r9 (@r10+3)
    @r7 *main @r4 *main (@r1+3) @r2 @r8
    @r1 ^M @r8 <> *main @r12
    dw u32 ^@r6 @r2 ^@r1 (*main+1) (@r9/2)
    movk <M> <M> (u8+0_2) (^@r3/0_2)

    mov @r5 *main ^@r12 @r9
    @r11 @r11 ^*block *block && ^*block
    push u32 @r4 u8 ^@r8 M
    ldp <> ^u32 && <> u32 @r8 @r3
    dw u64 @r5
    @r7 u32 @r3 u16 &&
    lsl @r1 <> && ^@r12
    @r8 ^&& ^@r1 @r4
    jmp @r8 u64

    cmp @r2 @r7 ^@r7 *block <M> ^@r6 ^@r3
    @r8 u16 (u8/3) (u8+1)
    jmp ^@r12 (@r7+1) <> <M> M ^*main u8

    cmp <M> @r10 ^@r7 ^u8 <> @r2
    dw (u8/0_1) (u32+1) <> ^<M> ^u16 u32 @r5
    lsl && u32 <M> (u32+1)
    @r8 M (@r12+1) @r7 *block && @r3
    dw u64 @r3 @r7 u16 u32 ^@r6 @r2
    @r4 && u8
    push ^@r9 *main

    @r4 ^@r4 @r6 ^@r10
    ldp u32 @r9 @r2 @r8 ^@r12

    @r9 @r8 @r10 ^<M>

    cmp ^&& @r1 @r6 @r4
    lsl ^@r5 && (@r1/1) u16 @r5
    @r8 @r12 u32 @r6 @r2

    jmk <M> @r11 (^@r2+0_2) M ^u32
    mov @r1 @r8 (@r9+0_2)
    @r6 (M/3) @r4 (M+3) (&&/0_1)

    movk ^u32 u16 ^u8 u64 @r8
    cmp ^u32 ^@r1 u8 @r8

    ldp <M> (^@r11+0_2) (@r4+0_1)
    mov @r6 ^@r3 &&
    cmp @r4 @r4 @r7
    @r7 @r8 @r1 ^@r2 @r3 @r1 && (@r7/0_1)
    jmk @r3 ^@r1 <> (^@r12+3) u32 @r2
    movk (u16/0_1) u16 ^M @r4

    mov *main @r3 (@r12/1) @r3 @r6 @r9

    cmp ^@r8 @r2 @r11 @r12 && (u8+1) @r9
    @r6 @r6 ^*main &&
    @r6 @r11 @r5
    jmp @r7 && @r5 @r8 <> *main
    cmp <M> u16 @r8

    dw M ^@r1 *main ^&& u16

    jmp @r11 @r7 @r5 && @r12 <>
    @r11 @r1 ^@r8 u32 (@r7+0_2) &&
    push @r11 (@r8/0_1) (@r7+0_1) (u16+0_2) (@r11/2) u16
    ldp @r10 @r5
    push @r10 ^@r5 ^@r9 @r6 ^<> u64
    movk @r7 u32 @r7 M @r3 ^@r8 (^<M>+2)

    jmp ^u32 @r4 @r3
    mov <> <> ^<> @r2 u16
    ldp *block *main u64 (@r9+0_2)
    movk *main @r8 && @r6 (&&/2) *block
    cmp ^@r8 <>
    jmp @r3 (@r4/2) (@r8/2) @r11
    cmp ^@r12 <> *block u8 *block ^*main (@r12/0_2)
    lsl @r9 u16 @r8
    ldp <> @r1 u16 @r3
    mov @r5 @r2 ^@r10
    jmk <> @r11 (&&/1) @r5

    cmp @r9 @r12 u32

    @r8 ^@r8 <> @r9
    cmp u8 @r5 *block ^@r8 (^@r7+0_2)
    cmp ^@r7 (^@r11/0_1) @r1
    ldp @r11 @r9 ^u8 @r4
    movk @r9 ^@r10 (u16+3) M ^u64 u16 @r4
    dw (@r5/3) ^@r12 ^u64
    lsl @r4 @r9 (^u64+2) ^u8 *main
    @r4 (@r1/3) @r11 @r3 *block M @r1 ^@r12

    @r8 ^*block u16 (&&+0_1) @r7 @r2 <>
    movk u16 @r12 *block
    ldp (*main+3) ^u64 @r11
    @r8 <M> @r4
    mov @r12 @r1 (@r1+1) @r12
    jmk @r5 @r6 *block u32 *block (@r3/0_1)
    jmp ^@r9 u8 <> (@r10+3) <M> *block
    @r5 @r10 *main @r6 u64 @r3 @r10

    lsl @r10 ^*block <> @r6 u32 <M> u16

    ldp ^@r2 u16
    jmp ^u16 u8 @r12 @r3 u32 @r12 u16
    dw && @r3 ^u64 @r3 @r6

    mov (*block+0_2) (M+0_2) @r1 @r3
    lsl M *main u32 @r7 ^u64 @r3 M
    push (^@r11+0_1) u8 @r7 u8
    ldp (u32+0_1) @r2
    cmp ^@r2 u32
    dw (@r7+2) ^u64 && ^@r12

    cmp u32 @r9 (^u64+0_2) u64 ^u8 (<>/0_1) (^@r9+3)
    @r3 @r12 @r1 *block ^u32 (@r4+0_1) u64
    mov @r12 <M> ^*main && (@r8+0_2) ^u32 (*block+0_1)
    movk u64 ^<> @r11 @r2 ^M @r11 @r4

    movk u16 ^@r5
    jmk ^<M> u64 ^@r1
    jmk @r7 u64 @r11 &&
    dw M u32 (u64+3) *block
    lsl && @r2
    jmk u8 ^@r10 @r9 u16
    @r1 @r9 u32 <M> @r3
    push *block u8 (M+2) @r12 u32 @r12
    movk ^*main @r3 M

    dw @r11 u8
    cmp (u16+2) <M> <M> ^@r5 @r9 @r7
    @r7 @r11 @r9 @r12 ^@r2 (<M>/0_2) ^*block @r2

    movk && @r6
    lsl *block u8
    @r4 @r3 ^@r11
    push ^*block M ^@r4 @r9 ^u16

    dw @r1 (<>/1) @r12 (u8/0_2) @r1
    mov @r11 ^@r11
    dw *main @r8 @r6 @r9 @r12 *block

    dw ^@r5 @r6 @r8

    @r11 @r2 @r6
    jmp ^&& @r5 @r10 *block u16
    cmp <> u64

    @r12 ^u64 @r4 ^@r3 @r4
    dw @r9 @r10 @r11 ^u8 @r11 @r11
    @r6 (@r10/0_2) u32 <M>
    movk <M> @r8 <> <> @r2 @r10

    ldp @r11 *main @r3 ^@r3

    jmk (@r3+0_2) @r1
    cmp @r8 ^@r12 @r4 ^u64 (@r5+2) @r10 u8
    jmp u32 @r2 <> <M> u32
    jmp M *block (u16+1) M u8 @r6 (u32/0_2)
    ldp *main ^@r5 @r1
    push ^u8 (^u32/0_2) *block u64 @r2
    mov @r5 <> <M> @r3 (@r5/1)
    lsl (@r9/0_1) @r7 ^*main ^@r10 @r9 @r6
    @r1 @r2 <> @r4 @r12 @r11 @r10
    jmp @r9 @r1 u8 @r12
    @r9 @r8 (@r9/1) (<M>/3) @r6 @r10

    lsl @r3 (<M>+0_2)
    jmk u32 @r4 u8
    @r2 ^*main *main @r7 (^@r11+0_2) u8
    cmp (^@r3/3) (*block+1)
    jmk <> u8 (@r1/1) && M @r9

    push ^@r3 @r6 (@r6+2) ^@r5 ^@r6
    movk @r9 M (^u32/0_1) @r3 &&
    jmk (^&&+0_1) *main
    movk @r8 @r3

    jmp <M> @r3 @r12 u16 @r6 M *block
    @r6 (^u64/0_1) @r1
    movk (<M>/2) *main (@r10/1) u8 (^<M>/2) && (@r8/3)
    jmk @r1 ^<> @r4
    jmk (@r4/2) @r8 @r5 && ^M @r7 @r5
    movk @r12 <M> @r3 @r1 @r2
    push ^@r4 ^u16 &&

