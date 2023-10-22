library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity linecounter is
  Port( 
		 clk				: in std_logic;
		 rstn 			: in std_logic;
		 ce 				: in std_logic;
       hcnt  			: in unsigned(9 downto 0);
       vcnt 			: out unsigned(9 downto 0)
		);
end entity;

architecture rtl of linecounter is
  signal vcnti			: unsigned(9 downto 0);

begin
 process(clk, rstn)
  begin
    if(rstn = '0') then				
      vcnti <= "0000000000";
    elsif rising_edge(clk) then
		if (ce ='1' and hcnt= 654) then		
			if(vcnti < 524) then						
				vcnti <= vcnti + 1;
			else										  
				vcnti <= "0000000000";
		  end if;
      end if;											
    end if;												
  end process;
  vcnt <= vcnti;								 		
end architecture;
