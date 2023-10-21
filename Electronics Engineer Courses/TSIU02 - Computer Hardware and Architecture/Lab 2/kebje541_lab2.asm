; ------------------------------------------------------------------------- INIT -------------------------------------------------------------------
		.equ DELAY_TEXT = 3						; Incr. med 1 dubblar tid f�r TEXTEN


		call	HW_INIT
		jmp		MAIN

HW_INIT:
		ldi		r16,0b00010000	; 0-7
		out		DDRB,r16	; Pin 4
		ret
MAIN:

		ldi		r16,LOW(RAMEND)					; Laddar in den h�gre delen av RAMEND till r16 (d� RAMEND �r 16 bitar). Beh�vs f�r att f�rbereda stack.
		out		SPL,r16							; Skriver ut till I/O fr�n r16
		ldi		r16,HIGH(RAMEND)				; Laddar in den h�gre delen av RAMEND till r16 (d� RAMEND �r 16 bitar). Beh�vs f�r att f�rbereda stack.
		out		SPH,r16							; Skriver ut till I/O fr�n r16
		ldi		ZH,high(MESSAGE*2)					; f�rsta tecken i Morsetexten laddas in in i ZH
		ldi		ZL,low(MESSAGE*2)					; f�rsta tecken i Morsetexten laddas in in i ZL
		ldi		r20,DELAY_TEXT					; beh�vs en delay f�r att kunna skilja
		call	MORSE



; ------------------------------------------------------------------------- COMMANDS ------------------------------------------------------------------------------------
MORSE:
		call	GET_CHAR						; Kallar p� GET_CHAR som plockar ut tecken fr�n Z pekaren och l�gger in teckenv�rdet i r16
		cpi		r16,$20							; J�mf�r teckenv�rdet i r16 med 20 (dvs mellanlslag)
		breq	SPACE							; loopar tills vi st�ter p� $20-d� till SPACE
		cpi		r16,$00							; J�mf�r teckenv�rdet i r16 med 0 (om det �r 0/null s� �r texten "f�rdig"
		;;breq MAIN								; F�r videons skull...
		;breq	SLUT							; Klar? JA! -> S.L.U.T
		call	LOOKUP							
		call	GET_BIT
		call	MORSE							; Vi k�r igen
		ret

SLUT:
	jmp SLUT

GET_CHAR:
		lpm		r16,Z+							; plockar ut tecken fr�n Z pekaren och l�gger in teckenv�rdet i r16. �kar d�refter med 1.
		ret
	
LOOKUP:											; Kollar upp, och ska �vers�tta ASCII till HEXA
		push	ZH								; Skriver ut ZH till stacken 
		push	ZL								; Skriver ut ZL till stacken 
		subi	r16,'A'						; offset i alfabetet
		ldi		ZH,high(BTAB*2)				; ZH laddar in alfabetet/ZH laddar in h�gre delen
		ldi		ZL,low(BTAB*2)					; ZL laddar in alfabetet/ZL laddar in l�gre delen
		add		ZL,r16							; Adderar v�rdet i r16 till ZL utan carry
		brcs	CLEAR_CARRY
		lpm		r17,Z							; Plocka ut fr�n flash, spara in registret
		pop		ZL								; "Restoring what is on top of the stack into a register (i omv�nd ordning fr�n push)
		pop		ZH								; "Restoring what is on top of the stack into a register (i omv�nd ordning fr�n push)
		ret

		CLEAR_CARRY:
		ret
SPACE:										; Mellanslag ger en delay
		ldi		r18,7							
		call	DELAY							
		jmp		MORSE

NEXT_CHAR:
		ldi		r18,3
		call	DELAY
		ret
; --------------------------------------------------------------------------- SEND -----------------------------------------------------------------------------
SEND:
GET_BIT:
		cpi		r17,0b10000000		; J�mf�r
		breq	NEXT_CHAR	; se ovan kommentar, forts�tter d�r och kallar p� NEXT_CHAR
		lsl		r17			; f�rflytta i register, t.ex 1001 0001 -> 0010 0010 d�r 1an -> C
		brcs	LONG_BEEP	; se ovan kommentar, om C = 1 branch till LONG_BEEP. BRCS = BRANCH IF CARRY SET.

SHORT_BEEP:
		ldi		r18,1						
		jmp		SEND_BEEP

LONG_BEEP:
		ldi		r18,3		; Ljudet blir 3x l�ngre �n kort "beep"

SEND_BEEP:
		call	BEEP		;Enablar ljudet
		call	DELAY
		ldi		r18,1
		call	NOBEEP		;Disable
		call	DELAY
		jmp		GET_BIT
							; --------------------------------------------------------------------------- PORT CONFIG ------------------------------------------------------------------------------
							BEEP:
									sbi		PORTB, 4	
									ret

							NOBEEP:
									cbi		PORTB, 4
									ret
; ------------------------------------------------------------------------  DELAYS -------------------------------------------------------------------------------------
DELAY:
		mul		r18, r20
		mov		r18, r0

DELAY_2:
		adiw	r25:r24,1
		breq	DELAY_3
		jmp		DELAY_2

DELAY_3:
		dec		r18
		brne	DELAY_2
		ret
; ------------------------------------------------------------------------- TEXT & TABLE ------------------------------------------------------------------------------------

MESSAGE:											; Meddelande
		.db		"KEBJE KEBJE KEBJE",$00

		.org	 0x100
BTAB:											; Alfabetet
		.db		$60,$88,$A8,$90,$40,$28,$D0,$08,$20,$78,$B0,$48,$E0,$A0,$F0,$68,$D8,$50,$10,$C0,$30,$18,$70,$98,$B8,$C8
;				A	B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z
;				+0	+1	+2	+3	+4	+5	+6	+7	+8	+9	+10	+11	+12	+13	+14	+15	+16	+17	+18	+19	+20	+21	+22	+23	+24	+25
