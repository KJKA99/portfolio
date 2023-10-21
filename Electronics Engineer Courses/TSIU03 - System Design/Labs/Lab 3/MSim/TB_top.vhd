library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity TB_top is
end entity;

architecture sim of TB_top is
  -- stimuli signals:
  signal clk : std_logic := '1'; -- start with one. Give rising edge at even times.
  signal rstn : std_logic;
  -- SRAM signals:
  signal sram_addr : unsigned(19 downto 0);
  signal sram_data : unsigned(15 downto 0);
  signal sram_we, sram_oe, sram_ce, sram_lb, sram_ub : std_logic;
  -- VGA signals (vga_blank = blank3):
  signal vga_r, vga_g, vga_b : unsigned(7 downto 0);
  signal hsync, vsync, vga_clk, vga_sync : std_logic;
  
  -- Signals for simulating the VGA DAC:
  -- (*3 = DAC input = pipeline stage 3, *4=VGA port pipeline stage)
  signal blank3, blank4 : std_logic;
  signal pixcode3, pixcode4 : unsigned(7 downto 0); -- a kind of color code.
  
  -- Signals for vertical timing:
  signal hsync_del : std_logic; -- hsync delayed 250 pixels
  signal line_cnt : integer := 0; -- count hcnt pulses.
  
  -- Other simulation signals:
  signal done_h, done_v, done_c : boolean := false; -- the three main sanity processes
  
  component VGA_contr is 
    port(fpga_clk,KEY0 : in  std_logic;
         -- SRAM ports:
         sram_we, sram_oe, sram_ce, sram_lb, sram_ub : out std_logic;
         sram_addr : out unsigned(19 DOWNTO 0);
         sram_data : in  unsigned(15 DOWNTO 0);
         -- HEX ports:
         HEX6, HEX7 : out std_logic_vector(0 TO 6);
         -- VGA ports:
         hsync, vsync : out std_logic;
         vga_clk, vga_blank, vga_sync : out std_logic;
         vga_b, vga_g, vga_r : out  unsigned(7 DOWNTO 0));
  end component;
  component TB_SRAM is
    port(sram_addr : in unsigned(19 downto 0);
         sram_data : inout unsigned(15 downto 0);
         sram_we, sram_oe, sram_ce, sram_lb, sram_ub : in  std_logic);
  end component;
begin
  -- Clock and reset stimuli:
  clk <= not clk after 10 ns when not (done_h and done_v and done_c); -- period = 20 ns <=> freq = 50 MHz
  rstn <= '0', '1' after 101 ns;
  
  -- Instantiations:
  DUT : VGA_contr port map(
        fpga_clk => clk, KEY0 => rstn,
        -- SRAM signals:
        sram_we => sram_we, sram_oe => sram_oe, sram_ce => sram_ce,
        sram_lb => sram_lb, sram_ub => sram_ub,
        sram_addr => sram_addr,
        sram_data => sram_data,
        -- HEX signals are ignored
        -- VGA signals:
        hsync => hsync, vsync => vsync,
        vga_clk => vga_clk, vga_blank => blank3, vga_sync => vga_sync,
        vga_b => vga_b, vga_g => vga_g, vga_r => vga_r);
  iSRAM : TB_SRAM port map(
        sram_we => sram_we, sram_oe => sram_oe, sram_ce => sram_ce,
        sram_lb => sram_lb, sram_ub => sram_ub,
        sram_addr => sram_addr,
        sram_data => sram_data);
  
  -- First encode the RGB back into the color code, for easier comparison:
  pixcode3 <= "0" & vga_r(7 downto 1) when vga_r = vga_g and vga_r = vga_b else -- grayscale mode
              "1" & vga_r(5 downto 4) & vga_g(4 downto 2) & vga_b(3 downto 2); -- color mode
  -- Simulate the ADC7123 chip (but with pixcode rather than RGB code):
  adv7123_p : process(vga_clk) begin
    if rising_edge(vga_clk) then
      blank4 <= blank3;
      pixcode4 <= pixcode3;
    end if;
  end process;
  
  -- Sanity check: Constants.
  sanity_const_p : process begin
    wait for 1 ns; -- let it stabalize
    assert vga_sync = '0' report "vga_sync error" severity error;
    assert sram_we = '1' report "You tried to write to the memory." severity error;
    wait; -- wait forever
  end process;
  
  -- Sanity check: Pixel clock
  sanity_clk_p : process
    -- The concept of variables are described in the bottom of the file
    variable t0,t1 : time;
  begin
    -- make sure things stabalizes.
    wait for 1 us;
    -- collect timing ("NOW" = current simulation time):
    wait until rising_edge(vga_clk); t0 := NOW;
    wait until rising_edge(vga_clk); t1 := NOW;
    -- present result to user:
    if t1-t0 = 40 ns then
      report "VGA_clk timing: OK" severity note;
    else
      report "VGA_clk timing: NOK" severity error;
    end if;
    wait; -- wait forever
  end process;
  
  -- Sanity check: Horizontal timing
  sanity_h_p : process
    -- The concept of variables are described in the bottom of the file
    variable t0,t1,t2,t3,t4 : time;
  begin
    -- make sure things stabalizes.
    wait for 1 us;
    wait until hsync='0';
    
    -- collect timing ("NOW" = current simulation time):
    -- "so"/"eo" = "start of"/"end of"
    wait until blank4='1'; t0 := NOW; -- so pic
    wait until blank4='0'; t1 := NOW; -- eo pic
    wait until hsync='0';  t2 := NOW; -- so hsync
    wait until hsync='1';  t3 := NOW; -- eo hsync
    wait until blank4='1'; t4 := NOW; -- so pic.
    
    -- present result to user:
    -- each pixel is 40 ns long. Time = #pixels*40ns
    -- visible area = t1-t0 long, should be 640*40ns.
    if t1-t0 = 640*40 ns and t2-t1 = 15*40 ns and t3-t2 = 95*40 ns and t4-t3 = 48*40 ns then
      report "Horizontal timing: OK" severity note;
    else
      report "Horizontal timing: NOK"
           & ". c=" & time'image(t1-t0)
           & ", d=" & time'image(t2-t1)
           & ", a=" & time'image(t3-t2)
           & ", b=" & time'image(t4-t3) severity error;
    end if;
    done_h <= true;
    wait;
  end process;
  
  -- Sanity check: Vertical timing
  -- In order to catch the blanking, we need to meassure along a vertical line within the
  --  visible image. To do this, delay the hsync signal 250 pixels, and then trig on this
  --  delayed line.
  hsync_del <= transport hsync after 250 * 40 ns;
  line_cnt <= line_cnt + 1 when rising_edge(hsync); -- line starts with hsync. Increase then.
  
  sanity_v_p : process
    -- The concept of variables are described in the bottom of the file
    variable y0,y1,y2,y3,y4 : integer; -- line_cnt along a vertical line.
  begin
    wait for 1 us; -- make sure things stabalizes.
    wait until rising_edge(hsync_del) and vsync = '0'; -- wait for vsync;
    wait until rising_edge(hsync_del) and blank4 = '1'; y0 := line_cnt; -- so pic
    wait until rising_edge(hsync_del) and blank4 = '0'; y1 := line_cnt; -- eo pic
    wait until rising_edge(hsync_del) and vsync = '0';  y2 := line_cnt; -- so vsync
    wait until rising_edge(hsync_del) and vsync = '1';  y3 := line_cnt; -- eo vsync
    wait until rising_edge(hsync_del) and blank4 = '1'; y4 := line_cnt; -- so pic
    
    -- verify timing:
    if y1-y0 = 480 and y2-y1 = 10 and y3-y2 = 2 and y4-y3 = 33 then
      report "Vertical timing: OK" severity note;
    else
      report "Vertical timing: NOK"
           & ". c=" & integer'image(y1-y0)
           & ", d=" & integer'image(y2-y1)
           & ", a=" & integer'image(y3-y2)
           & ", b=" & integer'image(y4-y3) severity error;
    end if;
    done_v <= true;
    wait;
  end process;
  
  -- Sanity check: Colours (Five pixels in screen)
  sanity_col0_p : process
    variable all_ok : boolean := true;
  begin
    wait for 1 us; -- make sure things stabalizes.
    wait until falling_edge(vsync); -- wait for a new frame.
    -- first line:
    wait until rising_edge(blank4); -- wait for the picture to start.
    wait until falling_edge(vga_clk); -- wait until middle of pixel
    if pixcode4 /= 4 then all_ok := false; end if ;-- row 1, col 1: value=4
    wait until falling_edge(vga_clk); -- middle of next pixel
    if pixcode4 /= 80 then all_ok := false; end if ;-- row 1, col 2: value=5
    wait until falling_edge(vga_clk); -- middle of next pixel
    if pixcode4 /= 2 then all_ok := false; end if ;-- row 1, col 3: value=2
    -- second line:
    wait until rising_edge(blank4);   -- wait for next line
    wait until falling_edge(vga_clk); -- wait until middle of pixel
    if pixcode4 /= 170 then all_ok := false; end if ;-- row 2, col 1: value=6
    wait until falling_edge(vga_clk); -- middle of next pixel
    if pixcode4 /= 213 then all_ok := false; end if ;-- row 2, col 2: value=7
    wait until falling_edge(vga_clk); -- middle of next pixel
    if pixcode4 /= 2 then all_ok := false; end if ;-- row 2, col 3: value=2
    
    -- present result:
    if all_ok then
      report "Colour check: OK" severity note;
    else
      report "Colour check: NOK" severity error;
    end if;
    -- Suggested debug method, if you have an error you can't see in the waveform:
    -- * Change the "all_ok" variable into err_code : integer := 0.
    -- * Instead of all_ok := false, set err_code := <unique code number>.
    -- * If err_code = 0 then "OK", else "NOK: " & integer'image(err_code).
    -- Alternative: Write reports together with all those if statements.
    -- Or: assert pixcode4 = 4 report "1: pixcode4 /= 4" severity error;
    done_c <= true;
    wait;
  end process;
  
  -- Two extra sanity checks (never the wrong colors):
  -- 1. SRAM is padded with pixel value 3. This should never be sent to the screen.
  sanity_col1_p : process begin
    wait for 1 us; -- make sure things stabalize.
    -- hope that this will wait forever:
    wait until falling_edge(vga_clk) and pixcode4=3 and blank4='1';
    report "Pixel Error: out-of-screen values." severity error;
    wait;
  end process;
  -- 2. SRAM can only reply values {2,3,4,50,aa,d5}_16 = {2,3,4,80,170,213}. Anything else is something wrong.
  sanity_col2_p : process begin
    wait for 1 us;
    wait until falling_edge(vga_clk) and not (pixcode4=2 or pixcode4=3 or pixcode4=4 or pixcode4=80 or pixcode4=170 or pixcode4=213);
    report "Pixel Error: invalid pixel value." severity error;
    wait;
  end process;
end architecture;


-- Variables in processes:
-- Normally, a signal is assigned in the process, and the effect are available first
--   at the end of the process.
-- Variables are different. They are assigned at once in the process, and can be
--   used directly in the next line. Variables _can_ be used in synthesis ("compiled"
--   to the FPGA), but there are many pitfalls then. The recommendation is to NOT
--   use variables more than in simulation.

