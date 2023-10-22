library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_fancy_application is
	port(
		  clk  			: in  std_logic;
		  rstn 			: in std_logic;
	     lrsel     	: in  std_logic;
	     LADC,RADC 	: in  signed(15 downto 0);
	     ADC_en    	: in  std_logic;
	     LDAC 			: out signed(15 downto 0);
		  RDAC 			: out signed(15 downto 0);
	     DAC_en    	: out std_logic;
		  LEDR      	: out std_logic_vector(0 TO 17);
		  MIDI_NOTES	: in  std_logic_vector(11 downto 0)
		 ); 
end entity;

architecture rtl of my_fancy_application is
	signal ildac		: signed(15 downto 0); -- internal version of LDAC,RDAC.
	signal irdac 		: signed(15 downto 0); -- internal version of LDAC,RDAC.
   signal S_S4 		: signed(15 downto 0); -- Tree adder signals
	signal S_S3 		: signed(15 downto 0);
	signal S_S2 		: signed(15 downto 0); 
	signal S_S1 		: signed(15 downto 0); 
------------------------------------------------------------------------------------------------------------------------
--Note constants 
--
	constant freq_147Hz 		: integer := integer(147.0*512*65536/50000000); -- Tone D, really low. Value gets 99
	constant freq_C         : integer := integer(523.0*512*65536/50000000);
	constant freq_C_sharp   : integer := integer(555.0*512*65536/50000000);
	constant freq_D         : integer := integer(587.0*512*65536/50000000);
	constant freq_D_sharp   : integer := integer(622.0*512*65536/50000000);
	constant freq_E   		: integer := integer(660.0*512*65536/50000000);
	constant freq_F         : integer := integer(698.0*512*65536/50000000); --Changed from 698 to 523
	constant freq_F_SHARP   : integer := integer(740.0*512*65536/50000000);
	constant freq_G         : integer := integer(784.0*512*65536/50000000);
	constant freq_G_SHARP   : integer := integer(830.0*512*65536/50000000);	
	constant freq_A         : integer := integer(880.0*512*65536/50000000); 
	constant freq_A_SHARP   : integer := integer(932.0*512*65536/50000000); 	
	constant freq_B         : integer := integer(988.0*512*65536/50000000); 
------------------------------------------------------------------------------------------------------------------------
--Internal signals
--	
	signal state_counter : natural range 0 to 8 := 0;
	signal x, xm, xsum : unsigned(15 downto 0) := (others => '0'); -- phase accumulator, x=bus to PSAC
	signal a, am, al, ar, a_combined : signed(15 downto 0) := (others => '0'); -- sine amplitude, a=bus from PSAC
	signal sl, sr : signed(15 downto 0); -- the combined amplitude, possibly muted.
	signal noise : std_logic_vector(15 downto 0) := (others => '1');
	signal lack, rack : unsigned(39 downto 0) := (others => '0'); -- for magnitude analysis.
-------------------------------------------------------------------------------------------------------------------------
-- PSAC Outputs
--
	signal a_c 			: signed(15 downto 0);
	signal a_c_sharp  : signed(15 downto 0);
	signal a_d 			: signed(15 downto 0);
	signal a_d_sharp  : signed(15 downto 0);
	signal a_e			: signed(15 downto 0);
	signal a_f			: signed(15 downto 0);
	signal a_f_sharp	: signed(15 downto 0);
	signal a_g			: signed(15 downto 0);
	signal a_g_sharp	: signed(15 downto 0);
	signal a_a			: signed(15 downto 0);
	signal a_a_sharp	: signed(15 downto 0);
	signal a_b        : signed(15 downto 0); 
--------------------------------------------------------------------------------------------------------------------------
-- PSAC Inputs
--
	signal x_c 			: unsigned(15 downto 0);
	signal x_c_sharp  : unsigned(15 downto 0);
	signal x_d 			: unsigned(15 downto 0);
	signal x_d_sharp  : unsigned(15 downto 0);
	signal x_e 			: unsigned(15 downto 0);
	signal x_f 			: unsigned(15 downto 0);
	signal x_f_sharp 	: unsigned(15 downto 0);
	signal x_g 			: unsigned(15 downto 0);
	signal x_g_sharp 	: unsigned(15 downto 0);
	signal x_a 			: unsigned(15 downto 0);
	signal x_a_sharp 	: unsigned(15 downto 0);
	signal x_b        : unsigned(15 downto 0);
	
-------------------------------------------------------------------------------------------------------------------------	
--PSAC component, dont touch 
--
	component PSAC is -- Phase to Sine Amplitude Converter
		port(
			  clk			: in std_logic;
		     x  			: in unsigned(15 downto 0); -- "111..1" corresponds to 360 deg (almost)
		     a  			: out signed(15 downto 0)
			 );
	end component;
---------------------------------------------------------------------------------------------------
--Midi note & PSAC loader
--
begin

	process(clk) 
	begin
		if rising_edge(clk) then
			if rstn = '0' then
				x_c 			<= (others => '0');
				x_c_sharp 	<= (others => '0');
				x_d			<=	(others => '0');
				x_d_sharp   <= (others => '0');
				x_e 			<= (others => '0');
				x_f 			<= (others => '0');
				x_f_sharp 	<= (others => '0');
				x_g 			<= (others => '0');
				x_g_sharp 	<= (others => '0');
				x_a 			<= (others => '0');
				x_a_sharp 	<= (others => '0');
				x_b 	      <= (others => '0');
			else
				if ADC_en = '1' then
					x_c 			<=  	   x_c + freq_C;
					x_c_sharp 	<=       x_c_sharp + freq_C_sharp;
					
					x_d			<=			x_d + freq_D;
					x_d_sharp   <=       x_d_sharp + freq_D_sharp;
					
					x_e			<=			x_e + freq_E;
					
					x_f			<=			x_f + freq_F;
					x_f_sharp	<=			x_f_sharp + freq_F_SHARP;
					
					x_g			<=			x_g + freq_G;
					x_g_sharp	<=			x_g_sharp + freq_G_SHARP;
					
					x_a			<=			x_a + freq_A;
					x_a_sharp	<=			x_a_sharp + freq_A_SHARP;
					
					x_b         <=       x_b + freq_B; 
				end if;
			end if;
		end if;
	end process;
	
	psac_c 			: PSAC port map(clk=>clk, x=>x_c, a=>a_c);
	psac_c_sharp 	: PSAC port map(clk=>clk, x=>x_c_sharp, a=>a_c_sharp);
	
	psac_d 			: PSAC port map(clk=>clk, x=>x_d, a=>a_d);
	psac_d_sharp 	: PSAC port map(clk=>clk, x=>x_d_sharp, a=>a_d_sharp); --HERE
	
	psac_e 			: PSAC port map(clk=>clk, x=>x_e, a=>a_e);
	
	psac_f 			: PSAC port map(clk=>clk, x=>x_f, a=>a_f); --HERE
	psac_f_sharp 	: PSAC port map(clk=>clk, x=>x_f_sharp, a=>a_f_sharp);
	
	psac_g 			: PSAC port map(clk=>clk, x=>x_g, a=>a_g);
	psac_g_sharp 	: PSAC port map(clk=>clk, x=>x_g_sharp, a=>a_g_sharp);
	
	psac_a 			: PSAC port map(clk=>clk, x=>x_a, a=>a_a);
	psac_a_sharp 	: PSAC port map(clk=>clk, x=>x_a_sharp, a=>a_a_sharp);
	
	psac_b 			: PSAC port map(clk=>clk, x=>x_b, a=>a_b);
-----------------------------------------------------------------------------------------------------
--Main sound processor
--
	
	process(clk, rstn)
		variable C_CS 		: signed(15 downto 0);
		variable D_DS		: signed(15 downto 0);
		variable E_F		: signed(15 downto 0);
		variable G_FS		: signed(15 downto 0);
		variable GS_A		: signed(15 downto 0);
		variable AS_B		: signed(15 downto 0);
	begin
		if rising_edge(clk) then
			C_CS := (others => '0');
			D_DS := (others => '0');
			E_F := (others => '0');
			G_FS := (others => '0');
			GS_A := (others => '0');
			AS_B := (others => '0');
			S_S4 <= (others => '0');
			S_S3 <= (others => '0');
			S_S2 <= (others => '0'); 
			S_S1 <= (others => '0');
			
			if MIDI_NOTES(0) = '1' then --C
				C_CS := C_CS + shift_right(a_c, 4);
			end if;
			
			if MIDI_NOTES(1) = '1' then --C SHARP
				C_CS := C_CS + shift_right(a_c_sharp, 4);
			end if;
			
			if MIDI_NOTES(2) = '1' then --D
				D_DS := D_DS + shift_right(a_d, 4);
			end if;
			
			if MIDI_NOTES(3) = '1' then --D SHARP
				D_DS := D_DS + shift_right(a_d_sharp, 4);
			end if; 
			
			if MIDI_NOTES(4) = '1' then --E
				E_F := E_F + shift_right(a_e, 4);
			end if;
			
			if MIDI_NOTES(5) = '1' then --F
				E_F := E_F + shift_right(a_f, 4);
			end if;
			
			if MIDI_NOTES(6) = '1' then --F SHARP
				G_FS := G_FS + shift_right(a_f_sharp, 4);
			end if;
			
			if MIDI_NOTES(7) = '1' then --G
				G_FS := G_FS + shift_right(a_g, 4);			
			end if;
			
			if MIDI_NOTES(8) = '1' then --G SHARP
				GS_A := GS_A + shift_right(a_g_sharp, 4);
			end if;
			
			if MIDI_NOTES(9) = '1' then --A
				GS_A := GS_A + shift_right(a_a, 4);
			end if;
			
			if MIDI_NOTES(10) = '1' then --A_SHARP
				AS_B := AS_B + shift_right(a_a_sharp, 4);
			end if;
			
			if MIDI_NOTES(11) = '1' then --B
				AS_B := AS_B + shift_right(a_b, 4);
			end if;
			
			S_S3 <= C_CS + D_DS;
			S_S4 <= E_F + G_FS;
			S_S2 <= GS_A + AS_B;
			S_S1 <= S_S3 + S_S4;
			a_combined <= S_S1 + S_S2;
		end if;
	end process;
	
	ildac <= ladc + a_combined; 
	irdac <= radc + a_combined; 
------------------------------------------------------------------------------------------------------------
-- DAC stuff... DONT TOUCH!
--
	process(clk) begin
		if rising_edge(clk) then
			DAC_en <= '0'; -- default
			if ADC_en = '1' and lrsel = '1' then -- activate left channel
				LDAC <= ildac; -- put calculation results onto the output.
				--RDAC <= shift_right(signed(noise),4); -- put some noise onto the output.
				DAC_en <= '1';
				-- Perform dac*dac, and low pass filter the result; ack = (ack - ack/1024) + result
				lack <= lack - lack(lack'left downto 10) + unsigned(ildac*ildac);
			elsif ADC_en = '1' and lrsel = '0' then -- activate right channel
				RDAC <= irdac;
				--LDAC <= shift_right(signed(noise),4);
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
---------------------------------------------------------------------------------------------------------------

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
