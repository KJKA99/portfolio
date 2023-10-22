jmp HW_INIT

.org OC2Baddr
		jmp	AVBROTTSRUTIN				

.org 0x0020		
		jmp FPS_RUTIN

.dseg

.include "SPI.inc"
.include "AVBROTT.inc"
.include "AVBROTT_ROCK.inc"
.include "CHARACTER.inc"
.include "VIDEOMINNE.inc"
.include "LCD.inc"
.include "TWI.inc"
.include "SPEAKER.inc"
.include "START_END.inc"
.include "7_SEG.INC"

.equ	IM_SPEED = 2
.equ	ADDR_LCD = $20 
.equ	SLA_LCD_W = (ADDR_LCD << 1) | 0 
.equ	SLA_LCD_R = (ADDR_LCD << 1) | 1 
.equ	FN_SET = $2B 
.equ	E_MODE = $06
.equ	DISP_ON = $0F
.equ	LCD_CLR = $01
.equ	E = $01
.equ	HOME = $02
.equ	RS = PB0

.equ ADDRESS_1 = $25
.equ ADDRESS_2 = $24 


TEXTONE: 
		.db		"  GAME STARTED   ", $00

TEXTTWO: 
		.db		"   GAME OVER!    ",$00

TEXTTHREE:
		.db		"PRESS R TO START ",$00

.cseg
HW_INIT:
		
		call	TWI_INIT
		clr		r16
		call	SPI_MASTER_INIT
		clr		r16
		call	AVBROTTSRUTIN_INIT
		clr		r16
		call	FPS_INIT	
		clr		r16
		clr		r17
		call	SRAM_CLEAR
		call	CLEAR_SCREEN

MAIN_INIT:
		call	ANOD_INFO

GAME_INIT:
		call	START_SCORE 
		call	CLEAR_LOCATION 

		call	LCD_READY
		call	BUTTON_R
		call	LCD_GAMESTART
		call	NEW_GAME				

		call	LOAD_FLOOR
		call	LOAD_DINO
		call	ROCK
		sei

GAME_RUN:
		sbis	PIND,PD1
		call	DINO_JUMP
		lds		r16, HIT
		cpi		r16, 1
		sbrs	r16,0b00000001
		jmp 	GAME_RUN
	
END:	
		push	r16
		ldi		r16,10
		call	SRAM_CLEAR
		sts		STORE_SPEED, r16
LOST_SCREEN:
		dec		r16
		call	LOAD_DINO
		call	DELAY_HALFHALF
		call	GAME_OVER
		call	DELAY_HALFHALF
		cpi		r16,0
		brne	LOST_SCREEN
		pop		r16

		call	SRAM_CLEAR
		cli
		ldi		r16,0
		sts		HIT, r16
		sts		ROW, r16
		sts		STORE_SPEED, r16

		call	LCD_GAMEOVER
		call	LOST_GAME
		ldi		r18,3

	DELAY_LOOP:
		call	DELAY_HALFHALF
		dec		r18
		brne	DELAY_LOOP
		jmp		GAME_INIT
	
RESET_Z:
		ldi		r30, 0x50
		ldi		r31, 0x01
		ret

RESET_Y:
		ldi		r29, 0x01
		ldi		r28, 0x50
		ret

ANOD_INFO:
		push	YL
		push	YH
		push	r23
		ldi		YH,HIGH(VMEM)
		ldi		YL,LOW(VMEM)
		call	RESET_Y

		dec		YL
		ldi		r23, 0b11111110
		call	FOUR_STEP
		pop		r23
		pop		YH
		pop		YL
		ret

DELAY_HALFHALF:               
		push	r20
		push	r21
		push	r22

	    ldi     r20,5 
DELAY1_THREE:
		ldi     r21,245   
DELAY2_THREE:
		ldi     r22,255    
DELAY3_THREE:
		dec     r22          
		nop                    
		brne    Delay3_THREE          

		dec     r21         
		brne    Delay2_THREE        

		dec     r20         
		brne    Delay1_THREE        

		pop		r22
		pop		r21
		pop		r20
		ret

SPEAKER_HALFHALF:
		push	r16
		push	r17
		push	r18

		ldi		r16,16
SPEAKER1_THREE:
		ldi		r17,245
SPEAKER2_THREE:
		ldi		r18,255
SPEAKER3_THREE:
		dec		r18
		brne	SPEAKER3_THREE

		dec		r17
		brne	SPEAKER2_THREE

		dec		r16
		brne	SPEAKER1_THREE

		pop		r18
		pop		r17	
		pop		r16
		ret