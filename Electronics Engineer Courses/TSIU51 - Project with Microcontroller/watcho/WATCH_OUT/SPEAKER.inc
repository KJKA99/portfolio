BEEP_LOOP1:
		ldi		r17,70
		BEEP_READY1:
		dec		r17
		cpi		r17,0
		breq	NOBEEP
		BEEP1:		
		call	FREQUENCY_LOAD2	
		sbi		PORTB,PB1
		sbi		DDRB,1
		call	WAIT
		cbi		PORTB,PB1
		jmp		BEEP_READY1
		NOBEEP:
		call	SPEAKER_HALFHALF
		cbi		PORTB,PB1
		cbi		DDRB,1
		call	SPEAKER_HALFHALF
		clr		r17
		ret

FREQUENCY_LOAD1:	
		push	r16															
		ldi		r16, 255

		FREQUENCY_1:
		dec		r16
		cpi		r16,0
		brne	FREQUENCY_1
		pop		r16
		ret

FREQUENCY_LOAD2:	
		push	r16														
		ldi		r16,100

		FREQUENCY_2:
		dec		r16
		cpi		r16,0
		brne	FREQUENCY_2
		pop		r16
		ret