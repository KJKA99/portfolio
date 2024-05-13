with Ada.Text_IO;                           use Ada.Text_IO;
with Ada.Integer_Text_IO;                   use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;                     use Ada.Float_Text_IO;


procedure Up is
   
----------------------------------------------------------------------------    
   function Santfalskt(C : in Character) return boolean is
      
   begin
      
      if C = 'S' or C = 's' then
	 return True;
      else
	 return False;
      end if;
      
   end Santfalskt;
----------------------------------------------------------------------------    
   procedure Substantiv (B : out boolean ; S : in out String) is
      
   begin
      
      if S(S'Last) = 's' then B := True;
      else B := False;
      end if;
     
   end Substantiv; 
----------------------------------------------------------------------------   
   function "-"(Heltal : in Integer ; Flyttal : in Float) return Float is
           
      Sum : Float;
      
   begin
      
      Sum := float(Heltal) - (Flyttal);
      
      return Sum;
      
   end "-";
---------------------------------------------------------------------------- 
   
   Heltal : Integer;
   Flyttal : Float;
   C : Character;
   S : String(1..5);
   B : Boolean;

begin
   
   Put("Mata in ett heltal och ett flyttal: ");     
   Get(Heltal);                                     
   Get(Flyttal);                                   
   Put("Differensen mellan dem är ");              
   Put(Heltal - Flyttal, 1, 2, 0);                  
   
   New_Line(2);
   Put("Skriv in ett 5 tecken långt engelskt substantiv: ");
   Get(S);
   Substantiv(B, S); 
   if B = True then
      Put("Ordet ");
      Put(S);
      Put(" var troligtvis i plural från början");
   elsif B = False then
      S(S'last) := 's';
      Put("Ordet ");
      Put(S);
      Put(" var troligtvis inte i plural från början");
   end if;
   
   New_Line(2);                                       
   Put("Mata in ett tecken: ");                 
   Get(C);                                         
   Put("Tecknet var ");                           
   if Santfalskt(C) = True then                
      Put("sant");                                
   elsif Santfalskt(C) = False then             
      Put("inte sant");                      
   end if;                 
   
end Up;
