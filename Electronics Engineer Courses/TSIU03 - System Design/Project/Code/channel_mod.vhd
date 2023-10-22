library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity channel_mod is
	port(clk, rstn  : in  std_logic;
		men, sel, DAC_en, adcdat: in std_logic;
		dacdat: out std_logic;
		SCCnt: in unsigned(1 downto 0);
		BitCnt: in unsigned(4 downto 0);
		DAC: in signed(15 downto 0);
		ADC: out signed(15 downto 0));
end entity;

architecture rtl of channel_mod is
	signal RXReg, TXReg : signed(15 downto 0);
begin

	rx: process(clk, rstn, sel) begin
		if rstn = '0' then 
			RXReg <= "0000000000000000";
		elsif rising_edge(clk) and sel = '0' then		
			if men = '1' and SCCnt = "01" and BitCnt(4) = '0' then
				RXReg <= RXReg(14 downto 0) & adcdat;
			end if;
		end if;
	end process;
	ADC <= RXReg;
	
	tx: process(clk, rstn) begin
		if rstn = '0' then 
			TXReg <= "0000000000000000";
		elsif rising_edge(clk) then
			if sel = '0' then
				if men = '1' and SCCnt = "11" then
					TXReg <= TXReg(14 downto 0) & '0';
				end if;
			elsif sel = '1' and DAC_en = '1' then
				TXReg <= DAC;
			end if;
		end if;
	end process;
	dacdat <= TXReg(15);
	
end architecture;