
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Kodsegment
.cseg

//jmp AVBROTT_ANIMATION
//.equ SECOND_TICKS0 = 60 //Ger en sekunds avbrott när TIMER1_INIT är inläst - @ 16/256 MHz
.equ SECOND_TICKS = 62500-1

AVBROTT_ANIMATION:
push r16				//Sparar en kopia
in r16,SREG				//Lägger in SREG
call TIME_TICK			//Kallar avbrottet(rutinen)
out SREG,r16			//Lagrar tillbaka SREG
pop r16					//Skickar till register r16
reti

TIME_TICK:				//Rutin för uppräckning av tid
push XL					//Sparar SREG i STACK
push XH					//Sparar SREG i STACK
push r16
//call RETREIVE_PIXEL

call DINO_ANIMATION1
//call DINO_ANIMATION2
//call DINO_ANIMATION3


KLAR:
st X,r16				//Ladda värdet i r16 till X-pekare
pop r16					//Pop register from STACK
pop XH					//Pop register from STACK
pop XL					//Pop register from STACK
ret

TIMER1_INIT:
//ldi r16,HIGH(RAMEND) //Förbereder pekare
//out SPH,r16
//ldi r16,LOW(RAMEND)
//out SPL,r16
ldi r16,(1<<WGM12)|(1<<CS12)	//CTC , prescale 256
sts TCCR1B,r16
ldi r16,HIGH(SECOND_TICKS)
sts OCR1AH,r16
ldi r16,LOW(SECOND_TICKS)
sts OCR1AL,r16
ldi r16,(1<<OCIE1A)				//allow to interrupt
sts TIMSK1,r16
ret