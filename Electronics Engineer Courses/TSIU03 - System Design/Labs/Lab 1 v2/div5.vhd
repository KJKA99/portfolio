library ieee;
use ieee.std_logic_1164.all;

entity div5 is
	port(SW0,SW1,SW2, SW3 : in std_logic;
	y : out std_logic);
end entity;

architecture rtl of div5 is
begin
y <= (not SW0 and not SW1 and not SW2 and not SW3)
	   or (SW0 and not SW1 and SW2 and not SW3)
		or (not SW0 and SW1 and not SW2 and SW3)
		or (SW0 and SW1 and SW2 and SW3);
end architecture;