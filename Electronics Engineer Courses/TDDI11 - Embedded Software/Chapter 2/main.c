#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>

// Room Controls, in an infinite loops polls input switches, selectors, and sensors. Then it interprets the row data. Based on acquired information, the system
// makes decisions. These decisions are then used to set appropriate values for signals and warning lights as well as actuators such as cooler and heater. 

// In order to extract the row data from the input register and in order to figure out what row data means, please refer to the lab manual chapter 2.
// In order to figure out how to actuate the lights and AC system and in order to know which bits in the output register control which of the devices, please refer to the lab manual chapter 2.

// In reality, such an embedded application runs in an "infinite" loop. Moreover, the input and output directly communicate with pins on the processing unit's IC.
// this program, is adapted for simulation purpose, therefore the loop is stopped at the end for user to allow it to proceed. Moreover, the inputs and outputs are 
// connected to files instead of the physical world.

// compile and run:
// gcc main.c -std=c99
// ./a.out
// ./a.out >> displayLog.txt

// some notes:
// binary to hex conversion: 
// Group binaries in packs of four 0000 0000 0000 0000 
// From 0 to 9 in a pack maps to 0 to 9 in the corresponding hex digit
// example:
// binary packs: 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 
// hex digits:   0    1    2    3    4    5    6    7    8    9
// From 10 to 15 in a pack maps to A, B, C, D, E, and F in the corresponding hex digit
// example:
// binary packs: 1010 1011 1100 1101 1110 1111
// hex digits:   A    B    C    D    E    F

unsigned int readInput(unsigned int sampleIndex)
{
	char *line = NULL;
	size_t len = 0;
	ssize_t read;	
	unsigned int inputCurrent = 0;
	FILE *inputFile;
	inputFile = fopen("inputData.txt", "r");

	if (inputFile == NULL)
	{
	    printf("Cannot open the file!\n");
	    return(0x00000001 << 23); // bit 23 is not used by the switches or sensors. So can be used to report an error.
	}
	
	for(int currentIndex = 0; ;currentIndex++)
	{
		fscanf (inputFile, "%d", &inputCurrent);    
		 
		if (feof(inputFile)) 
		{
			fclose(inputFile);
			printf("Reached end of input file! sampleIndex=%d\n", sampleIndex);
			return(0x00000001 << 24); // bit 24 is not used by the switches or sensors. So can be used to report an error.
		}
		if(sampleIndex == currentIndex)		
		{
			printf("inputCurrent=%d\n", inputCurrent);
			break;
		}
	}
    	fclose(inputFile);
	return(inputCurrent);
}

int writeOutput(unsigned int outputCurrent, unsigned int sampleIndex)
{
	FILE *outputFile = fopen("outputLog.txt", "a");

	if (outputFile == NULL)
	{
	    printf("Cannot open the file!\n");
	    return(9);
	}
	if(sampleIndex == 0)
		fprintf(outputFile, "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");	

	fprintf(outputFile, "%d : Output Register = %d\n", sampleIndex, outputCurrent);

	fclose(outputFile);
	return(0);
}

int main(int argc, char **argv)
{	
	// variables related to input and sensors
	unsigned int inputRegister = 0;
	bool isLocked = false;	
	unsigned int fanSpeedSelector = 0;
	bool isAcOn = false;
	float temperatureDesired = 0;
	float temperatureMeasured = 0;
	unsigned int humiditySensor = 0;
	unsigned int humidityMeasured = 0;
	
	// variables related to decisions
	bool isGreenOn = false;
	bool isRedOn = false;
	unsigned int fanSpeed = 0;
	bool isHeaterOn = false;
	bool isCoolerOn = false;
	bool isHumidity2Low_n = true;
	bool isHumidity2High_n = true;

	// variables related to outputs
	unsigned int outputRegister = 0;

	// constants defining system behaviour
	static float Hysteresis_Cooler = 0.3;
	static float Hysteresis_Heater = 0.3;
	static unsigned int Humidity_2Low = 25;
	static unsigned int Humidity_2High = 60;

	// Other
	unsigned int sampleIndex = 0;

	while(true)
	{
		//++++++ Section 1. Read inputs and sensor data. Convert sensor data to meaningful information. ++++++//
		inputRegister = readInput(sampleIndex);
		// check if input is correctly read
		if(inputRegister >= (0x00000001 << 23))
			break;

		// Lock : XXXX XXXX XXXX XXXX XXXX XXXX XXXX XXXI , assuming that "I" is input bit (Lock) and "X" is a don't-care bit.
		// to extract isLocked which is the bit 0, we use a mask that is all 0 but at bit 0. Bit 0 is 1.
		// the mask is: 00...00 00001 in binary, which is a decimal 1. The hex equivalent is 0x00000001.
		// we use bitwise "and" operation to filter out all irrelevant bits in the "inputRegister". What remains is the isLocked value which must be converted to a boolean
		// comparison operations always return a boolean. (x == 1) returns "true" if x is one, otherwise it returns "false". The return value is assigned to "isLocked".
		isLocked = ((inputRegister & 0x00000001) == 0x00000001);		

		// Fan Speed Selector : XXXX XXXX XXXX XXXX XXXX XXXX XXXX IIIX , assuming that "I" is an input bit (for Fan) and "X" is a don't-care bit.
		// to extract fan speed selector value, we use a mask that is all 0 but at bits 1 to 3.
		// the mask is: 00...00 0000 0000 0000 1110 in binary. The hex equivalent is 0x0000000E.
		// we use bitwise "and" operation to filter out all irrelevant bits in the "inputRegister". Then we shift the remaining bits to end up with sensor data.
		// What remains is the speed selector value which must be interpreted according the table given in the lab manual.
		
		//fanSpeedSelector = (inputRegister & 0x0000000E) >> 1;

		// A better alternative is to fist shift the fan selector bits to LSB (Least Significant Bit) position and then filter unwanted remaining bits.
		// selector data is XX...XX XXXX  IIIX in binary, assuming that "I" are selector bits and "X" don't-care bits. We shift by 1, ending up as: XX...XX XXXX XIII.
		// The mask will be: 00...00 0000 0111. The hex equivalent is 0x0000007.
		fanSpeedSelector = inputRegister >> 1;
		fanSpeedSelector &=  0x00000007;

		// AC Selector : XXXX XXXX XXXX XXXX XXXX XXII IIII XXXX , assuming that "I" is an input bit (for AC) and "X" is a don't-care bit.
		// bit number 4 is AC on/off switch
		
		//	isAcOn = false; // Assignment
	  
		isAcOn = (((inputRegister & (0x1<<4))>>4) == 1);// Fixed
		
		// bits 5 to 9 indicate desired temperature
		//unsigned int temperatureDesired_tmp = 0; // Assignment
		// unsigned int temperatureDesired_temp = 1

		
		unsigned int temperatureDesired_temp = ((inputRegister & (0x1F << 5))>>5); // Fixed
  
   
		  


		
		//	temperatureDesired_tmp = 0x00000000; // Assignment
		float temperatureDesired_tmp = (temperatureDesired_temp)*0.5 + 14.5; // Fixed
		//printf("temperatureDesired_tmp casted to float=%f\n",(float)temperatureDesired_tmp); //for debug
		// According to equation 1:
		//	temperatureDesired = 0.0 ; // Assignment
		// According to equation 1:
		temperatureDesired = temperatureDesired_tmp ; // Fixed


		

		// Temperature sensor : XXXX XXXX XXXX XXII IIII IIXX XXXX XXXX , assuming that "I" is an input bit (temperature sensor) and "X" is a don't-care bit.
		// bits 10 to 17 indicate temperature value read from sensor
		// bits 10 to 12 are fractional part

		
		unsigned int temperatureMeasured_fractional = ((inputRegister & (7 << 10))>>10); // Fixed
	     
		// bits 13 to 17 are decimal part
		//	unsigned int temperatureMeasured_decimal = inputRegister ; // Assignment

		
unsigned int temperatureMeasured_decimal = ((inputRegister & (0x1F << 13))>>13); // Assignment vi skippar		
		// According to equation 2:
			// Assignment
			// Assignment
 
		temperatureMeasured = (temperatureMeasured_decimal+(temperatureMeasured_fractional*0.2)); // Assignment Fixed
		if ((temperatureMeasured_decimal + temperatureMeasured_fractional) == 31) 
	  temperatureMeasured = -1;
		if ((temperatureMeasured_decimal + temperatureMeasured_fractional) == 38) 
	  temperatureMeasured = 31;
	       
		
		// Humidity sensor : XXXX XXXX XIII IIXX XXXX XXXX XXXX XXXX , assuming that "I" is an input bit (humidity sensor) and "X" is a don't-care bit.
		// to extract humidity value, we use a mask that is all 0 but at bits 18 to 22.
		// the mask is: 00...0 0111 1100 0000 0000 0000 0000 in binary. The hex equivalent is 0x007C0000.
		// we use bitwise "and" operation to filter out all irrelevant bits in the "inputRegister". Then we shift the remaining bits to end up with sensor data.
		// What remains is the humidity sensor data value which must be converted to humidity percentage.		
		
		//humiditySensor = (inputRegister & 0x007C0000) >> 18;
		
		// A better alternative is to fist shift the sensor data to LSB (Least Significant Bit) position and then filter unwanted remaining bits.
		// sensor data is XX...XX XIII IIXX XXXX XXXX XXXX XXXX in binary, assuming that "I" are sensor data bits and "X" don't-care bits. We shift by 18, ending up as: XX...XX XXXI IIII.
		// The mask will be: 00...00 0001 1111. The hex equivalent is 0x0000001F.
		humiditySensor = inputRegister >> 18;
		humiditySensor &=  0x0000001F;

		// Converting sensor data (humiditySensor) to humidityValue percentage using equation 3.
		// Here we use shift and sum operations to implement multiplication. Some examples:
		//				(a * 2) = (a << 1)		//				(a * 3) = ((a << 1) + a)	
		//				(a * 4) = (a << 2)
		if (humiditySensor < 3)
			humidityMeasured = humiditySensor << 2; 
		else if (humiditySensor < 28)
			humidityMeasured = 8 + ((humiditySensor - 2) << 1) + (humiditySensor - 2);
		else if (humiditySensor < 31)
			humidityMeasured = 83 + ((humiditySensor - 27) << 2);
		else
			humidityMeasured = 100;
		
		//++++++ Section 2. Decide on outputs.  ++++++//
		// signal lights for lock
		if(isLocked)
		{
			isGreenOn = false;
			isRedOn = true;
		}
		else
		{
			isGreenOn = true;
			isRedOn = false;
		}
		
		// fan control
		// according tables given in the manual
		if(fanSpeedSelector == 7)
		  fanSpeed = 0;
		else if (fanSpeedSelector == 3) // Assignment // Fixed
			fanSpeed = 1; // Assignment // Fixed
		else if (fanSpeedSelector == 5) // Assignment // Fixed
			fanSpeed = 2; // Assignment // Fixed
		else
			fanSpeed = 3; // Assignment // Fixed

		// temperature and AC control
		if (isAcOn)
		{
			if((temperatureMeasured - temperatureDesired) > Hysteresis_Cooler)
			{
				isCoolerOn = true;
				isHeaterOn = false;
			}
			else if ((temperatureMeasured + Hysteresis_Cooler) < temperatureDesired)
			  	{
				isCoolerOn = false;
				isHeaterOn = true;
			}
			// Assignment//fixed	
			// Assignment//fixed	
		}			
		else
		{
			// Assignment	
			isHeaterOn = false;
			isCoolerOn = false;
		}
		if (isCoolerOn && (temperatureMeasured <= temperatureDesired))
		{
			isCoolerOn = false;
			//	isHeaterOn = false;
		}

		if (isHeaterOn && (temperatureMeasured >= temperatureDesired))
		{
		  //	isCoolerOn = false;
			isHeaterOn = false;
		}
		
		// Assignment	Fixed
		// Assignment	Fixed

		// humidity warning:
		if(humidityMeasured < Humidity_2Low)
		{
			isHumidity2Low_n = false;
			isHumidity2High_n = true;
		}
		else if(humidityMeasured > Humidity_2High)
		{
			isHumidity2Low_n = true;
			isHumidity2High_n = false;
		}
		else
		{
			isHumidity2Low_n = true;
			isHumidity2High_n = true;
		}

		//++++++ Section 3. Write outputs.  ++++++//
		// clear previous outputs
		outputRegister = 0;

		// Green light : YYYY YYYY YYYY YYYY YYYY YYYY YYYY YYYO , assuming that "O" is the output bit (green light) and "Y" is a don't-touch bit.
		// "Y" bits are don't-touch meaning that we must not change their values.
		// If it is off, since outputRegister is already made 0 (all bits 0) we do nothing.
		// If it is on, since the "on" state corresponds with a "1" according to the lab manual, then we can add 1 to change bit 0 to "1". This will not change the value of other bits.
		
		//if(isGreenOn)		
		//	outputRegister += 0x00000001;
		
		// Alternatively we can use bitwise OR operator:
		if(isGreenOn)		
			outputRegister |= 0x00000001;

		// Red light : YYYY YYYY YYYY YYYY YYYY YYYY YYYY YYOY , assuming that "O" is the output bit (red light) and "Y" is a don't-touch bit.
		// If it is off, since outputRegister is already made 0 (all bits 0) we do nothing.
		// If it is on, since the "on" state corresponds with a "1" at bit 1, according to the lab manual, then we shift "1" to bit 1 location and perform a bitwise OR.
		if(isRedOn)		
			outputRegister |= (0x00000001 << 1);

		// Fan speed at bit 2 to 3 : YYYY YYYY YYYY YYYY YYYY YYYY YYYY OOYY , assuming that "O" is the output bit (fan speed) and "Y" is a don't-touch bit.
		// The values are defined in the lab manual. These are already converetd from selector readout in "fanSpeedSelector" into the proper format "fanSpeed".
		// Shift to place and perform a bitwise OR. 
		outputRegister |= (fanSpeed <<2) ; // Assignment//fixed
		

		// Cooler control at bit 4 : YYYY YYYY YYYY YYYY YYYY YYYY YYYO YYYY , assuming that "O" is the output bit (Cooler control) and "Y" is a don't-touch bit.
		if(isCoolerOn) 
		  outputRegister |= (1<<4);
		// Assignment//fixed	

		// Heater control at bit 5 : YYYY YYYY YYYY YYYY YYYY YYYY YYOY YYYY , assuming that "O" is the output bit (Heater control) and "Y" is a don't-touch bit.
		if(isHeaterOn) 
		  outputRegister |= (1<<5);
		// Assignment//fixed	

		// Humidity too high warning at bit 6 : YYYY YYYY YYYY YYYY YYYY YYYY YOYY YYYY , assuming that "O" is the output bit and "Y" is a don't-touch bit.
		// Pay attention that writing 1 actually turns off the light, as defined in the lab manual. 
		// Make sure the light is off normally. Here we can not rely on the fact that previously we set outputRegister = 0 since the light is actually "on" when its control bit is "0".
		// Instead we use the fact that we previously set outputRegister = 0 to light up the warning light (by writing nothing for the case that it is too humid)
		if(isHumidity2High_n) 
			outputRegister |= (0x00000001 << 6);

		// Humidity too low warning at bit 7 : YYYY YYYY YYYY YYYY YYYY YYYY OYYY YYYY , assuming that "O" is the output bit and "Y" is a don't-touch bit.
		// Pay attention that writing 1 actually turns off the light, as defined in the lab manual. 
		// Make sure the light is off normally. Here we can not rely on the fact that, previously, we set outputRegister = 0 since the light is actually "on" when its control bit is "0".
		// Instead we use the fact that we previously set outputRegister = 0 to light up the warning light (by writing nothing for the case that humidity is too low)
		if(isHumidity2Low_n) 
			outputRegister |= (0x00000001 << 7);

		writeOutput(outputRegister, sampleIndex);

		// write to the screen. Redirect it later on to the log file.
		printf("inputs: Lock=%d, Fan=%d, AC=%d, Desired=%f, Measured=%f, Humidity=%d\n", (int)isLocked, fanSpeedSelector, (int)isAcOn, temperatureDesired, temperatureMeasured, humidityMeasured);
		printf("outputs: Green=%d, Red=%d, Fan=%d, Cooler=%d, Heater=%d, Humidity2H_n=%d, Humidity2L_n=%d\n", (int)isGreenOn, (int)isRedOn, fanSpeed, (int)isCoolerOn, (int)isHeaterOn, (int)isHumidity2High_n, (int)isHumidity2Low_n);

		// This keeps the loop from going fast, allowing us to see the output for debugging purpose. Press "Enter" to proceed.
		// int dummy = getchar(); //for debug
		
		// increment sample index used for simulation		
		sampleIndex++;
	}
	return 0;
}



