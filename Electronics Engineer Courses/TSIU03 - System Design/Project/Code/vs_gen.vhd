library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vs_gen is
   Port( 
			clk 		: in std_logic;
			rstn 		: in std_logic;
			vcnt 		: in unsigned(9 downto 0);
			vsync 	: out std_logic
		 );
end entity;

architecture rtl of vs_gen is
	begin
		process(clk, rstn)
		  begin
			 if rstn = '0' then
				vsync <= '1';
			 elsif rising_edge(clk) then
				if vcnt = 480+10 then 
				  vsync <= '0';
				elsif vcnt = 480+10+2 then
				  vsync <= '1';
				end if;
			end if;
	  end process;
end architecture;
