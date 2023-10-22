DINO_JUMP:
		push	YL
		ldi		YL,LOW(VMEM)
		
		ldi		YL,$7C
		call	MOVE
		call	DELAY_HALFHALF

		ldi		YL, $70
		call	MOVE
		call	DELAY_HALFHALF

		ldi		YL, $64
		call	MOVE
		call	DELAY_HALFHALF

		ldi		YL, $64
		call	DOWN
		call	DELAY_HALFHALF

		ldi		YL, $70
		call	DOWN
		call	DELAY_HALFHALF

		ldi		YL, $7C
		call	DOWN
		call	DELAY_HALFHALF
		
		pop		YL
		call	SEG_7
		ret

MOVE:
		call	INC_BYTES
		call	JUMP_10_BYTES
		call	INC_TAIL
		clr		r24
		
		call	JUMP_10_BYTES
		call	INC_BYTES
		clr		r24
		
		call	JUMP_10_BYTES
		call	REMOVE_BYTES
		clr		r24
		ret

JUMP_10_BYTES:
		inc		r28
		inc		r24
		cpi		r24,10
		brne	JUMP_10_BYTES
		ret

DOWN:
		call	REMOVE_BYTES

DOWN_LOOP:
		inc		r28
		inc		r24
		cpi		r24,10 
		brlo	DOWN_LOOP
		call	INC_BYTES
		clr		r24

PUT_TAIL_D:
		inc		r28
		inc		r24
		cpi		r24,10
		brne	PUT_TAIL_D
		call	INC_TAIL
		clr		r24
ADD_FEET:
		inc		r28
		inc		r24
		cpi		r24,10
		brne	ADD_FEET
		call	INC_BYTES
		call	RESET_Z
		clr		r24
		ret

INC_BYTES:	
		push	r20
		ldi		r20,0b00000011
		inc		r28
		inc		r28
		st		Y, r20
		pop		r20
		ret

REMOVE_BYTES:
		push	r19
		inc		r28
		inc		r28
		st		Y, r19
		pop		r19
		ret

INC_TAIL:
		push	r22
		ldi		r22, 0b00000111
		inc		r28
		inc		r28
		st		Y,r22
		pop		r22
		ret

LOAD_FLOOR: 
		push	r16
		push	r17
		
		ldi		r16, $00
		ldi		r17, $FF

		sts		vmem+92, r16
		sts		vmem+93, r17
		sts		vmem+94, r16
	
		sts		vmem+88, r16
		sts		vmem+89, r17
		sts		vmem+90, r16

		sts		vmem+86, r16
		sts		vmem+85, r17
		sts		vmem+84, r16

		pop		r17
		pop		r16
		ret

LOAD_DINO: 
		push	r16
		push	r17
		push	r18

		ldi		r16, 0b00000111
		ldi		r17, 0b00000011
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