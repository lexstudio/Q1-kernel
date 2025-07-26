entry:    
    dw @r4 ^@r12 u8 u32 @r10 u32 (@r5+0_1)

    lsl ^@r7 ^@r11
    cmp @r12 @r6 @r6 @r10
    cmp @r11 *main (^@r7/1) &&

    @r11 (u16/2) @r10 (^@r8/0_1) u32 (u8/3)
    cmp @r7 @r12 *block
    ldp <M> ^*block @r8 @r10

    jmk (&&+1) @r9 *main ^*main
    mov @r10 ^<> @r12
    movk ^@r6 (@r8+0_1) @r11 <M> u64 u32

    jmk *main @r11 @r10 ^@r2 <>
    jmp ^*main @r4 ^u32 ^@r12
    cmp ^@r7 u16 @r9 *main
    @r1 u16 ^@r12 @r11 (@r9+0_2) (@r7/0_1)
    @r4 ^&& <M> (^@r12/0_1)
    jmk (@r4+0_2) (*main/0_2) <M> <M> u8
    push (u64/0_1) @r11 (u32/1)
    mov && @r7

    cmp @r10 @r5 (^@r2/0_2) @r12 @r12
    mov @r5 (^<M>+1) ^@r12
    @r1 @r4 u8 *main ^@r12 u32 (@r5+0_1)
    mov @r3 *block ^u16

    dw @r12 (*block/3) ^<> @r4 ^u32 @r7 @r6
    ldp ^@r2 @r2 u64 (@r3+2) (^<M>/0_2) (@r1+0_2)

    mov (u8+0_1) u16 M
    jmk (^<>/3) u64 *block @r2 (u64/2) ^u16 @r3
    mov *block u32 (^u16/0_2) (@r5/0_2)
    @r6 (@r12/0_1) *main @r2 @r4 M u32
    ldp @r2 u16 <> ^@r9 (@r4/1)
    @r12 ^*main u8 <M> (@r11+0_1)

    lsl @r12 @r5 @r12
    @r3 <> @r11 <M> *block
    dw u16 @r3 u64 ^@r4 <M>
    @r3 <> *block @r2 *main <M>

    cmp ^*block @r10 ^@r11 @r8
    ldp (^@r2+2) (u8/1) *main (^@r4/0_1) (M+3)
    cmp (u16+0_1) (^u32+2) @r10
    lsl (@r11+3) ^&& @r8 && (^@r10+1) ^u64

    lsl *main @r8 u8 (@r1/3)
    dw *block <> (u64+0_1)

    push @r8 u32 @r12 u32 ^@r5 @r5
    lsl u8 (@r7+2) ^u16
    jmk M ^M ^@r2 <> @r4
    push ^@r12 @r12

    dw *main @r5 @r9 *main ^M

    @r8 @r6 (M/3)

    @r4 M <>
    @r6 <> M (@r11+0_1) && @r12
    movk u64 ^@r7 @r3
    jmp @r8 <> (u8/0_1) @r7 @r11 @r11 @r12
    @r3 @r3 u64 @r4
    jmp u64 *block u8 @r12 (^&&/3) @r3
    movk ^@r4 @r1 u64 u64 @r10 ^@r4 u16
    @r7 @r10 u32
    movk ^&& @r6 <M> @r1 u32

    lsl ^@r12 && && @r3 *main u8 (M/0_1)
    ldp @r12 @r5 @r1 (@r4/0_2) @r9
    dw @r8 (^@r7/0_2) *main ^@r12 @r10 @r3 (@r2/3)
    jmp M u16 && @r1
    ldp @r5 @r4 @r3 ^@r11 ^@r9
    @r9 @r4 (@r11/2) ^<>

    mov (u64/1) *main @r3
    @r6 @r6 (*block+0_1) @r1
    jmk *block @r5 ^@r5 u16
    movk <> @r3 (@r2+1) u16 <> @r10

    dw @r1 ^u64 @r10
    mov M ^u64

    dw ^@r5 && u16 ^<> (@r8+0_1)
    @r5 ^*main ^u32 ^@r11
    mov @r9 u32 @r8 <M> @r5
    jmk @r10 ^@r10 u16 @r2 <M> *block ^M
    jmp @r7 @r5

    @r12 @r10 ^<M> ^@r4 @r5

    jmp ^@r7 @r5 (@r4+0_1) (^u32+2) u16 u16
    @r11 *block ^@r2 (@r10+0_2) && @r3 @r8 &&
    cmp && @r10 <M> ^@r8
    jmp @r8 @r6 (u16/3) (^@r3+1)
    movk @r3 u8 (<M>+3) @r5 @r1

    movk u64 *main @r3 (u16+3) @r3
    @r5 @r12 @r8 <M> u8 u64 u64 @r3
    jmk @r8 @r8
    dw @r10 @r10 @r11 @r7 *main (^@r10/2)
    @r2 @r12 ^@r8
    movk M (*block+3) @r12 u8 (&&/0_2) ^<M> @r2
    mov u32 (^u64+1) <M> (^@r11+2)
    jmp @r5 @r12

    mov @r11 (^M+0_2)

    @r1 (@r8/0_2) (u8/1) *main ^@r3 u16
    @r1 u16 (&&/2)
    jmk *main u32 (^@r2+0_2) @r7 @r7

    jmk u32 @r9 @r8 (<M>/1) @r12
    ldp u32 && @r3 @r4

    lsl (u16+2) (^<M>+1)
    movk <M> (^@r6+1) (<>/2) M @r3
    push ^<M> @r2
    cmp @r10 *block (@r1+1) u64 *main && @r10
    jmp @r8 (@r9+3) M @r5 u8 <M>

    mov <M> ^u32 *block (^@r6+3)

    jmk @r8 ^u32 @r7
    movk (&&/0_2) (^@r11+2) @r7 ^@r3

    movk u64 <M>
    jmp @r7 ^<> (<M>+3) @r2
    dw && @r5 <M>
    mov @r7 @r7
    cmp *main *block (@r4+1) (^@r12/3) ^@r9 M (@r3+0_2)

    push @r11 @r7 *main M *block
    cmp (M/1) @r2
    @r9 ^@r10 u64 @r2 @r3 @r7 @r11 @r3
    jmk @r3 u8
    movk @r2 u32 @r11 ^@r7 @r10 @r8 ^@r5

    cmp @r7 (@r10/0_1) ^@r8 u16 @r9 ^@r6 @r8
    movk u32 @r6

    cmp @r4 @r7 u32 (*main+3) (*main+2)
    jmp u64 @r1 @r7 @r12 *main @r5 @r7
    ldp (<>+1) @r8 @r10 *block @r2

    movk *main ^@r10 @r12 @r8 ^@r12 <>
    push @r11 @r10 u8 (@r5+3) (u64/2) <M>
    dw @r9 (@r3+3)
    push M (&&+0_2) @r8
    cmp <M> @r4 u32 ^*main @r1 @r12 @r4
