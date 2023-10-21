library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RGB_gen is
  Port ( clk, rstn, ce : in std_logic;
         pixcode :  in unsigned(7 downto 0);
         -- Signals to the video DAC:
         vga_r :  out unsigned(7 downto 0);
         vga_g :  out unsigned(7 downto 0);
         vga_b :  out unsigned(7 downto 0);
         vga_sync  : out std_logic);
end entity;

architecture rtl of RGB_gen is
begin
	process(clk)
	begin
		if (rising_edge(clk)) and ce = '1' then
			if (pixcode(7) = '1') then 											-- RGB mode: Expand the 8-bit pixel code to 24 bits by repeating certain bits.
				vga_r <= (pixcode(6 downto 5) & pixcode(6 downto 5) & pixcode(6 downto 5) & pixcode(6 downto 5));
				vga_g <= (pixcode(4 downto 2) & pixcode(4 downto 2) & pixcode(4 downto 3));
				vga_b <= (pixcode(1 downto 0) & pixcode(1 downto 0) & pixcode(1 downto 0) & pixcode(1 downto 0));
			else 																			-- Greyscale mode: Expand the 8-bit pixel code to 24 bits using the same value for all color channels.
				vga_r <= (pixcode (6 downto 0) & pixcode (6));
				vga_g <= (pixcode (6 downto 0) & pixcode (6));
				vga_b <= (pixcode (6 downto 0) & pixcode (6));
			end if;
		end if;
	end process;
	vga_sync <= '0';									 								-- Set the VGA sync signal to '0'.
end architecture;
