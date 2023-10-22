

.equ TIMER2_TICK = 60				


FPS_INIT:															
		ldi		r16, (1<<WGM12)|(1<<CS12)	
		sts		TCCR1B, r16
		ldi		r16, HIGH(TIMER2_TICK)		
		sts		OCR1AH, r16
		ldi		r16, LOW(TIMER2_TICK)		
		sts		OCR1AL, r16
		ldi		r16,(1<<OCIE1A)				
		sts		TIMSK1, r16
		ret

FPS_RUTIN:
		push	r16
		in		r16, sreg
		push	r16
		push	ZH
		push	ZL
		ldi		ZH,HIGH(VMEM)
		ldi		ZL,LOW(VMEM)
		call	RESET_Z
		call	ROW_PRINT				
		call	RETREIVE_PIXEL		

COLLISION:
		push	r28
		push	YL
		push	YH
		push	r16
		push	r19
		push	r18

		ldi		r28, $94
		ld		r19, Y+
		ld		r18, Y+
		ld		r16, Y

		andi	r18, 0b00000011
		andi	r19, 0b00000011
		or		r19, r18
		and		r16, r19

		cpi		r16,1
		brlo	NO_HIT
		sts		HIT, r16

	NO_HIT:
		pop		r18
		pop		r19
		pop		r16
		pop		ZH
		pop		ZL
		pop		r28
		
		pop		ZL
		pop		ZH
		pop		r16
		out		sreg, r16
		pop		r16
		reti
