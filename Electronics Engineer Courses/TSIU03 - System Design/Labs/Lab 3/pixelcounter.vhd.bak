library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pixelcounter is
  Port ( clk, rstn, ce : in std_logic; -- ce = clock enable
         hcnt : out unsigned(9 downto 0));
end entity;

architecture rtl of pixelcounter is
  signal hcnti: unsigned(9 downto 0);
begin
  process(clk, rstn)
  begin
    if(rstn = '0') then
      hcnti <= "0000000000";
    elsif rising_edge(clk) and ce = '1' then
      if(hcnti < 797) then
         hcnti <= hcnti + 1;
      else
        hcnti <= "0000000000";
      end if; -- hcnti < 797
    end if; -- rstn, rising_edge(clk)
  end process;
  hcnt <= hcnti;
end architecture;
