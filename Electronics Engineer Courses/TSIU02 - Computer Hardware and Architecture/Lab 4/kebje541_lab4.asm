jmp SETUP

/////////////////////////////////////////// DEL 0: BYGGSTENAR ////////////////////////////////////////////

.equ FN_SET = $2B
.equ DISP_ON = $0F
.equ LCD_CLR = $01
.equ E_MODE = $06
.equ E = $01
.equ RS = $00

.dseg
COLUM:
.byte 17
.cseg

SETUP:
	call STACK_PORT_INIT 
	call LCD_INIT 
	ldi ZH,HIGH(COLUM) 
	ldi ZL,LOW(COLUM)
	ldi r16,'Z'
	ldi r28,0
	call LETTERS
	jmp MAIN 

	///////////////////////////////////////////////////////////////// Huvvudprogrammet //////////////////////////////////////////////////////////////////////////////////////////

MAIN:
call KEY_READ 
call LCD_COL
jmp MAIN 

STACK_PORT_INIT: 
	ldi r16,0b00000111 
	out DDRB,r16 
	ldi r16,0b11110000 
	out DDRD,r16 
	ret

LCD_ASCII:
   sbi PORTB, RS
   Call LCD_WRITE8
   ret

LCD_COMMAND:
   cbi PORTB, RS
   Call LCD_WRITE8
   ret

BACKLIGHT_OFF: //Rutin för backlight off till LCD-display
	cbi PORTB,2
	jmp BACKLIGHT_RETURN

BACKLIGHT_RETURN:
	ret

WAIT: //4 milisekunders delay
	sbiw r24,4
	brne WAIT
	ret

////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////// Initiera LCD DISPLAY ///////////////////////////////
; Lägger .equ högst upp i koden för struktrurmässiga anledningar, $-värden ifyllda enligt tolkning från databladet (hoppas det stämmer haha...)

LCD_WRITE4: //Manipulation av bytes, endast en nible då det är 4 bits mode
sbi PORTB,E
out PORTD,r16
cbi PORTB,E
call WAIT
ret

LCD_WRITE8:
call LCD_WRITE4
swap r16
call LCD_WRITE4
swap r16
ret

LCD_INIT:
// Turn backlight on
BACKLIGHT_ON:
sbi PORTB,2
// Wait for LCD ready
call WAIT

// Initiate 4-bit mode
ldi r16,$30 ; s.k. "Magi" egentligen en konstant som tillverkaren har för att möjligöra BCD i displayen, vi kan naturligtvis ta vara på detta :)
call LCD_WRITE4
call LCD_WRITE4
call LCD_WRITE4
ldi r16,$20
call LCD_WRITE4


// Function set: 4-bit mode, 2 line, 5x8 font
ldi r16,FN_SET
call LCD_COMMAND

// Display on, cursor on, cursor blink
ldi r16,DISP_ON
call LCD_COMMAND

// Clear display
ldi r16,LCD_CLR
call LCD_COMMAND

// Entry mode: Increment cursor, no shift
ldi r16,E_MODE
call LCD_COMMAND
ret


//////////////////////////////////////////// DEL 1 ////////////////////////////////////////////////

LINE_PRINT: 
ldi ZH,HIGH(COLUM)
ldi ZL,LOW(COLUM)
call LCD_PRINT_HEX
ret

LCD_PRINT_HEX: //Rutin som skriver ut på LCD-display
call LCD_ASCII
ret


LETTERS: //Rutin som hjälper till med tecken-hantering
inc r28
st Z+,r16
cpi r28,31
brne LETTERS
ldi ZH,HIGH(COLUM) //Laddar Z-pekare HÖG med COLUM
ldi ZL,LOW(COLUM) //Laddar Z-pekare LÅG med COLUM
ldi r18,0
ret

;LINE_PRINT
;ldi r16,$64
;call LCD_HEX_PRINT
;ret
// Tack vare LINE_PRINT vet vi vad som ska skrivas ut. Nu skriver vi ut det. Påminner en del om morselabben faktiskt
; Write hexadecimal
; In: r16, value
; Out: -
;LCD_HEX_PRINT:
;call NIB2HEX
;NIB2HEX:
;swap r16
;push r16
;andi r16, $0F
;ori r16,$30
;cpi r16,':'
;brlo NOT_AF
;subi r16,-$07
;NOT_AF:
;call LCD_ASCII
;pop r16
;ret


/////////////////////// DEL 2 //////////////////////////
; STARTA 8-bitars AD-omvandling
//////////////// COFIG ////////////////////

; REFS0 = AVcc
; 0 = Kanal 0
ADC_READ8:
ldi r16,(1 << REFS0)|(1 << ADLAR)|0 ; Kanal 0, 5 V ref, left adjust result
sts ADMUX,r16 ; Slår på; INTE IN/OUT
ldi r16,(1 << ADEN)|7 ;AD enable; ADPS2..0 = 111 => 7
sts ADCSRA,r16 ; Slår på
//////////////// ////////////////////
//START CONVERSION
CONVERT:
lds r16, ADCSRA
ori r16, (1 << ADSC)
sts ADCSRA,r16 ; Starta en omvandling ; AD START CONVERSION
ADC_BUSY:
lds r16, ADCSRA ;
sbrc r16, ADSC ; Skip if bit in register is cleared
jmp ADC_BUSY
; Omvandling klar, vi kan nu läsa av ett 8 bitars värde
lds r16, ADCH // sista 2 bitar i ADCL är irrelevant
ret

////////////////////////////////////////////// DEL 3 & 4 /////////////////////////////////////////////////////////////////////////////////////////////////////////////

// FUNCTIONSTEST FÖR AD OMVANDLARE; Se hur den reagerar på olika tryckknapp;AD_TEST:
;call ADC_READ8
;call LCD_ASCII
;jmp AD_TEST

;Använd sedan KEY: för rutinen KEY_READ: som väantar att tidigare knapp först slappts. KEY_READ: hanger alltså och garanterar en ny knappnedtryckning.

KEY_READ: 
	call KEY
	tst r16
	brne KEY_READ ; old key still pressed

KEY_WAIT_FOR_PRESS: 
	call KEY
	tst r16
	breq KEY_WAIT_FOR_PRESS ; No key pressed
	ret

KEY: //KOLLA-LADDA-OMVANDLA
call ADC_READ8
ldi r17,217
cp r16,r17
brsh KEY_0
;--------------------------------------------------
ldi r17,159
cp r16,r17
brsh KEY_1 
;--------------------------------------------------
ldi r17,76
cp r16,r17
brsh KEY_2
;--------------------------------------------------
ldi r17,50
cp r16,r17
brsh KEY_3 
;--------------------------------------------------
ldi r17,24
cp r16,r17
brsh KEY_4 
;--------------------------------------------------
ldi r17,0
cp r16,r17
brsh KEY_5 
;--------------------------------------------------
jmp KEY

KEY_0:
ldi r16,0
jmp KEY_RET
;-------------------------------------------------
KEY_1:
ldi r16,1
jmp KEY_RET
;-------------------------------------------------
KEY_2:
ldi r16,2
jmp KEY_RET
;-------------------------------------------------
KEY_3:
ldi r16,3
jmp KEY_RET
;-------------------------------------------------
KEY_4: 
ldi r16,4
jmp KEY_RET
;-------------------------------------------------
KEY_5: 
ldi r16,5
jmp KEY_RET
;-------------------------------------------------
KEY_RET:
ret
;-------------------------------------------------

////////////////////////////////////////////// DEL 5 /////////////////////////////////////////////////////////////////////////////////////////////////////////////


LCD_COL: // Kolla, tryckt?
	cpi r16,2 
	breq LEFT 
	cpi r16,5 
	breq RIGHT 
	cpi r16,1 
	breq SELECT
	cpi r16,3 
	breq UP 
	cpi r16, 4
	breq DOWN 

LEFT: // Kolla, tryckt?
	cpi r18,0
	breq LCD_COL_RETURN
	ld r16,-Z
	ld r16,-Z
	ldi r16,0b00010000
	call LCD_COMMAND 
	dec r18
	jmp LCD_COL_RETURN

RIGHT: // Kolla, tryckt?
	cpi r18,15
	breq LCD_COL_RETURN
	ld r16,Z+
	ld r16,Z+
	ldi r16,0b00010100
	call LCD_COMMAND
	inc r18
	jmp LCD_COL_RETURN

SELECT: // Kolla, tryckt?
	sbis PORTB, 2
	jmp BACKLIGHT_ON 
	jmp BACKLIGHT_OFF 
	jmp LCD_COL_RETURN

UP: // Kolla, tryckt?
	ld r16,Z
	cpi r16,'Z'
	brne NOT_Z_A

Z_TO_A: // A-Z
	ldi r16,'A'
	jmp LCD_COL_UPDOWN_RETURN

NOT_Z_A:
	inc r16
	jmp LCD_COL_UPDOWN_RETURN 

DOWN: 
	ld r16,Z
	cpi r16,'A'
	brne NOT_A_Z 
A_TO_Z: 
	ldi r16,'Z'
	jmp LCD_COL_UPDOWN_RETURN
NOT_A_Z:
	dec r16
LCD_COL_UPDOWN_RETURN:
	st      Z,r16
			call    LCD_ASCII
	ldi r16,0b00010000
	call LCD_COMMAND 
	jmp LCD_COL_RETURN
LCD_COL_RETURN:
	ret
