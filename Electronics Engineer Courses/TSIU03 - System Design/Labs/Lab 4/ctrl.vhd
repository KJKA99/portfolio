library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl is
	port(clk, rstn  : in  std_logic;
		mclk, bclk, men, lrsel, ADC_en, adclrc, daclrc: out std_logic;
		SCCnt: out unsigned(1 downto 0);
		BitCnt: out unsigned(4 downto 0));
end entity;

architecture rtl of ctrl is

	signal cntr : unsigned(9 downto 0);

begin

	process(clk, rstn) begin
		if rstn = '0' then 
			cntr <= "0000000000";
		elsif rising_edge(clk) then
			cntr <= cntr + 1;
		end if;
	end process;
	
	mclk <= '1' when cntr(1) = '0' else '0';
	bclk <= '1' when cntr(3) = '1' else '0';
	men <= '1' when cntr(1 downto 0) = "11" else '0';
	SCCnt <= cntr(3 downto 2);
	BitCnt <= cntr(8 downto 4);
	adclrc <= cntr(9);
	daclrc <= cntr(9);
	lrsel <= not cntr(9);
	ADC_en <= '1' when cntr = "1000000000" else
				'1' when cntr = "0000000000" else
				'0';
	
	
end architecture;