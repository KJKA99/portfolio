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
-- CREATED		"Wed Sep 21 11:03:48 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

LIBRARY work;

ENTITY SndDriver IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		rstn :  IN  STD_LOGIC;
		adcdat :  IN  STD_LOGIC;
		DAC_en :  IN  STD_LOGIC;
		LDAC :  IN  signed(15 DOWNTO 0);
		RDAC :  IN  signed(15 DOWNTO 0);
		dacdat :  OUT  STD_LOGIC;
		mclk :  OUT  STD_LOGIC;
		bclk :  OUT  STD_LOGIC;
		adclrc :  OUT  STD_LOGIC;
		daclrc :  OUT  STD_LOGIC;
		lrsel :  OUT  STD_LOGIC;
		ADC_en :  OUT  STD_LOGIC;
		LADC :  OUT  signed(15 DOWNTO 0);
		RADC :  OUT  signed(15 DOWNTO 0)
	);
END SndDriver;

ARCHITECTURE bdf_type OF SndDriver IS 

COMPONENT mux
	PORT(dacdatl : IN STD_LOGIC;
		 dacdatr : IN STD_LOGIC;
		 daclrc : IN STD_LOGIC;
		 dacdatout : OUT STD_LOGIC);
END COMPONENT;

COMPONENT ctrl
	PORT(clk : IN STD_LOGIC;
		 rstn : IN STD_LOGIC;
		 mclk : OUT STD_LOGIC;
		 bclk : OUT STD_LOGIC;
		 men : OUT STD_LOGIC;
		 lrsel : OUT STD_LOGIC;
		 ADC_en : OUT STD_LOGIC;
		 adclrc : OUT STD_LOGIC;
		 daclrc : OUT STD_LOGIC;
		 BitCnt : OUT unsigned(4 DOWNTO 0);
		 SCCnt : OUT unsigned(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT channel_mod
	PORT(clk : IN STD_LOGIC;
		 rstn : IN STD_LOGIC;
		 men : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 DAC_en : IN STD_LOGIC;
		 adcdat : IN STD_LOGIC;
		 BitCnt : IN unsigned(4 DOWNTO 0);
		 DAC : IN signed(15 DOWNTO 0);
		 SCCnt : IN unsigned(1 DOWNTO 0);
		 dacdat : OUT STD_LOGIC;
		 ADC : OUT signed(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	BitCnt :  unsigned(4 DOWNTO 0);
SIGNAL	dacdat_LEFT :  STD_LOGIC;
SIGNAL	dacdat_out :  STD_LOGIC;
SIGNAL	dacdat_RIGHT :  STD_LOGIC;
SIGNAL	daclrc_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	lrsel_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	men :  STD_LOGIC;
SIGNAL	SCCnt :  unsigned(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= NOT(lrsel_ALTERA_SYNTHESIZED);



b2v_inst1 : mux
PORT MAP(dacdatl => dacdat_LEFT,
		 dacdatr => dacdat_RIGHT,
		 daclrc => daclrc_ALTERA_SYNTHESIZED,
		 dacdatout => dacdat_out);


b2v_inst_ctrl : ctrl
PORT MAP(clk => clk,
		 rstn => rstn,
		 mclk => mclk,
		 bclk => bclk,
		 men => men,
		 lrsel => lrsel_ALTERA_SYNTHESIZED,
		 ADC_en => ADC_en,
		 adclrc => adclrc,
		 daclrc => daclrc_ALTERA_SYNTHESIZED,
		 BitCnt => BitCnt,
		 SCCnt => SCCnt);


b2v_inst_left : channel_mod
PORT MAP(clk => clk,
		 rstn => rstn,
		 men => men,
		 sel => lrsel_ALTERA_SYNTHESIZED,
		 DAC_en => DAC_en,
		 adcdat => adcdat,
		 BitCnt => BitCnt,
		 DAC => LDAC,
		 SCCnt => SCCnt,
		 dacdat => dacdat_LEFT,
		 ADC => LADC);


b2v_inst_right : channel_mod
PORT MAP(clk => clk,
		 rstn => rstn,
		 men => men,
		 sel => SYNTHESIZED_WIRE_0,
		 DAC_en => DAC_en,
		 adcdat => adcdat,
		 BitCnt => BitCnt,
		 DAC => RDAC,
		 SCCnt => SCCnt,
		 dacdat => dacdat_RIGHT,
		 ADC => RADC);

dacdat <= dacdat_out;
daclrc <= daclrc_ALTERA_SYNTHESIZED;
lrsel <= lrsel_ALTERA_SYNTHESIZED;

END bdf_type;