entry:

    @r7 (@r12/0_2) ^@r9

    push @r1 ^@r7 @r12

    dw u16 @r1 ^@r1
    jmk ^@r10 (@r5/0_1) (@r3+1) @r7
    push <> <M>
    movk @r3 (@r5+0_1) ^@r1 u32 ^@r1
    jmk ^*main *block @r12 @r9 <> u64
    @r1 ^@r4 u64
    push ^u16 u8
    @r6 && @r1 u32
    push @r9 (*main/1)

    jmp @r8 ^@r10 M ^u64 @r5 (&&+2)
    jmp <M> @r5 M u32 @r8 @r6
    movk u8 <M> @r3 u32 @r12 (@r2/1)
    push <M> @r7 @r6 ^@r5 (M+0_1) @r9 <M>

    movk (@r8+0_2) @r11 ^<M> <> u64 @r3

    @r4 <M> @r3 ^@r4 &&
    @r3 (u8+0_2) (&&/2) ^@r12
    jmp @r2 (@r7+0_2) ^&& u64 @r11
    jmp M <M>
    @r7 u8 (&&+0_2) @r9 @r6 (@r12+0_1) @r7 @r10

    mov @r12 @r6 ^@r1 ^@r7 ^u8
    jmk @r6 @r4 ^&&
    @r7 @r8 ^*main
    push (@r2/0_1) @r10 ^<M> @r12 @r7 u64
    @r5 M @r6

    dw ^@r10 *main (@r12+2) M u64 @r2 (^@r12+1)
    lsl u16 <M> @r6 u16 u32
    dw @r4 @r12
    jmp u64 ^<M> u32 @r11
    jmp ^&& @r3 && @r10 ^@r2 M
