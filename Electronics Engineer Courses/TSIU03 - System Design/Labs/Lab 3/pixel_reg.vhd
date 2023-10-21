library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pixel_reg is
  Port ( clk, rstn     : in std_logic;
         up_lo_byte    : in std_logic; -- '0' <=> read lo byte.
         pixcode       : out unsigned(7 downto 0);
         -- RAM signals
         higher_byte, lower_byte : in unsigned(7 downto 0));
end entity;

architecture rtl of pixel_reg is

signal pixcode2 : unsigned(7 downto 0);

begin
	process(clk,rstn)
	begin
		if(rstn='0') then
			pixcode2 <= "00000000";
		elsif (rising_edge(clk)) then
			if (up_lo_byte = '1') then
				pixcode2 <= higher_byte;
			else
				pixcode2 <= lower_byte;
			end if;
		end if;
	end process;
	pixcode <= pixcode2;
end architecture;
