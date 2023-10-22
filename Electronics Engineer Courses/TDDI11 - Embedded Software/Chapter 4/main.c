#include <libepc.h>

void llmultiply(unsigned long long int l1,
                unsigned long long int l2,
                unsigned char *result); 

                

void clmultiply (unsigned long long int l1,
                unsigned long long int l2,
                unsigned char *result) {
  unsigned long int Al = l1;
  unsigned long int Ah = (l1>>32);
  unsigned long int Bl = l2;
  unsigned long int Bh = (l2>>32);

  unsigned long int AlBl_l = Al * Bl; //now we have res1 
  unsigned long int AlBl_h = (((long long)Al * (long long)Bl)>>32);

  unsigned long int AlBh_l = Al * Bh;  
  unsigned long int AlBh_h = (((long long)Al * (long long)Bh)>>32);

  unsigned long int AhBl_l = Ah * Bl;  
  unsigned long int AhBl_h = (((long long)Ah * (long long)Bl)>>32);

  unsigned long int AhBh_l = Ah * Bh;  
  unsigned long int AhBh_h = (((long long)Ah * (long long)Bh)>>32);


  unsigned long int  res2 = AlBh_l +  AhBl_l;

  unsigned int carry_1 = res2 < AhBl_l; // IF result 2 is less than AhBl_l then carry = 1, else if carry = 0

  res2 = res2 +  AlBl_h;

  if (res2 < AlBl_h)
   {
    carry_1 = carry_1 +1;
    }// //if true carry = 1
    
  //then we have res2

  unsigned long int  res3 = AlBh_h +  AhBl_h;

  unsigned int carry_2 = res3 < AhBl_h; // IF result 2 is less than AhBl_l then carry = 1, else if carry = 0

  res3 = res3 +  AhBh_l;

    if (res3 < AhBh_l)
   {
    carry_2 = carry_2 +1;
    }// //if true carry = 1

    res3 = res3 + carry_1; // Carryn hänger med om carry = 1

    if (res3 < carry_1)
   {
    carry_2 = carry_2 +1;
    } 
 //res 3 is done

 unsigned long int  res4 = AhBh_h + carry_2;

unsigned long int *result_final = (unsigned long int*)result;
result_final[0] = AlBl_l;
result_final[1] = res2;
result_final[2] = res3;
result_final[3] = res4;
//*result_final = res
}

  

struct test_case {
  unsigned long long int a;
  unsigned long long int b;
  unsigned long long int rh;
  unsigned long long int rl;
};

struct test_case cases[6] = {

  { 0x0000111122223333ULL, 0x0000555566667777ULL,
    0x0000000005B061D9ULL, 0x58BF0ECA7C0481B5ULL },

  { 0x3456FEDCAAAA1000ULL, 0xEDBA00112233FF01ULL,
    0x309A912AF7188C57ULL, 0xE62072DD409A1000ULL },

  { 0xFFFFEEEEDDDDCCCCULL, 0xBBBBAAAA99998888ULL,
    0xBBBB9E2692C5DDDCULL, 0xC28F7531048D2C60ULL },

  { 0xFFFFFFFFFFFFFFFFULL, 0xFFFFFFFFFFFFFFFFULL,
    0xFFFFFFFFFFFFFFFEULL, 0x0000000000000001ULL },
  
  { 0x00000001FFFFFFFFULL, 0x00000001FFFFFFFFULL,
    0x0000000000000003ULL, 0xFFFFFFFC00000001ULL },

  { 0xFFFEFFFFFFFFFFFFULL, 0xFFFF0001FFFFFFFFULL,
    0xFFFE0002FFFDFFFEULL, 0x0001FFFE00000001ULL }
};

void PutUnsignedLongLong(unsigned long long int* ulli)
{
  unsigned long int* uli = (unsigned long int*)ulli; 
  PutUnsigned(uli[1], 16, 8);
  PutUnsigned(uli[0], 16, 8); 
}

int main(int argc, char *argv[])
{
  unsigned char result[16];
  int i;
  
  ClearScreen(0x07);
  SetCursorPosition(0, 0);

  for (i = 0; i < 6; ++i)
  {
    PutString("Test : ");
    PutUnsignedLongLong(&cases[i].a);
    PutString(" * ");
    PutUnsignedLongLong(&cases[i].b); 
    PutString("\r\n");
   
    PutString("    == ");
    PutUnsignedLongLong(&cases[i].rh);
    PutUnsignedLongLong(&cases[i].rl);
    PutString("\r\n");
    
    clmultiply(cases[i].a, cases[i].b, result);
    
    PutString("Result ");
    PutUnsignedLongLong((unsigned long long int*)&result[8]);
    PutUnsignedLongLong((unsigned long long int*)&result[0]); 
    PutString("\r\n");
    
    PutString("\r\n");

    //CPU_Clock_Cycles = 0;
  QWORD64 CL_start = CPU_Clock_Cycles();
  for (i = 0; i < 1000; ++i)
  {
   // llmultiply(cases[i%6].a, cases[i%6].b, result);
  }
  QWORD64 CL_end = (CPU_Clock_Cycles() - CL_start)/1000;
  PutString("  ASM clock cycles: ");
  PutUnsigned(CL_end, 10, 16);
  PutString("\r\n");

  //CPU_Clock_Cycles = 0;
  QWORD64 CL_start_C = CPU_Clock_Cycles();
  for (i = 0; i < 1000; ++i)
  {
    clmultiply(cases[i%6].a, cases[i%6].b, result);
  }
  QWORD64 CL_end_C = (CPU_Clock_Cycles() - CL_start_C)/1000;
  PutString("  C clock cycles: ");
  PutUnsigned(CL_end_C, 10, 16);
  PutString("\r\n");
  }



  return 0;
}
