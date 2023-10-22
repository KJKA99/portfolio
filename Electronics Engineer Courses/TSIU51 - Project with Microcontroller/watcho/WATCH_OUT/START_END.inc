NEW_GAME:
		sbi		PORTD,PD4
		sbi		PORTD,PD5
		call	BEEP_LOOP1
		call	WAIT
		cbi		PORTD,PD4
		cbi		PORTD,PD5
		brne	NEW_GAME
		ret
	
LOST_GAME:
		push	r18
		ldi		r18,0

LOST_GAME_LOOP:	
		sbi		PORTD,PD5
		cbi		PORTD,PD4
		call	WAIT
		sbi		PORTD,PD4
		cbi		PORTD,PD5
		call	BEEP_LOOP1
		cbi		PORTD,PD5
		cbi		PORTD,PD4
		inc		r18
		cpi		r18,2
		brne	LOST_GAME_LOOP
		pop		r18
		ret

BUTTON_R: 
		sbic	PIND, PD0
		jmp		BUTTON_R
		ret

WAIT:				
		sbiw	r24,4																								
		brne	WAIT
		ret
