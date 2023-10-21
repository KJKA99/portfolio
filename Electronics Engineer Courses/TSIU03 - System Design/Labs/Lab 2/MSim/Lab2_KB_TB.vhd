library ieee;
use ieee.std_logic_1164.all;
library work;

entity Lab2_KB_TB is
end entity;

architecture sim of Lab2_KB_TB is
  
  -- TODO1: Declare signals here.
  signal rstn : std_logic;
  signal clk : std_logic := '1';
  signal PS2_CLK : std_logic;
  signal PS2_DAT : std_logic;
  signal HEX0 : std_logic_vector(6 downto 0);
  signal LEDR : std_logic_vector(7 downto 0);
  signal HEX6 : std_logic_vector(6 downto 0);
  signal HEX7 : std_logic_vector(6 downto 0);
  
  -- TODO2: Declare DUT component here.
component Lab2_KB is
	port(rstn : in std_logic;
		  clk : in std_logic;
		  PS2_CLK : in std_logic;
		  PS2_DAT : in std_logic;
		  HEX0 : out std_logic_vector(6 downto 0);
		  LEDR : out std_logic_vector(7 downto 0);
		  HEX6 : out std_logic_vector(6 downto 0);
		  HEX7 : out std_logic_vector(6 downto 0)
		 ); 
end component;

begin
  -- Generate system clock/reset:
clk <= not clk after 100 ns;
rstn <= '0', '1' after 300 ns;

process begin
  -- Generate stimuli (the scancode for key 4):
PS2_CLK <= '1'; 
PS2_DAT <= '1';
wait for 100 us;

-- First bit: Start bit.
PS2_DAT <= '1';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

-- TODO3: More stimuli.
PS2_DAT <= '0';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

PS2_DAT <= '1';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

PS2_DAT <= '0';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

PS2_DAT <= '0';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

PS2_DAT <= '1';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

PS2_DAT <= '0';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

PS2_DAT <= '0';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

PS2_DAT <= '0';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

PS2_DAT <= '1';
PS2_CLK <= '0' after 10 us, '1' after 35 us;
wait for 100 us;

-- Sanity check:
assert HEX0 = "0011001" report "HEX0 failed" severity error;
wait; -- forever. Do not restart the process
end process;

-- Instantiate DUT (TODO4: Complete this):
DUT : Lab2_KB
port map(rstn => rstn, clk => clk, PS2_CLK => PS2_CLK, PS2_DAT => PS2_DAT, HEX0 => HEX0, LEDR => LEDR, HEX6 => HEX6, HEX7 => HEX7);
end architecture;