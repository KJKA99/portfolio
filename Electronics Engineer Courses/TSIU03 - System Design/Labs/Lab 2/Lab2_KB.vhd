library ieee;
use ieee.std_logic_1164.all;

entity Lab2_KB is
	port(rstn : in std_logic;
		  clk : in std_logic;
		  PS2_CLK : in std_logic;
		  PS2_DAT : in std_logic;
		  HEX0 : out std_logic_vector(6 downto 0);
		  LEDR : out std_logic_vector(9 downto 0);
		  HEX6 : out std_logic_vector(6 downto 0);
		  HEX7 : out std_logic_vector(6 downto 0)
		 ); 
end entity;

architecture rtl of Lab2_KB is
	-- Declare signals here
	signal PS2_CLK2 : std_logic;
	signal PS2_CLK2_old : std_logic;
	signal PS2_DAT2 : std_logic;
	signal detected_fall : std_logic;
	signal shiftreg : std_logic_vector(9 downto 0) := (others => '1');
	
	-- Nytt här under
	signal PS2_bit_en : std_logic;
	signal PS2_byte : std_logic_vector(7 downto 0);
	signal PS2_byte_en : std_logic;
	signal scancode : std_logic_vector(9 downto 0);
	signal E0 : std_logic ;
	signal F0 : std_logic ;
	signal scancode_en : std_logic;
	
begin

	-- Process 1: Synchronise the input	
	p1 : process(clk) 
		begin
			if rising_edge(clk) then
				-- Assign input DFFs here (DFF: D-type flip flops)
				PS2_DAT2 <= PS2_DAT;
				PS2_CLK2 <= PS2_CLK;
				PS2_CLK2_old <= PS2_CLK2;
			end if;
		end process;
	
  detected_fall <= (not PS2_CLK2) and (PS2_CLK2_old);
	-- PS2_bit_en <= (not PS2_CLK2) and PS2_CLK2_old;
	--PS2_bit_en <= (not PS2_CLK2);

	-- Process 2: Handle shiftreg:
	p2 : process(clk, rstn) 
		begin
			if rstn = '0' then
				shiftreg(9 downto 0) <= (others => '1');
			elsif rising_edge(clk) then
				if PS2_byte_en = '1' then -- enable shiftreg;
					shiftreg <= (others => '1');
				elsif detected_fall = '1' then
					shiftreg(8 downto 0) <= shiftreg(9 downto 1);
					shiftreg(9) <= PS2_DAT2;
				end if;	
			end if;
		end process;
	
	PS2_byte_en <= not shiftreg(0);
	PS2_byte <= shiftreg(8 downto 1);
	
	-- Part 3: Allt under process är nytt
	p3 : process(clk) 
		begin
			if rising_edge(clk) then
				-- scancode <= (others => '0');
				if PS2_byte_en = '1' then
					if PS2_byte = "11100000" then
						E0 <= '1';
					elsif PS2_byte = "11110000" then
						F0 <= '1';
					else
						scancode(9 downto 0) <= F0 & E0 & PS2_byte;
						E0 <= '0';
						F0 <= '0';
					end if;
				end if;
			end if;
		end process;

	-- Output the last byte of the scan code:
	LEDR <= scancode;
	-- Recode the scan code (shiftreg(7..0)) here:
	with scancode(7 downto 0) select
	HEX0(6 downto 0) <= 
		"1000000" when "01000101", -- 0
		"1111001" when "00010110", -- 1
		"0100100" when "00011110", -- 2
		"0110000" when "00100110", -- 3
		"0011001" when "00100101", -- 4
		"0010010" when "00101110", -- 5
		"0000010" when "00110110", -- 6
		"1111000" when "00111101", -- 7 
		"0000000" when "00111110", -- 8
		"0010000" when "01000110", -- 9
		"0000110" when others;
		
	-- Also write your group number on HEX {7, 6}.
	HEX7 <= "1111001"; -- "1"
	HEX6 <= "0100100"; -- "2"
end architecture;