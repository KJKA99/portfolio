library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ce_gen is
  Port ( clk : in std_logic;
         rstn : in std_logic;
         ce : out std_logic); 			-- "clock enable" in 25 MHz, to match the video clock.
end entity;

architecture rtl of ce_gen is

signal counter : std_logic := '0';

begin
	process(clk, rstn)
	begin
		if rstn = '0' then					-- Reset condition: Set counter to '0' when rstn is low.
			counter <= '0';
		elsif rising_edge(clk) then		-- Toggle counter on each rising edge of clk.
			if (counter = '0') then
				counter <= '1';
			else
				counter <= '0';
			end if;
		end if;
	end process;
	ce <= counter;					  			-- Assign the value of the counter to the ce output port.
end architecture;

