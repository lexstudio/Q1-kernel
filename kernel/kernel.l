entry:
// declaration of boot start
    @r7 @r10 (@r9+2) (@r9+3)
    @r10 u32 (@r4+0_1) <M> M @r7 <>
    @r7 ^@r8 @r11 @r12
    jmp @r2 ^@r4 (@r2/3) @r6 @r11 ^@r6
    @r12 <> M <M>
    mov u64 && (@r12/2) <>

    jmk (<M>+2) @r10 *block @r3
    @r11 ^&& @r5 *main @r5 (&&/0_1) u64

    dw @r10 @r11
    mov @r11 u64 ^@r12 @r6 ^<> @r8
    @r10 ^@r3 @r6

    jmk @r12 u8 &&
    dw u64 @r1

    dw @r1 <M>
    mov u64 (@r6/0_1)
    movk @r11 (u8+0_2)
// Memory start and new blocks rules
    jmk <> *block

    @r5 <> @r8 @r6 M ^<M> <>
    dw (^u16+2) (@r11/2)

    jmp M ^@r2 (@r5+3) @r6
    push @r3 @r3 @r7 @r5 @r12 ^u64
    push (u8/3) *block @r5

    mov @r3 @r10 @r11 @r9

    jmk u16 u16 @r7 @r4 @r7 @r9
    jmk @r9 @r8 ^&& (@r6/1) @r6 (@r12/2)
    cmp @r5 ^@r2
    @r12 @r10 *block @r4 && @r10 @r8
    movk <M> @r2 (u32+2) @r5
    jmp u16 @r2 u32
    jmp (^<>/3) ^&& *block ^@r1 @r6 ^*main
    @r9 @r12 ^@r8 @r9 @r2
    mov *main <M> (@r3/3) @r8
// Blocks rules
    push u16 @r2
    movk <M> (*main+2)
    ldp && M @r8 M
    jmp @r10 @r8 &&
    jmk && u32 u16 (@r6/0_2)

    dw u8 ^@r12 @r6 @r1 @r5 @r2
    jmk ^@r12 @r4 @r1 u16

    ldp @r2 <>

    @r8 @r4 @r9 @r7
    cmp M @r5
    push (@r7+0_1) @r4 @r12 ^u64 @r5 u64

    lsl @r2 @r9 (@r3/3)

    movk <M> <M> @r2 &&
    cmp ^@r9 && (*main+1) ^@r4 @r7 @r12
    ldp @r6 *block
    jmp (@r8/0_1) (<M>/0_1) @r8 ^u16

    jmp (@r3/2) *block @r7
    @r8 u32 @r7 u32 u32
    jmk u16 @r6 @r12 @r12

    jmp (@r10/1) (@r12/1)
    push u8 ^u64 (@r9+0_2) u64
    jmk M @r7 (^u32/2) (^@r10/1)
    @r6 *main (@r4+0_2) ^@r9 u32 // declaration
    push (M+2) ^@r6 u16 @r2
// gdt integration 
    mov @r1 ("gtd.l")
    @r7 <> @r11 (<M>+2) u16
    dw (u64/0_2) @r8 M (@r7+0_1) ^@r4 ^@r3 // pointer for the next register
    @r7 @r8 @r8 ^@r5 // main
    push (*main/1) @r9 u8 // group push 

    ldp ^@r2 && @r12 @r4 @r5 *block
    jmp u8 @r11 // r11 register limit u8 
    jmk <M>
    dw ^u8 (@r8/1) <>
    jmp u64 @r8
    jmp (^*main+3) *block <M> @r10 @r6
    jmk (<>/0_1) <> @r9 @r4 @r4 // pointers for registers
    jmp (^M/0_1) <M> u16 *main <> ^u32

    jmp (u64/1) @r6 @r12 <> u16

    dw @r7 @r5
    jmk u64 @r2

    cmp u32 @r8 @r9 @r3 ^u16 // std declaration

    mov (@r1+0_2) @r4 @r2 @r1 @r3 ^@r2
    push @r11 u8 ^@r2 u32 @r12 // no main
    movk u8 @r6 (^@r3/1) (M+1) @r6 @r3

    dw M @r7 ^u16 ^@r6 u32 ^@r11 (u32+0_2
    jmp ^&& @r6 *main u8 ^@r7 <>
    push && u16 (*main/0_3)
    movk ^*main M @r6 // pointing the main




// block rule
    lsl ^@r6 ^@r12
    ldp @r9 (@r7/1) @r10 @r4 u64 (*block/0_2)
    dw (^@r2/1) && (@r7/1)

    movk @r5 ^@r10 @r10
    @r2 u16 u16

    jmp @r8 <> ^@r9 @r2 (^@r7/1) @r11
    jmp @r4 <M>
    cmp @r8 @r6 @r1 (<M>/0_2)
    jmp u16 @r4 u16 u64 (^@r5+0_1) ^@r10
    lsl M @r7
    cmp (u16+0_1) @r3
    ldp @r5 u8
    movk ^@r6 u16
    @r4 (^@r7/2) @r12
// Text and message print in memory blocks
    jmk <> ^&& u16 @r3
    ldp (@r3+3) @r9 @r1 @r2 u16 @r4
    ldp @r12 ^u8 @r7
    dw @r6 *main @r5
    @r9 *main && (M+1)
    movk @r7 ^@r6 (@r6/0_2) ^@r3 ^@r9 @r7
    dw M *block
    jmp @r2 <M> @r6 ^*main
    mov <M> u16 u16
    jmp @r8 @r2 (M/0_1) *block @r2 (@r3/1)
    @r11 @r7 @r10
    ldp @r3 ^*block
    @r3 @r6 (u64+0_2) *main <M>
    jmk && @r10
    mov (@r3+1) (*main+1) <> @r12

    jmp @r2 ^u64 ^@r1 ^@r12 @r10 u16
    cmp ^@r1 && @r5 (@r12+3)

    jmk @r10 (M/1) && @r1
    mov <M> ^@r6

    lsl <M> @r10 @r2 (@r1/0_1) ^@r11 *main
    @r12 ^u64 @r8 // main register u64 point
    movk u32 u16 && @r8
    push *main <>

    mov ^<M> @r5 <>
    ldp ^M @r10 @r12

    push @r10 @r1

    @r2 ^<> (*main/2) (M+0_1) u32

    dw @r12 <> @r5

    jmk u32 @r7 @r3 u32 u16 @r12
    lsl <M> u8 @r3 u32
    ldp u32 u32 M (@r7+3)
    dw @r6 (^*main/3) ^&&
    ldp @r3 ^@r7
    ldp (^*block/0_1) ^@r8 ^@r3
    push ^*block @r7 @r4 @r12 @r10 *main

    lsl *main @r1 ^u16

    cmp ^@r6 (M/2) *block
    ldp @r8 M
    @r6 (@r12/0_2) @r10
    push (@r1/0_2) && M u64
    jmp (@r3+1) ^@r10 @r11 <> M u8
    push u32 @r1 ^M
    mov (u64/0_2) u8 *block
    @r9 @r1 M ^u16 ^<M>
    @r1 @r9 @r12 <M> ^*block (^@r5+2) <M>
    @r2 @r11 @r1
    mov <> @r9 <> u16
    @r7 (<M>+2) @r2 (u32/0_2)
    dw ^u16 u32
    jmp @r5 <M> @r4 (@r11+3) @r2 @r5

    @r5 @r12 (@r6/0_2)
    ldp ^@r2 @r4

// Cache access route
    mov @r6 @r5 *main *block u16 @r3
    dw @r12 @r1 @r7 @r12 @r7 @r9
    ldp @r11 "chachekernel.l" @r10 <M> @r6 *block
    push u16 @r7 <> @r1 @r7 ^u8

    lsl @r3 u8 @r6 *main u16 u64
    dw (^u64/0_1) ^@r9 u64 @r1
    push @r7 @r7 (M/0_1) @r8
    dw (@r12+2) @r8 M @r5 u16

    mov u8 @r8 @r12
    cmp ^u32 @r10 u64 *main

    lsl ^<> ^@r3 *main @r7 @r7 @r8 @r11
    @r5 *main (@r11+0_1) M @r5 @r7 (@r2/0_2) (*main+1)

    mov M (@r7+3)
    cmp u32 @r5 u8 @r7 ^@r5 @r1

    lsl @r8 @r2
    jmp u16 @r10 && u32 @r11
    @r10 ^<M> @r12 @r1 *main
    @r7 u16 ^@r5 <> @r1

    lsl ^u16 <M>
    dw <> @r8 u32


// Stop and sleep in registers
    @r2 @r11 @r6 @r3 // all registers stop 
    lsl *block @r6 @r10
    @r6 @r5 <M> @r8 (@r8+0_2)
    jmk u64 *block u64 @r4
    movk (<M>/0_2) <M> @r10 u8
    mov u32 (u8+0_2) u8 ^@r2 u8 @r4
    @r2 @r5 @r10

    jmp ^u16 @r11 && ^@r11
    mov u8 ^@r4

    ldp ^@r8 (u32/0_2)
    mov @r9 ^@r6

    ldp ^@r1 *main u64 @r2 *block @r2
    jmk && *main
    cmp @r3 <> (u16/0_1)
    @r7 (@r10/3) u8 @r12
    lsl u16 @r4 M (u64/1)

    @r1 @r10 (u64+1) u16 @r1 (@r10+1)
    jmk M ^@r10 u8 @r6
    mov ^*main *block ^@r4
    lsl (@r4/1) ^u64 @r3 @r4 ^@r9 (@r6+0_1)
    jmk @r3 ^*main (*block/0_2) u16
    dw ^*block (M/2) *main ^@r2 @r1 @r8
    lsl @r9 (*main+2) (<M>/0_1) u8 @r12 *main
    @r2 (@r1+0_2) u64 @r9 u32 @r9 (@r5/0_2) @r10

    jmk ^@r8 (@r12+0_1) ^@r10 @r6 @r7 @r10 &&
    @r4 @r1 @r12 (@r3/1) <> (@r3+2) @r9 ^@r6

    @r3 *main u32 (u8/3)
    push @r7 (@r5/1) ^u8
    jmp @r5 u64 @r1 && (@r8/3) ^u32 @r9
    movk @r6 @r10 *block
    @r2 @r3 @r2 *main (u64+2) @r5 <M> (@r2+3)
    jmk u8 *main *main <M> ^@r12 ^u8
    dw @r8 (@r10/3) @r1

    mov <> u16 @r9 *block @r11 ^@r2
    mov u32 @r12 @r12 M @r7 ^M @r7
    lsl @r6 @r7 <> (^@r8/0_2) @r3
    @r12 @r8 ^@r3 (M/3)
    @r6 <> @r4 (@r2/2) @r11 (@r6/0_2) (^@r2/1)
    ldp u64 (@r11/1)
    mov @r1 ^u16 @r7 <M>
// Driver change and vga hdmi indentification
    cmp ^M u32 @r11 @r1 u32
    cmp u16 @r7 *main (@r2+2) ^u64 @r11 (<M>/2)
    movk @r12 @r9 @r10 ^@r2 @r10
    mov (@r11+3) <M> @r1 @r3 ^<>

    jmk M u8 u8 @r6 ^@r12 (*block+2)

    @r9 ^@r3 (u64/1) @r5 *block
    movk u16 u64 <>
    mov @r5 @r8 @r3 ^<M> @r7
    cmp @r2 (^*block+0_2) ^M
    mov *block <> u32 (<>+0_1)

    jmp @r1 ^@r5 @r1

    cmp M ^@r11 <M>
    jmp @r3 M <>
    jmp @r1 @r11
    mov @r2 @r4 (*main+2) *main u32

    @r2 @r9 (M+2) u8 @r5 @r6 ^@r12
    ldp *main *main *block <M> ^u64 @r5 (u8/3)

    push <M> u64 *block ^@r10 @r10 @r12
    push @r9 M *block @r12 @r8 @r8 (<M>/0_1)

    cmp (^@r11/0_2) (@r2+2) (@r10+2) @r3
    ldp (@r10/1) u8 (@r4/2) u16 (@r2/3)
    push @r10 @r3

    lsl @r8 <> ^@r11 <M> @r7 ^@r1

    mov ^@r11 ^@r12 ^@r10

    cmp M @r12

    mov @r8 u32

    mov <M> *main <> ^u64 @r5 @r4
    cmp (@r5+2) ^*main @r4 <M> @r9
    mov u16 (@r8/0_1) (@r6/0_2)
    lsl @r10 u8 ^M @r6 @r3 @r4 @r12

    cmp @r11 @r10
    ldp ^&& ^@r8 @r4 (@r7/3) u8 @r9 ^@r5

    lsl M u8 u32
    mov ^@r1 ^u16 @r9
    ldp <> u16 ^u32 @r5 @r3 @r5
    @r10 && @r5 <> @r7 @r3 @r12
    @r8 ^u64 ^@r4
    movk ^@r9 (@r5/3) @r5 u16 u64 (^*block+3) @r5
    @r5 u64 u16 u64 @r10
    cmp @r7 <M> u64
    cmp @r12 @r7

    push u16 u64 @r2 (u32/1) @r1
    lsl ^u16 *main <M> @r5
    cmp @r10 u32 @r12 (@r6+0_2) ^@r3 @r5 u64
    mov @r9 (u16/1) <M> @r5
    @r3 *block (@r4+3) *main *block u16 (@r5+2)
    ldp @r6 @r1 ^@r9 ^M (*main/0_1) @r3 @r3
    ldp ^M <> *block @r12
    push @r10 ^&& ^u32 u64
    jmp *block @r12 @r2
    jmk @r10 @r3 @r6 @r8
    jmp ^@r1 (*block/0_2) (@r9+1) @r5 ^@r6
    lsl <> @r2
    jmk @r12 @r10

    movk *block (@r3+2) @r2 ^@r8 <M>
    jmp @r10 @r1 @r11 ^u8 *block
    @r3 @r5 u32 <M> M ^@r8 u16
    @r11 (^@r4/0_2) M u16 ^@r6 ^@r7 u8 ^@r3
    push ^M u16
    push u16 && *main @r3 (@r11+1)
    push @r6 u32 *block @r2 u8 (&&+3)

    mov @r4 (^<M>+2) @r11 @r9
    lsl @r9 <> @r9 (@r3+0_1) // end
// Digital type
    jmp @r2 (@r4/1)
    push @r1 u8 @r10
    jmp (*main+0_1) ^<M> *block @r5
    ldp @r2 ^@r12 @r6 *block (u64/1)
    jmp (<M>+2) @r10 @r3 @r1 u16

    dw u32 @r7 @r4 @r2 @r7 ^@r6 @r6
    jmp @r5 @r2 u32 ^@r6
    jmk *block (@r9/2) (^<M>/1) @r8 u8 (@r12/0_1)
    ldp <M> ^u16
    cmp (u32+0_2) *main @r10 ^@r11 ^@r1

    push @r5 M <> && (@r12+1) *main
    ldp @r2 @r4
    ldp *main *block

    push @r3 (@r2/0_1) @r1
    @r1 u8 M
    @r6 @r9 u16

    @r2 @r1 @r9 && u64 u16 (^@r3/2) u64
    jmp u32 (@r9+3) <>
    lsl && @r1 u8 @r3 u64 u16 <>
    @r6 ^@r7 u32 && @r11
    @r3 @r8 *block *block
    mov M ^@r1 @r9
    movk u64 @r9 ^*block ^u16 M @r8
    cmp ^*block u8 u64 (&&+2) <M>
    movk (@r5+2) <> @r6 M (@r3/3) ^<M>
    ldp (@r1/0_2) u16 ^@r10 M @r6

    jmp ^M ^@r3
    jmk ^@r7 (u64/1) @r12 M && (@r12/0_2)
    push (@r5+1) (u32+1) @r11 (u8+3)
    push u32 @r11 @r2
    movk u16 (u64+2) (^<>+0_1) @r3 && u64 (@r3+3)
    push ^u8 u32 ^u8 && *main (^@r10/0_1)
    @r1 @r4 u8 @r1 @r6 ^@r5 <M> @r6
    @r10 <M> (^*block+0_1) @r4 M u8 u16 <>
    mov u32 @r4 u32
    dw (u8/0_2) @r8 <M> (@r4+3) @r11

    ldp (u8/3) (^M+1) && (^u16/3) u16 <> <M>

    @r1 @r6 @r1 (@r5+0_2)
    @r4 ^u64 @r6 && <M> <M> @r2
    push u8 ^@r8 @r4 @r11 ^@r4 u32 *block
    @r5 @r9 <M> (^@r2+2) @r11 (^@r1+0_2)

    push @r9 @r11 (@r2/0_1)
    jmk @r7 @r11 *block (@r12+1)
    jmk && (&&+1) (u32/0_2)
    @r1 <> ^u16 @r4
    movk (@r11+2) ^*main *main u64 @r6

    jmp @r3 ^u16 @r6 ^*main ^u16 (M/1)

    @r11 @r3 @r10 @r5

    @r11 u32 *block @r4 (u32+0_1) @r2

    ldp ^u16 <> ^@r12 @r1 @r1 u8
    movk (@r1/2) (^@r10/0_1)

    dw ^@r4 @r8

    lsl @r2 (@r8/0_1) @r6 (u64/0_2)
    cmp @r11 @r8
    movk *main @r9
    push @r8 @r1 u32

    ldp @r2 (@r9+0_1) (^@r4+0_2) u8 (*block/3) (u64+3) u16

    jmp && @r7 ^@r7 u8 ^@r4

    @r5 @r5 <> (&&/2) ^@r3 @r2 <>
    jmp u32 u16 @r5 ^<M>
