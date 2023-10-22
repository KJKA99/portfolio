library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hs_gen is
  Port( 
		 clk 			: in std_logic;
		 rstn 		: in std_logic;
       hcnt 		: in unsigned(9 downto 0);
       hsync 		: out std_logic
		);
end entity;

architecture rtl of hs_gen is
begin
  process(clk, rstn)
  begin
    if rstn = '0' then
      hsync <= '1';
    elsif rising_edge(clk) then
      if hcnt = 640+15 then
        hsync <= '0';
      elsif hcnt = 640+15+95 then
        hsync <= '1';
      end if;
    end if;
  end process;
end architecture;
