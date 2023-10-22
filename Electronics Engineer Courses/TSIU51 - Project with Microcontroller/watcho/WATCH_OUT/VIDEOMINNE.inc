.dseg

.org 0x150
VMEM: .byte 96 

.org 0x200
CHECK_JUMP:			.byte 1
CHECK_ROCK:			.byte 1

STORE_SPEED:		.byte 1
DATA:				.byte 1
LCD_DATA:			.byte 1
LCD_DATA2:			.byte 1 
HIT:				.byte 1
ENTAL:				.byte 1
TIOTAL:				.byte 1
ROW:				.byte 1

.cseg

SRAM_CLEAR:
		push	r17
		push	r18
		push	r19
		push	ZH
		push	ZL
		ldi		r18, $00
		ldi		r19, 30
		ldi		ZH, HIGH(VMEM)
		ldi		ZL, LOW(VMEM) 
	
SRAMCLEARLOOP:
		ldi		r17,3
LOAD_:
		dec		r17
		st		Z+, r18
		cpi		r17, 0
		brne	LOAD_
		inc		ZL
		dec		r19
		cpi		r19, 0
		brne	SRAMCLEARLOOP
		
		pop		ZL
		pop		ZH
		pop		r19
		pop		r18
		pop		r17
		ret 

GAME_OVER:
		push	r16
		push	r17
		push	r18

		ldi		r16, 0b00000000
		ldi		r17, 0b00000000
		ldi		r18, 0b00000000

		sts		vmem+56, r18
		sts		vmem+57, r18
		sts		vmem+58, r17
		
		sts		vmem+68, r18
		sts		vmem+69, r18
		sts		vmem+70, r16

		sts		vmem+80, r18
		sts		vmem+81, r18
		sts		vmem+82, r17

		pop		r18
		pop		r17
		pop		r16
        ret

CLEAR_SCREEN:
		push	r18
		push	r16
		ldi		r18, 72

SCREEN_LOOP:
		ldi		r16, $00
		dec		r18
		cpi		r18,0
		call	SPI_TRANSMIT
		brne	SCREEN_LOOP
		pop		r16
		pop		r18
		ret

FOUR_STEP:		
		inc		r28
		inc		r24
		cpi		r24,4
		brne	FOUR_STEP
		clr		r24

FOUR_STEP_LOOP:	
		st		Y, r23
		inc		r17
		cpi		r17,3
		brne	FOUR_STEP
		clr		r17
		lsl		r23
		brcc	SKIP_ORI
		ori		r23,0b00000001
	SKIP_ORI:
		cpi		r28, $AF
		brlo	FOUR_STEP
		ret

ROW_COUNTER:
		push	r17
		lds		r17, ROW
		inc		r17
		sts		ROW, r17
		pop		r17
		ret
			
ROW_PRINT: 
		push	r17
		push	r18
		call	ROW_COUNTER 
		lds		r17, ROW

ROW_LOOP:	
		dec		r17
		cpi		r17,0
		breq	ROW_END
		ldi		r18, 12
		add		ZL, r18
		jmp		ROW_LOOP

ROW_END:
		lds		r17,ROW
		cpi		r17,8
		brne	ROW_DONE
		clr		r17
		sts		ROW, r17

ROW_DONE:
		pop		r18
		pop		r17
		ret

ROCK:		
		ldi		r25, 0b00000001
		push	r16
		ldi		r16,$8C
		sts		CHECK_ROCK, r16
		pop		r16
		ret

ROCK_MOVE:
		lds		YL, CHECK_ROCK
		call	LOAD_ROCK
		
ROCK_STEP:
		inc		r28
		inc		r24
		cpi		r24,10
		brne	ROCK_STEP
		call	LOAD_ROCK
		clr		r24
		lsl		r25
		inc		r17

		cpi		r17,9
		brne	SECOND_SCREEN

		ldi		r16, $90
		sts		CHECK_ROCK, r16
		ori		r25,0b00000001
		
SECOND_SCREEN:
		cpi		r17,18
		brne	THIRD_SCREEN
		ldi		r16, $94 
		sts		CHECK_ROCK, r16
		ori		r25,0b00000001
		
THIRD_SCREEN:
		cpi		r17,27
		brne	DONE
		ldi		r16, $8C
		sts		CHECK_ROCK, r16
		ori		r25, 0b00000001
		clr		r17 
	DONE: 
		ret
		
LOAD_ROCK:		
		st		Y, r25
		inc		r28
		st		Y,r25
		inc		r28
		ret
