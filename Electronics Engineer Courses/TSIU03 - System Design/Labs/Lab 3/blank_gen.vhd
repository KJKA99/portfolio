library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blank_gen is
  Port ( vcnt : in unsigned(9 downto 0);
         hcnt : in unsigned(9 downto 0);
         blank : out std_logic);
end entity;

architecture rtl of blank_gen is

begin
	blank <= '1' when (vcnt < 480) and (hcnt < 640) else '0'; 				-- Generate a blanking signal. '1' when both vcnt and hcnt are less than certain values, '0' otherwise.
end architecture;
