with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Integer_Text_IO;     use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;       use Ada.Float_Text_IO;


procedure In_Och_utmatningar is
   
   X : Integer; --En eller flera variabler
   F : Float; --Variabel med flyttal som innehåller decimaler
   C : Character; --Tecken
   S : String(1..5); --Sträng med längd mellan 1-10
   
begin

     Put("Skriv in ett heltal: "); 
     Get(X);
     Put("Du skrev in talet: ");
     Put(X, Width => 1); 
     Skip_Line;
     
     New_Line;
     New_Line;
   
     Put("Skriv in fem heltal: ");
     Get(X);
     Put("Du skrev in talen: ");
     Put(X, Width => 1); 
     Put(" ");
     Get(X);
     Put(X, Width => 1); 
     Put(" ");
     Get(X);
     Put(X, Width => 1); 
     Put(" ");
     Get(X);
     Put(X, Width => 1); 
     Put(" ");
     Get(X);
     Put(X, Width => 1);  
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
     Get(X);
     Get(F);
     Put("Du skrev in heltalet: ");
     Put(X, Width => 9); New_Line(1);
     Put("Du skrev in flyttalet: ");
     Put(F, Fore => 3, Aft => 4, Exp => 0); 
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
     Get(X);
     Get(C);
     Get(S(1..5));
     Put("Du skrev in talet ");
     Put("|");
     Put(X, Width => 1);
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
     Get_Line(S, X);
     Put("Du skrev in strängen: ");
     Put(S(1..X));
     if X = 5 then 
	Skip_Line;
     end if;
     
     New_Line;
     New_Line;
   
     Put("Skriv in en sträng som är maximalt 5 tecken: " );
     Get_Line(S, X);
     Put("Du skrev in strängen: ");
     Put(S(1..X));
     if X = 5 then
	Skip_Line;
     end if;
     
     New_Line;
     New_Line;
   
   
end In_Och_utmatningar;		
   
