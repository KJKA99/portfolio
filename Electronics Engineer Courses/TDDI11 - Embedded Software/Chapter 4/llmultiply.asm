;
;  Test cases. All numbers are in hex.
;
;      111122223333 *     555566667777 =          5B061D958BF0ECA7C0481B5
;  3456FEDCAAAA1000 * EDBA00112233FF01 = 309A912AF7188C57E62072DD409A1000
;  FFFFEEEEDDDDCCCC * BBBBAAAA99998888 = BBBB9E2692C5DDDCC28F7531048D2C60
;  FFFFFFFFFFFFFFFF * FFFFFFFFFFFFFFFF = FFFFFFFFFFFFFFFE0000000000000001
;  00000001FFFFFFFF * 00000001FFFFFFFF = 0000000000000003FFFFFFFC00000001
;  FFFEFFFFFFFFFFFF * FFFF0001FFFFFFFF = FFFE0002FFFDFFFE0001FFFE00000001
;

;  void llmultiply(unsigned long long int l1,
;                  unsigned long long int l2,
;                  unsigned char *result);
        
;  a = AH * (2 << 32) + AL
;  b = BH * (2 << 32) + BL
;        
;  a * b = (AH * BH            * (2 << 64)) +
;          (AH * BL + AL * BH) * (2 << 32)  +
;           AL * BL

; For more infromation, see the lab manual!
        
	SECTION .data



	SECTION .text
	ALIGN	16
	BITS	32

	;; To access parameter BH on the stack you do
	;;   MOV EAX, [EBP + 20]
	;; Replace the zero below with the correct value to be able
	;; to write your assembly code a little bit more readable: 
	;;   MOV EAX, [EBP + BH_OFF]
AL_OFF	EQU     8	; Offset from EBP to low  bits of a (aL)
AH_OFF	EQU     12	; Offset from EBP to high bits of a (aH)
BL_OFF	EQU     16	; Offset from EBP to low  bits of b (bL)
BH_OFF	EQU     20	; Offset from EBP to high bits of b (bH)
RES_OFF	EQU     24	; Offset from EBP to result array pointer
						;    ^^^^^ Replace 0 with correct values above
     
	GLOBAL llmultiply

llmultiply:
	PUSH EBP
	MOV EBP,ESP
	MOV EAX,0
	MOV EBX,0
	MOV EDX,0
	MOV ECX,[EBP+RES_OFF]
	MOV [ECX],EAX
	MOV [ECX+4],EAX
	MOV [ECX+8],EAX
	MOV [ECX+12],EAX


	MOV EAX, [EBP+AL_OFF]
	MOV EDX, [EBP+BL_OFF]
	MUL EDX ;stores in EDX:EAX
	MOV [ECX],EAX ;places first 32bits out of 128 
	MOV [ECX+4],EBX ;places first 32bits out of 128 


	push EDX

	;allt ovan är korrekt

	MOV EAX, [EBP+AL_OFF] 
	MOV EDX, [EBP+BH_OFF]
	MUL EDX

	push EDX
	push EAX


	MOV EAX, [EBP+AH_OFF] 
	MOV EDX, [EBP+BL_OFF]
	MUL EDX ;EDX:EAX

	pop ECX ;is (AlBh)l
	pop EBX ;is (AlBh)h
 
	ADD EAX,ECX
	ADC EDX,EBX
	JNC NOCARRY
		XOR ECX,ECX
		inc ECX ;ECX = 1
		jmp ISCARRY 
	NOCARRY:
	XOR ECX,ECX
	ISCARRY:
	pop EBX ;is (AlBl)h
	push EDX ;(AlBh)h + (AhBl)h
	push EAX ;(AlBh)l + (AhBl)l
	
	MOV EAX,[EBP+AH_OFF] 
	MOV EDX,[EBP+BH_OFF]
	MUL EDX ;EDX:EAX
	add EDX, ECX ; good
	pop ECX ;is (AlBh)l + (AhBl)l
	push EAX
	add EBX,ECX ;om denna får carry 
	JNC NOCARRY2
		XOR EAX,EAX ;= 0
		inc EAX ;is carry  +1 för res3 kan bli 0
		jmp ISCARRY2
	NOCARRY2:
	XOR EAX,EAX 
	ISCARRY2:

	MOV ECX,[EBP+RES_OFF]
	MOV [ECX+4],EBX  ;in res2

	pop EBX
	pop ECX

	ADD ECX, EAX;med carryn
	ADC ECX,EBX  ;ska bli res3
	JNC NOCARRY3
		XOR EAX,EAX ;= 0
		inc EAX ;is carry  +1 för res3 kan bli 0
		jmp ISCARRY3
	NOCARRY3:
	XOR EAX,EAX 
	ISCARRY3: 
	ADD EDX,EAX ; blir noll

	MOV EAX,[EBP+RES_OFF]
	MOV [EAX+8],ECX ; in res3
	MOV [EAX +12],EDX   ;in res4


	POP EBP				; restore EBP reg
	RET				;  return
