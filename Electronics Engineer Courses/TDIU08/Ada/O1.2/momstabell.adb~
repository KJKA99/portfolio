with Ada.Text_IO;                use Ada.Text_IO;
with Ada.Integer_Text_IO;        use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;          use Ada.Float_Text_IO;



procedure momstabell is 

Fp : Float; -- Första pris
Sp : Float; -- Sista pris
S : Float; -- Steg
M : Float; -- Momsprocent

Moms : Float; -- Moms * 0.1
Fmm : Float; -- Förstapris + Moms
N : Integer; -- Antalet steg N som måste göras
Pum : Float; -- Pris utan moms
Y : Float := 0.0;

begin
   
   loop
      Put("Första pris: ");
      Get(Fp);
      exit when Fp > 0.0;
      Put("Felaktigt värde!");
      New_Line;
      Skip_Line;
   end loop;
   Skip_Line;
   
   loop
      Put("Sista pris: ");
      Get(Sp);
      exit when Sp >= Fp;
      Put("Felaktigt värde!");
      New_Line;
   end loop;
   Skip_Line;
   
   loop
      Put("Steg: ");
      Get(S);
      exit when S > 0.0;
      Put("Felaktigt värde!");
      New_Line;
   end loop;
   Skip_Line;
      
   loop
      Put("Momsprocent: ");
      Get(M);
      exit when M >= 0.0 and M <= 100.0;
      Put("Felaktigt värde!");
      New_Line;
   end loop;
   Skip_Line;
   
   New_Line;
   
   Put("============ Momstabell ============");
   New_Line;
   Put("Pris utan moms  Moms   Pris med moms");
   New_Line;
   
   
   N := Integer(Float'Floor((Sp - Fp)/S)); --Antal steg som ska göras
   
   
   for I in 0..N loop 
      
      Pum := Fp + (Y * S); -- Förstapris + ( Y * steg )
      Moms := Fp * ( M / 100.0 ); -- (Förstapris) * ( Momsprocent / 100.0 )
      Fmm := Pum + Moms; -- Pris utan moms + moms

	 Put(Fp, Fore => 6, Aft => 2, Exp => 0);
	 Fp := Fp + S;
	 Put(Moms, Fore => 8, Aft => 2, Exp => 0);
	 Put(Fmm, Fore => 9, Aft => 2, Exp => 0);
      
   New_Line;
   
   end loop;

end momstabell;
