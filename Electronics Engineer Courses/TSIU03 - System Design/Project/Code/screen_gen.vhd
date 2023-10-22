library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Screen_gen is
  Port(  
		 vcnt 					: in unsigned(9 downto 0);
       hcnt 					: in unsigned(9 downto 0);
		 play_record_ctrl 	: in std_logic_vector(11 downto 0); 
		 volume_ctrl 			: in std_logic_vector (3 downto 0); 
		 balance_ctrl 			: in std_logic_vector (3 downto 0); 
		 pixcode_in				: in unsigned(7 downto 0);
       pixcode_out			: out unsigned(7 downto 0)
		);
end Screen_gen;

architecture rtl of Screen_gen is
	signal volume_cnt			: integer;
	signal balance_cnt		: integer;
	signal pixcode_vol		: unsigned(7 downto 0);
	signal pixcode_balr		: unsigned(7 downto 0);
	signal pixcode_ball		: unsigned(7 downto 0);
	signal pixcode_notes		: unsigned(7 downto 0);
	
begin

	-- Different processes draw on different parts of the screen
	pixcode_out <= 
		pixcode_vol when vcnt >= 480-127 and vcnt <= 480-86 and (hcnt <= 640-63 and 57 <= hcnt) else
		pixcode_ball when vcnt >= 63 and vcnt <= 272 and (57 <= hcnt and hcnt <= 125) else
		pixcode_balr when vcnt >= 63 and vcnt <= 272 and (510 <= hcnt and hcnt <= 578) else
		pixcode_notes;

	-------------------------------------------------------------------------------
	-- Volume control

	process(all)
		variable vol_ctrl : integer;
	begin
		vol_ctrl := 56 + (35*(to_integer(unsigned(volume_ctrl))));
		if vcnt >= 480-127 and vcnt <= 480-86 and (hcnt <= vol_ctrl and 57 <= hcnt) then
			pixcode_vol <= "10011100";
		else
			pixcode_vol <= pixcode_in;
		end if;
	end process;

	-------------------------------------------------------------------------------
	-- Balance control (Left/Right)
	
	-- Panning-left
	process(all)
		variable ball_ctrl : integer;
	begin
		if (to_integer(unsigned(balance_ctrl))) < 9 then
			ball_ctrl := 63;
		else
			ball_ctrl := 272 - (30*(8-((to_integer(unsigned(balance_ctrl)-8))))) + 30;
		end if;
		
		if vcnt >= ball_ctrl and vcnt <= 272 and (57 <= hcnt and hcnt <= 125) then
			pixcode_ball <= "10011100";
		else
			pixcode_ball <= pixcode_in;
		end if;
	end process;
	
	-- Panning-right
	process(all)
		variable balr_ctrl : integer;
	begin
		if (to_integer(unsigned(balance_ctrl))) > 7 then
			balr_ctrl := 63;
		else
			balr_ctrl :=  272 - (30*((to_integer(unsigned(balance_ctrl)))))+30;
		end if;
	
		if vcnt >= balr_ctrl and vcnt <= 272 and (510 <= hcnt and hcnt <= 578) then
			pixcode_balr <= "10011100";
		else
			pixcode_balr <= pixcode_in;
		end if;
	end process;
	
	-------------------------------------------------------------------------------
	-- Notes control

	process(all)
	begin

		if vcnt >= 278 and vcnt <= 312 and (188 <= hcnt and hcnt <= 226) then -- C
			if play_record_ctrl(0) = '1' then
				pixcode_notes <= "11100000";
			else
				pixcode_notes <= pixcode_in;
			end if;
			
		elsif vcnt >= 70 and vcnt <= 100 and (218 <= hcnt and hcnt <= 235) then -- C-sharp
			if play_record_ctrl(1) = '1' then
				pixcode_notes <= "11101100";
			else
				pixcode_notes <= pixcode_in;
			end if;
		
		elsif vcnt >= 278 and vcnt <= 312 and (227 <= hcnt and hcnt <= 263) then -- D
			if play_record_ctrl(2) = '1' then
				pixcode_notes <= "11111100";
			else
				pixcode_notes <= pixcode_in;
			end if;
		
		elsif vcnt >= 70 and vcnt <= 100 and (254 <= hcnt and hcnt <= 271) then -- D-sharp
			if play_record_ctrl(3) = '1' then
				pixcode_notes <= "10111100";
			else
				pixcode_notes <= pixcode_in;
			end if;		

		elsif vcnt >= 278 and vcnt <= 312 and (264 <= hcnt and hcnt <= 299) then -- E
			if play_record_ctrl(4) = '1' then
				pixcode_notes <= "10011100";
			else
				pixcode_notes <= pixcode_in;
			end if;
			
		elsif vcnt >= 278 and vcnt <= 312 and (300 <= hcnt and hcnt <= 335) then -- F
			if play_record_ctrl(5) = '1' then
				pixcode_notes <= "10011101";
			else
				pixcode_notes <= pixcode_in;
			end if;
			
		elsif vcnt >= 70 and vcnt <= 100 and (327 <= hcnt and hcnt <= 344) then -- F-sharp
			if play_record_ctrl(6) = '1' then
				pixcode_notes <= "10011111";
			else
				pixcode_notes <= pixcode_in;
			end if;
			
		elsif vcnt >= 278 and vcnt <= 312 and (336 <= hcnt and hcnt <= 371) then -- G
			if play_record_ctrl(7) = '1' then
				pixcode_notes <= "10001111";
			else
				pixcode_notes <= pixcode_in;
			end if;

		elsif vcnt >= 70 and vcnt <= 100 and (363 <= hcnt and hcnt <= 381) then -- G-sharp
			if play_record_ctrl(8) = '1' then
				pixcode_notes <= "10000011";
			else
				pixcode_notes <= pixcode_in;
			end if;
			
		elsif vcnt >= 278 and vcnt <= 312 and (372 <= hcnt and hcnt <= 407) then -- A
			if play_record_ctrl(9) = '1' then
				pixcode_notes <= "10100011";
			else
				pixcode_notes <= pixcode_in;
			end if;
			
		elsif vcnt >= 70 and vcnt <= 100 and (400 <= hcnt and hcnt <= 417) then -- A-sharp
			if play_record_ctrl(10) = '1' then
				pixcode_notes <= "11100011";
			else
				pixcode_notes <= pixcode_in;
			end if;
			
		elsif vcnt >= 278 and vcnt <= 312 and (408 <= hcnt and hcnt <= 447) then -- B
			if play_record_ctrl(11) = '1' then
				pixcode_notes <= "11100001";
			else
				pixcode_notes <= pixcode_in;
			end if;
		else
			pixcode_notes <= pixcode_in;
		end if;
	end process;

end rtl;