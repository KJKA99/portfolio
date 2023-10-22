TWI_INIT: 
		ldi		r16, 100
		sts		TWBR, r16
		ldi		r16, (0<<TWINT) | (1<<TWEN)
		sts		TWCR,r16
		ret

TWI_SEND:
		ldi		r16,(1<<TWINT) | (1<<TWSTA) | (1<<TWEN)		
		sts		TWCR, r16 
		call	W_WAIT2	
		
LOAD_SLA_W:
		lsl		r20
		sts		TWDR, r20 
		call	TX

LOAD_DATA:
		lds		r16, DATA
		sts		TWDR, r16
		call	TX

W_STOP:
		ldi		r16, (1<<TWINT) | (1<<TWEN) | (1<<TWSTO)
		sts		TWCR, r16
		ret

TX:
		ldi		r16, (1<<TWINT) | (1<<TWEN)
		sts		TWCR, r16

W_WAIT2: 
		lds		r24,TWCR	
		sbrs	r24,TWINT
		rjmp	W_WAIT2
		ret
