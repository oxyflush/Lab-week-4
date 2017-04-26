        .syntax     unified
	.cpu        cortex-m4
        .text
        .thumb_func
        .align       2

// uint32_t  Add1(void *p, uint32_t cols, uint32_t r, uint32_t c) ;

        .global     Two
Two:    PUSH {LR} //pushing r4 and r5 on stack to keep previous values same.
        LSL R1,R1,R2
	LSL R3,R3,2
	ADD R1,R1,R3
	ADD R0,R1,R1
        BL printf //printing result
        POP {LR} //popping r4 and r5 off stack.
        BX          LR

        .end

