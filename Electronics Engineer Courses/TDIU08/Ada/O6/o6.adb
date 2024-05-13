-- kebje541: Samarbetat med jambe108, James Beise, samma program
with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Integer_Text_IO;     use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;       use Ada.Float_Text_IO;

procedure O6 is
   
-----------------------------------------------------------------------------
-- Del 1                                                                   --
-- Funktion Fib beräknar och returnerar det N:te talet i Fibonacci serien  -- 
-- Heltalsparameter N                                                      --
-- Rekursiv funktion                                                       --
-----------------------------------------------------------------------------
   function Fib(N : in Natural) return Natural is
   begin
      if N = 0 then
	 return 0;
      elsif N = 1 then
	 return 1;
      else
	 return Fib(N - 1) + Fib(N - 2);
      end if;
      
   end Fib;
-----------------------------------------------------------------------------
-- Del 2                                                                   --
-- Funktion som räknar antal stenar för att bygga "trappan"                -- 
-- Beräkna och returnera antalet stenar om huset höjd är H                 --
-- Returnera heltal                                                        --
-----------------------------------------------------------------------------   
   function Leca(H : in Natural) return Natural is
      
   begin
      if H = 0 then
	 return 0;
      elsif H = 1 then
	return 0;
      else
	 return (H - 1) * ((2*H)-3) + Leca(H - 1);
      end if;
      
   end Leca;
-----------------------------------------------------------------------------
-- Del 3                                                                   --
-- Huvudprogram som låter användare mata in 2 heltal N och H               -- 
-- Skriver ut N:te Fibonacci med Del 1 och Leca med Del 2                  --
-----------------------------------------------------------------------------  
   
   N, H : Natural;
   
begin
   
   Put("Mata in N och H: ");
   Get(N);
   Get(H);
   Put("Fibonacci-tal nummer ");
   Put(N, Width => 1);
   Put(" är ");
   Put(Fib(N), Width => 1);
   Put(".");
   
   New_Line;
   Put("Det behövs ");
   Put(Leca(H), Width => 1);
   Put(" stenar för att bygga trappan.");
   
end O6;
