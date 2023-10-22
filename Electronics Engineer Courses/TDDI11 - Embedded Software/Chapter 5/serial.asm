		SECTION	.data
		EXTERN	inbound_queue	; (defined in main.C)
data		DB	0		; put rcvd byte here

		SECTION	.text
		ALIGN	16
		BITS	32

BASE_PORT	EQU	3F8h		; we have this in our lab // COM2

LSR_PORT	EQU	BASE_PORT+5
RBR_PORT	EQU	BASE_PORT
THR_PORT	EQU	BASE_PORT

; ---------------------------------------------------------------------
; void SerialPut(char ch)
; ---------------------------------------------------------------------
; This function uses programmed waiting loop I/O
; to output the ASCII character 'ch' to the UART.

		GLOBAL	SerialPut

SerialPut:	; <your code here>	; (1) Wait for THRE = 1
		mov DX, LSR_PORT 
		in AL, DX
	
		test AL, 0x20 ; bitwise AND of eax and ebx to check bit 5
		jz SerialPut ; bit not set, continue polling

		BIT_SET: ;THRE EQUAL TO 1, UART ready to transmit data
		mov DX, THR_PORT ; Move I/O port address of THR to DX, DX hold destination address Out instruction
		mov AL, [ESP+4] ; Al holds character written to UART, move character from stack
		OUT DX, AL ; Output to I/O port
		ret

; ---------------------------------------------------------------------
; void interrupt SerialISR(void)
; ---------------------------------------------------------------------
; This is an Interrupt Service Routine (ISR) for
; serial receive interrupts.  Characters received
; are placed in a queue by calling Enqueue(char).

		GLOBAL	SerialISR
		EXTERN	QueueInsert	; (provided by LIBPC)

SerialISR:	STI             	; Enable (higher-priority) IRQs 

		mov DX, LSR_PORT
		in Al, DX

		test Al,0x1
		jz SerialISR

		INTERRUPT:
		mov DX, RBR_PORT



		; <your code here>	; (1) Preserve all registers  - DONE
		pushad ; Preserve all general registers (EAX, ECX, EDX, EBX)
		; <your code here>	; (2) Get character from UART
		WAIT_FOR_DATA:
		mov DX, LSR_PORT ; Move value of adress
		in Al, LSR_PORT 
		test Al, 1 ; Test if bit == 1
		jz WAIT_FOR_DATA ; bit == 0

		mov DX, RBR_PORT
		in Al, DX ; Character read

		
		

		; <your code here>	; (3) Put character into queue 
		QUEUE:
		;mov DX,8
		SHIFT_AND_SEND:
		mov [data],al
		;dec DX
		push DWORD data ; Push adress of data
		push DWORD [inbound_queue] ; Push address of inbound queue

		;cmp DX,0 ; FOR LOOP
		;jz SHIFT_AND_SEND
		;ret
		

		; <your code here>	; Param #2: address of data
		; <your code here>	; Param #1: address of queue

		CALL	QueueInsert
		ADD	ESP,8

_Eoi:		; <your code here>	; (4) Enable lower priority interrupts
		sti ; Enable lower priority interrupts
		; <your code here>	;       (Send Non-Specific EOI to PIC) - DONE
		mov al, 0x20
		out 0x20, al
		; <your code here>	; (5) Restore all registers - DONE
		popad ; Restores all general registers (EAX, ECX, EDX, EBX)
		; <your code here>	; (6) Return to interrupted code
		iret
