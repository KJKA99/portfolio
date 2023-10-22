#include <mtc.h>
#include <dos.h>
#include <libepc.h>

#include "serial.h"

/* Function prototypes for the threads */
void OutBound(void) ;
void InBound(void) ;
void DisplayElapsedTime(void) ;

PRIVATE void SerialInit(void) ;

QUEUE *inbound_queue ;

int main()
{
  inbound_queue = QueueCreate(sizeof(char), 20) ;
  
  ClearScreen(0x07) ;
  SetCursorVisible(TRUE) ;
  SerialInit() ;
  
  MtCCoroutine(OutBound()) ;
  MtCCoroutine(InBound()) ;
  MtCCoroutine(DisplayElapsedTime());
  //MtCYield(DisplayElapsedTime());

  
  return 0 ;
}

void DisplayElapsedTime(void) {

  // Thread-specific initialization (if any) goes here

  DWORD32 timer;
  WINDOW *OpenWindow;
  OpenWindow = WindowCreate("Time", 22, 24, 0, 79); // Öppna fönster

  if (!OpenWindow) {

 return;

  }
 
  while (1) { // Compiler does not like for (;;) switch to while as it also works (even if not prefered)
    //compute hh:mm:ss;

    DWORD32 seconds = Milliseconds() / 1000;
    DWORD32 seconds1 = (seconds % 60);
   // DWORD32 minutes = 0;
//    DWORD32 hours = 0;

    /*if (seconds == 59) {
      minutes++;

      if (minutes == 60) {
        minutes = 0;
        hours = hours + 1;
      }

      if (hours == 24) {
        hours = 0;
        minutes = 0;
      } */
    
    DWORD32 minutes = (seconds/60) % 60;
    DWORD32 hours = (seconds/3600) % 24;
    //timer := 1 second;
    timer = Now_Plus(1);

    //display hh:mm:ss;
    WindowSelect(OpenWindow); 
    PutUnsigned(hours, 10, 2); // Put hour + format (base 10, width 2)
    PutString(":");
    PutUnsigned(minutes, 10, 2); // Put hour + format (base 10, width 2)
    PutString(":");
    PutUnsigned(seconds1, 10, 2); // Put hour + format (base 10, width 2)

    while (Milliseconds() < timer) {
      MtCYield(); //yield to other threads;
    }
   }
  }


PRIVATE void SerialInit(void)
{
  /* Disable interrupts during initialization */
  disable() ;
  
  /* 9600 baud */
  outportb(SER_LCR, SER_LCR_DLAB) ;
  outportb(SER_DLO, 12) ;
  outportb(SER_DHI, 0) ;
  
  /* 8 data bits, even parity, 1 stop bit */
  outportb(SER_LCR, 0x1B) ;
  
  /* Enable only receiver data ready interrupts */
  outportb(SER_IER, 0x01) ;
  
  /* Request to send, data terminal ready, enable interrupts */
  outportb(SER_MCR, SER_MCR_RTS|SER_MCR_DTR|SER_MCR_OUT2) ;
  
  /* Store address of ISR in IDT */
  SetISR(IRQ2INT(SER_IRQ), SerialISR) ;
  
  /* Unmask the UART's IRQ line */
  outportb(0x21, inportb(0x21) & ~SER_MSK) ;
  
  /* Re-enable interrupts */
  enable() ;
}
