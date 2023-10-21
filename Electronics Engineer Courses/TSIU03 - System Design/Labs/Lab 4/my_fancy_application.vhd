-- Author: Petter Källström, petterk@isy.liu.se
-- Date: September 2011, revised August 2013
-- Description: Application to test a sound codec interface.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_fancy_application is
	port(clk,rstn  : in  std_logic; -- system signals
	     -- User Interface signals
	     SW        : in  std_logic_vector(5 to 7);
	     LEDR      : out std_logic_vector(0 TO 17);
	     -- SndBus signals
	     lrsel     : in  std_logic;
	     LADC,RADC : in  signed(15 downto 0);
	     ADC_en    : in  std_logic;
	     LDAC,RDAC : out signed(15 downto 0);
	     DAC_en    : out std_logic);
end entity;

architecture rtl of my_fancy_application is
	signal ildac,irdac : signed(15 downto 0); -- internal version of LDAC,RDAC.

	-- sine/noise generation signals:
	-- Tone generator: add <freq> to a 16 bit accumulator <x> each sample (512 clk per sample).
	-- If <freq>=1, then x overflow frequency is 50MHz/512/65536 ~ 1.5 Hz
	-- To get frequency f, you need to set <freq>=f/(1.5 Hz)
	constant freq_147Hz : integer := integer(147.0*512*65536/50000000); -- Tone D, really low. Value gets 99
	-- Magic effect: If you remove the ".0" after 147, you will get a really low tone. Why?
	constant freq_m : integer := 4*freq_147Hz; -- D, both channels
	constant freq_l : integer := 5*freq_147Hz; -- F#, A major third up from the D.
	constant freq_r : integer := 6*freq_147Hz; -- A, A fifth up from the D.
	signal state_counter : natural range 0 to 8 := 0;
	signal x, xm, xl, xr : unsigned(15 downto 0) := (others => '0'); -- phase accumulator, x=bus to PSAC
	signal a, am, al, ar : signed(15 downto 0) := (others => '0'); -- sine amplitude, a=bus from PSAC
	signal sl, sr : signed(15 downto 0); -- the combined amplitude, possibly muted.
	signal noise : std_logic_vector(15 downto 0) := (others => '1');
	signal lack, rack : unsigned(39 downto 0) := (others => '0'); -- for magnitude analysis.

	component PSAC is -- Phase to Sine Amplitude Converter
		port(clk: in std_logic;
		     x  : in unsigned(15 downto 0); -- "111..1" corresponds to 360 deg (almost)
		     a  : out signed(15 downto 0)); -- "011..1" = +1 (almost), "100..0" = -1
	end component;
begin
	--== Generate sinusoids and noise ==
	-- Timing diagram of the sinusoid generation of three tones.:
	-- ADC_en |____|----|____|____|____|____|____|____|____|____|____|____|
	-- state  | 8  | 8  | 0  | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 8  | 8  |
	-- x*     |    |    | @  |    |    |    |    |    |    |    |    |    | @: x* <= x* + freq_* takes effect
	-- x      |    |    |    | xm | xl | xr |    |    |    |    |    |    | x = value
	-- (PSAC has 2 pipeline stages)
	-- a      |    |    |    |    |    |(xm)|(xl)|(xr)|    |    |    |    | a = (x*) = sin(x*)
	-- a*     |    |    |    |    |    |    | @m | @l | @r |    |    |    | @*: a* updated
	-- sl/sr  |    |    | @  |    |    |    |    |    |    |    |    |    | @: s* <= DAC* + a*, using the old value of a*.
	process(clk) begin
		if rising_edge(clk) then -- reset is for noobs
			if ADC_en = '1' then
				state_counter <= 0;
				xm <= xm + freq_m; -- Each cycle: Add freq_m to xm, so xm does freq_m rotations
				xl <= xl + freq_l; -- in 2^16 cycles. Since there are 65530 ~ 2^16 cycles/s,
				xr <= xr + freq_r; -- xm does ~freq_m rotations per sec.
			elsif state_counter < 8 then
				state_counter <= state_counter + 1;
			end if;
			case state_counter is -- The PSAC is a 2 level pipeline from x to a, assignment of x is a third level
				when 0 => x <= xm; -- x=xm |_x__|_psac_|_a__
				when 1 => x <= xl; -- x=xl | xm |  -   | -
				when 2 => x <= xr; -- x=xr | xl |  xm  | -
				when 3 => am <= a; --  -   | xr |  xl  | sin(xm)
				when 4 => al <= a; --  -   | -  |  xr  | sin(xl)
				when 5 => ar <= a; --  -   | -  |   -  | sin(xr)
				when others => null;
			end case;
			noise <= (noise(0) xor noise(7)) & noise(noise'left downto 1);
		end if;
	end process;
	psac_inst : PSAC port map(clk=>clk, x=>x, a=>a);

	--== Add sinusoids and noise to the signal, and perform the analysis ==
	-- Merge the two tones per channel, am/32 + al/16
	sl <= shift_right(al,4) + shift_right(am,5) when SW(7) = '1' else (others => '0');
	sr <= shift_right(ar,4) + shift_right(am,5) when SW(6) = '1' else (others => '0');
	-- Add the to the signal, or mute.
	ildac <= ladc + sl when SW(5) = '0' else (others => '0');
	irdac <= radc + sr when SW(5) = '0' else (others => '0');
	process(clk) begin
		if rising_edge(clk) then
			DAC_en <= '0'; -- default
			if ADC_en = '1' and lrsel = '1' then -- activate left channel
				LDAC <= ildac; -- put calculation results onto the output.
				RDAC <= shift_right(signed(noise),4); -- put some noise onto the output.
				DAC_en <= '1';
				-- Perform dac*dac, and low pass filter the result; ack = (ack - ack/1024) + result
				lack <= lack - lack(lack'left downto 10) + unsigned(ildac*ildac);
			elsif ADC_en = '1' and lrsel = '0' then -- activate right channel
				RDAC <= irdac;
				LDAC <= shift_right(signed(noise),4);
				DAC_en <= '1';
				rack <= rack - rack(rack'left downto 10) + unsigned(irdac*irdac);
			end if;

			-- Compress the ack into 9 LEDS, by OR:ing the bits together. This is a REALLY dirty solution =)
			for i in 0 to 8 loop
				LEDR(i) <= rack(3*i+10) or rack(3*i+9) or rack(3*i+8);
				LEDR(17-i) <= lack(3*i+10) or lack(3*i+9) or lack(3*i+8);
			end loop;
		end if;
	end process;
END architecture;

-- ==================== Private modules ============================

-- ===== PSAC =====
-- A sine polynomial approximation function, with 64 first order polynomials per quadrant.
-- N=16 (2^N points per rotation), F=8 (2^F points per quadrant), C=N-2-F=6 (2^C polynomials per quadrant).
-- W=16 (output wordlength)
-- latency: 2
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PSAC is
	port(
		clk: in std_logic;
		x  : in unsigned(15 downto 0);
		a  : out signed(15 downto 0) := (others=>'0'));
end PSAC;

architecture rtl of PSAC is
	signal x2    : unsigned(13 downto 0) := (others=>'0');   -- x(N-3 downto 0) xor x(N-2). This addresses each point in one quadrant
	signal xC    : unsigned(5 downto 0) := (others=>'0');   -- x(N-3 downto F) xor x(N-2). This addresses each polynomial in one quadrant
	signal xF    : unsigned(7 downto 0) := (others => '0'); -- x(F-1 downto 0) xor x(N-2). This addresses each point in one polynomial
	signal inv_res_0 : std_logic;
	-- signals for stage 1
	signal xF_1   : unsigned(7 downto 0) := (others => '0');
	signal slope_1  : unsigned(9 downto 0) := (others => '0');
	signal offset_1: unsigned(14 downto 0) := (others => '0');
	signal inv_res_1 : std_logic;
	-- signals for stage 2
	signal Res_2  : unsigned(14 downto 0) := (others => '0');
	signal inv_res_2 : std_logic;
	-- *_K => signals is delayed K clock cycles from it's x input.

	function "+"(l : unsigned; r : std_logic) return unsigned is begin
		return unsigned(ieee.std_logic_unsigned."+"(std_logic_vector(l), r));
	end "+";

	type romt is array(0 to 63) of unsigned(24 downto 0);
	signal rom_data : romt; -- constant, assigned in the bottom.
begin
	
	-- Timing diagram, ish:
	--   | x,x2 etc  |     |     |
	--   |           | *_1 | *_2 |
	--   |           |     |  a  |

	-- Initial phase adjustment to quadrant:
	x2 <= unsigned(x(13 downto 0)) when x(14) = '0' else  not unsigned(x(13 downto 0));
	xC <= x2(13 downto 8);
	xF <= x2(7 downto 0);
	inv_res_0 <= x(15);

	process(clk)
		variable tmp : unsigned(23 downto 0);
		variable rom_line : unsigned(24 downto 0);
	begin
		if rising_edge(clk) then
			------ Pipeline stage 1 -------
			xF_1 <= xF;
			rom_line := rom_data(to_integer(xC));
			slope_1 <= rom_line(24 downto 15);
			offset_1 <= rom_line(14 downto 0);
			inv_res_1 <= inv_res_0;
			------ Pipeline stage 2 -------
			tmp := (others => '0');
			tmp(17 downto 0) := slope_1 * xF_1;
			Res_2 <= offset_1 + tmp(22 downto 8);-- + tmp(7);
			inv_res_2 <= inv_res_1;
		end if;
	end process;

	-- final result adjustment to quadrant:
	a <= signed('0' & Res_2) when inv_res_2 = '0' else
	    -signed('0' & Res_2);

	rom_data <= (
		b"1100100100_000000000011001", b"1100100100_000001100111101", b"1100100011_000011001100001", b"1100100001_000100110000100",
		b"1100011111_000110010100101", b"1100011101_000111111000100", b"1100011010_001001011100001", b"1100010111_001010111111011",
		b"1100010011_001100100010001", b"1100001110_001110000100100", b"1100001010_001111100110010", b"1100000100_010001000111100",
		b"1011111111_010010101000000", b"1011111000_010100000111110", b"1011110010_010101100110111", b"1011101011_010111000101000",
		b"1011100011_011000100010011", b"1011011011_011001111110110", b"1011010011_011011011010001", b"1011001010_011100110100011",
		b"1011000001_011110001101101", b"1010110111_011111100101101", b"1010101101_100000111100011", b"1010100010_100010010010000",
		b"1010010111_100011100110010", b"1010001100_100100111001000", b"1010000000_100110001010100", b"1001110100_100111011010011",
		b"1001100111_101000101000111", b"1001011010_101001110101110", b"1001001101_101011000001000", b"1001000000_101100001010101",
		b"1000110010_101101010010100", b"1000100011_101110011000101", b"1000010101_101111011101000", b"1000000110_110000011111100",
		b"0111110111_110001100000010", b"0111100111_110010011111000", b"0111010111_110011011011110", b"0111000111_110100010110101",
		b"0110110111_110101001111011", b"0110100110_110110000110001", b"0110010101_110110111010111", b"0110000100_110111101101011",
		b"0101110010_111000011101110", b"0101100001_111001001100000", b"0101001111_111001111000000", b"0100111101_111010100001111",
		b"0100101011_111011001001011", b"0100011000_111011101110101", b"0100000110_111100010001101", b"0011110011_111100110010010",
		b"0011100000_111101010000100", b"0011001101_111101101100011", b"0010111010_111110000110000", b"0010100111_111110011101001",
		b"0010010011_111110110001111", b"0010000000_111111000100001", b"0001101100_111111010100001", b"0001011001_111111100001100",
		b"0001000101_111111101100100", b"0000110001_111111110101001", b"0000011110_111111111011001", b"0000001010_111111111110110");
		 
end architecture;

