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

-- DATE "09/13/2023 14:30:03"

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

ENTITY 	VGA_contr IS
    PORT (
	hsync : OUT std_logic;
	KEY0 : IN std_logic;
	fpga_clk : IN std_logic;
	vsync : OUT std_logic;
	sram_ce : OUT std_logic;
	sram_oe : OUT std_logic;
	sram_lb : OUT std_logic;
	sram_ub : OUT std_logic;
	sram_we : OUT std_logic;
	vga_clk : OUT std_logic;
	vga_blank : OUT std_logic;
	vga_sync : OUT std_logic;
	sram_data : IN std_logic_vector(15 DOWNTO 0);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6);
	sram_addr : OUT std_logic_vector(19 DOWNTO 0);
	vga_b : OUT std_logic_vector(7 DOWNTO 0);
	vga_g : OUT std_logic_vector(7 DOWNTO 0);
	vga_r : OUT std_logic_vector(7 DOWNTO 0)
	);
END VGA_contr;

-- Design Ports Information
-- hsync	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ce	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_oe	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_lb	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ub	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_we	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_clk	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blank	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_sync	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[9]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[14]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[15]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[8]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[13]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[12]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[11]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[10]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[2]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA_contr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hsync : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_fpga_clk : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_sram_ce : std_logic;
SIGNAL ww_sram_oe : std_logic;
SIGNAL ww_sram_lb : std_logic;
SIGNAL ww_sram_ub : std_logic;
SIGNAL ww_sram_we : std_logic;
SIGNAL ww_vga_clk : std_logic;
SIGNAL ww_vga_blank : std_logic;
SIGNAL ww_vga_sync : std_logic;
SIGNAL ww_sram_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_sram_addr : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \fpga_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_hs_gen|Equal0~0_combout\ : std_logic;
SIGNAL \i_hs_gen|Equal0~1_combout\ : std_logic;
SIGNAL \i_pixcounter|LessThan0~0_combout\ : std_logic;
SIGNAL \i_pixcounter|LessThan0~1_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~0_combout\ : std_logic;
SIGNAL \i_hs_gen|hsync~0_combout\ : std_logic;
SIGNAL \hsync~output_o\ : std_logic;
SIGNAL \vsync~output_o\ : std_logic;
SIGNAL \sram_ce~output_o\ : std_logic;
SIGNAL \sram_oe~output_o\ : std_logic;
SIGNAL \sram_lb~output_o\ : std_logic;
SIGNAL \sram_ub~output_o\ : std_logic;
SIGNAL \sram_we~output_o\ : std_logic;
SIGNAL \vga_clk~output_o\ : std_logic;
SIGNAL \vga_blank~output_o\ : std_logic;
SIGNAL \vga_sync~output_o\ : std_logic;
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
SIGNAL \sram_addr[19]~output_o\ : std_logic;
SIGNAL \sram_addr[18]~output_o\ : std_logic;
SIGNAL \sram_addr[17]~output_o\ : std_logic;
SIGNAL \sram_addr[16]~output_o\ : std_logic;
SIGNAL \sram_addr[15]~output_o\ : std_logic;
SIGNAL \sram_addr[14]~output_o\ : std_logic;
SIGNAL \sram_addr[13]~output_o\ : std_logic;
SIGNAL \sram_addr[12]~output_o\ : std_logic;
SIGNAL \sram_addr[11]~output_o\ : std_logic;
SIGNAL \sram_addr[10]~output_o\ : std_logic;
SIGNAL \sram_addr[9]~output_o\ : std_logic;
SIGNAL \sram_addr[8]~output_o\ : std_logic;
SIGNAL \sram_addr[7]~output_o\ : std_logic;
SIGNAL \sram_addr[6]~output_o\ : std_logic;
SIGNAL \sram_addr[5]~output_o\ : std_logic;
SIGNAL \sram_addr[4]~output_o\ : std_logic;
SIGNAL \sram_addr[3]~output_o\ : std_logic;
SIGNAL \sram_addr[2]~output_o\ : std_logic;
SIGNAL \sram_addr[1]~output_o\ : std_logic;
SIGNAL \sram_addr[0]~output_o\ : std_logic;
SIGNAL \vga_b[7]~output_o\ : std_logic;
SIGNAL \vga_b[6]~output_o\ : std_logic;
SIGNAL \vga_b[5]~output_o\ : std_logic;
SIGNAL \vga_b[4]~output_o\ : std_logic;
SIGNAL \vga_b[3]~output_o\ : std_logic;
SIGNAL \vga_b[2]~output_o\ : std_logic;
SIGNAL \vga_b[1]~output_o\ : std_logic;
SIGNAL \vga_b[0]~output_o\ : std_logic;
SIGNAL \vga_g[7]~output_o\ : std_logic;
SIGNAL \vga_g[6]~output_o\ : std_logic;
SIGNAL \vga_g[5]~output_o\ : std_logic;
SIGNAL \vga_g[4]~output_o\ : std_logic;
SIGNAL \vga_g[3]~output_o\ : std_logic;
SIGNAL \vga_g[2]~output_o\ : std_logic;
SIGNAL \vga_g[1]~output_o\ : std_logic;
SIGNAL \vga_g[0]~output_o\ : std_logic;
SIGNAL \vga_r[7]~output_o\ : std_logic;
SIGNAL \vga_r[6]~output_o\ : std_logic;
SIGNAL \vga_r[5]~output_o\ : std_logic;
SIGNAL \vga_r[4]~output_o\ : std_logic;
SIGNAL \vga_r[3]~output_o\ : std_logic;
SIGNAL \vga_r[2]~output_o\ : std_logic;
SIGNAL \vga_r[1]~output_o\ : std_logic;
SIGNAL \vga_r[0]~output_o\ : std_logic;
SIGNAL \fpga_clk~input_o\ : std_logic;
SIGNAL \fpga_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_pixcounter|hcnti[0]~10_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \i_pixcounter|hcnti[6]~23\ : std_logic;
SIGNAL \i_pixcounter|hcnti[7]~24_combout\ : std_logic;
SIGNAL \i_ce_gen|counter~0_combout\ : std_logic;
SIGNAL \i_ce_gen|counter~q\ : std_logic;
SIGNAL \i_pixcounter|hcnti[7]~25\ : std_logic;
SIGNAL \i_pixcounter|hcnti[8]~26_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti[8]~27\ : std_logic;
SIGNAL \i_pixcounter|hcnti[9]~28_combout\ : std_logic;
SIGNAL \i_pixcounter|LessThan0~2_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti[0]~11\ : std_logic;
SIGNAL \i_pixcounter|hcnti[1]~12_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti[1]~13\ : std_logic;
SIGNAL \i_pixcounter|hcnti[2]~15\ : std_logic;
SIGNAL \i_pixcounter|hcnti[3]~17\ : std_logic;
SIGNAL \i_pixcounter|hcnti[4]~18_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti[4]~19\ : std_logic;
SIGNAL \i_pixcounter|hcnti[5]~21\ : std_logic;
SIGNAL \i_pixcounter|hcnti[6]~22_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti[5]~20_combout\ : std_logic;
SIGNAL \i_hs_gen|Equal0~2_combout\ : std_logic;
SIGNAL \i_hs_gen|hsync~1_combout\ : std_logic;
SIGNAL \i_hs_gen|hsync~q\ : std_logic;
SIGNAL \i_hs3~0_combout\ : std_logic;
SIGNAL \i_hs3~q\ : std_logic;
SIGNAL \i_hs4~feeder_combout\ : std_logic;
SIGNAL \i_hs4~q\ : std_logic;
SIGNAL \i_linecounter|vcnti[0]~10_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[2]~15\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~16_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~0_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~17\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~19\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~20_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~0_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~21\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~23\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~24_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~25\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~26_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~1_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~27\ : std_logic;
SIGNAL \i_linecounter|vcnti[9]~28_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~2_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[0]~11\ : std_logic;
SIGNAL \i_linecounter|vcnti[1]~12_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[1]~13\ : std_logic;
SIGNAL \i_linecounter|vcnti[2]~14_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~18_combout\ : std_logic;
SIGNAL \i_vs_gen|Equal0~0_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~22_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~1_combout\ : std_logic;
SIGNAL \i_vs_gen|Equal0~1_combout\ : std_logic;
SIGNAL \i_vs_gen|vsync~0_combout\ : std_logic;
SIGNAL \i_vs_gen|vsync~q\ : std_logic;
SIGNAL \i_vs3~0_combout\ : std_logic;
SIGNAL \i_vs3~q\ : std_logic;
SIGNAL \i_vs4~feeder_combout\ : std_logic;
SIGNAL \i_vs4~q\ : std_logic;
SIGNAL \iBlank_gen|blank~2_combout\ : std_logic;
SIGNAL \i_blank2~q\ : std_logic;
SIGNAL \i_blank3~q\ : std_logic;
SIGNAL \iRAMcontrol|Add0~1\ : std_logic;
SIGNAL \iRAMcontrol|Add0~3\ : std_logic;
SIGNAL \iRAMcontrol|Add0~5\ : std_logic;
SIGNAL \iRAMcontrol|Add0~7\ : std_logic;
SIGNAL \iRAMcontrol|Add0~9\ : std_logic;
SIGNAL \iRAMcontrol|Add0~11\ : std_logic;
SIGNAL \iRAMcontrol|Add0~13\ : std_logic;
SIGNAL \iRAMcontrol|Add0~15\ : std_logic;
SIGNAL \iRAMcontrol|Add0~17\ : std_logic;
SIGNAL \iRAMcontrol|Add0~19\ : std_logic;
SIGNAL \iRAMcontrol|Add0~20_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~16_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~14_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~10_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~8_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~6_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~4_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~2_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~0_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~1\ : std_logic;
SIGNAL \iRAMcontrol|Add1~3\ : std_logic;
SIGNAL \iRAMcontrol|Add1~5\ : std_logic;
SIGNAL \iRAMcontrol|Add1~7\ : std_logic;
SIGNAL \iRAMcontrol|Add1~9\ : std_logic;
SIGNAL \iRAMcontrol|Add1~11\ : std_logic;
SIGNAL \iRAMcontrol|Add1~13\ : std_logic;
SIGNAL \iRAMcontrol|Add1~15\ : std_logic;
SIGNAL \iRAMcontrol|Add1~17\ : std_logic;
SIGNAL \iRAMcontrol|Add1~19\ : std_logic;
SIGNAL \iRAMcontrol|Add1~21\ : std_logic;
SIGNAL \iRAMcontrol|Add1~23\ : std_logic;
SIGNAL \iRAMcontrol|Add1~24_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~18_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~22_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~20_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~18_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~12_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~16_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~14_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~12_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~10_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~8_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~6_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~4_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~2_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~0_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti[3]~16_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti[2]~14_combout\ : std_logic;
SIGNAL \sram_data[6]~input_o\ : std_logic;
SIGNAL \sram_data[14]~input_o\ : std_logic;
SIGNAL \i_pixreg|pixcode2~1_combout\ : std_logic;
SIGNAL \sram_data[9]~input_o\ : std_logic;
SIGNAL \sram_data[1]~input_o\ : std_logic;
SIGNAL \i_pixreg|pixcode2~0_combout\ : std_logic;
SIGNAL \sram_data[7]~input_o\ : std_logic;
SIGNAL \sram_data[15]~input_o\ : std_logic;
SIGNAL \i_pixreg|pixcode2~2_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~0_combout\ : std_logic;
SIGNAL \sram_data[5]~input_o\ : std_logic;
SIGNAL \sram_data[13]~input_o\ : std_logic;
SIGNAL \i_pixreg|pixcode2~4_combout\ : std_logic;
SIGNAL \sram_data[8]~input_o\ : std_logic;
SIGNAL \sram_data[0]~input_o\ : std_logic;
SIGNAL \i_pixreg|pixcode2~3_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~1_combout\ : std_logic;
SIGNAL \sram_data[4]~input_o\ : std_logic;
SIGNAL \sram_data[12]~input_o\ : std_logic;
SIGNAL \i_pixreg|pixcode2~5_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~2_combout\ : std_logic;
SIGNAL \sram_data[3]~input_o\ : std_logic;
SIGNAL \sram_data[11]~input_o\ : std_logic;
SIGNAL \i_pixreg|pixcode2~6_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~3_combout\ : std_logic;
SIGNAL \sram_data[2]~input_o\ : std_logic;
SIGNAL \sram_data[10]~input_o\ : std_logic;
SIGNAL \i_pixreg|pixcode2~7_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~4_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~5_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~6_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~7_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~0_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~1_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~2_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~3_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~4_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~5_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~6_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~7_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[7]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[6]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~0_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~1_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~2_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~3_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~4_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~5_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pixreg|pixcode2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pixcounter|hcnti\ : std_logic_vector(9 DOWNTO 0);

BEGIN

hsync <= ww_hsync;
ww_KEY0 <= KEY0;
ww_fpga_clk <= fpga_clk;
vsync <= ww_vsync;
sram_ce <= ww_sram_ce;
sram_oe <= ww_sram_oe;
sram_lb <= ww_sram_lb;
sram_ub <= ww_sram_ub;
sram_we <= ww_sram_we;
vga_clk <= ww_vga_clk;
vga_blank <= ww_vga_blank;
vga_sync <= ww_vga_sync;
ww_sram_data <= sram_data;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
sram_addr <= ww_sram_addr;
vga_b <= ww_vga_b;
vga_g <= ww_vga_g;
vga_r <= ww_vga_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fpga_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fpga_clk~input_o\);

-- Location: LCCOMB_X10_Y13_N2
\i_hs_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|Equal0~0_combout\ = (\i_pixcounter|hcnti\(2) & (!\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(1) & \i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(2),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(1),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_hs_gen|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y13_N4
\i_hs_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|Equal0~1_combout\ = (\i_pixcounter|hcnti\(7) & (\i_hs_gen|Equal0~0_combout\ & (!\i_pixcounter|hcnti\(8) & \i_pixcounter|hcnti\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(7),
	datab => \i_hs_gen|Equal0~0_combout\,
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|hcnti\(9),
	combout => \i_hs_gen|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y13_N26
\i_pixcounter|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|LessThan0~0_combout\ = (((!\i_pixcounter|hcnti\(0) & !\i_pixcounter|hcnti\(1))) # (!\i_pixcounter|hcnti\(3))) # (!\i_pixcounter|hcnti\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(2),
	datab => \i_pixcounter|hcnti\(0),
	datac => \i_pixcounter|hcnti\(1),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixcounter|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y13_N28
\i_pixcounter|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|LessThan0~1_combout\ = (\i_pixcounter|hcnti\(7)) # ((\i_pixcounter|hcnti\(5)) # ((!\i_pixcounter|LessThan0~0_combout\ & \i_pixcounter|hcnti\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|LessThan0~0_combout\,
	datab => \i_pixcounter|hcnti\(7),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixcounter|LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y13_N0
\iBlank_gen|blank~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~0_combout\ = (!\i_linecounter|vcnti\(9) & (((!\i_pixcounter|hcnti\(7) & !\i_pixcounter|hcnti\(8))) # (!\i_pixcounter|hcnti\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(7),
	datab => \i_pixcounter|hcnti\(8),
	datac => \i_linecounter|vcnti\(9),
	datad => \i_pixcounter|hcnti\(9),
	combout => \iBlank_gen|blank~0_combout\);

-- Location: LCCOMB_X9_Y13_N6
\i_hs_gen|hsync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|hsync~0_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(0) & \i_hs_gen|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(0),
	datad => \i_hs_gen|Equal0~1_combout\,
	combout => \i_hs_gen|hsync~0_combout\);

-- Location: IOOBUF_X38_Y73_N16
\hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_hs4~q\,
	devoe => ww_devoe,
	o => \hsync~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_vs4~q\,
	devoe => ww_devoe,
	o => \vsync~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\sram_ce~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_ce~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\sram_oe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_oe~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\sram_lb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_lb~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\sram_ub~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_ub~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\sram_we~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sram_we~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\vga_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ce_gen|counter~q\,
	devoe => ww_devoe,
	o => \vga_clk~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\vga_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_blank3~q\,
	devoe => ww_devoe,
	o => \vga_blank~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\vga_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_sync~output_o\);

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

-- Location: IOOBUF_X0_Y20_N16
\sram_addr[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_addr[19]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\sram_addr[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~24_combout\,
	devoe => ww_devoe,
	o => \sram_addr[18]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\sram_addr[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~22_combout\,
	devoe => ww_devoe,
	o => \sram_addr[17]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\sram_addr[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~20_combout\,
	devoe => ww_devoe,
	o => \sram_addr[16]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\sram_addr[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~18_combout\,
	devoe => ww_devoe,
	o => \sram_addr[15]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\sram_addr[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~16_combout\,
	devoe => ww_devoe,
	o => \sram_addr[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\sram_addr[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~14_combout\,
	devoe => ww_devoe,
	o => \sram_addr[13]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\sram_addr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~12_combout\,
	devoe => ww_devoe,
	o => \sram_addr[12]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\sram_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~10_combout\,
	devoe => ww_devoe,
	o => \sram_addr[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\sram_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~8_combout\,
	devoe => ww_devoe,
	o => \sram_addr[10]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\sram_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~6_combout\,
	devoe => ww_devoe,
	o => \sram_addr[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\sram_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~4_combout\,
	devoe => ww_devoe,
	o => \sram_addr[8]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\sram_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~2_combout\,
	devoe => ww_devoe,
	o => \sram_addr[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\sram_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~0_combout\,
	devoe => ww_devoe,
	o => \sram_addr[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\sram_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(6),
	devoe => ww_devoe,
	o => \sram_addr[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\sram_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(5),
	devoe => ww_devoe,
	o => \sram_addr[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\sram_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(4),
	devoe => ww_devoe,
	o => \sram_addr[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\sram_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(3),
	devoe => ww_devoe,
	o => \sram_addr[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\sram_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(2),
	devoe => ww_devoe,
	o => \sram_addr[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\sram_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(1),
	devoe => ww_devoe,
	o => \sram_addr[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\vga_b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(7),
	devoe => ww_devoe,
	o => \vga_b[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\vga_b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(6),
	devoe => ww_devoe,
	o => \vga_b[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\vga_b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(5),
	devoe => ww_devoe,
	o => \vga_b[5]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\vga_b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(4),
	devoe => ww_devoe,
	o => \vga_b[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\vga_b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(3),
	devoe => ww_devoe,
	o => \vga_b[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\vga_b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(2),
	devoe => ww_devoe,
	o => \vga_b[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\vga_b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(1),
	devoe => ww_devoe,
	o => \vga_b[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\vga_b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(0),
	devoe => ww_devoe,
	o => \vga_b[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\vga_g[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(7),
	devoe => ww_devoe,
	o => \vga_g[7]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\vga_g[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(6),
	devoe => ww_devoe,
	o => \vga_g[6]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\vga_g[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(5),
	devoe => ww_devoe,
	o => \vga_g[5]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\vga_g[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(4),
	devoe => ww_devoe,
	o => \vga_g[4]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\vga_g[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(3),
	devoe => ww_devoe,
	o => \vga_g[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\vga_g[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(2),
	devoe => ww_devoe,
	o => \vga_g[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\vga_g[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(1),
	devoe => ww_devoe,
	o => \vga_g[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\vga_g[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(0),
	devoe => ww_devoe,
	o => \vga_g[0]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\vga_r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(7),
	devoe => ww_devoe,
	o => \vga_r[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\vga_r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(6),
	devoe => ww_devoe,
	o => \vga_r[6]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\vga_r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(5),
	devoe => ww_devoe,
	o => \vga_r[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\vga_r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(4),
	devoe => ww_devoe,
	o => \vga_r[4]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\vga_r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(3),
	devoe => ww_devoe,
	o => \vga_r[3]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\vga_r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(2),
	devoe => ww_devoe,
	o => \vga_r[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\vga_r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(1),
	devoe => ww_devoe,
	o => \vga_r[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\vga_r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(0),
	devoe => ww_devoe,
	o => \vga_r[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\fpga_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_clk,
	o => \fpga_clk~input_o\);

-- Location: CLKCTRL_G4
\fpga_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fpga_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fpga_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y13_N6
\i_pixcounter|hcnti[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[0]~10_combout\ = \i_pixcounter|hcnti\(0) $ (VCC)
-- \i_pixcounter|hcnti[0]~11\ = CARRY(\i_pixcounter|hcnti\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(0),
	datad => VCC,
	combout => \i_pixcounter|hcnti[0]~10_combout\,
	cout => \i_pixcounter|hcnti[0]~11\);

-- Location: IOIBUF_X115_Y40_N8
\KEY0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: LCCOMB_X10_Y13_N18
\i_pixcounter|hcnti[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[6]~22_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti[5]~21\ $ (GND))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti[5]~21\ & VCC))
-- \i_pixcounter|hcnti[6]~23\ = CARRY((\i_pixcounter|hcnti\(6) & !\i_pixcounter|hcnti[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(6),
	datad => VCC,
	cin => \i_pixcounter|hcnti[5]~21\,
	combout => \i_pixcounter|hcnti[6]~22_combout\,
	cout => \i_pixcounter|hcnti[6]~23\);

-- Location: LCCOMB_X10_Y13_N20
\i_pixcounter|hcnti[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[7]~24_combout\ = (\i_pixcounter|hcnti\(7) & (!\i_pixcounter|hcnti[6]~23\)) # (!\i_pixcounter|hcnti\(7) & ((\i_pixcounter|hcnti[6]~23\) # (GND)))
-- \i_pixcounter|hcnti[7]~25\ = CARRY((!\i_pixcounter|hcnti[6]~23\) # (!\i_pixcounter|hcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(7),
	datad => VCC,
	cin => \i_pixcounter|hcnti[6]~23\,
	combout => \i_pixcounter|hcnti[7]~24_combout\,
	cout => \i_pixcounter|hcnti[7]~25\);

-- Location: LCCOMB_X10_Y13_N0
\i_ce_gen|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_ce_gen|counter~0_combout\ = !\i_ce_gen|counter~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ce_gen|counter~q\,
	combout => \i_ce_gen|counter~0_combout\);

-- Location: FF_X10_Y13_N1
\i_ce_gen|counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_ce_gen|counter~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ce_gen|counter~q\);

-- Location: FF_X10_Y13_N21
\i_pixcounter|hcnti[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[7]~24_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(7));

-- Location: LCCOMB_X10_Y13_N22
\i_pixcounter|hcnti[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[8]~26_combout\ = (\i_pixcounter|hcnti\(8) & (\i_pixcounter|hcnti[7]~25\ $ (GND))) # (!\i_pixcounter|hcnti\(8) & (!\i_pixcounter|hcnti[7]~25\ & VCC))
-- \i_pixcounter|hcnti[8]~27\ = CARRY((\i_pixcounter|hcnti\(8) & !\i_pixcounter|hcnti[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datad => VCC,
	cin => \i_pixcounter|hcnti[7]~25\,
	combout => \i_pixcounter|hcnti[8]~26_combout\,
	cout => \i_pixcounter|hcnti[8]~27\);

-- Location: FF_X10_Y13_N23
\i_pixcounter|hcnti[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[8]~26_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(8));

-- Location: LCCOMB_X10_Y13_N24
\i_pixcounter|hcnti[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[9]~28_combout\ = \i_pixcounter|hcnti[8]~27\ $ (\i_pixcounter|hcnti\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_pixcounter|hcnti\(9),
	cin => \i_pixcounter|hcnti[8]~27\,
	combout => \i_pixcounter|hcnti[9]~28_combout\);

-- Location: FF_X10_Y13_N25
\i_pixcounter|hcnti[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[9]~28_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(9));

-- Location: LCCOMB_X10_Y13_N30
\i_pixcounter|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|LessThan0~2_combout\ = (\i_pixcounter|hcnti\(8) & (\i_pixcounter|hcnti\(9) & ((\i_pixcounter|LessThan0~1_combout\) # (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|LessThan0~1_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|hcnti\(9),
	combout => \i_pixcounter|LessThan0~2_combout\);

-- Location: FF_X10_Y13_N7
\i_pixcounter|hcnti[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[0]~10_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(0));

-- Location: LCCOMB_X10_Y13_N8
\i_pixcounter|hcnti[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[1]~12_combout\ = (\i_pixcounter|hcnti\(1) & (!\i_pixcounter|hcnti[0]~11\)) # (!\i_pixcounter|hcnti\(1) & ((\i_pixcounter|hcnti[0]~11\) # (GND)))
-- \i_pixcounter|hcnti[1]~13\ = CARRY((!\i_pixcounter|hcnti[0]~11\) # (!\i_pixcounter|hcnti\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(1),
	datad => VCC,
	cin => \i_pixcounter|hcnti[0]~11\,
	combout => \i_pixcounter|hcnti[1]~12_combout\,
	cout => \i_pixcounter|hcnti[1]~13\);

-- Location: FF_X10_Y13_N9
\i_pixcounter|hcnti[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[1]~12_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(1));

-- Location: LCCOMB_X10_Y13_N10
\i_pixcounter|hcnti[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[2]~14_combout\ = (\i_pixcounter|hcnti\(2) & (\i_pixcounter|hcnti[1]~13\ $ (GND))) # (!\i_pixcounter|hcnti\(2) & (!\i_pixcounter|hcnti[1]~13\ & VCC))
-- \i_pixcounter|hcnti[2]~15\ = CARRY((\i_pixcounter|hcnti\(2) & !\i_pixcounter|hcnti[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(2),
	datad => VCC,
	cin => \i_pixcounter|hcnti[1]~13\,
	combout => \i_pixcounter|hcnti[2]~14_combout\,
	cout => \i_pixcounter|hcnti[2]~15\);

-- Location: LCCOMB_X10_Y13_N12
\i_pixcounter|hcnti[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[3]~16_combout\ = (\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti[2]~15\)) # (!\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti[2]~15\) # (GND)))
-- \i_pixcounter|hcnti[3]~17\ = CARRY((!\i_pixcounter|hcnti[2]~15\) # (!\i_pixcounter|hcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datad => VCC,
	cin => \i_pixcounter|hcnti[2]~15\,
	combout => \i_pixcounter|hcnti[3]~16_combout\,
	cout => \i_pixcounter|hcnti[3]~17\);

-- Location: LCCOMB_X10_Y13_N14
\i_pixcounter|hcnti[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[4]~18_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti[3]~17\ $ (GND))) # (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti[3]~17\ & VCC))
-- \i_pixcounter|hcnti[4]~19\ = CARRY((\i_pixcounter|hcnti\(4) & !\i_pixcounter|hcnti[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(4),
	datad => VCC,
	cin => \i_pixcounter|hcnti[3]~17\,
	combout => \i_pixcounter|hcnti[4]~18_combout\,
	cout => \i_pixcounter|hcnti[4]~19\);

-- Location: FF_X10_Y13_N15
\i_pixcounter|hcnti[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[4]~18_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(4));

-- Location: LCCOMB_X10_Y13_N16
\i_pixcounter|hcnti[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti[5]~20_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti[4]~19\)) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti[4]~19\) # (GND)))
-- \i_pixcounter|hcnti[5]~21\ = CARRY((!\i_pixcounter|hcnti[4]~19\) # (!\i_pixcounter|hcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datad => VCC,
	cin => \i_pixcounter|hcnti[4]~19\,
	combout => \i_pixcounter|hcnti[5]~20_combout\,
	cout => \i_pixcounter|hcnti[5]~21\);

-- Location: FF_X10_Y13_N19
\i_pixcounter|hcnti[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[6]~22_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(6));

-- Location: FF_X10_Y13_N17
\i_pixcounter|hcnti[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[5]~20_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(5));

-- Location: LCCOMB_X9_Y13_N8
\i_hs_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|Equal0~2_combout\ = (\i_hs_gen|Equal0~1_combout\ & (!\i_pixcounter|hcnti\(6) & !\i_pixcounter|hcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_hs_gen|Equal0~1_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_hs_gen|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y13_N12
\i_hs_gen|hsync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|hsync~1_combout\ = (\i_hs_gen|hsync~0_combout\ & (\i_hs_gen|Equal0~2_combout\ & ((\i_pixcounter|hcnti\(0))))) # (!\i_hs_gen|hsync~0_combout\ & ((\i_hs_gen|hsync~q\) # ((\i_hs_gen|Equal0~2_combout\ & \i_pixcounter|hcnti\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_hs_gen|hsync~0_combout\,
	datab => \i_hs_gen|Equal0~2_combout\,
	datac => \i_hs_gen|hsync~q\,
	datad => \i_pixcounter|hcnti\(0),
	combout => \i_hs_gen|hsync~1_combout\);

-- Location: FF_X9_Y13_N13
\i_hs_gen|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_hs_gen|hsync~1_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs_gen|hsync~q\);

-- Location: LCCOMB_X9_Y13_N28
\i_hs3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs3~0_combout\ = !\i_hs_gen|hsync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_hs_gen|hsync~q\,
	combout => \i_hs3~0_combout\);

-- Location: FF_X9_Y13_N29
i_hs3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_hs3~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs3~q\);

-- Location: LCCOMB_X9_Y13_N0
\i_hs4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs4~feeder_combout\ = \i_hs3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_hs3~q\,
	combout => \i_hs4~feeder_combout\);

-- Location: FF_X9_Y13_N1
i_hs4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_hs4~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs4~q\);

-- Location: LCCOMB_X7_Y13_N2
\i_linecounter|vcnti[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[0]~10_combout\ = \i_linecounter|vcnti\(0) $ (VCC)
-- \i_linecounter|vcnti[0]~11\ = CARRY(\i_linecounter|vcnti\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(0),
	datad => VCC,
	combout => \i_linecounter|vcnti[0]~10_combout\,
	cout => \i_linecounter|vcnti[0]~11\);

-- Location: LCCOMB_X7_Y13_N6
\i_linecounter|vcnti[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[2]~14_combout\ = (\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti[1]~13\ $ (GND))) # (!\i_linecounter|vcnti\(2) & (!\i_linecounter|vcnti[1]~13\ & VCC))
-- \i_linecounter|vcnti[2]~15\ = CARRY((\i_linecounter|vcnti\(2) & !\i_linecounter|vcnti[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(2),
	datad => VCC,
	cin => \i_linecounter|vcnti[1]~13\,
	combout => \i_linecounter|vcnti[2]~14_combout\,
	cout => \i_linecounter|vcnti[2]~15\);

-- Location: LCCOMB_X7_Y13_N8
\i_linecounter|vcnti[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[3]~16_combout\ = (\i_linecounter|vcnti\(3) & (!\i_linecounter|vcnti[2]~15\)) # (!\i_linecounter|vcnti\(3) & ((\i_linecounter|vcnti[2]~15\) # (GND)))
-- \i_linecounter|vcnti[3]~17\ = CARRY((!\i_linecounter|vcnti[2]~15\) # (!\i_linecounter|vcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(3),
	datad => VCC,
	cin => \i_linecounter|vcnti[2]~15\,
	combout => \i_linecounter|vcnti[3]~16_combout\,
	cout => \i_linecounter|vcnti[3]~17\);

-- Location: LCCOMB_X9_Y13_N26
\i_linecounter|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~0_combout\ = (!\i_pixcounter|hcnti\(0) & (\i_ce_gen|counter~q\ & \i_hs_gen|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datab => \i_ce_gen|counter~q\,
	datac => \i_hs_gen|Equal0~2_combout\,
	combout => \i_linecounter|process_0~0_combout\);

-- Location: FF_X7_Y13_N9
\i_linecounter|vcnti[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[3]~16_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(3));

-- Location: LCCOMB_X7_Y13_N10
\i_linecounter|vcnti[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[4]~18_combout\ = (\i_linecounter|vcnti\(4) & (\i_linecounter|vcnti[3]~17\ $ (GND))) # (!\i_linecounter|vcnti\(4) & (!\i_linecounter|vcnti[3]~17\ & VCC))
-- \i_linecounter|vcnti[4]~19\ = CARRY((\i_linecounter|vcnti\(4) & !\i_linecounter|vcnti[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datad => VCC,
	cin => \i_linecounter|vcnti[3]~17\,
	combout => \i_linecounter|vcnti[4]~18_combout\,
	cout => \i_linecounter|vcnti[4]~19\);

-- Location: LCCOMB_X7_Y13_N12
\i_linecounter|vcnti[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[5]~20_combout\ = (\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti[4]~19\)) # (!\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti[4]~19\) # (GND)))
-- \i_linecounter|vcnti[5]~21\ = CARRY((!\i_linecounter|vcnti[4]~19\) # (!\i_linecounter|vcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datad => VCC,
	cin => \i_linecounter|vcnti[4]~19\,
	combout => \i_linecounter|vcnti[5]~20_combout\,
	cout => \i_linecounter|vcnti[5]~21\);

-- Location: FF_X7_Y13_N13
\i_linecounter|vcnti[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[5]~20_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(5));

-- Location: LCCOMB_X7_Y13_N0
\i_linecounter|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~0_combout\ = (!\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti\(5) & ((!\i_linecounter|vcnti\(2)) # (!\i_linecounter|vcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(6),
	datab => \i_linecounter|vcnti\(3),
	datac => \i_linecounter|vcnti\(2),
	datad => \i_linecounter|vcnti\(5),
	combout => \i_linecounter|LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y13_N14
\i_linecounter|vcnti[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[6]~22_combout\ = (\i_linecounter|vcnti\(6) & (\i_linecounter|vcnti[5]~21\ $ (GND))) # (!\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti[5]~21\ & VCC))
-- \i_linecounter|vcnti[6]~23\ = CARRY((\i_linecounter|vcnti\(6) & !\i_linecounter|vcnti[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(6),
	datad => VCC,
	cin => \i_linecounter|vcnti[5]~21\,
	combout => \i_linecounter|vcnti[6]~22_combout\,
	cout => \i_linecounter|vcnti[6]~23\);

-- Location: LCCOMB_X7_Y13_N16
\i_linecounter|vcnti[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[7]~24_combout\ = (\i_linecounter|vcnti\(7) & (!\i_linecounter|vcnti[6]~23\)) # (!\i_linecounter|vcnti\(7) & ((\i_linecounter|vcnti[6]~23\) # (GND)))
-- \i_linecounter|vcnti[7]~25\ = CARRY((!\i_linecounter|vcnti[6]~23\) # (!\i_linecounter|vcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(7),
	datad => VCC,
	cin => \i_linecounter|vcnti[6]~23\,
	combout => \i_linecounter|vcnti[7]~24_combout\,
	cout => \i_linecounter|vcnti[7]~25\);

-- Location: FF_X7_Y13_N17
\i_linecounter|vcnti[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[7]~24_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(7));

-- Location: LCCOMB_X7_Y13_N18
\i_linecounter|vcnti[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[8]~26_combout\ = (\i_linecounter|vcnti\(8) & (\i_linecounter|vcnti[7]~25\ $ (GND))) # (!\i_linecounter|vcnti\(8) & (!\i_linecounter|vcnti[7]~25\ & VCC))
-- \i_linecounter|vcnti[8]~27\ = CARRY((\i_linecounter|vcnti\(8) & !\i_linecounter|vcnti[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(8),
	datad => VCC,
	cin => \i_linecounter|vcnti[7]~25\,
	combout => \i_linecounter|vcnti[8]~26_combout\,
	cout => \i_linecounter|vcnti[8]~27\);

-- Location: FF_X7_Y13_N19
\i_linecounter|vcnti[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[8]~26_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(8));

-- Location: LCCOMB_X7_Y13_N26
\i_linecounter|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~1_combout\ = (!\i_linecounter|vcnti\(4) & (!\i_linecounter|vcnti\(7) & !\i_linecounter|vcnti\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datab => \i_linecounter|vcnti\(7),
	datad => \i_linecounter|vcnti\(8),
	combout => \i_linecounter|LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y13_N20
\i_linecounter|vcnti[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[9]~28_combout\ = \i_linecounter|vcnti[8]~27\ $ (\i_linecounter|vcnti\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_linecounter|vcnti\(9),
	cin => \i_linecounter|vcnti[8]~27\,
	combout => \i_linecounter|vcnti[9]~28_combout\);

-- Location: FF_X7_Y13_N21
\i_linecounter|vcnti[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[9]~28_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(9));

-- Location: LCCOMB_X7_Y13_N28
\i_linecounter|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~2_combout\ = (\i_linecounter|vcnti\(9) & ((!\i_linecounter|LessThan0~1_combout\) # (!\i_linecounter|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|LessThan0~0_combout\,
	datac => \i_linecounter|LessThan0~1_combout\,
	datad => \i_linecounter|vcnti\(9),
	combout => \i_linecounter|LessThan0~2_combout\);

-- Location: FF_X7_Y13_N3
\i_linecounter|vcnti[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[0]~10_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(0));

-- Location: LCCOMB_X7_Y13_N4
\i_linecounter|vcnti[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[1]~12_combout\ = (\i_linecounter|vcnti\(1) & (!\i_linecounter|vcnti[0]~11\)) # (!\i_linecounter|vcnti\(1) & ((\i_linecounter|vcnti[0]~11\) # (GND)))
-- \i_linecounter|vcnti[1]~13\ = CARRY((!\i_linecounter|vcnti[0]~11\) # (!\i_linecounter|vcnti\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(1),
	datad => VCC,
	cin => \i_linecounter|vcnti[0]~11\,
	combout => \i_linecounter|vcnti[1]~12_combout\,
	cout => \i_linecounter|vcnti[1]~13\);

-- Location: FF_X7_Y13_N5
\i_linecounter|vcnti[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[1]~12_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(1));

-- Location: FF_X7_Y13_N7
\i_linecounter|vcnti[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[2]~14_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(2));

-- Location: FF_X7_Y13_N11
\i_linecounter|vcnti[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[4]~18_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(4));

-- Location: LCCOMB_X6_Y13_N2
\i_vs_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|Equal0~0_combout\ = (!\i_linecounter|vcnti\(9) & (\i_linecounter|vcnti\(3) & (!\i_linecounter|vcnti\(4) & !\i_linecounter|vcnti\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	datab => \i_linecounter|vcnti\(3),
	datac => \i_linecounter|vcnti\(4),
	datad => \i_linecounter|vcnti\(0),
	combout => \i_vs_gen|Equal0~0_combout\);

-- Location: FF_X7_Y13_N15
\i_linecounter|vcnti[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[6]~22_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(6));

-- Location: LCCOMB_X6_Y13_N0
\iBlank_gen|blank~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~1_combout\ = (\i_linecounter|vcnti\(5) & (\i_linecounter|vcnti\(7) & (\i_linecounter|vcnti\(6) & \i_linecounter|vcnti\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(7),
	datac => \i_linecounter|vcnti\(6),
	datad => \i_linecounter|vcnti\(8),
	combout => \iBlank_gen|blank~1_combout\);

-- Location: LCCOMB_X6_Y13_N4
\i_vs_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|Equal0~1_combout\ = (\i_vs_gen|Equal0~0_combout\ & \iBlank_gen|blank~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_vs_gen|Equal0~0_combout\,
	datad => \iBlank_gen|blank~1_combout\,
	combout => \i_vs_gen|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y13_N22
\i_vs_gen|vsync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|vsync~0_combout\ = (\i_linecounter|vcnti\(1) & ((\i_vs_gen|vsync~q\) # ((!\i_linecounter|vcnti\(2) & \i_vs_gen|Equal0~1_combout\)))) # (!\i_linecounter|vcnti\(1) & (\i_vs_gen|vsync~q\ & ((!\i_vs_gen|Equal0~1_combout\) # 
-- (!\i_linecounter|vcnti\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(1),
	datab => \i_linecounter|vcnti\(2),
	datac => \i_vs_gen|vsync~q\,
	datad => \i_vs_gen|Equal0~1_combout\,
	combout => \i_vs_gen|vsync~0_combout\);

-- Location: FF_X7_Y13_N23
\i_vs_gen|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_vs_gen|vsync~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_vs_gen|vsync~q\);

-- Location: LCCOMB_X7_Y13_N30
\i_vs3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs3~0_combout\ = !\i_vs_gen|vsync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_vs_gen|vsync~q\,
	combout => \i_vs3~0_combout\);

-- Location: FF_X7_Y13_N31
i_vs3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_vs3~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_vs3~q\);

-- Location: LCCOMB_X7_Y13_N24
\i_vs4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs4~feeder_combout\ = \i_vs3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_vs3~q\,
	combout => \i_vs4~feeder_combout\);

-- Location: FF_X7_Y13_N25
i_vs4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_vs4~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_vs4~q\);

-- Location: LCCOMB_X9_Y13_N22
\iBlank_gen|blank~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~2_combout\ = (\iBlank_gen|blank~0_combout\ & !\iBlank_gen|blank~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iBlank_gen|blank~0_combout\,
	datac => \iBlank_gen|blank~1_combout\,
	combout => \iBlank_gen|blank~2_combout\);

-- Location: FF_X9_Y13_N23
i_blank2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \iBlank_gen|blank~2_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_blank2~q\);

-- Location: FF_X9_Y13_N11
i_blank3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_blank2~q\,
	clrn => \KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_blank3~q\);

-- Location: LCCOMB_X6_Y13_N8
\iRAMcontrol|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~0_combout\ = (\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti\(0) $ (VCC))) # (!\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti\(0) & VCC))
-- \iRAMcontrol|Add0~1\ = CARRY((\i_linecounter|vcnti\(2) & \i_linecounter|vcnti\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(2),
	datab => \i_linecounter|vcnti\(0),
	datad => VCC,
	combout => \iRAMcontrol|Add0~0_combout\,
	cout => \iRAMcontrol|Add0~1\);

-- Location: LCCOMB_X6_Y13_N10
\iRAMcontrol|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~2_combout\ = (\i_linecounter|vcnti\(1) & ((\i_linecounter|vcnti\(3) & (\iRAMcontrol|Add0~1\ & VCC)) # (!\i_linecounter|vcnti\(3) & (!\iRAMcontrol|Add0~1\)))) # (!\i_linecounter|vcnti\(1) & ((\i_linecounter|vcnti\(3) & 
-- (!\iRAMcontrol|Add0~1\)) # (!\i_linecounter|vcnti\(3) & ((\iRAMcontrol|Add0~1\) # (GND)))))
-- \iRAMcontrol|Add0~3\ = CARRY((\i_linecounter|vcnti\(1) & (!\i_linecounter|vcnti\(3) & !\iRAMcontrol|Add0~1\)) # (!\i_linecounter|vcnti\(1) & ((!\iRAMcontrol|Add0~1\) # (!\i_linecounter|vcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(1),
	datab => \i_linecounter|vcnti\(3),
	datad => VCC,
	cin => \iRAMcontrol|Add0~1\,
	combout => \iRAMcontrol|Add0~2_combout\,
	cout => \iRAMcontrol|Add0~3\);

-- Location: LCCOMB_X6_Y13_N12
\iRAMcontrol|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~4_combout\ = ((\i_linecounter|vcnti\(2) $ (\i_linecounter|vcnti\(4) $ (!\iRAMcontrol|Add0~3\)))) # (GND)
-- \iRAMcontrol|Add0~5\ = CARRY((\i_linecounter|vcnti\(2) & ((\i_linecounter|vcnti\(4)) # (!\iRAMcontrol|Add0~3\))) # (!\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti\(4) & !\iRAMcontrol|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(2),
	datab => \i_linecounter|vcnti\(4),
	datad => VCC,
	cin => \iRAMcontrol|Add0~3\,
	combout => \iRAMcontrol|Add0~4_combout\,
	cout => \iRAMcontrol|Add0~5\);

-- Location: LCCOMB_X6_Y13_N14
\iRAMcontrol|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~6_combout\ = (\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti\(3) & (\iRAMcontrol|Add0~5\ & VCC)) # (!\i_linecounter|vcnti\(3) & (!\iRAMcontrol|Add0~5\)))) # (!\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti\(3) & 
-- (!\iRAMcontrol|Add0~5\)) # (!\i_linecounter|vcnti\(3) & ((\iRAMcontrol|Add0~5\) # (GND)))))
-- \iRAMcontrol|Add0~7\ = CARRY((\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti\(3) & !\iRAMcontrol|Add0~5\)) # (!\i_linecounter|vcnti\(5) & ((!\iRAMcontrol|Add0~5\) # (!\i_linecounter|vcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(3),
	datad => VCC,
	cin => \iRAMcontrol|Add0~5\,
	combout => \iRAMcontrol|Add0~6_combout\,
	cout => \iRAMcontrol|Add0~7\);

-- Location: LCCOMB_X6_Y13_N16
\iRAMcontrol|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~8_combout\ = ((\i_linecounter|vcnti\(4) $ (\i_linecounter|vcnti\(6) $ (!\iRAMcontrol|Add0~7\)))) # (GND)
-- \iRAMcontrol|Add0~9\ = CARRY((\i_linecounter|vcnti\(4) & ((\i_linecounter|vcnti\(6)) # (!\iRAMcontrol|Add0~7\))) # (!\i_linecounter|vcnti\(4) & (\i_linecounter|vcnti\(6) & !\iRAMcontrol|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datab => \i_linecounter|vcnti\(6),
	datad => VCC,
	cin => \iRAMcontrol|Add0~7\,
	combout => \iRAMcontrol|Add0~8_combout\,
	cout => \iRAMcontrol|Add0~9\);

-- Location: LCCOMB_X6_Y13_N18
\iRAMcontrol|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~10_combout\ = (\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti\(7) & (\iRAMcontrol|Add0~9\ & VCC)) # (!\i_linecounter|vcnti\(7) & (!\iRAMcontrol|Add0~9\)))) # (!\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti\(7) & 
-- (!\iRAMcontrol|Add0~9\)) # (!\i_linecounter|vcnti\(7) & ((\iRAMcontrol|Add0~9\) # (GND)))))
-- \iRAMcontrol|Add0~11\ = CARRY((\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti\(7) & !\iRAMcontrol|Add0~9\)) # (!\i_linecounter|vcnti\(5) & ((!\iRAMcontrol|Add0~9\) # (!\i_linecounter|vcnti\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(7),
	datad => VCC,
	cin => \iRAMcontrol|Add0~9\,
	combout => \iRAMcontrol|Add0~10_combout\,
	cout => \iRAMcontrol|Add0~11\);

-- Location: LCCOMB_X6_Y13_N20
\iRAMcontrol|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~12_combout\ = ((\i_linecounter|vcnti\(8) $ (\i_linecounter|vcnti\(6) $ (!\iRAMcontrol|Add0~11\)))) # (GND)
-- \iRAMcontrol|Add0~13\ = CARRY((\i_linecounter|vcnti\(8) & ((\i_linecounter|vcnti\(6)) # (!\iRAMcontrol|Add0~11\))) # (!\i_linecounter|vcnti\(8) & (\i_linecounter|vcnti\(6) & !\iRAMcontrol|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(8),
	datab => \i_linecounter|vcnti\(6),
	datad => VCC,
	cin => \iRAMcontrol|Add0~11\,
	combout => \iRAMcontrol|Add0~12_combout\,
	cout => \iRAMcontrol|Add0~13\);

-- Location: LCCOMB_X6_Y13_N22
\iRAMcontrol|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~14_combout\ = (\i_linecounter|vcnti\(9) & ((\i_linecounter|vcnti\(7) & (\iRAMcontrol|Add0~13\ & VCC)) # (!\i_linecounter|vcnti\(7) & (!\iRAMcontrol|Add0~13\)))) # (!\i_linecounter|vcnti\(9) & ((\i_linecounter|vcnti\(7) & 
-- (!\iRAMcontrol|Add0~13\)) # (!\i_linecounter|vcnti\(7) & ((\iRAMcontrol|Add0~13\) # (GND)))))
-- \iRAMcontrol|Add0~15\ = CARRY((\i_linecounter|vcnti\(9) & (!\i_linecounter|vcnti\(7) & !\iRAMcontrol|Add0~13\)) # (!\i_linecounter|vcnti\(9) & ((!\iRAMcontrol|Add0~13\) # (!\i_linecounter|vcnti\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	datab => \i_linecounter|vcnti\(7),
	datad => VCC,
	cin => \iRAMcontrol|Add0~13\,
	combout => \iRAMcontrol|Add0~14_combout\,
	cout => \iRAMcontrol|Add0~15\);

-- Location: LCCOMB_X6_Y13_N24
\iRAMcontrol|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~16_combout\ = (\i_linecounter|vcnti\(8) & (\iRAMcontrol|Add0~15\ $ (GND))) # (!\i_linecounter|vcnti\(8) & (!\iRAMcontrol|Add0~15\ & VCC))
-- \iRAMcontrol|Add0~17\ = CARRY((\i_linecounter|vcnti\(8) & !\iRAMcontrol|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(8),
	datad => VCC,
	cin => \iRAMcontrol|Add0~15\,
	combout => \iRAMcontrol|Add0~16_combout\,
	cout => \iRAMcontrol|Add0~17\);

-- Location: LCCOMB_X6_Y13_N26
\iRAMcontrol|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~18_combout\ = (\i_linecounter|vcnti\(9) & (!\iRAMcontrol|Add0~17\)) # (!\i_linecounter|vcnti\(9) & ((\iRAMcontrol|Add0~17\) # (GND)))
-- \iRAMcontrol|Add0~19\ = CARRY((!\iRAMcontrol|Add0~17\) # (!\i_linecounter|vcnti\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	datad => VCC,
	cin => \iRAMcontrol|Add0~17\,
	combout => \iRAMcontrol|Add0~18_combout\,
	cout => \iRAMcontrol|Add0~19\);

-- Location: LCCOMB_X6_Y13_N28
\iRAMcontrol|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~20_combout\ = !\iRAMcontrol|Add0~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \iRAMcontrol|Add0~19\,
	combout => \iRAMcontrol|Add0~20_combout\);

-- Location: LCCOMB_X5_Y13_N2
\iRAMcontrol|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~0_combout\ = (\i_pixcounter|hcnti\(7) & (\i_linecounter|vcnti\(0) $ (VCC))) # (!\i_pixcounter|hcnti\(7) & (\i_linecounter|vcnti\(0) & VCC))
-- \iRAMcontrol|Add1~1\ = CARRY((\i_pixcounter|hcnti\(7) & \i_linecounter|vcnti\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(7),
	datab => \i_linecounter|vcnti\(0),
	datad => VCC,
	combout => \iRAMcontrol|Add1~0_combout\,
	cout => \iRAMcontrol|Add1~1\);

-- Location: LCCOMB_X5_Y13_N4
\iRAMcontrol|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~2_combout\ = (\i_linecounter|vcnti\(1) & ((\i_pixcounter|hcnti\(8) & (\iRAMcontrol|Add1~1\ & VCC)) # (!\i_pixcounter|hcnti\(8) & (!\iRAMcontrol|Add1~1\)))) # (!\i_linecounter|vcnti\(1) & ((\i_pixcounter|hcnti\(8) & 
-- (!\iRAMcontrol|Add1~1\)) # (!\i_pixcounter|hcnti\(8) & ((\iRAMcontrol|Add1~1\) # (GND)))))
-- \iRAMcontrol|Add1~3\ = CARRY((\i_linecounter|vcnti\(1) & (!\i_pixcounter|hcnti\(8) & !\iRAMcontrol|Add1~1\)) # (!\i_linecounter|vcnti\(1) & ((!\iRAMcontrol|Add1~1\) # (!\i_pixcounter|hcnti\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(1),
	datab => \i_pixcounter|hcnti\(8),
	datad => VCC,
	cin => \iRAMcontrol|Add1~1\,
	combout => \iRAMcontrol|Add1~2_combout\,
	cout => \iRAMcontrol|Add1~3\);

-- Location: LCCOMB_X5_Y13_N6
\iRAMcontrol|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~4_combout\ = ((\i_pixcounter|hcnti\(9) $ (\iRAMcontrol|Add0~0_combout\ $ (!\iRAMcontrol|Add1~3\)))) # (GND)
-- \iRAMcontrol|Add1~5\ = CARRY((\i_pixcounter|hcnti\(9) & ((\iRAMcontrol|Add0~0_combout\) # (!\iRAMcontrol|Add1~3\))) # (!\i_pixcounter|hcnti\(9) & (\iRAMcontrol|Add0~0_combout\ & !\iRAMcontrol|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(9),
	datab => \iRAMcontrol|Add0~0_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~3\,
	combout => \iRAMcontrol|Add1~4_combout\,
	cout => \iRAMcontrol|Add1~5\);

-- Location: LCCOMB_X5_Y13_N8
\iRAMcontrol|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~6_combout\ = (\iRAMcontrol|Add0~2_combout\ & (!\iRAMcontrol|Add1~5\)) # (!\iRAMcontrol|Add0~2_combout\ & ((\iRAMcontrol|Add1~5\) # (GND)))
-- \iRAMcontrol|Add1~7\ = CARRY((!\iRAMcontrol|Add1~5\) # (!\iRAMcontrol|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~2_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~5\,
	combout => \iRAMcontrol|Add1~6_combout\,
	cout => \iRAMcontrol|Add1~7\);

-- Location: LCCOMB_X5_Y13_N10
\iRAMcontrol|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~8_combout\ = (\iRAMcontrol|Add0~4_combout\ & (\iRAMcontrol|Add1~7\ $ (GND))) # (!\iRAMcontrol|Add0~4_combout\ & (!\iRAMcontrol|Add1~7\ & VCC))
-- \iRAMcontrol|Add1~9\ = CARRY((\iRAMcontrol|Add0~4_combout\ & !\iRAMcontrol|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~4_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~7\,
	combout => \iRAMcontrol|Add1~8_combout\,
	cout => \iRAMcontrol|Add1~9\);

-- Location: LCCOMB_X5_Y13_N12
\iRAMcontrol|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~10_combout\ = (\iRAMcontrol|Add0~6_combout\ & (!\iRAMcontrol|Add1~9\)) # (!\iRAMcontrol|Add0~6_combout\ & ((\iRAMcontrol|Add1~9\) # (GND)))
-- \iRAMcontrol|Add1~11\ = CARRY((!\iRAMcontrol|Add1~9\) # (!\iRAMcontrol|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~6_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~9\,
	combout => \iRAMcontrol|Add1~10_combout\,
	cout => \iRAMcontrol|Add1~11\);

-- Location: LCCOMB_X5_Y13_N14
\iRAMcontrol|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~12_combout\ = (\iRAMcontrol|Add0~8_combout\ & (\iRAMcontrol|Add1~11\ $ (GND))) # (!\iRAMcontrol|Add0~8_combout\ & (!\iRAMcontrol|Add1~11\ & VCC))
-- \iRAMcontrol|Add1~13\ = CARRY((\iRAMcontrol|Add0~8_combout\ & !\iRAMcontrol|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~8_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~11\,
	combout => \iRAMcontrol|Add1~12_combout\,
	cout => \iRAMcontrol|Add1~13\);

-- Location: LCCOMB_X5_Y13_N16
\iRAMcontrol|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~14_combout\ = (\iRAMcontrol|Add0~10_combout\ & (!\iRAMcontrol|Add1~13\)) # (!\iRAMcontrol|Add0~10_combout\ & ((\iRAMcontrol|Add1~13\) # (GND)))
-- \iRAMcontrol|Add1~15\ = CARRY((!\iRAMcontrol|Add1~13\) # (!\iRAMcontrol|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~10_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~13\,
	combout => \iRAMcontrol|Add1~14_combout\,
	cout => \iRAMcontrol|Add1~15\);

-- Location: LCCOMB_X5_Y13_N18
\iRAMcontrol|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~16_combout\ = (\iRAMcontrol|Add0~12_combout\ & (\iRAMcontrol|Add1~15\ $ (GND))) # (!\iRAMcontrol|Add0~12_combout\ & (!\iRAMcontrol|Add1~15\ & VCC))
-- \iRAMcontrol|Add1~17\ = CARRY((\iRAMcontrol|Add0~12_combout\ & !\iRAMcontrol|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iRAMcontrol|Add0~12_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~15\,
	combout => \iRAMcontrol|Add1~16_combout\,
	cout => \iRAMcontrol|Add1~17\);

-- Location: LCCOMB_X5_Y13_N20
\iRAMcontrol|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~18_combout\ = (\iRAMcontrol|Add0~14_combout\ & (!\iRAMcontrol|Add1~17\)) # (!\iRAMcontrol|Add0~14_combout\ & ((\iRAMcontrol|Add1~17\) # (GND)))
-- \iRAMcontrol|Add1~19\ = CARRY((!\iRAMcontrol|Add1~17\) # (!\iRAMcontrol|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~14_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~17\,
	combout => \iRAMcontrol|Add1~18_combout\,
	cout => \iRAMcontrol|Add1~19\);

-- Location: LCCOMB_X5_Y13_N22
\iRAMcontrol|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~20_combout\ = (\iRAMcontrol|Add0~16_combout\ & (\iRAMcontrol|Add1~19\ $ (GND))) # (!\iRAMcontrol|Add0~16_combout\ & (!\iRAMcontrol|Add1~19\ & VCC))
-- \iRAMcontrol|Add1~21\ = CARRY((\iRAMcontrol|Add0~16_combout\ & !\iRAMcontrol|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~16_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~19\,
	combout => \iRAMcontrol|Add1~20_combout\,
	cout => \iRAMcontrol|Add1~21\);

-- Location: LCCOMB_X5_Y13_N24
\iRAMcontrol|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~22_combout\ = (\iRAMcontrol|Add0~18_combout\ & (!\iRAMcontrol|Add1~21\)) # (!\iRAMcontrol|Add0~18_combout\ & ((\iRAMcontrol|Add1~21\) # (GND)))
-- \iRAMcontrol|Add1~23\ = CARRY((!\iRAMcontrol|Add1~21\) # (!\iRAMcontrol|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iRAMcontrol|Add0~18_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~21\,
	combout => \iRAMcontrol|Add1~22_combout\,
	cout => \iRAMcontrol|Add1~23\);

-- Location: LCCOMB_X5_Y13_N26
\iRAMcontrol|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~24_combout\ = \iRAMcontrol|Add1~23\ $ (!\iRAMcontrol|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \iRAMcontrol|Add0~20_combout\,
	cin => \iRAMcontrol|Add1~23\,
	combout => \iRAMcontrol|Add1~24_combout\);

-- Location: FF_X10_Y13_N13
\i_pixcounter|hcnti[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[3]~16_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(3));

-- Location: FF_X10_Y13_N11
\i_pixcounter|hcnti[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti[2]~14_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_pixcounter|LessThan0~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(2));

-- Location: IOIBUF_X11_Y0_N15
\sram_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(6),
	o => \sram_data[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\sram_data[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(14),
	o => \sram_data[14]~input_o\);

-- Location: LCCOMB_X11_Y22_N10
\i_pixreg|pixcode2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|pixcode2~1_combout\ = (\i_pixcounter|hcnti\(0) & ((\sram_data[14]~input_o\))) # (!\i_pixcounter|hcnti\(0) & (\sram_data[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datac => \sram_data[6]~input_o\,
	datad => \sram_data[14]~input_o\,
	combout => \i_pixreg|pixcode2~1_combout\);

-- Location: FF_X11_Y22_N11
\i_pixreg|pixcode2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|pixcode2~1_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode2\(6));

-- Location: IOIBUF_X0_Y22_N22
\sram_data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(9),
	o => \sram_data[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\sram_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(1),
	o => \sram_data[1]~input_o\);

-- Location: LCCOMB_X11_Y22_N16
\i_pixreg|pixcode2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|pixcode2~0_combout\ = (\i_pixcounter|hcnti\(0) & (\sram_data[9]~input_o\)) # (!\i_pixcounter|hcnti\(0) & ((\sram_data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datac => \sram_data[9]~input_o\,
	datad => \sram_data[1]~input_o\,
	combout => \i_pixreg|pixcode2~0_combout\);

-- Location: FF_X11_Y22_N17
\i_pixreg|pixcode2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|pixcode2~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode2\(1));

-- Location: IOIBUF_X20_Y0_N8
\sram_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(7),
	o => \sram_data[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\sram_data[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(15),
	o => \sram_data[15]~input_o\);

-- Location: LCCOMB_X11_Y22_N20
\i_pixreg|pixcode2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|pixcode2~2_combout\ = (\i_pixcounter|hcnti\(0) & ((\sram_data[15]~input_o\))) # (!\i_pixcounter|hcnti\(0) & (\sram_data[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datac => \sram_data[7]~input_o\,
	datad => \sram_data[15]~input_o\,
	combout => \i_pixreg|pixcode2~2_combout\);

-- Location: FF_X11_Y22_N21
\i_pixreg|pixcode2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|pixcode2~2_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode2\(7));

-- Location: LCCOMB_X20_Y72_N0
\i_RGB_gen|vga_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~0_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(1)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|pixcode2\(6),
	datac => \i_pixreg|pixcode2\(1),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_b~0_combout\);

-- Location: FF_X20_Y72_N1
\i_RGB_gen|vga_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~0_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(7));

-- Location: IOIBUF_X11_Y0_N22
\sram_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(5),
	o => \sram_data[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\sram_data[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(13),
	o => \sram_data[13]~input_o\);

-- Location: LCCOMB_X11_Y22_N24
\i_pixreg|pixcode2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|pixcode2~4_combout\ = (\i_pixcounter|hcnti\(0) & ((\sram_data[13]~input_o\))) # (!\i_pixcounter|hcnti\(0) & (\sram_data[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datac => \sram_data[5]~input_o\,
	datad => \sram_data[13]~input_o\,
	combout => \i_pixreg|pixcode2~4_combout\);

-- Location: FF_X11_Y22_N25
\i_pixreg|pixcode2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|pixcode2~4_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode2\(5));

-- Location: IOIBUF_X0_Y21_N15
\sram_data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(8),
	o => \sram_data[8]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\sram_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(0),
	o => \sram_data[0]~input_o\);

-- Location: LCCOMB_X11_Y22_N14
\i_pixreg|pixcode2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|pixcode2~3_combout\ = (\i_pixcounter|hcnti\(0) & (\sram_data[8]~input_o\)) # (!\i_pixcounter|hcnti\(0) & ((\sram_data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datac => \sram_data[8]~input_o\,
	datad => \sram_data[0]~input_o\,
	combout => \i_pixreg|pixcode2~3_combout\);

-- Location: FF_X11_Y22_N15
\i_pixreg|pixcode2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|pixcode2~3_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode2\(0));

-- Location: LCCOMB_X11_Y22_N0
\i_RGB_gen|vga_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~1_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(0)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|pixcode2\(5),
	datac => \i_pixreg|pixcode2\(0),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_b~1_combout\);

-- Location: FF_X11_Y22_N1
\i_RGB_gen|vga_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~1_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(6));

-- Location: IOIBUF_X7_Y0_N15
\sram_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(4),
	o => \sram_data[4]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\sram_data[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(12),
	o => \sram_data[12]~input_o\);

-- Location: LCCOMB_X11_Y22_N18
\i_pixreg|pixcode2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|pixcode2~5_combout\ = (\i_pixcounter|hcnti\(0) & ((\sram_data[12]~input_o\))) # (!\i_pixcounter|hcnti\(0) & (\sram_data[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datac => \sram_data[4]~input_o\,
	datad => \sram_data[12]~input_o\,
	combout => \i_pixreg|pixcode2~5_combout\);

-- Location: FF_X11_Y22_N19
\i_pixreg|pixcode2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|pixcode2~5_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode2\(4));

-- Location: LCCOMB_X20_Y72_N2
\i_RGB_gen|vga_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~2_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(1)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|pixcode2\(4),
	datac => \i_pixreg|pixcode2\(1),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_b~2_combout\);

-- Location: FF_X20_Y72_N3
\i_RGB_gen|vga_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(5));

-- Location: IOIBUF_X9_Y0_N15
\sram_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(3),
	o => \sram_data[3]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\sram_data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(11),
	o => \sram_data[11]~input_o\);

-- Location: LCCOMB_X11_Y22_N12
\i_pixreg|pixcode2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|pixcode2~6_combout\ = (\i_pixcounter|hcnti\(0) & ((\sram_data[11]~input_o\))) # (!\i_pixcounter|hcnti\(0) & (\sram_data[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datac => \sram_data[3]~input_o\,
	datad => \sram_data[11]~input_o\,
	combout => \i_pixreg|pixcode2~6_combout\);

-- Location: FF_X11_Y22_N13
\i_pixreg|pixcode2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|pixcode2~6_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode2\(3));

-- Location: LCCOMB_X20_Y72_N4
\i_RGB_gen|vga_b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~3_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(0)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(7),
	datab => \i_pixreg|pixcode2\(3),
	datac => \i_pixreg|pixcode2\(0),
	combout => \i_RGB_gen|vga_b~3_combout\);

-- Location: FF_X20_Y72_N5
\i_RGB_gen|vga_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~3_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(4));

-- Location: IOIBUF_X9_Y0_N22
\sram_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(2),
	o => \sram_data[2]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\sram_data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sram_data(10),
	o => \sram_data[10]~input_o\);

-- Location: LCCOMB_X11_Y22_N22
\i_pixreg|pixcode2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|pixcode2~7_combout\ = (\i_pixcounter|hcnti\(0) & ((\sram_data[10]~input_o\))) # (!\i_pixcounter|hcnti\(0) & (\sram_data[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datac => \sram_data[2]~input_o\,
	datad => \sram_data[10]~input_o\,
	combout => \i_pixreg|pixcode2~7_combout\);

-- Location: FF_X11_Y22_N23
\i_pixreg|pixcode2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|pixcode2~7_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode2\(2));

-- Location: LCCOMB_X20_Y72_N14
\i_RGB_gen|vga_b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~4_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(1)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|pixcode2\(2),
	datac => \i_pixreg|pixcode2\(1),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_b~4_combout\);

-- Location: FF_X20_Y72_N15
\i_RGB_gen|vga_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~4_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(3));

-- Location: LCCOMB_X20_Y72_N24
\i_RGB_gen|vga_b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~5_combout\ = (\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(0))) # (!\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(0),
	datac => \i_pixreg|pixcode2\(1),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_b~5_combout\);

-- Location: FF_X20_Y72_N25
\i_RGB_gen|vga_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~5_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(2));

-- Location: LCCOMB_X20_Y72_N26
\i_RGB_gen|vga_b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~6_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(1)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(0),
	datac => \i_pixreg|pixcode2\(1),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_b~6_combout\);

-- Location: FF_X20_Y72_N27
\i_RGB_gen|vga_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~6_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(1));

-- Location: LCCOMB_X20_Y72_N28
\i_RGB_gen|vga_b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~7_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(0)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(7),
	datab => \i_pixreg|pixcode2\(6),
	datac => \i_pixreg|pixcode2\(0),
	combout => \i_RGB_gen|vga_b~7_combout\);

-- Location: FF_X20_Y72_N29
\i_RGB_gen|vga_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~7_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(0));

-- Location: LCCOMB_X20_Y72_N6
\i_RGB_gen|vga_g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~0_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(4)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(7),
	datab => \i_pixreg|pixcode2\(6),
	datad => \i_pixreg|pixcode2\(4),
	combout => \i_RGB_gen|vga_g~0_combout\);

-- Location: FF_X20_Y72_N7
\i_RGB_gen|vga_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~0_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(7));

-- Location: LCCOMB_X11_Y22_N26
\i_RGB_gen|vga_g~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~1_combout\ = (\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(3))) # (!\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(3),
	datab => \i_pixreg|pixcode2\(5),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_g~1_combout\);

-- Location: FF_X11_Y22_N27
\i_RGB_gen|vga_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~1_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(6));

-- Location: LCCOMB_X20_Y72_N16
\i_RGB_gen|vga_g~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~2_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(2)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|pixcode2\(4),
	datac => \i_pixreg|pixcode2\(2),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_g~2_combout\);

-- Location: FF_X20_Y72_N17
\i_RGB_gen|vga_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(5));

-- Location: LCCOMB_X20_Y72_N18
\i_RGB_gen|vga_g~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~3_combout\ = (\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(4))) # (!\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(7),
	datab => \i_pixreg|pixcode2\(4),
	datad => \i_pixreg|pixcode2\(3),
	combout => \i_RGB_gen|vga_g~3_combout\);

-- Location: FF_X20_Y72_N19
\i_RGB_gen|vga_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~3_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(4));

-- Location: LCCOMB_X20_Y72_N12
\i_RGB_gen|vga_g~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~4_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(3)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(7),
	datac => \i_pixreg|pixcode2\(2),
	datad => \i_pixreg|pixcode2\(3),
	combout => \i_RGB_gen|vga_g~4_combout\);

-- Location: FF_X20_Y72_N13
\i_RGB_gen|vga_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~4_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(3));

-- Location: LCCOMB_X20_Y72_N22
\i_RGB_gen|vga_g~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~5_combout\ = (\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(2))) # (!\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|pixcode2\(2),
	datac => \i_pixreg|pixcode2\(1),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_g~5_combout\);

-- Location: FF_X20_Y72_N23
\i_RGB_gen|vga_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~5_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(2));

-- Location: LCCOMB_X20_Y72_N8
\i_RGB_gen|vga_g~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~6_combout\ = (\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(4))) # (!\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(7),
	datab => \i_pixreg|pixcode2\(4),
	datac => \i_pixreg|pixcode2\(0),
	combout => \i_RGB_gen|vga_g~6_combout\);

-- Location: FF_X20_Y72_N9
\i_RGB_gen|vga_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~6_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(1));

-- Location: LCCOMB_X20_Y72_N10
\i_RGB_gen|vga_g~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~7_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(3)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(7),
	datac => \i_pixreg|pixcode2\(6),
	datad => \i_pixreg|pixcode2\(3),
	combout => \i_RGB_gen|vga_g~7_combout\);

-- Location: FF_X20_Y72_N11
\i_RGB_gen|vga_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~7_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(0));

-- Location: LCCOMB_X11_Y22_N28
\i_RGB_gen|vga_r[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[7]~feeder_combout\ = \i_pixreg|pixcode2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode2\(6),
	combout => \i_RGB_gen|vga_r[7]~feeder_combout\);

-- Location: FF_X11_Y22_N29
\i_RGB_gen|vga_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[7]~feeder_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(7));

-- Location: LCCOMB_X11_Y22_N30
\i_RGB_gen|vga_r[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[6]~feeder_combout\ = \i_pixreg|pixcode2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode2\(5),
	combout => \i_RGB_gen|vga_r[6]~feeder_combout\);

-- Location: FF_X11_Y22_N31
\i_RGB_gen|vga_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[6]~feeder_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(6));

-- Location: LCCOMB_X20_Y72_N20
\i_RGB_gen|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~0_combout\ = (\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(6))) # (!\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(7),
	datab => \i_pixreg|pixcode2\(6),
	datad => \i_pixreg|pixcode2\(4),
	combout => \i_RGB_gen|vga_r~0_combout\);

-- Location: FF_X20_Y72_N21
\i_RGB_gen|vga_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~0_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(5));

-- Location: LCCOMB_X11_Y22_N8
\i_RGB_gen|vga_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~1_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(5)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(3),
	datab => \i_pixreg|pixcode2\(5),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_r~1_combout\);

-- Location: FF_X11_Y22_N9
\i_RGB_gen|vga_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~1_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(4));

-- Location: LCCOMB_X11_Y22_N2
\i_RGB_gen|vga_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~2_combout\ = (\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(6))) # (!\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(6),
	datab => \i_pixreg|pixcode2\(7),
	datac => \i_pixreg|pixcode2\(2),
	combout => \i_RGB_gen|vga_r~2_combout\);

-- Location: FF_X11_Y22_N3
\i_RGB_gen|vga_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~2_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(3));

-- Location: LCCOMB_X11_Y22_N4
\i_RGB_gen|vga_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~3_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(5)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|pixcode2\(7),
	datac => \i_pixreg|pixcode2\(1),
	datad => \i_pixreg|pixcode2\(5),
	combout => \i_RGB_gen|vga_r~3_combout\);

-- Location: FF_X11_Y22_N5
\i_RGB_gen|vga_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~3_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(2));

-- Location: LCCOMB_X20_Y72_N30
\i_RGB_gen|vga_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~4_combout\ = (\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(6))) # (!\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(7),
	datab => \i_pixreg|pixcode2\(6),
	datac => \i_pixreg|pixcode2\(0),
	combout => \i_RGB_gen|vga_r~4_combout\);

-- Location: FF_X20_Y72_N31
\i_RGB_gen|vga_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~4_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(1));

-- Location: LCCOMB_X11_Y22_N6
\i_RGB_gen|vga_r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~5_combout\ = (\i_pixreg|pixcode2\(7) & ((\i_pixreg|pixcode2\(5)))) # (!\i_pixreg|pixcode2\(7) & (\i_pixreg|pixcode2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode2\(6),
	datab => \i_pixreg|pixcode2\(5),
	datad => \i_pixreg|pixcode2\(7),
	combout => \i_RGB_gen|vga_r~5_combout\);

-- Location: FF_X11_Y22_N7
\i_RGB_gen|vga_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~5_combout\,
	ena => \i_ce_gen|counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(0));

ww_hsync <= \hsync~output_o\;

ww_vsync <= \vsync~output_o\;

ww_sram_ce <= \sram_ce~output_o\;

ww_sram_oe <= \sram_oe~output_o\;

ww_sram_lb <= \sram_lb~output_o\;

ww_sram_ub <= \sram_ub~output_o\;

ww_sram_we <= \sram_we~output_o\;

ww_vga_clk <= \vga_clk~output_o\;

ww_vga_blank <= \vga_blank~output_o\;

ww_vga_sync <= \vga_sync~output_o\;

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

ww_sram_addr(19) <= \sram_addr[19]~output_o\;

ww_sram_addr(18) <= \sram_addr[18]~output_o\;

ww_sram_addr(17) <= \sram_addr[17]~output_o\;

ww_sram_addr(16) <= \sram_addr[16]~output_o\;

ww_sram_addr(15) <= \sram_addr[15]~output_o\;

ww_sram_addr(14) <= \sram_addr[14]~output_o\;

ww_sram_addr(13) <= \sram_addr[13]~output_o\;

ww_sram_addr(12) <= \sram_addr[12]~output_o\;

ww_sram_addr(11) <= \sram_addr[11]~output_o\;

ww_sram_addr(10) <= \sram_addr[10]~output_o\;

ww_sram_addr(9) <= \sram_addr[9]~output_o\;

ww_sram_addr(8) <= \sram_addr[8]~output_o\;

ww_sram_addr(7) <= \sram_addr[7]~output_o\;

ww_sram_addr(6) <= \sram_addr[6]~output_o\;

ww_sram_addr(5) <= \sram_addr[5]~output_o\;

ww_sram_addr(4) <= \sram_addr[4]~output_o\;

ww_sram_addr(3) <= \sram_addr[3]~output_o\;

ww_sram_addr(2) <= \sram_addr[2]~output_o\;

ww_sram_addr(1) <= \sram_addr[1]~output_o\;

ww_sram_addr(0) <= \sram_addr[0]~output_o\;

ww_vga_b(7) <= \vga_b[7]~output_o\;

ww_vga_b(6) <= \vga_b[6]~output_o\;

ww_vga_b(5) <= \vga_b[5]~output_o\;

ww_vga_b(4) <= \vga_b[4]~output_o\;

ww_vga_b(3) <= \vga_b[3]~output_o\;

ww_vga_b(2) <= \vga_b[2]~output_o\;

ww_vga_b(1) <= \vga_b[1]~output_o\;

ww_vga_b(0) <= \vga_b[0]~output_o\;

ww_vga_g(7) <= \vga_g[7]~output_o\;

ww_vga_g(6) <= \vga_g[6]~output_o\;

ww_vga_g(5) <= \vga_g[5]~output_o\;

ww_vga_g(4) <= \vga_g[4]~output_o\;

ww_vga_g(3) <= \vga_g[3]~output_o\;

ww_vga_g(2) <= \vga_g[2]~output_o\;

ww_vga_g(1) <= \vga_g[1]~output_o\;

ww_vga_g(0) <= \vga_g[0]~output_o\;

ww_vga_r(7) <= \vga_r[7]~output_o\;

ww_vga_r(6) <= \vga_r[6]~output_o\;

ww_vga_r(5) <= \vga_r[5]~output_o\;

ww_vga_r(4) <= \vga_r[4]~output_o\;

ww_vga_r(3) <= \vga_r[3]~output_o\;

ww_vga_r(2) <= \vga_r[2]~output_o\;

ww_vga_r(1) <= \vga_r[1]~output_o\;

ww_vga_r(0) <= \vga_r[0]~output_o\;
END structure;


