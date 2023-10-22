
TABLE:
		.db $3F, $6, $5B, $4F, $66, $6D, $7D, $7, $7F, $67

SEG_7:		
		push	ZL
		push	ZH
		CONTINUE:
		call	COUNT_ENTAL
		lds		r21, ENTAL
		cpi		r21, 10
		brne	SKIP_TIO
		CALL	RESET_RIGHT
		CALL	COUNT_TIOTAL
		call	RESET_POINTER
		inc		r22
			
		SKIP_TIO:
		pop		ZH
		pop		ZL
		ret
		
COUNT_ENTAL:
		call	RESET_POINTER
		lds		r21, ENTAL
		inc		r21
		add		ZL,	r21
		sts		ENTAL, r21
		lpm		r23, Z+
		call	SEND_RIGHT
		ret

COUNT_TIOTAL:
		call	RESET_POINTER
		lds		r21, TIOTAL
		inc		r21
		add		ZL, r21
		sts		TIOTAL, r21
		lpm		r23, Z+
		call	SEND_LEFT
		clr		r21
		sts		ENTAL, r21
		lds		r21, ENTAL
		ret

SEND_LEFT: 
		ldi		r20, ADDRESS_2 
		sts		DATA, r23 
		call	TWI_SEND 
		ret

SEND_RIGHT:
		ldi		r20, ADDRESS_1 
		sts		DATA, r23	
		call	TWI_SEND 
		ret			

START_SCORE: 
		ldi		r23,$3F 
		call	SEND_LEFT 
		call	SEND_RIGHT 
		ret

RESET_RIGHT:
		ldi		r23,$3F 
		call	SEND_RIGHT 
		ret

RESET_POINTER: 
		ldi		ZH, HIGH(TABLE*2)	
		ldi		ZL, LOW(TABLE*2)		
		ret

CLEAR_LOCATION:
		clr		r22
		clr		r21  
		sts		ENTAL,r21 
		sts		TIOTAL, r21 
		ret
	