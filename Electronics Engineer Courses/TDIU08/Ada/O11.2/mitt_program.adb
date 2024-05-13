-- kebje541: Samarbetat med jambe108, James Beise, samma program
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Command_Line; use Ada.Command_Line;

procedure Mitt_Program is
   procedure Print_N_Times is
   begin
      	Put("Meddelande: ");
	for I in 1..(Integer'Value(Argument(3))) loop
	   Put(Argument(1));
	end loop;
	Put(Argument(2));
	New_Line;
	Put("Programmet """ & Command_Name  &""" avslutas.");
   end Print_N_Times;
     
   
begin
   
   if Argument_Count = 3 then
       
      if (Command_Name = Argument(1)) or else ((Command_Name(3..Command_Name'Length))= Argument(1)) then --kollar om filname_1  är lika med eller utan ./ 
	 Put_line("Error! Input file """& argument(1) &""" cannot be same as the program itself!");
	 
      elsif (Command_Name = Argument(2)) or else ((Command_Name(3..Command_Name'Length))= Argument(2)) then -- samma fast för filnamn_2
	 Put_line("Error! Output file """& Argument(2) &""" cannot be same as the program itself!");
	 
      elsif (Argument(1)'Length <= 4)  or else (Argument(2)'Length <= 4) then --hindrar range error ".TXT"
	 Print_N_Times;
	 
      elsif ((Argument(1) = Argument(2))
        or else (Argument(1)(1..2) = "./" and Argument(1)(3..Argument(1)'Length) =  Argument(2))
       	or else (Argument(2)(1..2) = "./" and Argument(2)(3..Argument(2)'Length) =  Argument(1))) then
--	and ((Argument(1)( (Argument(1)'Length-3)..Argument(1)'Length) = ".TXT") and (Argument(2)(  (Argument(2)'Length-3)..Argument(2)'Length  )= ".TXT")  ) then
	 
	 Put_line("Error! Output file """& Argument(2)&""" cannot be same as input file!"); 
      else
	 Print_N_Times;
      end if;
      
      
      
      
   elsif Argument_Count = 0 then
      Put("Inga argument angivna.");
      
   else
      Put("Fel antal argument angivna.");
      
   end if;
   
end Mitt_Program;
