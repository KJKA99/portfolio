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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "09/11/2023 16:23:57"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab2_KB IS
    PORT (
	rstn : IN std_logic;
	clk : IN std_logic;
	PS2_CLK : IN std_logic;
	PS2_DAT : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Lab2_KB;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstn	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_CLK	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_DAT	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2_KB IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rstn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_PS2_CLK : std_logic;
SIGNAL ww_PS2_DAT : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \PS2_CLK2~q\ : std_logic;
SIGNAL \PS2_CLK2_old~q\ : std_logic;
SIGNAL \shiftreg[0]~8_combout\ : std_logic;
SIGNAL \rstn~input_o\ : std_logic;
SIGNAL \PS2_DAT~input_o\ : std_logic;
SIGNAL \PS2_DAT2~feeder_combout\ : std_logic;
SIGNAL \PS2_DAT2~q\ : std_logic;
SIGNAL \shiftreg~10_combout\ : std_logic;
SIGNAL \shiftreg[8]~1_combout\ : std_logic;
SIGNAL \shiftreg~3_combout\ : std_logic;
SIGNAL \shiftreg~4_combout\ : std_logic;
SIGNAL \shiftreg~5_combout\ : std_logic;
SIGNAL \shiftreg~9_combout\ : std_logic;
SIGNAL \shiftreg~2_combout\ : std_logic;
SIGNAL \shiftreg~6_combout\ : std_logic;
SIGNAL \scancode[2]~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \shiftreg~7_combout\ : std_logic;
SIGNAL \shiftreg~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \scancode[7]~0_combout\ : std_logic;
SIGNAL \scancode[6]~6_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \scancode[4]~3_combout\ : std_logic;
SIGNAL \scancode[0]~1_combout\ : std_logic;
SIGNAL \scancode[5]~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \scancode[3]~8_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \scancode[1]~2_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \scancode[7]~7_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \F0~0_combout\ : std_logic;
SIGNAL \F0~q\ : std_logic;
SIGNAL \scancode[8]~feeder_combout\ : std_logic;
SIGNAL \E0~0_combout\ : std_logic;
SIGNAL \E0~q\ : std_logic;
SIGNAL \scancode[9]~feeder_combout\ : std_logic;
SIGNAL shiftreg : std_logic_vector(9 DOWNTO 0);
SIGNAL scancode : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_rstn <= rstn;
ww_clk <= clk;
ww_PS2_CLK <= PS2_CLK;
ww_PS2_DAT <= PS2_DAT;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X90_Y72_N6
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (scancode(4) & (!scancode(0) & ((scancode(1))))) # (!scancode(4) & (scancode(5) & (scancode(0) $ (scancode(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(0),
	datab => scancode(5),
	datac => scancode(4),
	datad => scancode(1),
	combout => \Mux4~0_combout\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => scancode(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y67_N15
\PS2_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_CLK,
	o => \PS2_CLK~input_o\);

-- Location: FF_X89_Y72_N17
PS2_CLK2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PS2_CLK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS2_CLK2~q\);

-- Location: FF_X89_Y72_N9
PS2_CLK2_old : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PS2_CLK2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS2_CLK2_old~q\);

-- Location: LCCOMB_X89_Y72_N2
\shiftreg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg[0]~8_combout\ = (shiftreg(1) & (\PS2_CLK2_old~q\ & (!shiftreg(0) & !\PS2_CLK2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(1),
	datab => \PS2_CLK2_old~q\,
	datac => shiftreg(0),
	datad => \PS2_CLK2~q\,
	combout => \shiftreg[0]~8_combout\);

-- Location: IOIBUF_X115_Y40_N8
\rstn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstn,
	o => \rstn~input_o\);

-- Location: FF_X89_Y72_N3
\shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg[0]~8_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(0));

-- Location: IOIBUF_X0_Y59_N22
\PS2_DAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_DAT,
	o => \PS2_DAT~input_o\);

-- Location: LCCOMB_X88_Y72_N12
\PS2_DAT2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS2_DAT2~feeder_combout\ = \PS2_DAT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_DAT~input_o\,
	combout => \PS2_DAT2~feeder_combout\);

-- Location: FF_X88_Y72_N13
PS2_DAT2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PS2_DAT2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS2_DAT2~q\);

-- Location: LCCOMB_X89_Y72_N10
\shiftreg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg~10_combout\ = (!shiftreg(0) & !\PS2_DAT2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shiftreg(0),
	datad => \PS2_DAT2~q\,
	combout => \shiftreg~10_combout\);

-- Location: LCCOMB_X89_Y72_N8
\shiftreg[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg[8]~1_combout\ = (shiftreg(0)) # ((\PS2_CLK2_old~q\ & !\PS2_CLK2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shiftreg(0),
	datac => \PS2_CLK2_old~q\,
	datad => \PS2_CLK2~q\,
	combout => \shiftreg[8]~1_combout\);

-- Location: FF_X89_Y72_N11
\shiftreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg~10_combout\,
	clrn => \rstn~input_o\,
	ena => \shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(9));

-- Location: LCCOMB_X89_Y72_N0
\shiftreg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg~3_combout\ = (shiftreg(9) & !shiftreg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shiftreg(9),
	datad => shiftreg(0),
	combout => \shiftreg~3_combout\);

-- Location: FF_X89_Y72_N1
\shiftreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg~3_combout\,
	clrn => \rstn~input_o\,
	ena => \shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(8));

-- Location: LCCOMB_X89_Y72_N22
\shiftreg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg~4_combout\ = (shiftreg(8) & !shiftreg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shiftreg(8),
	datad => shiftreg(0),
	combout => \shiftreg~4_combout\);

-- Location: FF_X89_Y72_N23
\shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg~4_combout\,
	clrn => \rstn~input_o\,
	ena => \shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(7));

-- Location: LCCOMB_X89_Y72_N6
\shiftreg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg~5_combout\ = (shiftreg(7) & !shiftreg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shiftreg(7),
	datad => shiftreg(0),
	combout => \shiftreg~5_combout\);

-- Location: FF_X89_Y72_N7
\shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg~5_combout\,
	clrn => \rstn~input_o\,
	ena => \shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(6));

-- Location: LCCOMB_X89_Y72_N28
\shiftreg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg~9_combout\ = (shiftreg(6) & !shiftreg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shiftreg(6),
	datad => shiftreg(0),
	combout => \shiftreg~9_combout\);

-- Location: FF_X89_Y72_N29
\shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg~9_combout\,
	clrn => \rstn~input_o\,
	ena => \shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(5));

-- Location: LCCOMB_X89_Y72_N26
\shiftreg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg~2_combout\ = (shiftreg(5) & !shiftreg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shiftreg(5),
	datad => shiftreg(0),
	combout => \shiftreg~2_combout\);

-- Location: FF_X89_Y72_N27
\shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg~2_combout\,
	clrn => \rstn~input_o\,
	ena => \shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(4));

-- Location: LCCOMB_X89_Y72_N30
\shiftreg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg~6_combout\ = (shiftreg(4) & !shiftreg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shiftreg(4),
	datad => shiftreg(0),
	combout => \shiftreg~6_combout\);

-- Location: FF_X89_Y72_N31
\shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg~6_combout\,
	clrn => \rstn~input_o\,
	ena => \shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(3));

-- Location: LCCOMB_X88_Y72_N26
\scancode[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[2]~5_combout\ = !shiftreg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(3),
	combout => \scancode[2]~5_combout\);

-- Location: LCCOMB_X89_Y72_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!shiftreg(7) & (!shiftreg(8) & (shiftreg(4) & !shiftreg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(7),
	datab => shiftreg(8),
	datac => shiftreg(4),
	datad => shiftreg(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X89_Y72_N12
\shiftreg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg~7_combout\ = (shiftreg(3) & !shiftreg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shiftreg(3),
	datad => shiftreg(0),
	combout => \shiftreg~7_combout\);

-- Location: FF_X89_Y72_N13
\shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg~7_combout\,
	clrn => \rstn~input_o\,
	ena => \shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(2));

-- Location: LCCOMB_X89_Y72_N14
\shiftreg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftreg~0_combout\ = (shiftreg(2) & !shiftreg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shiftreg(2),
	datad => shiftreg(0),
	combout => \shiftreg~0_combout\);

-- Location: FF_X89_Y72_N15
\shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shiftreg~0_combout\,
	clrn => \rstn~input_o\,
	ena => \shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shiftreg(1));

-- Location: LCCOMB_X89_Y72_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (shiftreg(3) & (shiftreg(1) & shiftreg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(3),
	datac => shiftreg(1),
	datad => shiftreg(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X89_Y72_N16
\scancode[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[7]~0_combout\ = (shiftreg(0) & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(0),
	datab => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \scancode[7]~0_combout\);

-- Location: FF_X88_Y72_N27
\scancode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[2]~5_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(2));

-- Location: LCCOMB_X88_Y72_N20
\scancode[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[6]~6_combout\ = !shiftreg(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shiftreg(7),
	combout => \scancode[6]~6_combout\);

-- Location: FF_X88_Y72_N21
\scancode[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[6]~6_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(6));

-- Location: LCCOMB_X88_Y72_N16
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!scancode(7) & (scancode(2) & !scancode(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(7),
	datac => scancode(2),
	datad => scancode(6),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X88_Y72_N24
\scancode[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[4]~3_combout\ = !shiftreg(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shiftreg(5),
	combout => \scancode[4]~3_combout\);

-- Location: FF_X88_Y72_N25
\scancode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[4]~3_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(4));

-- Location: LCCOMB_X90_Y72_N24
\scancode[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[0]~1_combout\ = !shiftreg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(1),
	combout => \scancode[0]~1_combout\);

-- Location: FF_X90_Y72_N25
\scancode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[0]~1_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(0));

-- Location: LCCOMB_X90_Y72_N8
\scancode[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[5]~4_combout\ = !shiftreg(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shiftreg(6),
	combout => \scancode[5]~4_combout\);

-- Location: FF_X90_Y72_N9
\scancode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[5]~4_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(5));

-- Location: LCCOMB_X91_Y72_N8
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (scancode(1) & (scancode(4) & (!scancode(0) & !scancode(5)))) # (!scancode(1) & (!scancode(4) & (scancode(0) & scancode(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(1),
	datab => scancode(4),
	datac => scancode(0),
	datad => scancode(5),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X90_Y72_N10
\scancode[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[3]~8_combout\ = !shiftreg(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(4),
	combout => \scancode[3]~8_combout\);

-- Location: FF_X90_Y72_N11
\scancode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[3]~8_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(3));

-- Location: LCCOMB_X91_Y72_N26
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & (\Mux6~0_combout\ & !scancode(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datac => \Mux6~0_combout\,
	datad => scancode(3),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X90_Y72_N2
\scancode[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[1]~2_combout\ = !shiftreg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => shiftreg(2),
	combout => \scancode[1]~2_combout\);

-- Location: FF_X90_Y72_N3
\scancode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[1]~2_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(1));

-- Location: LCCOMB_X90_Y72_N12
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (scancode(0) & (!scancode(1) & scancode(5))) # (!scancode(0) & (scancode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(0),
	datab => scancode(1),
	datac => scancode(5),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X90_Y72_N26
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (scancode(4) $ (((!scancode(3) & scancode(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(3),
	datab => scancode(5),
	datac => scancode(4),
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X90_Y72_N28
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!scancode(5) & (!scancode(4) & (scancode(0) $ (scancode(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(0),
	datab => scancode(5),
	datac => scancode(4),
	datad => scancode(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X90_Y72_N18
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux0~0_combout\ & (((\Mux5~0_combout\ & !scancode(3))) # (!scancode(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux5~0_combout\,
	datac => scancode(6),
	datad => scancode(3),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X90_Y72_N4
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ((!\Mux5~3_combout\ & ((scancode(3)) # (!scancode(6))))) # (!\Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux5~1_combout\,
	datac => scancode(6),
	datad => scancode(3),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X90_Y72_N20
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (scancode(5) & ((scancode(0) & (scancode(4) & !scancode(1))) # (!scancode(0) & ((scancode(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(0),
	datab => scancode(5),
	datac => scancode(4),
	datad => scancode(1),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X90_Y72_N22
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (scancode(3) & (((!\Mux4~1_combout\)))) # (!scancode(3) & (!\Mux4~0_combout\ & ((!scancode(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => scancode(6),
	datad => scancode(3),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X90_Y72_N0
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\) # (!\Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux4~2_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X88_Y72_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!scancode(7) & (!scancode(6) & (scancode(2) & scancode(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(7),
	datab => scancode(6),
	datac => scancode(2),
	datad => scancode(4),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X91_Y72_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux6~1_combout\ & (!scancode(4) & scancode(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datac => scancode(4),
	datad => scancode(5),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X91_Y72_N12
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!scancode(1) & (scancode(0) & !scancode(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(1),
	datac => scancode(0),
	datad => scancode(3),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X91_Y72_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (scancode(3) & (!scancode(1) & (scancode(0) & scancode(5)))) # (!scancode(3) & (scancode(1) & (!scancode(0) & !scancode(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(3),
	datab => scancode(1),
	datac => scancode(0),
	datad => scancode(5),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X91_Y72_N6
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux2~0_combout\ & ((\Mux3~0_combout\) # ((\Mux1~0_combout\ & \Mux3~1_combout\)))) # (!\Mux2~0_combout\ & (\Mux1~0_combout\ & (\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X91_Y72_N30
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (!scancode(4) & (scancode(6) & !scancode(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(4),
	datac => scancode(6),
	datad => scancode(5),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X91_Y72_N20
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (scancode(1) & (!scancode(0) & !scancode(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(1),
	datac => scancode(0),
	datad => scancode(3),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X88_Y72_N6
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!scancode(7) & scancode(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(7),
	datac => scancode(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X91_Y72_N16
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (scancode(5) & ((scancode(1) & ((!scancode(0)))) # (!scancode(1) & (!scancode(3) & scancode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(3),
	datab => scancode(1),
	datac => scancode(0),
	datad => scancode(5),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X91_Y72_N2
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux6~1_combout\ & ((scancode(4) & ((\Mux3~0_combout\))) # (!scancode(4) & (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux2~1_combout\,
	datac => scancode(4),
	datad => \Mux3~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X91_Y72_N24
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~2_combout\) # ((\Mux2~3_combout\ & (\Mux0~1_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X91_Y72_N22
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (scancode(1) & (((!scancode(0) & !scancode(5))))) # (!scancode(1) & (scancode(3) & (scancode(0) & scancode(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(3),
	datab => scancode(1),
	datac => scancode(0),
	datad => scancode(5),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X91_Y72_N28
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux2~0_combout\ & ((\Mux1~1_combout\) # ((\Mux0~1_combout\ & \Mux1~0_combout\)))) # (!\Mux2~0_combout\ & (\Mux0~1_combout\ & ((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X91_Y72_N10
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (scancode(3) & (!scancode(6) & (scancode(4) & scancode(5)))) # (!scancode(3) & (scancode(6) & (!scancode(4) & !scancode(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(3),
	datab => scancode(6),
	datac => scancode(4),
	datad => scancode(5),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X91_Y72_N4
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!scancode(1) & (\Mux0~0_combout\ & (scancode(0) & \Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(1),
	datab => \Mux0~0_combout\,
	datac => scancode(0),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X91_Y72_N14
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\) # ((!scancode(5) & (\Mux0~1_combout\ & \Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => scancode(5),
	datab => \Mux0~1_combout\,
	datac => \Mux0~3_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux0~4_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X88_Y72_N22
\scancode[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[7]~7_combout\ = !shiftreg(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shiftreg(8),
	combout => \scancode[7]~7_combout\);

-- Location: FF_X88_Y72_N23
\scancode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[7]~7_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(7));

-- Location: LCCOMB_X89_Y72_N18
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (shiftreg(1) & (shiftreg(2) & (shiftreg(3) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(1),
	datab => shiftreg(2),
	datac => shiftreg(3),
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X89_Y72_N24
\F0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \F0~0_combout\ = (shiftreg(0) & (\Equal0~2_combout\ & ((\F0~q\) # (!shiftreg(5))))) # (!shiftreg(0) & (((\F0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(0),
	datab => shiftreg(5),
	datac => \F0~q\,
	datad => \Equal0~2_combout\,
	combout => \F0~0_combout\);

-- Location: FF_X89_Y72_N25
F0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \F0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \F0~q\);

-- Location: LCCOMB_X88_Y72_N10
\scancode[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[8]~feeder_combout\ = \F0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F0~q\,
	combout => \scancode[8]~feeder_combout\);

-- Location: FF_X88_Y72_N11
\scancode[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[8]~feeder_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(8));

-- Location: LCCOMB_X88_Y72_N2
\E0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E0~0_combout\ = (shiftreg(0) & (\Equal0~2_combout\ & ((shiftreg(5)) # (\E0~q\)))) # (!shiftreg(0) & (((\E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftreg(5),
	datab => shiftreg(0),
	datac => \E0~q\,
	datad => \Equal0~2_combout\,
	combout => \E0~0_combout\);

-- Location: FF_X88_Y72_N3
E0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \E0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E0~q\);

-- Location: LCCOMB_X88_Y72_N28
\scancode[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \scancode[9]~feeder_combout\ = \E0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E0~q\,
	combout => \scancode[9]~feeder_combout\);

-- Location: FF_X88_Y72_N29
\scancode[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scancode[9]~feeder_combout\,
	ena => \scancode[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scancode(9));

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


