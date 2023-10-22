library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Volume_Control is
    port( 
			clk 				: in std_logic;
			rstn 				: in std_logic;
			LDAC 				: in signed(15 downto 0);
			RDAC 				: in signed(15 downto 0);
			volume_level	: in std_logic_vector(3 downto 0);
			LDAC_out			: out signed(15 downto 0);
			RDAC_out 		: out signed(15 downto 0)
		);
end entity;

architecture Volume of Volume_Control is
    signal volume 		: signed(15 downto 0);
    signal result_l 		: signed(31 downto 0);
	 signal result_r 		: signed(31 downto 0);

begin
    with volume_level select
        volume <=
            to_signed(32767, 16) when "1111", -- Highest volume setting
            to_signed(11468 * 2, 16) when "1110",
            to_signed(8028 * 2, 16) when "1101",
            to_signed(5620 * 2, 16) when "1100",
            to_signed(3934 * 2, 16) when "1011",
            to_signed(2754 * 2, 16) when "1010",
            to_signed(1928 * 2, 16) when "1001",
            to_signed(1350 * 2, 16) when "1000",
            to_signed(944 * 2, 16) when "0111",
            to_signed(662 * 2, 16) when "0110",
            to_signed(462 * 2, 16) when "0101",
            to_signed(324 * 2, 16) when "0100",
            to_signed(226 * 2, 16) when "0011",
            to_signed(158 * 2, 16) when "0010",
            to_signed(112 * 2, 16) when "0001",
            to_signed(78 * 2, 16) when "0000", -- Lowest volume setting
            to_signed(0 * 2, 16) when others; -- Mute when control_setting is invalid
				
    process(clk)
    begin
        if (rising_edge(clk)) then
				result_l <= (volume * LDAC); -- Adjust LDAC
            LDAC_out <= result_l(30 downto 15);

            result_r <= (volume * RDAC); -- Adjust RDAC
            RDAC_out <= result_r(30 downto 15);
        end if;
    end process;

end architecture;
