library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
	port(dacdatl, dacdatr, daclrc: in std_logic;
		dacdatout: out std_logic);
end entity;

architecture rtl of mux is
	
begin

		dacdatout <= dacdatl when daclrc = '1' else
					dacdatr;
	
end architecture;