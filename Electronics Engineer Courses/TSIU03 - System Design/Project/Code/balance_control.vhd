library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Balance_Control is
    port(
			clk      			: in std_logic;
			rstn 					: in std_logic;
			lrsel          	: in std_logic;
			LDAC_in 				: in signed(15 downto 0);
			RDAC_in 				: in signed(15 downto 0);
			panning        	: in std_logic_vector(3 downto 0);
			LADC 					: out signed(15 downto 0);
			RADC 					: out signed(15 downto 0)
		  );
end entity;

architecture rtl of Balance_Control is
    signal balance_volume	: signed(15 downto 0);
    signal result_l      	: signed(31 downto 0);
	 signal result_r       	: signed(31 downto 0);
	 
begin

    -- Control Setting to Balance Volume Mapping
    with panning select
        balance_volume <=
            to_signed(0*2, 16) when "0001",		--
            to_signed(226*2, 16) when "0010",   --
            to_signed(462*2, 16) when "0011",   --
            to_signed(944*2, 16) when "0100",	--left
            to_signed(1928*2, 16) when "0101",  --
            to_signed(3934*2, 16) when "0110",  --
            to_signed(8028*2, 16) when "0111",  --
			
            to_signed(8028*2, 16) when "1001",  --
            to_signed(3934*2, 16) when "1010",  --
            to_signed(1928*2, 16) when "1011",  --
            to_signed(944*2, 16) when "1100",	--right
            to_signed(462*2, 16) when "1101",	--
            to_signed(226*2, 16) when "1110",	--
            to_signed(0*2, 16) when "1111",		--
            to_signed(32767, 16) when others;   --middle

    process(clk, rstn)
    begin
        if rstn = '0' then
           
        elsif rising_edge(clk) then
            if lrsel = '1' and panning > "1000" then --right
           
                result_l <= resize(balance_volume * LDAC_in, 32); -- 31 not 30 because signed
            elsif lrsel = '0' and panning < "1000" then --left
                result_r <= resize(balance_volume * RDAC_in, 32);
            else
                result_r <= resize(RDAC_in * to_signed(16384, 16), 32);
                result_l <= resize(LDAC_in * to_signed(16384, 16), 32);
            end if;
        end if;
    end process;

    LADC <= result_l(30 downto 15);
	 RADC <= result_r(30 downto 15);

end architecture;

