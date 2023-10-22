-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Tue Aug 10 15:05:07 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

LIBRARY work;

ENTITY VGA_contr IS 
	PORT
	(
		fpga_clk :  IN  STD_LOGIC;
		KEY0 :  IN  STD_LOGIC;
		sram_we :  OUT  STD_LOGIC;
		sram_oe :  OUT  STD_LOGIC;
		sram_ce :  OUT  STD_LOGIC;
		sram_lb :  OUT  STD_LOGIC;
		sram_ub :  OUT  STD_LOGIC;
		sram_addr :  OUT  unsigned(19 DOWNTO 0);
		sram_data :  IN  unsigned(15 DOWNTO 0);
		HEX6 :  OUT  STD_LOGIC_VECTOR(0 TO 6);
		HEX7 :  OUT  STD_LOGIC_VECTOR(0 TO 6);
		hsync :  OUT  STD_LOGIC;
		vsync :  OUT  STD_LOGIC;
		vga_clk :  OUT  STD_LOGIC;
		vga_blank :  OUT  STD_LOGIC;
		vga_sync :  OUT  STD_LOGIC;
		vga_b :  OUT  unsigned(7 DOWNTO 0);
		vga_g :  OUT  unsigned(7 DOWNTO 0);
		vga_r :  OUT  unsigned(7 DOWNTO 0)
	);
END entity;

ARCHITECTURE bdf_type OF VGA_contr IS 

	COMPONENT ce_gen
		PORT(clk : IN STD_LOGIC;
			 rstn : IN STD_LOGIC;
			 ce : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT group_no
	GENERIC (number : INTEGER
				);
		PORT(		 HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6);
			 HEX7 : OUT STD_LOGIC_VECTOR(0 TO 6)
		);
	END COMPONENT;

	COMPONENT hs_gen
		PORT(clk : IN STD_LOGIC;
			 rstn : IN STD_LOGIC;
			 hcnt : IN unsigned(9 DOWNTO 0);
			 hsync : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT linecounter
		PORT(clk : IN STD_LOGIC;
			 rstn : IN STD_LOGIC;
			 ce : IN STD_LOGIC;
			 hcnt : IN unsigned(9 DOWNTO 0);
			 vcnt : OUT unsigned(9 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT pixelcounter
		PORT(clk : IN STD_LOGIC;
			 rstn : IN STD_LOGIC;
			 ce : IN STD_LOGIC;
			 hcnt : OUT unsigned(9 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT pixel_reg
		PORT(clk : IN STD_LOGIC;
			 rstn : IN STD_LOGIC;
			 up_lo_byte : IN STD_LOGIC;
			 higher_byte : IN unsigned(7 DOWNTO 0);
			 lower_byte : IN unsigned(7 DOWNTO 0);
			 pixcode : OUT unsigned(7 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT rgb_gen
		PORT(clk : IN STD_LOGIC;
			 rstn : IN STD_LOGIC;
			 ce : IN STD_LOGIC;
			 pixcode : IN unsigned(7 DOWNTO 0);
			 vga_sync : OUT STD_LOGIC;
			 vga_b : OUT unsigned(7 DOWNTO 0);
			 vga_g : OUT unsigned(7 DOWNTO 0);
			 vga_r : OUT unsigned(7 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT vs_gen
		PORT(clk : IN STD_LOGIC;
			 rstn : IN STD_LOGIC;
			 vcnt : IN unsigned(9 DOWNTO 0);
			 vsync : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT blank_gen
		PORT(hcnt : IN unsigned(9 DOWNTO 0);
			 vcnt : IN unsigned(9 DOWNTO 0);
			 blank : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT ram_control
		PORT(hcnt : IN unsigned(9 DOWNTO 0);
			 vcnt : IN unsigned(9 DOWNTO 0);
			 sram_ce : OUT STD_LOGIC;
			 sram_oe : OUT STD_LOGIC;
			 sram_we : OUT STD_LOGIC;
			 sram_lb : OUT STD_LOGIC;
			 sram_ub : OUT STD_LOGIC;
			 up_lo_byte : OUT STD_LOGIC;
			 addr : OUT unsigned(19 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL	blank1 :  STD_LOGIC;
	SIGNAL	blank2 :  STD_LOGIC;
	SIGNAL	blank3 :  STD_LOGIC;
	SIGNAL	ce :  STD_LOGIC;
	SIGNAL	clk :  STD_LOGIC;
	SIGNAL	hcnt :  unsigned(9 DOWNTO 0);
	signal	hsync2, hsync3, hsync4 : std_logic;
	SIGNAL	pixcode2 :  unsigned(7 DOWNTO 0);
	SIGNAL	rstn :  STD_LOGIC;
	SIGNAL	up_lo_byte :  STD_LOGIC;
	SIGNAL	vcnt :  unsigned(9 DOWNTO 0);
	signal	vsync2, vsync3, vsync4 : std_logic;


BEGIN 

	PROCESS(clk,rstn)	BEGIN
		IF (rstn = '0') THEN
			blank2 <= '0';
		ELSIF (RISING_EDGE(clk)) THEN
			blank2 <= blank1;
		END IF;
	END PROCESS;

	PROCESS(clk,rstn) BEGIN
		IF (rstn = '0') THEN
			blank3 <= '0';
		ELSIF (RISING_EDGE(clk)) THEN
			blank3 <= blank2;
		END IF;
	END PROCESS;

	b2v_i_ce_gen : ce_gen
	PORT MAP(clk => clk,
			 rstn => rstn,
			 ce => ce);

	b2v_i_GrNo : group_no
	GENERIC MAP(number => 99)
	PORT MAP(		 HEX6 => HEX6,
			 HEX7 => HEX7);

	PROCESS(clk,rstn) BEGIN
		IF (rstn = '0') THEN
			hsync3 <= '0';
		ELSIF (RISING_EDGE(clk)) THEN
			hsync3 <= hsync2;
		END IF;
	END PROCESS;

	PROCESS(clk,rstn) BEGIN
		IF (rstn = '0') THEN
			hsync4 <= '0';
		ELSIF (RISING_EDGE(clk)) THEN
			hsync4 <= hsync3;
		END IF;
	END PROCESS;

	b2v_i_hs_gen : hs_gen
	PORT MAP(clk => clk,
			 rstn => rstn,
			 hcnt => hcnt,
			 hsync => hsync2);

	b2v_i_linecounter : linecounter
	PORT MAP(clk => clk,
			 rstn => rstn,
			 ce => ce,
			 hcnt => hcnt,
			 vcnt => vcnt);

	b2v_i_pixcounter : pixelcounter
	PORT MAP(clk => clk,
			 rstn => rstn,
			 ce => ce,
			 hcnt => hcnt);

	b2v_i_pixreg : pixel_reg
	PORT MAP(clk => clk,
			 rstn => rstn,
			 up_lo_byte => up_lo_byte,
			 higher_byte => sram_data(15 DOWNTO 8),
			 lower_byte => sram_data(7 DOWNTO 0),
			 pixcode => pixcode2);

	b2v_i_RGB_gen : rgb_gen
	PORT MAP(clk => clk,
			 rstn => rstn,
			 ce => ce,
			 pixcode => pixcode2,
			 vga_sync => vga_sync,
			 vga_b => vga_b,
			 vga_g => vga_g,
			 vga_r => vga_r);

	PROCESS(clk,rstn) BEGIN
		IF (rstn = '0') THEN
			vsync3 <= '0';
		ELSIF (RISING_EDGE(clk)) THEN
			vsync3 <= vsync2;
		END IF;
	END PROCESS;

	PROCESS(clk,rstn) BEGIN
		IF (rstn = '0') THEN
			vsync4 <= '0';
		ELSIF (RISING_EDGE(clk)) THEN
			vsync4 <= vsync3;
		END IF;
	END PROCESS;

	b2v_i_vs_gen : vs_gen
	PORT MAP(clk => clk,
			 rstn => rstn,
			 vcnt => vcnt,
			 vsync => vsync2);

	b2v_inst1 : blank_gen
	PORT MAP(hcnt => hcnt,
			 vcnt => vcnt,
			 blank => blank1);

	b2v_iRAMcontrol : ram_control
	PORT MAP(hcnt => hcnt,
			 vcnt => vcnt,
			 sram_ce => sram_ce,
			 sram_oe => sram_oe,
			 sram_we => sram_we,
			 sram_lb => sram_lb,
			 sram_ub => sram_ub,
			 up_lo_byte => up_lo_byte,
			 addr => sram_addr);

	rstn <= KEY0;
	clk <= fpga_clk;
	hsync <= hsync4;
	vsync <= vsync4;
	vga_clk <= ce;
	vga_blank <= blank3;

END architecture;
