-- kebje541: Arbetat enskilt

with Ada.Text_IO;                use Ada.Text_IO;
with Ada.Integer_Text_IO;        use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;          use Ada.Float_Text_IO;

procedure O1_2 is 

First_Price : Float; 
Last_Price : Float; 
Steps : Float; 
V : Float;

VAT : Float; -- VAT * 0.1
FP_VAT : Float; -- First Price + VAT
N : Integer; 
P_E_VAT : Float; -- (P)rice (E)xcluding VAT
Y : Float := 0.0;

begin
   
   loop
      Put("Första pris: ");
      Get(First_Price);
      exit when First_Price > 0.0;
      Put("Felaktigt värde!");
      New_Line;
      Skip_Line;
   end loop;
   Skip_Line;
   
   loop
      Put("Sista pris: ");
      Get(Last_Price);
      exit when Last_Price >= First_Price;
      Put("Felaktigt värde!");
      New_Line;
   end loop;
   Skip_Line;
   
   loop
      Put("Steg: ");
      Get(Steps);
      exit when Steps > 0.0;
      Put("Felaktigt värde!");
      New_Line;
   end loop;
   Skip_Line;
      
   loop
      Put("Momsprocent: ");
      Get(V);
      exit when V >= 0.0 and V <= 100.0;
      Put("Felaktigt värde!");
      New_Line;
   end loop;
   Skip_Line;
   
   New_Line;
   
   Put("============ Momstabell ============");
   New_Line;
   Put("Pris utan moms  Moms   Pris med moms");
   New_Line;
   
   
   N := Integer(Float'Floor((Last_Price - First_Price)/Steps)); --Steg som vi behöver göra
   
   
   for I in 0..N loop 
      
      P_E_VAT := First_Price + (Y * Steps);
      VAT := First_Price * ( V / 100.0 );
      FP_VAT := P_E_VAT + VAT; 

	 Put(First_Price, Fore => 6, Aft => 2, Exp => 0);
	 First_Price := First_Price + Steps;
	 Put(VAT, Fore => 8, Aft => 2, Exp => 0);
	 Put(FP_VAT, Fore => 9, Aft => 2, Exp => 0);
      
   New_Line;
   
   end loop;

end O1_2;