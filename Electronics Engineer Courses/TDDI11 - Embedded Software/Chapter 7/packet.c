#include <os_cpu.h>
#include <os_cfg.h>
#include <ucos_ii.h> /* os_c??.h must be included before ! */
#include <libepc.h>

#include "inbound.h"
#include "elapsed.h"
#include "serial.h"


void ReceivePackets(void)
{
  SerialInit() ;
  
  for (;;)
  {
    int type, byte, bytes ;
    BYTE8 *bfr ;
    
    if (SerialGet() != 0xFF)
      continue ;
    
    switch (type = SerialGet())
    {
      default:
        continue ;
      case 1:
      case 2:
        break ;
    }
    
    bytes = SerialGet();
    bfr = (BYTE8 *) malloc(bytes) ;
    if (!bfr)
    {
      for (;;)
        ;
    }
    
    for (byte = 0; byte < bytes; byte++)
    {
      bfr[byte] = SerialGet() ;
    }
    switch (type)
    {
      case 1:
        PostText(bfr) ;
        break ;
      case 2:
        PostTime(bfr) ;
        break ;
    }
  }
}

extern OS_EVENT* semaphore; // Declare variable

void SendPacket(int type, BYTE8 *bfr, int bytes)
{

  // Shared data or resources are protected by kernel mutex-es or semaphores
  // Assignment 2
  OSSemPend(semaphore, 0, NULL);
  /* 
  OSsemPend: function to requests semaphore access
  Semst: Semaphore object
  0: Wait indefinately until semaphore becomes available
  NULL: No additional parameters
*/

  // "To distinguish  ... sent in the following format. Send byte by calling SerialPut"
  // Assignment 1
  int i;
  SerialPut((char) 0xff); // Start flag 
  SerialPut((char) type); // 
  SerialPut((char) bytes);

      for (i = 0; i < bytes; i++) 
	SerialPut(bfr[i]);
      // Assignment 2
      OSSemPost(semaphore); // Reliquish ownership of semaphore
    

}