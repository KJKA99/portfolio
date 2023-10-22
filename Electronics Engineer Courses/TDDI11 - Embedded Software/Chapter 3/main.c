#include <libepc.h>



int main(int argc, char *argv[])
{
	//+++++ Initialization +++++

	ClearScreen(0x07);
	SetCursorPosition(1, 1);
	DWORD32 stopTime = 0;
	QWORD64 initialCount = 0;
	QWORD64 finalCount = 0;
	QWORD64 x = 0;
	QWORD64 x_diff = 0;

	 //+++++ Estimate number of CPU cycles per second +++++
	// 1. init. variables and clear screen
	// 2. Enter loop, wait 1ms using Milliseconds()
	// 3. Check if time == 1000
	// 4. Yes, record current CPU cycles
	// 5. Divide by number to convert to ms to sec
	while (Milliseconds() < 1001) {

	  if (Milliseconds() == 1000)
	    {
	      x = CPU_Clock_Cycles();
	    }
	 }
     
	SetCursorPosition(2, 1);
	PutString("CPU cycles per second = ");
	PutUnsigned((DWORD32)(x / 1000000), 10, 8); // Should it not be 1000?
	PutString(" x 10^6 \n");

	//+++++ Estimate number of CPU cycles of some operation +++++

	// assignment 5

	x = CPU_Clock_Cycles();
	int y = 10;
	int z = 69;
	int s = 0;

	for (int i; i < 1000; i++) {

	  s = z*y;
	  s = z / y;
	  s = z + y;
	  s = z - y;
	}

	x_diff = CPU_Clock_Cycles() - x;
	
	SetCursorPosition(4, 1);
	PutString("Average number of CPU cycles per operation: ");	
	PutUnsigned(x_diff/5000, 10, 8);
	PutString("\n");	


	return 0;


}
