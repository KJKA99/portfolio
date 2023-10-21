library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity linecounter is
  Port ( clk, rstn, ce : in std_logic;
         hcnt  : in unsigned(9 downto 0);
         vcnt : out unsigned(9 downto 0));
end entity;

architecture rtl of linecounter is

  signal vcnti: unsigned(9 downto 0);

begin
 process(clk, rstn)
  begin
    if(rstn = '0') then								-- Reset condition: Reset the vcnti signal to zero.
      vcnti <= "0000000000";
    elsif rising_edge(clk) then
		if (ce ='1' and hcnt= 654) then			-- Check if ce is high and hcnt is equal to 654.
			if(vcnti < 524) then						-- Check if vcnti is less than 524.
				vcnti <= vcnti + 1;
			else										   -- Reset vcnti to zero if it exceeds 524.
				vcnti <= "0000000000";
		  end if;
      end if;											-- End of ce and hcnt condition
    end if;												-- End of rstn and rising_edge(clk) condition
  end process;
  vcnt <= vcnti;								 		-- Assign the vcnti signal to the vcnt output port.
end architecture;
