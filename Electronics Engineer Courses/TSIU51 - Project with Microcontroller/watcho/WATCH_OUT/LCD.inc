LCD_INIT:															
		call	DELAY_HALFHALF									
		ldi		r16,$30											
		call	LCD_WRITE4
		call	LCD_WRITE4
		call	LCD_WRITE4
		ldi		r16,$20											
		call	LCD_WRITE4
		ldi		r16,FN_SET									
		call	LCD_COMMAND										
		ldi		r16,DISP_ON											
		call	LCD_COMMAND											
		ldi		r16,LCD_CLR										
		call	LCD_COMMAND											
		ldi		r16,E_MODE										
		call	LCD_COMMAND											
		clr		r16													
		clr		r17
		clr		r20
		ret

LCD_GAMESTART: 
		push	ZH
		push	ZL
		ldi		ZH, HIGH(TEXTONE*2)
	    ldi		ZL, LOW(TEXTONE*2) 
		call	LCD_LINE_PRINT

		pop		ZL
		pop		ZH
		ret 

LCD_GAMEOVER:
		push	ZH
		push	ZL
        ldi		ZH, HIGH(TEXTTWO*2)
		ldi		ZL, LOW(TEXTTWO*2)
		call	LCD_LINE_PRINT
		pop		ZL
		pop		ZH
		ret

LCD_READY:
		push	ZH
		push	Zl
		ldi		ZH,HIGH(TEXTTHREE*2)
		ldi		ZL,LOW(TEXTTHREE*2)
		call	LCD_LINE_PRINT
		pop		ZL
		pop		ZH
		ret

LCD_LINE_PRINT:
		 call	LCD_HOME
		 call	LCD_PRINT 
		 ret

LCD_PRINT: 
		lpm		r16, Z+
		cpi		r16, $00
		breq	LCD_PRINT_DONE
		call	LCD_ASCH 
		rjmp	LCD_PRINT

LCD_PRINT_DONE:
		ret

LCD_ASCH:
		call	LCD_SEND_PREP
		lds		r16, LCD_DATA
		ori		r16, $01
		sts		LCD_DATA, r16 
		lds		r16, LCD_DATA2
		ori		r16, $01 
		sts		LCD_DATA2, r16
		call	LCD_SEND
		ret 
	
LCD_COMMAND:
		call	LCD_SEND_PREP
		lds		r16, LCD_DATA
		andi	r16, $FE
		sts		LCD_DATA, r16
		lds		r16, LCD_DATA2
		andi	r16, $FE
		sts		LCD_DATA2, r16 
		call	LCD_SEND
		ret 

LCD_WRITE: 
		sts		DATA, r16 
		ldi		r20, $20 
		call	TWI_SEND 
		ret 

LCD_WAIT:
		push	r24
		push	r25
		ldi		r24, $FF
		ldi		r25, $CF
LCD_W1:
		sbiw	r24, 1
		brne	LCD_W1
		pop		r25
		pop		r24
		ret         

LCD_CLEAR: 
		ldi		r16, LCD_CLR
		call	LCD_COMMAND
		call	LCD_WAIT
		ret

LCD_HOME: 
		ldi		r16, HOME
		call	LCD_COMMAND
		ret

LCD_SEND_PREP:
		mov		r17, r16
		andi	r16, $FD 
		ori		r16, $08 
		sts		LCD_DATA, r16
		swap	r17
		andi	r17, $FD
		ori		r17, $08 
		sts		LCD_DATA2, r17
		ret

LCD_SEND: 
		call	LCD_WRITE4
		lds		r16, LCD_DATA2
		sts		LCD_DATA, r16 
		call	 LCD_WRITE4
		ret

LCD_WRITE4:
        call	LCD_E_LOW
        call	LCD_E_HIGH
		call	LCD_E_LOW
		ret

LCD_E_LOW:
		lds		r16, LCD_DATA
		andi	r16, $FB 
		call	LCD_WRITE
		ret

LCD_E_HIGH: 
		lds		r16, LCD_DATA
		ori		r16, $0C
		call	LCD_WRITE
		ret
