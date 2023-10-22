.dseg

.equ MOSI = PB3
.equ MISO = PB4
.equ SCLK = PB5
.equ SPI_DDR = DDRB
.equ CS = PB2

.cseg

SPI_MASTER_INIT:
		ldi		r17, (1<<MOSI)|(1<<SCLK)|(1<<PB2)
		out		SPI_DDR, r17
		ldi		r17, (1<<SPE) | (1<<MSTR) | (1<< SPR0)
		out		SPCR, r17
		ret

RETREIVE_PIXEL:
		ldi		r19,12
	
MATRIX_LOOP: 
		ld		r16,Z+
		call	SPI_TRANSMIT
		clr		r16
		dec		r19
		cpi		r19, 0
		brne	MATRIX_LOOP
		
SPI_SEND:
		sbi		PORTB,PB2
		nop
		cbi		PORTB,PB2
		ret
	
SPI_TRANSMIT:
		out		SPDR, r16

WAIT_TRANSMIT:
		in		r16,SPSR
		sbrs	r16, SPIF
		rjmp	WAIT_TRANSMIT
		ret

SHORT_WAIT:
		adiw	r24,8 
		brne	SHORT_WAIT
		ret
