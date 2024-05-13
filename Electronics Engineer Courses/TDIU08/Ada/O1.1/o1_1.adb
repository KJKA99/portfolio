-- kebje541: Arbetat enskilt 

with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Integer_Text_IO;     use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;       use Ada.Float_Text_IO;


procedure O1_1 is
   
   F : Float; 
   S : String(1..5); 
   I : Integer;
   C : Character;

   
begin

     Put("Skriv in ett heltal: "); 
     Ada.Integer_Text_IO.Get(I);
     Ada.Text_IO.Put("Du skrev in talet: ");
     Ada.Integer_Text_IO.Put(I, Width => 1); 
     Skip_Line;
     
     -- Du behöver inte skriva Ada.Text....
     New_Line;
     New_Line;
   
     Put("Skriv in fem heltal: ");
     Get(I);
     Put("Du skrev in talen: ");
     Put(I, Width => 1); 
     Put(" ");
     Get(I);
     Put(I, Width => 1); 
     Put(" ");
     Get(I);
     Put(I, Width => 1); 
     Put(" ");
     Get(I);
     Put(I, Width => 1); 
     Put(" ");
     Get(I);
     Put(I, Width => 1);  
     Skip_Line;
     
     New_Line;
     New_Line;

     Put("Skriv in ett flyttal: ");
     Get(F);
     Put("Du skrev in flyttalet: ");
     Put(F, Fore => 1, Aft => 3, Exp => 0); 
     Skip_Line;
     
     New_Line;
     New_Line;
     
     Put("Skriv in ett heltal och ett flyttal: ");
     Get(I);
     Get(F);
     Put("Du skrev in heltalet:");
     Put(I, Width => 10); New_Line(1);
     Put("Du skrev in flyttalet:");
     Put(F, fore => 4, aft => 4, exp => 0);
     Skip_Line;
     
     New_Line;
     New_Line;
   
     Put("Skriv in ett tecken: ");
     Get(C);
     Put("Du skrev in tecknet: ");
     Put(C); 
     Skip_Line;
     
     New_Line;
     New_Line;
   
     Put("Skriv in en sträng med 5 tecken: ");
     Get(S(1..5));
     Put("Du skrev in strängen: ");
     Put(S(1..5)); 
     Skip_Line(1);
     
     New_Line;
     New_Line;
   
     Put("Skriv in en sträng med 3 tecken: ");
     Get(S(1..3));
     Put("Du skrev in strängen: ");
     Put(S(1..3)); 
     Skip_Line;
     
     New_Line;
     New_Line;
  
     Put("Skriv in ett heltal och en sträng med 5 tecken: ");
     Get(I);
     Get(C);
     Get(S(1..5));
     Put("Du skrev in talet ");
     Put("|");
     Put(I, Width => 1);
     Put("|");
     Put(" och strängen ");
     Put("|");
     Put(S(1..5));
     Put("|."); 
     Skip_Line;
     
     New_Line;
     New_Line;

     Put("Skriv in en sträng med 3 tecken och ett flyttal: ");
     Get(S(1..3));
     Get(F);
     Put("Du skrev in """);
     Put(F, Fore => 2, Aft => 3, Exp => 0);
     Put(""" och """);
     Put(S(1..3));
     Put("""."); 
     Skip_Line;
     
     New_Line;
     New_Line;
   
     Put("Skriv in en sträng som är maximalt 5 tecken: ");
     Get_Line(S, I);
     Put("Du skrev in strängen: ");
     Put(S(1..I));
     if I = 5 then 
	Skip_Line;
     end if;
     
     New_Line;
     New_Line;
   
     Put("Skriv in en sträng som är maximalt 5 tecken: " );
     Get_Line(S, I);
     Put("Du skrev in strängen: ");
     Put(S(1..I));
     if I = 5 then
	Skip_Line;
     end if;
     
     New_Line;
     New_Line;
   
   
end O1_1;		
   
