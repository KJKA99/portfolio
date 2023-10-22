jmp INIT

.org OC1Aaddr
jmp AVBROTT

.dseg

.include "SPI.inc"
.include "AVBROTT.inc"
.include "CHARACTER.inc"



.cseg

INIT:
		call	SPI_MASTER_INIT
		call	TIMER1_INIT
		sei
		//clr r25
		ldi		r16,0

MAIN:
Call LOAD_FLOOR
//call SEND_MATRIX
		call	LOAD_DINO_IDLE
		call	SEND_MATRIX
		inc		r16
		cpi		r16,1
		Call	LOAD_DINO_JUMP1
		Call DELAY_HALFSECOND
		call	SEND_MATRIX
		call	LOAD_DINO_JUMP2
		Call DELAY_HALFSECOND
		Call SEND_MATRIX
		call	LOAD_DINO_JUMP3
		Call DELAY_HALFSECOND
		call	SEND_MATRIX
		inc		r16
		cpi		r16, 4
		breq	MAIN
		jmp		MAIN1
	
MAIN1:

		jmp MAIN1


//Delay 0.5 second
DELAY_HALFSECOND: ; For CLK(CPU) = 1 MHz
ldi r22,31 ; One clock cycle;
DELAY1_TWO:
ldi r23,250 ; One clock cycle
DELAY2_TWO:
ldi r24,255 ; One clock cycle
DELAY3_TWO:
dec r24 ; One clock cycle
nop ; One clock cycle
brne Delay3_TWO ; Two clock cycles when jumping to Delay3, 1 clock when continuing to DEC



dec r17 ; One clock cycle
brne Delay2_TWO ; Two clock cycles when jumping to Delay2, 1 clock when continuing to DEC



dec r16 ; One clock Cycle
brne Delay1_TWO ; Two clock cycles when jumping to Delay1, 1 clock when continuing to RET
ret