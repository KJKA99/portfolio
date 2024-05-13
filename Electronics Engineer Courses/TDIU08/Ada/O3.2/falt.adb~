with Ada.Text_IO;                use Ada.Text_IO;
with Ada.Integer_Text_IO;        use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;          use Ada.Float_Text_IO;


procedure Falt is
   
---------------------------------------------------------------------------     
--DS1
   type Ds1_type is
     array (31..35) of float;
--------------------------------------------------------------  
--DS2
   type FalseTrue_Type is
     array (Character range '5'..'9') of String(1..5);
   
   type Boolean_Type is
     array (Boolean range False..True) of FalseTrue_Type;
--------------------------------------------------------------      
--DS3
   type Ds3_Type is
     array (Character range '4'..'8', 73..74) of Integer; 
-----------------------------------------------------------------------------   
   procedure Put(Ds3 : in Ds3_Type) is
      
   begin

      for I in Ds3_Type'Range(2) loop
	 for J in Ds3_Type'Range(1) loop
	    Put(" ");
	    Put(Ds3(J,I), Width => 1);
	 end loop;
	 
      end loop;    
            
   end Put;
   
   
   procedure Get(Ds3 : out Ds3_Type) is
      
   begin
         
      for I in Ds3_Type'Range(2) loop
	 
	 for J in Ds3_Type'Range(1) loop
	    Get(Ds3(J,I));
	 end loop;
	 
      end loop;    
      
   end Get;
-----------------------------------------------------------------------------   
   procedure Put(Ds2 : in Boolean_Type) is
      
   begin
      
      for I in False..True loop
	 
	 for J in reverse FalseTrue_Type'range loop
	    Put(" ");
	    Put(Ds2(I)(J));
	 end loop; 
	 
      end loop;
      
   end Put;
   
   
   procedure Get(Ds2 : out Boolean_Type) is
      
      C : character;
      
   begin 
        
      for I in Boolean'range loop
	 
	 for J in reverse FalseTrue_Type'range loop
	    Get(Ds2(I)(J));
	    
	    if not (I = True and J = '5') then
	       Get(C);
	    end if;
	    
	 end loop;
	 
      end loop;
      
   end Get;
-----------------------------------------------------------------------------   
   procedure Put(Ds1 : in Ds1_Type) is
      
   begin
          
      for I in reverse Ds1_Type'range loop
	 Put(" ");
	 Put(Ds1(I), Fore => 0, Aft => 3, Exp => 0);
      end loop;
      
   end Put;
   
   
   procedure Get(Ds1 : out Ds1_Type) is
      
   begin
 
      for I in reverse Ds1'range loop
	 Get(Ds1(I));
      end loop;
      
   end Get;
-----------------------------------------------------------------------------   
   
   Ds1 : Ds1_Type;
   Ds2 : Boolean_Type;
   Ds3 : Ds3_Type;
   
begin
   
   Put("För DS1:");
   New_Line;
   Put("Mata in datamängd: ");
   Get(Ds1);
   Put("Inmatad datamängd:");
   Put(Ds1);
   New_Line(2);
   
   Put("För DS2:");
   New_Line;
   Put("Mata in datamängd: ");
   Get(Ds2);
   Put("Inmatad datamängd:");
   Put(Ds2);
   New_Line(2);
   
   Put("För DS3:");
   New_Line;
   Put("Mata in datamängd: "); 
   Get(Ds3);
   Put("Inmatad datamängd:");
   Put(Ds3);
   
end Falt;
