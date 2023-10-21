.equ FN_SET = $2B
.equ DISP_ON = $0F
.equ LCD_CLR = $01
.equ E_MODE = $06
.equ HOME = $02
.equ E = 1
.equ RS = PB0
.equ SECONDS_TICK = 62500-1
.equ HOURHIGH = $115
.equ HOURLOW = $114
.def DELAY_REG = r24


			.dseg
.org $110

TIME: .byte 6
LINE: .byte 17  

.cseg


	call VACCUM

/////////// TID SATT TILL 00:00
TIME_SET_MANUALLY:
	ldi XH,HIGH(TIME)
	ldi XL,LOW(TIME)
	ldi r20,$00
	st X+,r20
	ldi r20,$00
	st X+,r20
	ldi r20,$00
	st X+,r20
	ldi r20,$00
	st X+,r20
	ldi r20,$00
	st X+,r20
	ldi r20,$00
	st X+,r20


// STACK & PORT INIT
STACK_PORT_INIT:
		ldi		r16,HIGH(RAMEND)	;Laddar in den h�gre delen av RAMEND till r16 (d� RAMEND �r 16 bitar). Beh�vs f�r att f�rbereda stack.
		out		SPH,r16				; Skriver ut till I/O fr�n r16
		ldi		r16,LOW(RAMEND)		; ------------------------ II -------------------- L�GRE
		out		SPL,r16				; ------------------------ II --------------------
					
					ldi		r16,$FF
					out		DDRB,r16
					ldi		r16,$FF
					out		DDRD,r16
										;ldi		r16,1
										;out		DDRC,r16
										;call	WAIT
			
SETUP:
call WAIT
call TIMER1_INIT
call BACKLIGHT_ON
call WAIT
call LCD_INIT
call WAIT

MAIN:
call WAIT
call LCD_HOME
call TIME_TICK
call WAIT
call TIME_FORMAT
call LINE_PRINT
call WAIT
call WAIT_2
jmp MAIN

////////////////////////////////////// STEG 3: Initiera LCD DISPLAY ///////////////////////////////
; L�gger .equ h�gst upp i koden f�r struktrurm�ssiga anledningar, $-v�rden ifyllda enligt tolkning fr�n databladet (hoppas det st�mmer haha...)

LCD_WRITE4: //Manipulation av bytes, endast en nible d� det �r 4 bits mode
	call WAIT
	sbi PORTB,E
	out PORTD,r16
	cbi PORTB,E
	call WAIT
	ret

LCD_WRITE8:
	call WAIT
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
	ldi r16,$30 ; s.k. "Magi" egentligen en konstant som tillverkaren har f�r att m�jlig�ra BCD i displayen, vi kan naturligtvis ta vara p� detta :)
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

///////////////////// B�rja i kolumn 0 ///////////////////////////////

LCD_HOME:
   
   ldi r16, HOME
   Call LCD_COMMAND
   ret

///////////////////// T�mma sk�rm /////////////////
LCD_ERASE:
   ldi r16, LCD_CLR ; h�gst upp i kod och d�refter, se datablad
   Call LCD_COMMAND
   ret

	////////////////////////////// DEL 4: Utskrift
/////////////////// a.k.a "detektiven" som letar efter vad vi beh�ver f�r att sedan f�ra vidare info till
LINE_PRINT:
    Call LCD_HOME  // B�rja i kolumn 0
    ldi ZH, HIGH(LINE) // Null-terminerade str�ngen Z pekar p� fr�n SRAM; H�G
    ldi ZL, LOW(LINE)  // Null-terminerade str�ngen Z pekar p� fr�n SRAM; L�G
    Call LCD_PRINT     // Skicka till "skrivaren"
ret

// Tack vare LINE_PRINT vet vi vad som ska skrivas ut. Nu skriver vi ut det. P�minner en del om morselabben faktiskt
LCD_PRINT:

   ld r16, Z+  // 
   cpi r16, $00
   breq DONE  
   Call LCD_ASCII
   rjmp LCD_PRINT

DONE:

   ret

//////////////////////////////////// TIDSUPPR�KNING DEL 5/////////////////////////////////////////////////////////////////
; L�gger .byte h�gst upp i koden f�r strukturm�ssiga anledningar
; Beh�vs 6 bytes d� 00:00:00 inlagt i dseg
; Skapar flera subrutiner d� tiotalen kommer bete sig olika fr�n entalen
	TIME_TICK:
	call WAIT
	ldi XH,HIGH(TIME)
	ldi XL,LOW(TIME)

ENTAL:
	ld r16, X
	inc r16
	cpi r16, 10 // J�mf�r v�rdet i registret med 10
	brne KLAR
	clr r16 // om v�rdet �r = 10 s� ska den sl� �ver
	st X+, r16

TIOTAL:
	ld r16, X
	inc r16
	cpi r16, 6 // J�mf�r v�rdet i registret med 6
	brne KLAR 
	clr r16 // om v�rdet �r = 6 s� ska den sl� �ver
	st X+, r16
	jmp ENTAL

	 // "Klockan" beh�ver manipuleras d� det egentligen kommer 24 efter 23, osv
   // "Skapar 23:59:59 -> 00:00:00

KLAR:
   st X, r16
   rcall MIDNATT
   ret

	MIDNATT:
	lds r16, HOURLOW
	subi r16,4
	lds r16,HOURHIGH
	sbci r16,2
	brne DONE
	clr r16
	sts HOURLOW,r16
	sts HOURHIGH,r16
	jmp DONE

	;TIME_TEST:
	;call TIME_TICK
	;jmp TIME_TEST				; <-------- BREAKPOINT!


////////////////////////////// DEL 6: TIDSFORMATTERING ////////////////////////////
; TIME formateras till en str�ng f�rdig f�r utskrift i LINE enligt HH:MM:SS

TIME_FORMAT:

   call TIME_FORMAT_INIT
   rcall TIME_FORMAT_SELECT
   ret

TIME_FORMAT_INIT:

   ldi YH, HIGH(TIME+6) ; Dina bytes d�rav +6
   ldi YL, LOW(TIME+6)	; Dina bytes d�rav +6
   ldi ZH, HIGH(LINE)
   ldi ZL, LOW(LINE)
   ret

TIME_FORMAT_SELECT:

   ldi r17, 3

NEXT_SEGMENT:

   rcall SEGMENT_FORMAT
   dec r17
   brne NEXT_SEGMENT
   clr r16
   st -Z, r16
   ret

SEGMENT_FORMAT:

   push r17		; Skriver ut till stack
   ldi r17, 2

NEXT_NUMBER_FORMAT:

   ld r16, -Y
   subi r16, -$30
   st Z+, r16
   dec r17
   brne NEXT_NUMBER_FORMAT
   ldi r16, $3A
   st Z+, r16
   pop r17 ; "Restoring what is on top of the stack into a register (i omv�nd ordning fr�n push
   ret

   ///////////////////////////////////////  DEL 7: AVBROTT
; @16/256 MHz
; "Koden anv�nder mikrokontrollerns interna 16-bitars timer f�r att generera avbrott varje sekund"
; L�gger .equ h�gst upp i koden f�r struktrurm�ssiga anledningar
TIMER1_INIT:

   ldi r16 ,(1<<WGM12)|(1<<CS12) ; CTC, prescale 256
   sts TCCR1B ,r16
   ldi r16 , HIGH (SECONDS_TICK)
   sts OCR1AH ,r16
   ldi r16 ,LOW(SECONDS_TICK)
   sts OCR1AL ,r16
   ldi r16 ,(1<< OCIE1A)		; Allow to interrupt
   sts TIMSK1 ,r16
   ret
////////////////////////// RENSA I SRAM ///////////////////////////////////////////////////////////

VACCUM:

   ldi r17, 30
   Call clear
   ret

CLEAR:

   ldi XH, HIGH(TIME)
   ldi XL, LOW(TIME)
   ldi r16, $00

CLEAR_1:

   st X+, r16
   dec r17
   brne CLEAR_1
   ret
///////////////////////////// F�RDR�JNINGSBYGGSTENAR //////////////////////////////////////////
WAIT:
   sbiw DELAY_REG, 50  // 2ms
   brne WAIT
   ret

WAIT_2:
    ldi r17,209
DELAY_1:
    ldi r18,255
DELAY_2:
    dec r18
    brne DELAY_2
    dec r17
    brne DELAY_1
    ret

//////////////////////////////////////////// BYGGSTENAR ////////////////////////////////////////////
LCD_ASCII:
   sbi PORTB, RS
   Call LCD_WRITE8
   ret

LCD_COMMAND:
   cbi PORTB, RS
   Call LCD_WRITE8
   ret
///////////////////////////////////////////////////////////////////////////////////////////////





//////////////////////////// TESTRUTIN /////////////////////////////////
;EXIT:
;call BACKLIGHT_OFF
;jmp EXIT
//////////////////////////// TESTRUTIN ////////////////////////////////
;WAIT:
;	sbiw	DELAY_REG,2
;	brne	WAIT
;	ret

///////////////////////////////////////////////////////////////// TEST AV BACKLIGHT /////////////////////////////////////////////////

;PRE_AGAIN:
;	ldi r19,100
;	call AGAIN
;	ret

;AGAIN:
;	dec r19
;	call WAIT
;	call BACKLIGHT_OFF
;	call WAIT
;	call BACKLIGHT_ON
;	cpi r19,0
;	brne AGAIN
;	ret
///////////////////////////////////////////////////////////////// TEST AV BACKLIGHT /////////////////////////////////////////////////

;BACKLIGHT_ON:
;	sbi PORTB,2
;	ret

;BACKLIGHT_OFF:
;	cbi PORTB,2
;	ret

