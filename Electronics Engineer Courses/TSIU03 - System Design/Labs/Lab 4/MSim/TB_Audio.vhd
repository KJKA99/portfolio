library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; -- used for sin/cos. Type real is 32 bit floating point.

library work;

entity TB_Audio is
end entity;

architecture sim of TB_Audio is
	-- DUT signals:
	signal clk, rstn : std_logic := '1'; -- clk must be initiated. 'U' is not a good state.
	signal mclk, bclk, adclrc, daclrc, adcdat, dacdat : std_logic;
	signal lrsel : std_logic;
	signal LADC_out, RADC_out, LDAC_in, RDAC_in : signed(15 downto 0);
	signal ADC_en, DAC_en : std_logic;
	
	-- signals for clock generation:
	signal done : boolean := false;
	
	-- signals for serial/parallel translator:
	signal ADC_stimuli_left, ADC_stimuli_right : signed(15 downto 0);
	signal DAC_result_left, DAC_result_right : signed(15 downto 0);
	
	-- some functions for reporting results:
	function s2str(x : signed) return string is begin
		return integer'image(to_integer(x));
	end function;
	function oknoks(x, e : time) return string is begin
		if x=e then return "OK (" & time'image(x) & ")";
		else return "NOK (" & time'image(x) & "/=" & time'image(e) & ")"; end if;
	end function;
	function oknoks(x, e : std_logic) return string is begin
		if x=e then return "OK (" & std_logic'image(x) & ")";
		else return "NOK (" & std_logic'image(x) & "/=" & std_logic'image(e) & ")"; end if;
	end function;
	
	-- declare component DUT:
	-- The names and types are important. The order does not matter.
	component SndDriver IS 
		PORT(clk,rstn  : IN  STD_LOGIC;
		     -- serial interface:
		     adcdat    : IN  STD_LOGIC;
		     mclk,bclk,adclrc,daclrc,dacdat :  OUT  STD_LOGIC;
		     -- parallel interface:
		     lrsel     : OUT  STD_LOGIC;
		     DAC_en    : in std_logic;
		     ADC_en    : out std_logic;
		     LDAC,RDAC : IN  signed(15 DOWNTO 0);
		     LADC,RADC : OUT  signed(15 DOWNTO 0));
	END component;

begin
	-- ### Clock generation part ###
	clk <= not clk after 10 ns when not done;
	rstn <= '0', '1' after 50 ns;
	done <= false, true after 1 ms;
	
	-- ### Sanity check: Verify the clocks and lrsel patterns ###
	timing_sanity_p: process
		variable t_start, t_stop : time;
	begin
		-- wait for signals to stabilize.
		wait for 1 us;
		-- meassure time between two positive flanks on mclk.
		wait until rising_edge(mclk); t_start := now; -- "now" is a keyword for current simulation time.
		wait until rising_edge(mclk); t_stop := now;
		report "mclk: " & oknoks(t_stop - t_start, 4*20 ns) severity note; -- oknoks defined above.
		--/--------------------------------------------------------------
		--|------------ TO FILL IN: -------------------------------------
		--|--------------------------------------------------------------
		--| 
		--| See the lab manual, section Simulation -> The Test Bench.
		--| 
		--| meassure time between two positive flanks on bclk.
		wait until rising_edge(bclk); t_start := now;
		wait until rising_edge(bclk); t_stop := now;
		report "bclk period: " & oknoks(t_stop-t_start, 16*20 ns) severity note;
		--| meassure time between two positive flanks on adclrc.
		wait until rising_edge(adclrc); t_start := now;
		wait until rising_edge(adclrc); t_stop := now;
		report "adclrc period: " & oknoks(t_stop-t_start, 1024*20 ns) severity note;
		--| wait for another flank on adclrc.
		wait until rising_edge(adclrc); t_start := now;
		--| wait for yet another ns (to avoid delta cycle problems)
		wait for 1 ns;
		--| verify that mclk and bclk have their expected values ('1' or '0')
		report "mclk expected values: " & oknoks(mclk, '1') severity note;
		report "bclk expected values: " & oknoks(bclk, '0') severity note;
		--|
		--|--------------------------------------------------------------
		--|----------- STOP FILL IN -------------------------------------
		--\--------------------------------------------------------------
		
		--  meassure time between two pulses on ADC_en.
		wait until ADC_en='1' and rising_edge(clk); t_start := now;
		wait until ADC_en='1' and rising_edge(clk); t_stop := now;
		report "ADC_en period: " & oknoks(t_stop-t_start, 512*20 ns) severity note;

		-- Verify that adclrc = daclrc /= lrsel for the rest of the simulation. Halt on error.
		while not done loop
			wait until adclrc'event or daclrc'event or lrsel'event or done; -- wait for a change.
			wait for 1 ns; -- make sure delta cycles do not disturb us.
			if daclrc /= adclrc then report "Error: daclrc /= adclrc" severity error; wait; end if;
			if lrsel = adclrc then report "Error: lrsel = adclrc" severity error; wait; end if;
		end loop;
		-- report that all is fine.
		report "adclrc = daclrc /= lrsel: OK" severity note;
		-- halt
		wait;
	end process;
 	
	-- ### Test the DAC path ###
	--/ Some ASCII art of the DAC sample timings: (the signals relevant for right DAC)
	--| lrsel:            ________--------________--------________--------
	--| RDAC_in:          ><R1============><R2============><R3============>
	--| RDAC_en:          _-_______-_______-_______-_______-_______-______
	--| daclrc:           --------________--------________--------________
	--| dacdat:           lxxx----rxxx----lxxx----rxxx----lxxx----rxxx----
	--| DAC_result_right: --------xxxx<R1========>xxxx<R2========>xxxx<R3=
	--\ verify DAC_res_r:             R1              R2              R3    (trigged after last dac bit)
	dac_stimuli_p: process
		variable sample : signed(15 downto 0);
		constant rad_per_us_1kHz : real := 2*3.14159265359*0.001;
	begin
		-- This process makes one loop every sample.
		wait until lrsel'event;
		wait until rising_edge(clk);
		if lrsel = '1' then -- left
			LDAC_in <= to_signed(integer(32767.0*cos(real(now/(1 us))*rad_per_us_1kHz*3.0)), 16);
		else -- right
			RDAC_in <= -to_signed(integer(32767.0*cos(real(now/(1 us))*rad_per_us_1kHz*3.0)), 16);
		end if;
		DAC_en <= '1'; -- create a pulse during only one clock cycle.
		wait until rising_edge(clk);
		DAC_en <= '0';
		-- ...and then the process starts over again
	end process;
	
	dac_sanity_p: process
		variable sample : signed(15 downto 0);
		variable cnt_OK, cnt_NOK : natural := 0;
	begin
		-- This process runs once.
		wait until rising_edge(daclrc);
		wait until rising_edge(daclrc);
		while not done loop
			-- Now daclrc has just changed. Start to receive the sample.
			for bit_index in 15 downto 0 loop
				wait until rising_edge(bclk);
				sample(bit_index) := dacdat;
			end loop;
			if daclrc = '1' then -- Left:
				DAC_result_left <= sample; -- only for the waveform. The signal is not used by the testbench
				if sample /= LDAC_in then
					if cnt_NOK = 0 then
						report "LDAC: NOK. Sent=" & s2str(LDAC_in) & ", received=" & s2str(sample) & "." severity error;
					end if;
					cnt_NOK := cnt_NOK + 1;
				else
					cnt_OK := cnt_OK + 1;
				end if;
			else -- Right:
				DAC_result_right <= sample; -- only for the waveform. The signal is not used by the testbench
				if sample /= RDAC_in then
					if cnt_NOK = 0 then
						report "RDAC: NOK. Sent=" & s2str(RDAC_in) & ", received=" & s2str(sample) & "." severity error;
					end if;
					cnt_NOK := cnt_NOK + 1;
				else
					cnt_OK := cnt_OK + 1;
				end if;
			end if;
			-- wait for new sample, or end of simulation.
			wait until daclrc'event or done; -- wait for a new sample
		end loop;
		-- report result, then wait forever
		if cnt_NOK = 0 and cnt_OK > 0 then
			report "DAC path: OK. " & integer'image(cnt_OK) & " samples passed." severity note;
		else
			report "DAC path: OK. " & integer'image(cnt_OK) & " samples passed. " & integer'image(cnt_NOK) & " samples failed. First one reported." severity note;
		end if;
		wait;
	end process;

	-- ### Test the ADC path ###
	--/ Some ASCII art of the sample timings: (the signals relevant for left ADC)
	--| adclrc:           --------________--------________--------________
	--| ADC_stimuli_left: <L1============><L2============><L3============>
	--| adcdat:           lxxx----rxxx----lxxx----rxxx----lxxx----rxxx----   x=toggling
	--| lrsel:            ________--------________--------________--------
	--| LADC_out:         xxxx<L1========>xxxx<L2========>xxxx<L3========>
	--\ verify LADC_out:          L1              L2              L3       (trigged by ADC_en)
	adc_stimuli_p: process
		variable sample : signed(15 downto 0);
		constant rad_per_us_1kHz : real := 2*3.14159265359*0.001;
	begin
		-- This process makes one loop every sample.
		wait until adclrc'event;
		if adclrc = '1' then -- left
			sample := to_signed(integer(32767.0*sin(real(now/(1 us))*rad_per_us_1kHz*1.5)), 16);
			ADC_stimuli_left <= sample;
		else -- right
			sample := -to_signed(integer(32767.0*sin(real(now/(1 us))*rad_per_us_1kHz*1.5)), 16);
			ADC_stimuli_right <= sample;
		end if;
		-- Translate to serial:
		for bit_index in 15 downto 0 loop
			adcdat <= sample(bit_index);
			wait for 1 ns; -- just in case bclk is available a few delta cycles after adclrc
			wait until falling_edge(bclk);
		end loop;
		adcdat <= 'X';
		-- ...and then the process starts over again
	end process;

	adc_sanity_p: process
		variable cnt_OK, cnt_NOK : natural := 0;
		variable stimuli,result : signed(15 downto 0);
	begin
		-- first wait for a few samples, until we know there is a stable signal.
		wait until rising_edge(lrsel);
		wait until rising_edge(lrsel);
 		wait until (ADC_en = '1' and rising_edge(clk)) or not done; -- wait for a new sample.
 		-- Main loop:
		while not done loop
			-- Now there is a new sample on LADC/RADC. Test it against ADC_stimuli_*.
			if lrsel = '1' then -- Left:
				if LADC_out /= ADC_stimuli_left then
					if cnt_NOK = 0 then
						report "LADC: NOK. Sent=" & s2str(ADC_stimuli_left) & ", received=" & s2str(LADC_out) & "." severity error;
					end if;
					cnt_NOK := cnt_NOK + 1;
				else
					cnt_OK := cnt_OK + 1;
				end if;
			else -- Right:
				if RADC_out /= ADC_stimuli_right then
					if cnt_NOK = 0 then
						report "RADC: NOK. Sent=" & s2str(ADC_stimuli_right) & ", received=" & s2str(RADC_out) & "." severity error;
					end if;
					cnt_NOK := cnt_NOK + 1;
				else
					cnt_OK := cnt_OK + 1;
				end if;
			end if;
			-- wait for new sample, or end of simulation.
			wait until (ADC_en = '1' and rising_edge(clk)) or done; -- wait for a new sample
		end loop;
		-- report result, then wait forever
		if cnt_NOK = 0 and cnt_OK > 0 then
			report "ADC path: OK. " & integer'image(cnt_OK) & " samples passed." severity note;
		else
			report "ADC path: OK. " & integer'image(cnt_OK) & " samples passed. " & integer'image(cnt_NOK) & " samples failed. First one reported." severity note;
		end if;
		wait;
	end process;
  
	-- ### Instantiation ###
	DUT : SndDriver
		port map(clk=>clk,rstn=>rstn,
		         -- serial interface:
		         adcdat=>adcdat,
		         mclk=>mclk,bclk=>bclk,adclrc=>adclrc,daclrc=>daclrc,dacdat=>dacdat,
		         -- parallel interface:
		         lrsel=>lrsel,
		         LDAC=>LDAC_in, RDAC=>RDAC_in, LADC=>LADC_out, RADC=>RADC_out,
		         DAC_en=>DAC_en, ADC_en=>ADC_en);
end architecture;

