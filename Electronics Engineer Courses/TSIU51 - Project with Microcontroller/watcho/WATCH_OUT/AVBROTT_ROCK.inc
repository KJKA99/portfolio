

.equ TIMER1_TICK =  62500 - 1			


AVBROTTSRUTIN_INIT:			
		clr		r16												
		ldi		r16, (1<<WGM21)						
		sts		TCCR2A, r16
		ldi		r16, (1<<CS22)|(1<<CS21)|(1<<CS20)	
		sts		TCCR2B, r16
		ldi		r16, 251							
		sts		OCR2A, r16
		ldi		r16, (1<<OCIE2B)					
		sts		TIMSK2, r16
		ret

AVBROTTSRUTIN:	
		push	r22
		push	r16
		
	ROCK_SPEED:
		lds		r22, STORE_SPEED
		inc		r22
		sts		STORE_SPEED, r22
		cpi		r22, IM_SPEED
		brne	NO_ROCK
		call	ROCK_MOVE
		clr		r22
		sts		STORE_SPEED, r22	

	NO_ROCK:
		pop		r16
		pop		r22	
		reti
