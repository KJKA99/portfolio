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

-- DATE "09/27/2023 10:41:06"

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

ENTITY 	Sound IS
    PORT (
	mclk : OUT std_logic;
	clk : IN std_logic;
	rstn : IN std_logic;
	adcdat : IN std_logic;
	SW : IN std_logic_vector(5 TO 7);
	bclk : OUT std_logic;
	adclrc : OUT std_logic;
	daclrc : OUT std_logic;
	dacdat : OUT std_logic;
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6);
	LEDR : OUT std_logic_vector(0 TO 17)
	);
END Sound;

-- Design Ports Information
-- mclk	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bclk	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- adclrc	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- daclrc	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dacdat	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rstn	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adcdat	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sound IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rstn : std_logic;
SIGNAL ww_adcdat : std_logic;
SIGNAL ww_SW : std_logic_vector(5 TO 7);
SIGNAL ww_bclk : std_logic;
SIGNAL ww_adclrc : std_logic;
SIGNAL ww_daclrc : std_logic;
SIGNAL ww_dacdat : std_logic;
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDR : std_logic_vector(0 TO 17);
SIGNAL \inst1|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instSndDrv|inst_ctrl|cntr[5]~17_combout\ : std_logic;
SIGNAL \inst1|Add4~0_combout\ : std_logic;
SIGNAL \inst1|Add4~2_combout\ : std_logic;
SIGNAL \inst1|Add4~4_combout\ : std_logic;
SIGNAL \inst1|Add4~8_combout\ : std_logic;
SIGNAL \inst1|Add4~14_combout\ : std_logic;
SIGNAL \inst1|Add4~16_combout\ : std_logic;
SIGNAL \inst1|Add4~18_combout\ : std_logic;
SIGNAL \inst1|Add4~20_combout\ : std_logic;
SIGNAL \inst1|Add5~0_combout\ : std_logic;
SIGNAL \inst1|Add5~2_combout\ : std_logic;
SIGNAL \inst1|Add5~4_combout\ : std_logic;
SIGNAL \inst1|Add5~8_combout\ : std_logic;
SIGNAL \inst1|Add5~14_combout\ : std_logic;
SIGNAL \inst1|Add5~16_combout\ : std_logic;
SIGNAL \inst1|Add5~18_combout\ : std_logic;
SIGNAL \inst1|Add5~20_combout\ : std_logic;
SIGNAL \inst1|Add10~0_combout\ : std_logic;
SIGNAL \inst1|Add10~10_combout\ : std_logic;
SIGNAL \inst1|Add10~12_combout\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst1|rack[0]~40_combout\ : std_logic;
SIGNAL \inst1|rack[1]~42_combout\ : std_logic;
SIGNAL \inst1|rack[2]~44_combout\ : std_logic;
SIGNAL \inst1|rack[3]~46_combout\ : std_logic;
SIGNAL \inst1|rack[4]~48_combout\ : std_logic;
SIGNAL \inst1|rack[6]~52_combout\ : std_logic;
SIGNAL \inst1|Add10~18_combout\ : std_logic;
SIGNAL \inst1|Add10~22_combout\ : std_logic;
SIGNAL \inst1|Add10~26_combout\ : std_logic;
SIGNAL \inst1|Add10~30_combout\ : std_logic;
SIGNAL \inst1|Add10~32_combout\ : std_logic;
SIGNAL \inst1|Add10~34_combout\ : std_logic;
SIGNAL \inst1|rack[18]~77_combout\ : std_logic;
SIGNAL \inst1|Add10~40_combout\ : std_logic;
SIGNAL \inst1|Add10~44_combout\ : std_logic;
SIGNAL \inst1|Add10~50_combout\ : std_logic;
SIGNAL \inst1|Add10~54_combout\ : std_logic;
SIGNAL \inst1|Add10~62_combout\ : std_logic;
SIGNAL \inst1|Add8~2_combout\ : std_logic;
SIGNAL \inst1|Add8~4_combout\ : std_logic;
SIGNAL \inst1|Add8~18_combout\ : std_logic;
SIGNAL \inst1|Add8~20_combout\ : std_logic;
SIGNAL \inst1|Add8~26_combout\ : std_logic;
SIGNAL \inst1|Add8~32_combout\ : std_logic;
SIGNAL \inst1|Add8~36_combout\ : std_logic;
SIGNAL \inst1|Add8~38_combout\ : std_logic;
SIGNAL \inst1|Add8~40_combout\ : std_logic;
SIGNAL \inst1|Add8~52_combout\ : std_logic;
SIGNAL \inst1|Add8~54_combout\ : std_logic;
SIGNAL \inst1|Add8~56_combout\ : std_logic;
SIGNAL \inst1|Add8~58_combout\ : std_logic;
SIGNAL \inst1|Add8~62_combout\ : std_logic;
SIGNAL \inst1|Add8~64_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst1|lack[4]~48_combout\ : std_logic;
SIGNAL \inst1|lack[6]~52_combout\ : std_logic;
SIGNAL \inst1|lack[15]~70_combout\ : std_logic;
SIGNAL \inst1|lack[22]~84_combout\ : std_logic;
SIGNAL \inst1|lack[31]~102_combout\ : std_logic;
SIGNAL \inst1|Add8~66_combout\ : std_logic;
SIGNAL \inst1|Add8~68_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~8_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~10_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~12_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~14_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~20_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~24_combout\ : std_logic;
SIGNAL \inst1|Add10~72_combout\ : std_logic;
SIGNAL \inst1|rack[36]~113_combout\ : std_logic;
SIGNAL \inst1|Add10~74_combout\ : std_logic;
SIGNAL \inst1|Add10~76_combout\ : std_logic;
SIGNAL \inst1|Add8~70_combout\ : std_logic;
SIGNAL \inst1|Add8~72_combout\ : std_logic;
SIGNAL \inst1|lack[35]~110_combout\ : std_logic;
SIGNAL \inst1|lack[38]~116_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~16\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~17\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[1]~17_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[2]~19_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[12]~40\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[13]~41_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[13]~42\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[14]~43_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst1|xl[3]~21_combout\ : std_logic;
SIGNAL \inst1|xl[5]~25_combout\ : std_logic;
SIGNAL \inst1|xl[6]~27_combout\ : std_logic;
SIGNAL \inst1|xm[4]~16_combout\ : std_logic;
SIGNAL \inst1|xm[6]~20_combout\ : std_logic;
SIGNAL \inst1|xm[14]~36_combout\ : std_logic;
SIGNAL \inst1|xr[5]~20_combout\ : std_logic;
SIGNAL \inst1|Add4~28_combout\ : std_logic;
SIGNAL \inst1|Add4~29_combout\ : std_logic;
SIGNAL \inst1|Add4~30_combout\ : std_logic;
SIGNAL \inst1|Add4~31_combout\ : std_logic;
SIGNAL \inst1|Add4~34_combout\ : std_logic;
SIGNAL \inst1|Add4~36_combout\ : std_logic;
SIGNAL \inst1|Add4~37_combout\ : std_logic;
SIGNAL \inst1|Add4~38_combout\ : std_logic;
SIGNAL \inst1|Add5~28_combout\ : std_logic;
SIGNAL \inst1|Add5~29_combout\ : std_logic;
SIGNAL \inst1|Add5~30_combout\ : std_logic;
SIGNAL \inst1|Add5~31_combout\ : std_logic;
SIGNAL \inst1|Add5~34_combout\ : std_logic;
SIGNAL \inst1|Add5~36_combout\ : std_logic;
SIGNAL \inst1|Add5~37_combout\ : std_logic;
SIGNAL \inst1|Add5~38_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~3_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~32_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~4_combout\ : std_logic;
SIGNAL \inst1|LDAC~2_combout\ : std_logic;
SIGNAL \inst1|Mux26~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~5_combout\ : std_logic;
SIGNAL \inst1|LDAC~3_combout\ : std_logic;
SIGNAL \inst1|RDAC~3_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~6_combout\ : std_logic;
SIGNAL \inst1|LDAC~4_combout\ : std_logic;
SIGNAL \inst1|RDAC~4_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~7_combout\ : std_logic;
SIGNAL \inst1|LDAC~5_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~8_combout\ : std_logic;
SIGNAL \inst1|LDAC~6_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~9_combout\ : std_logic;
SIGNAL \inst1|LDAC~7_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~9_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~10_combout\ : std_logic;
SIGNAL \inst1|LDAC~8_combout\ : std_logic;
SIGNAL \inst1|RDAC~8_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~10_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~11_combout\ : std_logic;
SIGNAL \inst1|LDAC~9_combout\ : std_logic;
SIGNAL \inst1|RDAC~9_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~11_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~12_combout\ : std_logic;
SIGNAL \inst1|LDAC~10_combout\ : std_logic;
SIGNAL \inst1|RDAC~10_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~12_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~13_combout\ : std_logic;
SIGNAL \inst1|LDAC~11_combout\ : std_logic;
SIGNAL \inst1|RDAC~11_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~13_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~14_combout\ : std_logic;
SIGNAL \inst1|LDAC~12_combout\ : std_logic;
SIGNAL \inst1|RDAC~12_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~14_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~15_combout\ : std_logic;
SIGNAL \inst1|LDAC~13_combout\ : std_logic;
SIGNAL \inst1|RDAC~13_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg[0]~16_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg[0]~17_combout\ : std_logic;
SIGNAL \inst1|LDAC~14_combout\ : std_logic;
SIGNAL \inst1|RDAC~14_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg[13]~16_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg[0]~17_combout\ : std_logic;
SIGNAL \inst1|LDAC~15_combout\ : std_logic;
SIGNAL \inst1|RDAC~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[0]~27_combout\ : std_logic;
SIGNAL \inst1|noise[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|noise[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|noise[4]~feeder_combout\ : std_logic;
SIGNAL \mclk~output_o\ : std_logic;
SIGNAL \bclk~output_o\ : std_logic;
SIGNAL \adclrc~output_o\ : std_logic;
SIGNAL \daclrc~output_o\ : std_logic;
SIGNAL \dacdat~output_o\ : std_logic;
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
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[1]~9_combout\ : std_logic;
SIGNAL \rstn~input_o\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[1]~10\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[2]~12\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[3]~13_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[3]~14\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[4]~16\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[5]~18\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[6]~19_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[6]~20\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[7]~21_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[7]~22\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[8]~23_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[8]~24\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[9]~25_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst1|xl[1]~16_cout\ : std_logic;
SIGNAL \inst1|xl[1]~17_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[2]~11_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[4]~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|Equal1~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|ADC_en~0_combout\ : std_logic;
SIGNAL \inst1|xl[1]~18\ : std_logic;
SIGNAL \inst1|xl[2]~19_combout\ : std_logic;
SIGNAL \inst1|xl[2]~20\ : std_logic;
SIGNAL \inst1|xl[3]~22\ : std_logic;
SIGNAL \inst1|xl[4]~23_combout\ : std_logic;
SIGNAL \inst1|xl[4]~24\ : std_logic;
SIGNAL \inst1|xl[5]~26\ : std_logic;
SIGNAL \inst1|xl[6]~28\ : std_logic;
SIGNAL \inst1|xl[7]~29_combout\ : std_logic;
SIGNAL \inst1|xl[7]~30\ : std_logic;
SIGNAL \inst1|xl[8]~31_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|state_counter~9_combout\ : std_logic;
SIGNAL \inst1|state_counter~6_combout\ : std_logic;
SIGNAL \inst1|state_counter~11_combout\ : std_logic;
SIGNAL \inst1|state_counter~7_combout\ : std_logic;
SIGNAL \inst1|state_counter[2]~10_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|xr[2]~14_combout\ : std_logic;
SIGNAL \inst1|xr[2]~15\ : std_logic;
SIGNAL \inst1|xr[3]~16_combout\ : std_logic;
SIGNAL \inst1|xr[3]~17\ : std_logic;
SIGNAL \inst1|xr[4]~18_combout\ : std_logic;
SIGNAL \inst1|xr[4]~19\ : std_logic;
SIGNAL \inst1|xr[5]~21\ : std_logic;
SIGNAL \inst1|xr[6]~22_combout\ : std_logic;
SIGNAL \inst1|xr[6]~23\ : std_logic;
SIGNAL \inst1|xr[7]~25\ : std_logic;
SIGNAL \inst1|xr[8]~26_combout\ : std_logic;
SIGNAL \inst1|x[15]~0_combout\ : std_logic;
SIGNAL \inst1|xl[8]~32\ : std_logic;
SIGNAL \inst1|xl[9]~33_combout\ : std_logic;
SIGNAL \inst1|xl[9]~34\ : std_logic;
SIGNAL \inst1|xl[10]~35_combout\ : std_logic;
SIGNAL \inst1|xl[10]~36\ : std_logic;
SIGNAL \inst1|xl[11]~38\ : std_logic;
SIGNAL \inst1|xl[12]~39_combout\ : std_logic;
SIGNAL \inst1|xl[12]~40\ : std_logic;
SIGNAL \inst1|xl[13]~42\ : std_logic;
SIGNAL \inst1|xl[14]~43_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|xr[8]~27\ : std_logic;
SIGNAL \inst1|xr[9]~28_combout\ : std_logic;
SIGNAL \inst1|xr[9]~29\ : std_logic;
SIGNAL \inst1|xr[10]~30_combout\ : std_logic;
SIGNAL \inst1|xr[10]~31\ : std_logic;
SIGNAL \inst1|xr[11]~32_combout\ : std_logic;
SIGNAL \inst1|xr[11]~33\ : std_logic;
SIGNAL \inst1|xr[12]~34_combout\ : std_logic;
SIGNAL \inst1|xr[12]~35\ : std_logic;
SIGNAL \inst1|xr[13]~37\ : std_logic;
SIGNAL \inst1|xr[14]~38_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[8]~0_combout\ : std_logic;
SIGNAL \inst1|xr[1]~42_combout\ : std_logic;
SIGNAL \inst1|xm[4]~13_cout\ : std_logic;
SIGNAL \inst1|xm[4]~15_cout\ : std_logic;
SIGNAL \inst1|xm[4]~17\ : std_logic;
SIGNAL \inst1|xm[5]~18_combout\ : std_logic;
SIGNAL \inst1|xm[5]~19\ : std_logic;
SIGNAL \inst1|xm[6]~21\ : std_logic;
SIGNAL \inst1|xm[7]~23\ : std_logic;
SIGNAL \inst1|xm[8]~24_combout\ : std_logic;
SIGNAL \inst1|xm[8]~25\ : std_logic;
SIGNAL \inst1|xm[9]~26_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[9]~1_combout\ : std_logic;
SIGNAL \inst1|xm[9]~27\ : std_logic;
SIGNAL \inst1|xm[10]~28_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[10]~2_combout\ : std_logic;
SIGNAL \inst1|xl[11]~37_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[11]~3_combout\ : std_logic;
SIGNAL \inst1|xm[10]~29\ : std_logic;
SIGNAL \inst1|xm[11]~30_combout\ : std_logic;
SIGNAL \inst1|xm[11]~31\ : std_logic;
SIGNAL \inst1|xm[12]~32_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[12]~4_combout\ : std_logic;
SIGNAL \inst1|xl[13]~41_combout\ : std_logic;
SIGNAL \inst1|xm[12]~33\ : std_logic;
SIGNAL \inst1|xm[13]~34_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|xr[13]~36_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[13]~5_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \inst1|state_counter~8_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[0]~6_combout\ : std_logic;
SIGNAL \inst1|x[1]~1_combout\ : std_logic;
SIGNAL \inst1|x[1]~2_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[1]~7_combout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[2]~8_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[3]~9_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[4]~10_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[5]~11_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[6]~12_combout\ : std_logic;
SIGNAL \inst1|xm[7]~22_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|xr[7]~24_combout\ : std_logic;
SIGNAL \inst1|psac_inst|x2[7]~13_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~16\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_mult1~17\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[0]~16\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[1]~18\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[2]~20\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[3]~22\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[4]~24\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[5]~26\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[6]~28\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[7]~30\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[8]~32\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[9]~34\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[10]~36\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[11]~38\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[12]~39_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[11]~37_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[10]~35_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[6]~27_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[5]~25_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[4]~23_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[3]~21_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[0]~15_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~1_cout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~3_cout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~5_cout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~7\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~9\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~11\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~13\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~15\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~17\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~19\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~21\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~23\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~25\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~27\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~28_combout\ : std_logic;
SIGNAL \inst1|xl[14]~44\ : std_logic;
SIGNAL \inst1|xl[15]~45_combout\ : std_logic;
SIGNAL \inst1|xm[13]~35\ : std_logic;
SIGNAL \inst1|xm[14]~37\ : std_logic;
SIGNAL \inst1|xm[15]~38_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|xr[14]~39\ : std_logic;
SIGNAL \inst1|xr[15]~40_combout\ : std_logic;
SIGNAL \inst1|psac_inst|inv_res_1~feeder_combout\ : std_logic;
SIGNAL \inst1|psac_inst|inv_res_1~q\ : std_logic;
SIGNAL \inst1|psac_inst|inv_res_2~q\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~30_combout\ : std_logic;
SIGNAL \inst1|al[15]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux38~0_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~26_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~31_combout\ : std_logic;
SIGNAL \inst1|Mux26~0_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~22_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~33_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~34_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~18_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~35_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[9]~33_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~16_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~36_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[8]~31_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~37_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2[7]~29_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~38_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~39_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~6_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~41_combout\ : std_logic;
SIGNAL \inst1|Add4~1\ : std_logic;
SIGNAL \inst1|Add4~3\ : std_logic;
SIGNAL \inst1|Add4~5\ : std_logic;
SIGNAL \inst1|Add4~7\ : std_logic;
SIGNAL \inst1|Add4~9\ : std_logic;
SIGNAL \inst1|Add4~11\ : std_logic;
SIGNAL \inst1|Add4~13\ : std_logic;
SIGNAL \inst1|Add4~15\ : std_logic;
SIGNAL \inst1|Add4~17\ : std_logic;
SIGNAL \inst1|Add4~19\ : std_logic;
SIGNAL \inst1|Add4~21\ : std_logic;
SIGNAL \inst1|Add4~23\ : std_logic;
SIGNAL \inst1|Add4~24_combout\ : std_logic;
SIGNAL \inst1|Add4~26_combout\ : std_logic;
SIGNAL \inst1|Add4~22_combout\ : std_logic;
SIGNAL \inst1|Add4~27_combout\ : std_logic;
SIGNAL \adcdat~input_o\ : std_logic;
SIGNAL \instSndDrv|inst_right|tx~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[15]~0_combout\ : std_logic;
SIGNAL \inst1|Add4~12_combout\ : std_logic;
SIGNAL \inst1|Add4~32_combout\ : std_logic;
SIGNAL \inst1|Add4~10_combout\ : std_logic;
SIGNAL \inst1|Add4~33_combout\ : std_logic;
SIGNAL \inst1|Add4~6_combout\ : std_logic;
SIGNAL \inst1|Add4~35_combout\ : std_logic;
SIGNAL \inst1|Add6~1\ : std_logic;
SIGNAL \inst1|Add6~3\ : std_logic;
SIGNAL \inst1|Add6~5\ : std_logic;
SIGNAL \inst1|Add6~7\ : std_logic;
SIGNAL \inst1|Add6~9\ : std_logic;
SIGNAL \inst1|Add6~11\ : std_logic;
SIGNAL \inst1|Add6~13\ : std_logic;
SIGNAL \inst1|Add6~15\ : std_logic;
SIGNAL \inst1|Add6~17\ : std_logic;
SIGNAL \inst1|Add6~19\ : std_logic;
SIGNAL \inst1|Add6~21\ : std_logic;
SIGNAL \inst1|Add6~23\ : std_logic;
SIGNAL \inst1|Add6~25\ : std_logic;
SIGNAL \inst1|Add6~27\ : std_logic;
SIGNAL \inst1|Add6~28_combout\ : std_logic;
SIGNAL \inst1|process_1~0_combout\ : std_logic;
SIGNAL \inst1|noise[14]~feeder_combout\ : std_logic;
SIGNAL \inst1|noise[11]~feeder_combout\ : std_logic;
SIGNAL \inst1|noise[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|noise[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|noise[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|noise[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|noise~0_combout\ : std_logic;
SIGNAL \inst1|LDAC~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~2_combout\ : std_logic;
SIGNAL \inst1|DAC_en~q\ : std_logic;
SIGNAL \instSndDrv|inst_right|tx~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg[13]~1_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst1|Add6~29\ : std_logic;
SIGNAL \inst1|Add6~30_combout\ : std_logic;
SIGNAL \inst1|LDAC~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~0_combout\ : std_logic;
SIGNAL \inst1|ar[15]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux50~0_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Add1~40_combout\ : std_logic;
SIGNAL \inst1|Add5~1\ : std_logic;
SIGNAL \inst1|Add5~3\ : std_logic;
SIGNAL \inst1|Add5~5\ : std_logic;
SIGNAL \inst1|Add5~7\ : std_logic;
SIGNAL \inst1|Add5~9\ : std_logic;
SIGNAL \inst1|Add5~11\ : std_logic;
SIGNAL \inst1|Add5~13\ : std_logic;
SIGNAL \inst1|Add5~15\ : std_logic;
SIGNAL \inst1|Add5~17\ : std_logic;
SIGNAL \inst1|Add5~19\ : std_logic;
SIGNAL \inst1|Add5~21\ : std_logic;
SIGNAL \inst1|Add5~23\ : std_logic;
SIGNAL \inst1|Add5~24_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst1|Add5~26_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[15]~0_combout\ : std_logic;
SIGNAL \inst1|Add5~22_combout\ : std_logic;
SIGNAL \inst1|Add5~27_combout\ : std_logic;
SIGNAL \inst1|Add5~12_combout\ : std_logic;
SIGNAL \inst1|Add5~32_combout\ : std_logic;
SIGNAL \inst1|Add5~10_combout\ : std_logic;
SIGNAL \inst1|Add5~33_combout\ : std_logic;
SIGNAL \inst1|Add5~6_combout\ : std_logic;
SIGNAL \inst1|Add5~35_combout\ : std_logic;
SIGNAL \inst1|Add7~1\ : std_logic;
SIGNAL \inst1|Add7~3\ : std_logic;
SIGNAL \inst1|Add7~5\ : std_logic;
SIGNAL \inst1|Add7~7\ : std_logic;
SIGNAL \inst1|Add7~9\ : std_logic;
SIGNAL \inst1|Add7~11\ : std_logic;
SIGNAL \inst1|Add7~13\ : std_logic;
SIGNAL \inst1|Add7~15\ : std_logic;
SIGNAL \inst1|Add7~17\ : std_logic;
SIGNAL \inst1|Add7~19\ : std_logic;
SIGNAL \inst1|Add7~21\ : std_logic;
SIGNAL \inst1|Add7~23\ : std_logic;
SIGNAL \inst1|Add7~25\ : std_logic;
SIGNAL \inst1|Add7~27\ : std_logic;
SIGNAL \inst1|Add7~29\ : std_logic;
SIGNAL \inst1|Add7~30_combout\ : std_logic;
SIGNAL \inst1|RDAC~0_combout\ : std_logic;
SIGNAL \inst1|Add7~28_combout\ : std_logic;
SIGNAL \inst1|RDAC~1_combout\ : std_logic;
SIGNAL \inst1|Add7~26_combout\ : std_logic;
SIGNAL \inst1|RDAC~2_combout\ : std_logic;
SIGNAL \inst1|Add7~20_combout\ : std_logic;
SIGNAL \inst1|RDAC~5_combout\ : std_logic;
SIGNAL \inst1|Add7~16_combout\ : std_logic;
SIGNAL \inst1|RDAC~7_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~8_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg[13]~1_combout\ : std_logic;
SIGNAL \inst1|Add7~18_combout\ : std_logic;
SIGNAL \inst1|RDAC~6_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~7_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~6_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~5_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~4_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~3_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~2_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst1|dacdatout~0_combout\ : std_logic;
SIGNAL \inst1|Add7~0_combout\ : std_logic;
SIGNAL \inst1|Add7~32_combout\ : std_logic;
SIGNAL \inst1|Add7~2_combout\ : std_logic;
SIGNAL \inst1|Add7~33_combout\ : std_logic;
SIGNAL \inst1|Add7~4_combout\ : std_logic;
SIGNAL \inst1|Add7~34_combout\ : std_logic;
SIGNAL \inst1|Add7~6_combout\ : std_logic;
SIGNAL \inst1|Add7~35_combout\ : std_logic;
SIGNAL \inst1|Add7~8_combout\ : std_logic;
SIGNAL \inst1|Add7~36_combout\ : std_logic;
SIGNAL \inst1|Add7~10_combout\ : std_logic;
SIGNAL \inst1|Add7~37_combout\ : std_logic;
SIGNAL \inst1|Add7~12_combout\ : std_logic;
SIGNAL \inst1|Add7~38_combout\ : std_logic;
SIGNAL \inst1|Add7~14_combout\ : std_logic;
SIGNAL \inst1|Add7~39_combout\ : std_logic;
SIGNAL \inst1|Add7~40_combout\ : std_logic;
SIGNAL \inst1|Add7~41_combout\ : std_logic;
SIGNAL \inst1|Add7~42_combout\ : std_logic;
SIGNAL \inst1|Add7~22_combout\ : std_logic;
SIGNAL \inst1|Add7~43_combout\ : std_logic;
SIGNAL \inst1|Add7~24_combout\ : std_logic;
SIGNAL \inst1|Add7~44_combout\ : std_logic;
SIGNAL \inst1|Add7~45_combout\ : std_logic;
SIGNAL \inst1|Add7~46_combout\ : std_logic;
SIGNAL \inst1|Add7~47_combout\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \inst1|rack[27]~96\ : std_logic;
SIGNAL \inst1|rack[28]~97_combout\ : std_logic;
SIGNAL \inst1|rack[8]~58_combout\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst1|rack[22]~85_combout\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst1|rack[13]~67_combout\ : std_logic;
SIGNAL \inst1|rack[11]~64\ : std_logic;
SIGNAL \inst1|rack[12]~65_combout\ : std_logic;
SIGNAL \inst1|Add10~1\ : std_logic;
SIGNAL \inst1|Add10~3\ : std_logic;
SIGNAL \inst1|Add10~5\ : std_logic;
SIGNAL \inst1|Add10~7\ : std_logic;
SIGNAL \inst1|Add10~8_combout\ : std_logic;
SIGNAL \inst1|Add10~6_combout\ : std_logic;
SIGNAL \inst1|Add10~4_combout\ : std_logic;
SIGNAL \inst1|Add10~2_combout\ : std_logic;
SIGNAL \inst1|rack[0]~41\ : std_logic;
SIGNAL \inst1|rack[1]~43\ : std_logic;
SIGNAL \inst1|rack[2]~45\ : std_logic;
SIGNAL \inst1|rack[3]~47\ : std_logic;
SIGNAL \inst1|rack[4]~49\ : std_logic;
SIGNAL \inst1|rack[5]~51\ : std_logic;
SIGNAL \inst1|rack[6]~53\ : std_logic;
SIGNAL \inst1|rack[7]~54_combout\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst1|rack[15]~72\ : std_logic;
SIGNAL \inst1|rack[16]~73_combout\ : std_logic;
SIGNAL \inst1|rack[5]~50_combout\ : std_logic;
SIGNAL \inst1|Add10~9\ : std_logic;
SIGNAL \inst1|Add10~11\ : std_logic;
SIGNAL \inst1|Add10~13\ : std_logic;
SIGNAL \inst1|Add10~14_combout\ : std_logic;
SIGNAL \inst1|rack[7]~55\ : std_logic;
SIGNAL \inst1|rack[8]~56_combout\ : std_logic;
SIGNAL \inst1|Add10~15\ : std_logic;
SIGNAL \inst1|Add10~16_combout\ : std_logic;
SIGNAL \inst1|rack[8]~57\ : std_logic;
SIGNAL \inst1|rack[9]~60\ : std_logic;
SIGNAL \inst1|rack[10]~62\ : std_logic;
SIGNAL \inst1|rack[11]~63_combout\ : std_logic;
SIGNAL \inst1|Add10~21\ : std_logic;
SIGNAL \inst1|Add10~23\ : std_logic;
SIGNAL \inst1|Add10~24_combout\ : std_logic;
SIGNAL \inst1|rack[12]~66\ : std_logic;
SIGNAL \inst1|rack[13]~68\ : std_logic;
SIGNAL \inst1|rack[14]~69_combout\ : std_logic;
SIGNAL \inst1|Add10~25\ : std_logic;
SIGNAL \inst1|Add10~27\ : std_logic;
SIGNAL \inst1|Add10~28_combout\ : std_logic;
SIGNAL \inst1|rack[14]~70\ : std_logic;
SIGNAL \inst1|rack[15]~71_combout\ : std_logic;
SIGNAL \inst1|Add10~29\ : std_logic;
SIGNAL \inst1|Add10~31\ : std_logic;
SIGNAL \inst1|Add10~33\ : std_logic;
SIGNAL \inst1|Add10~35\ : std_logic;
SIGNAL \inst1|Add10~36_combout\ : std_logic;
SIGNAL \inst1|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst1|rack[16]~74\ : std_logic;
SIGNAL \inst1|rack[17]~76\ : std_logic;
SIGNAL \inst1|rack[18]~78\ : std_logic;
SIGNAL \inst1|rack[19]~80\ : std_logic;
SIGNAL \inst1|rack[20]~82\ : std_logic;
SIGNAL \inst1|rack[21]~83_combout\ : std_logic;
SIGNAL \inst1|Add10~37\ : std_logic;
SIGNAL \inst1|Add10~39\ : std_logic;
SIGNAL \inst1|Add10~41\ : std_logic;
SIGNAL \inst1|Add10~42_combout\ : std_logic;
SIGNAL \inst1|rack[21]~84\ : std_logic;
SIGNAL \inst1|rack[22]~86\ : std_logic;
SIGNAL \inst1|rack[23]~87_combout\ : std_logic;
SIGNAL \inst1|Add10~43\ : std_logic;
SIGNAL \inst1|Add10~45\ : std_logic;
SIGNAL \inst1|Add10~46_combout\ : std_logic;
SIGNAL \inst1|rack[23]~88\ : std_logic;
SIGNAL \inst1|rack[24]~89_combout\ : std_logic;
SIGNAL \inst1|Add10~47\ : std_logic;
SIGNAL \inst1|Add10~48_combout\ : std_logic;
SIGNAL \inst1|rack[24]~90\ : std_logic;
SIGNAL \inst1|rack[25]~92\ : std_logic;
SIGNAL \inst1|rack[26]~93_combout\ : std_logic;
SIGNAL \inst1|Add10~66_combout\ : std_logic;
SIGNAL \inst1|Add10~64_combout\ : std_logic;
SIGNAL \inst1|rack[31]~104\ : std_logic;
SIGNAL \inst1|rack[32]~106\ : std_logic;
SIGNAL \inst1|rack[33]~108\ : std_logic;
SIGNAL \inst1|rack[34]~110\ : std_logic;
SIGNAL \inst1|rack[35]~111_combout\ : std_logic;
SIGNAL \inst1|Add10~49\ : std_logic;
SIGNAL \inst1|Add10~51\ : std_logic;
SIGNAL \inst1|Add10~52_combout\ : std_logic;
SIGNAL \inst1|rack[26]~94\ : std_logic;
SIGNAL \inst1|rack[27]~95_combout\ : std_logic;
SIGNAL \inst1|Add10~53\ : std_logic;
SIGNAL \inst1|Add10~55\ : std_logic;
SIGNAL \inst1|Add10~56_combout\ : std_logic;
SIGNAL \inst1|rack[28]~98\ : std_logic;
SIGNAL \inst1|rack[29]~100\ : std_logic;
SIGNAL \inst1|rack[30]~101_combout\ : std_logic;
SIGNAL \inst1|Add10~57\ : std_logic;
SIGNAL \inst1|Add10~59\ : std_logic;
SIGNAL \inst1|Add10~60_combout\ : std_logic;
SIGNAL \inst1|rack[30]~102\ : std_logic;
SIGNAL \inst1|rack[31]~103_combout\ : std_logic;
SIGNAL \inst1|Add10~61\ : std_logic;
SIGNAL \inst1|Add10~63\ : std_logic;
SIGNAL \inst1|Add10~65\ : std_logic;
SIGNAL \inst1|Add10~67\ : std_logic;
SIGNAL \inst1|Add10~68_combout\ : std_logic;
SIGNAL \inst1|rack[34]~109_combout\ : std_logic;
SIGNAL \inst1|Add10~69\ : std_logic;
SIGNAL \inst1|Add10~70_combout\ : std_logic;
SIGNAL \inst1|rack[35]~112\ : std_logic;
SIGNAL \inst1|rack[36]~114\ : std_logic;
SIGNAL \inst1|rack[37]~116\ : std_logic;
SIGNAL \inst1|rack[38]~117_combout\ : std_logic;
SIGNAL \inst1|rack[37]~115_combout\ : std_logic;
SIGNAL \inst1|Add10~71\ : std_logic;
SIGNAL \inst1|Add10~73\ : std_logic;
SIGNAL \inst1|Add10~75\ : std_logic;
SIGNAL \inst1|Add10~77\ : std_logic;
SIGNAL \inst1|Add10~78_combout\ : std_logic;
SIGNAL \inst1|rack[38]~118\ : std_logic;
SIGNAL \inst1|rack[39]~119_combout\ : std_logic;
SIGNAL \inst1|Add10~58_combout\ : std_logic;
SIGNAL \inst1|rack[29]~99_combout\ : std_logic;
SIGNAL \inst1|Add10~38_combout\ : std_logic;
SIGNAL \inst1|rack[19]~79_combout\ : std_logic;
SIGNAL \inst1|Add10~17\ : std_logic;
SIGNAL \inst1|Add10~19\ : std_logic;
SIGNAL \inst1|Add10~20_combout\ : std_logic;
SIGNAL \inst1|rack[10]~61_combout\ : std_logic;
SIGNAL \inst1|rack[9]~59_combout\ : std_logic;
SIGNAL \inst1|LEDR~0_combout\ : std_logic;
SIGNAL \inst1|LEDR~1_combout\ : std_logic;
SIGNAL \inst1|LEDR~2_combout\ : std_logic;
SIGNAL \inst1|rack[17]~75_combout\ : std_logic;
SIGNAL \inst1|LEDR~3_combout\ : std_logic;
SIGNAL \inst1|rack[20]~81_combout\ : std_logic;
SIGNAL \inst1|LEDR~4_combout\ : std_logic;
SIGNAL \inst1|rack[25]~91_combout\ : std_logic;
SIGNAL \inst1|LEDR~5_combout\ : std_logic;
SIGNAL \inst1|LEDR~6_combout\ : std_logic;
SIGNAL \inst1|LEDR~7_combout\ : std_logic;
SIGNAL \inst1|rack[32]~105_combout\ : std_logic;
SIGNAL \inst1|rack[33]~107_combout\ : std_logic;
SIGNAL \inst1|LEDR~8_combout\ : std_logic;
SIGNAL \inst1|Add6~0_combout\ : std_logic;
SIGNAL \inst1|Add6~32_combout\ : std_logic;
SIGNAL \inst1|Add6~2_combout\ : std_logic;
SIGNAL \inst1|Add6~33_combout\ : std_logic;
SIGNAL \inst1|Add6~4_combout\ : std_logic;
SIGNAL \inst1|Add6~34_combout\ : std_logic;
SIGNAL \inst1|Add6~6_combout\ : std_logic;
SIGNAL \inst1|Add6~35_combout\ : std_logic;
SIGNAL \inst1|Add6~8_combout\ : std_logic;
SIGNAL \inst1|Add6~36_combout\ : std_logic;
SIGNAL \inst1|Add6~10_combout\ : std_logic;
SIGNAL \inst1|Add6~37_combout\ : std_logic;
SIGNAL \inst1|Add6~12_combout\ : std_logic;
SIGNAL \inst1|Add6~38_combout\ : std_logic;
SIGNAL \inst1|Add6~14_combout\ : std_logic;
SIGNAL \inst1|Add6~39_combout\ : std_logic;
SIGNAL \inst1|Add6~16_combout\ : std_logic;
SIGNAL \inst1|Add6~40_combout\ : std_logic;
SIGNAL \inst1|Add6~18_combout\ : std_logic;
SIGNAL \inst1|Add6~41_combout\ : std_logic;
SIGNAL \inst1|Add6~20_combout\ : std_logic;
SIGNAL \inst1|Add6~42_combout\ : std_logic;
SIGNAL \inst1|Add6~22_combout\ : std_logic;
SIGNAL \inst1|Add6~43_combout\ : std_logic;
SIGNAL \inst1|Add6~24_combout\ : std_logic;
SIGNAL \inst1|Add6~44_combout\ : std_logic;
SIGNAL \inst1|Add6~26_combout\ : std_logic;
SIGNAL \inst1|Add6~45_combout\ : std_logic;
SIGNAL \inst1|Add6~46_combout\ : std_logic;
SIGNAL \inst1|Add6~47_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \inst1|lack[32]~105\ : std_logic;
SIGNAL \inst1|lack[33]~107\ : std_logic;
SIGNAL \inst1|lack[34]~109\ : std_logic;
SIGNAL \inst1|lack[35]~111\ : std_logic;
SIGNAL \inst1|lack[36]~112_combout\ : std_logic;
SIGNAL \inst1|lack[34]~108_combout\ : std_logic;
SIGNAL \inst1|lack[33]~106_combout\ : std_logic;
SIGNAL \inst1|Add8~61\ : std_logic;
SIGNAL \inst1|Add8~63\ : std_logic;
SIGNAL \inst1|Add8~65\ : std_logic;
SIGNAL \inst1|Add8~67\ : std_logic;
SIGNAL \inst1|Add8~69\ : std_logic;
SIGNAL \inst1|Add8~71\ : std_logic;
SIGNAL \inst1|Add8~73\ : std_logic;
SIGNAL \inst1|Add8~74_combout\ : std_logic;
SIGNAL \inst1|lack[36]~113\ : std_logic;
SIGNAL \inst1|lack[37]~114_combout\ : std_logic;
SIGNAL \inst1|Add8~75\ : std_logic;
SIGNAL \inst1|Add8~77\ : std_logic;
SIGNAL \inst1|Add8~78_combout\ : std_logic;
SIGNAL \inst1|Add8~76_combout\ : std_logic;
SIGNAL \inst1|lack[37]~115\ : std_logic;
SIGNAL \inst1|lack[38]~117\ : std_logic;
SIGNAL \inst1|lack[39]~118_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst1|lack[27]~94_combout\ : std_logic;
SIGNAL \inst1|lack[26]~92_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst1|Add8~30_combout\ : std_logic;
SIGNAL \inst1|Add8~28_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst1|Add8~22_combout\ : std_logic;
SIGNAL \inst1|lack[10]~61\ : std_logic;
SIGNAL \inst1|lack[11]~63\ : std_logic;
SIGNAL \inst1|lack[12]~65\ : std_logic;
SIGNAL \inst1|lack[13]~67\ : std_logic;
SIGNAL \inst1|lack[14]~69\ : std_logic;
SIGNAL \inst1|lack[15]~71\ : std_logic;
SIGNAL \inst1|lack[16]~72_combout\ : std_logic;
SIGNAL \inst1|lack[14]~68_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst1|lack[0]~40_combout\ : std_logic;
SIGNAL \inst1|Add8~0_combout\ : std_logic;
SIGNAL \inst1|lack[0]~41\ : std_logic;
SIGNAL \inst1|lack[1]~43\ : std_logic;
SIGNAL \inst1|lack[2]~44_combout\ : std_logic;
SIGNAL \inst1|lack[1]~42_combout\ : std_logic;
SIGNAL \inst1|Add8~1\ : std_logic;
SIGNAL \inst1|Add8~3\ : std_logic;
SIGNAL \inst1|Add8~5\ : std_logic;
SIGNAL \inst1|Add8~6_combout\ : std_logic;
SIGNAL \inst1|lack[2]~45\ : std_logic;
SIGNAL \inst1|lack[3]~46_combout\ : std_logic;
SIGNAL \inst1|Add8~7\ : std_logic;
SIGNAL \inst1|Add8~9\ : std_logic;
SIGNAL \inst1|Add8~10_combout\ : std_logic;
SIGNAL \inst1|Add8~8_combout\ : std_logic;
SIGNAL \inst1|lack[3]~47\ : std_logic;
SIGNAL \inst1|lack[4]~49\ : std_logic;
SIGNAL \inst1|lack[5]~50_combout\ : std_logic;
SIGNAL \inst1|Add8~11\ : std_logic;
SIGNAL \inst1|Add8~12_combout\ : std_logic;
SIGNAL \inst1|lack[5]~51\ : std_logic;
SIGNAL \inst1|lack[6]~53\ : std_logic;
SIGNAL \inst1|lack[7]~54_combout\ : std_logic;
SIGNAL \inst1|Add8~13\ : std_logic;
SIGNAL \inst1|Add8~14_combout\ : std_logic;
SIGNAL \inst1|lack[7]~55\ : std_logic;
SIGNAL \inst1|lack[8]~56_combout\ : std_logic;
SIGNAL \inst1|Add8~15\ : std_logic;
SIGNAL \inst1|Add8~16_combout\ : std_logic;
SIGNAL \inst1|lack[8]~57\ : std_logic;
SIGNAL \inst1|lack[9]~59\ : std_logic;
SIGNAL \inst1|lack[10]~60_combout\ : std_logic;
SIGNAL \inst1|lack[9]~58_combout\ : std_logic;
SIGNAL \inst1|Add8~17\ : std_logic;
SIGNAL \inst1|Add8~19\ : std_logic;
SIGNAL \inst1|Add8~21\ : std_logic;
SIGNAL \inst1|Add8~23\ : std_logic;
SIGNAL \inst1|Add8~24_combout\ : std_logic;
SIGNAL \inst1|lack[12]~64_combout\ : std_logic;
SIGNAL \inst1|Add8~25\ : std_logic;
SIGNAL \inst1|Add8~27\ : std_logic;
SIGNAL \inst1|Add8~29\ : std_logic;
SIGNAL \inst1|Add8~31\ : std_logic;
SIGNAL \inst1|Add8~33\ : std_logic;
SIGNAL \inst1|Add8~34_combout\ : std_logic;
SIGNAL \inst1|lack[16]~73\ : std_logic;
SIGNAL \inst1|lack[17]~75\ : std_logic;
SIGNAL \inst1|lack[18]~77\ : std_logic;
SIGNAL \inst1|lack[19]~79\ : std_logic;
SIGNAL \inst1|lack[20]~80_combout\ : std_logic;
SIGNAL \inst1|lack[19]~78_combout\ : std_logic;
SIGNAL \inst1|lack[18]~76_combout\ : std_logic;
SIGNAL \inst1|Add8~35\ : std_logic;
SIGNAL \inst1|Add8~37\ : std_logic;
SIGNAL \inst1|Add8~39\ : std_logic;
SIGNAL \inst1|Add8~41\ : std_logic;
SIGNAL \inst1|Add8~42_combout\ : std_logic;
SIGNAL \inst1|lack[20]~81\ : std_logic;
SIGNAL \inst1|lack[21]~82_combout\ : std_logic;
SIGNAL \inst1|Add8~43\ : std_logic;
SIGNAL \inst1|Add8~44_combout\ : std_logic;
SIGNAL \inst1|lack[21]~83\ : std_logic;
SIGNAL \inst1|lack[22]~85\ : std_logic;
SIGNAL \inst1|lack[23]~86_combout\ : std_logic;
SIGNAL \inst1|Add8~45\ : std_logic;
SIGNAL \inst1|Add8~46_combout\ : std_logic;
SIGNAL \inst1|lack[23]~87\ : std_logic;
SIGNAL \inst1|lack[24]~88_combout\ : std_logic;
SIGNAL \inst1|Add8~47\ : std_logic;
SIGNAL \inst1|Add8~48_combout\ : std_logic;
SIGNAL \inst1|lack[24]~89\ : std_logic;
SIGNAL \inst1|lack[25]~90_combout\ : std_logic;
SIGNAL \inst1|Add8~49\ : std_logic;
SIGNAL \inst1|Add8~50_combout\ : std_logic;
SIGNAL \inst1|lack[25]~91\ : std_logic;
SIGNAL \inst1|lack[26]~93\ : std_logic;
SIGNAL \inst1|lack[27]~95\ : std_logic;
SIGNAL \inst1|lack[28]~96_combout\ : std_logic;
SIGNAL \inst1|Add8~51\ : std_logic;
SIGNAL \inst1|Add8~53\ : std_logic;
SIGNAL \inst1|Add8~55\ : std_logic;
SIGNAL \inst1|Add8~57\ : std_logic;
SIGNAL \inst1|Add8~59\ : std_logic;
SIGNAL \inst1|Add8~60_combout\ : std_logic;
SIGNAL \inst1|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \inst1|lack[28]~97\ : std_logic;
SIGNAL \inst1|lack[29]~99\ : std_logic;
SIGNAL \inst1|lack[30]~101\ : std_logic;
SIGNAL \inst1|lack[31]~103\ : std_logic;
SIGNAL \inst1|lack[32]~104_combout\ : std_logic;
SIGNAL \inst1|LEDR~9_combout\ : std_logic;
SIGNAL \inst1|lack[30]~100_combout\ : std_logic;
SIGNAL \inst1|lack[29]~98_combout\ : std_logic;
SIGNAL \inst1|LEDR~10_combout\ : std_logic;
SIGNAL \inst1|LEDR~11_combout\ : std_logic;
SIGNAL \inst1|LEDR~12_combout\ : std_logic;
SIGNAL \inst1|LEDR~13_combout\ : std_logic;
SIGNAL \inst1|lack[17]~74_combout\ : std_logic;
SIGNAL \inst1|LEDR~14_combout\ : std_logic;
SIGNAL \inst1|LEDR~15_combout\ : std_logic;
SIGNAL \inst1|lack[11]~62_combout\ : std_logic;
SIGNAL \inst1|lack[13]~66_combout\ : std_logic;
SIGNAL \inst1|LEDR~16_combout\ : std_logic;
SIGNAL \inst1|LEDR~17_combout\ : std_logic;
SIGNAL \inst1|psac_inst|Res_2\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \instSndDrv|inst_left|RXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|LEDR\ : std_logic_vector(0 TO 17);
SIGNAL \inst1|rack\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \instSndDrv|inst_right|TXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|xl\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_ctrl|cntr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|state_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|xr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_right|RXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|xm\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_left|TXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|am\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ar\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|lack\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst1|noise\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|al\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|x\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|RDAC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|LDAC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_ctrl|ALT_INV_cntr\ : std_logic_vector(1 DOWNTO 1);

BEGIN

mclk <= ww_mclk;
ww_clk <= clk;
ww_rstn <= rstn;
ww_adcdat <= adcdat;
ww_SW <= SW;
bclk <= ww_bclk;
adclrc <= ww_adclrc;
daclrc <= ww_daclrc;
dacdat <= ww_dacdat;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\inst1|Mult1|auto_generated|mac_mult1~DATAOUT31\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT30\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT29\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT28\
& \inst1|Mult1|auto_generated|mac_mult1~DATAOUT27\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT26\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT25\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT23\
& \inst1|Mult1|auto_generated|mac_mult1~DATAOUT22\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT18\
& \inst1|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT13\
& \inst1|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT8\ & 
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT3\ & 
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \inst1|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \inst1|Mult1|auto_generated|mac_mult1~dataout\ & \inst1|Mult1|auto_generated|mac_mult1~3\ & \inst1|Mult1|auto_generated|mac_mult1~2\ & 
\inst1|Mult1|auto_generated|mac_mult1~1\ & \inst1|Mult1|auto_generated|mac_mult1~0\);

\inst1|Mult1|auto_generated|mac_out2~0\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst1|Mult1|auto_generated|mac_out2~1\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst1|Mult1|auto_generated|mac_out2~2\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst1|Mult1|auto_generated|mac_out2~3\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst1|Mult1|auto_generated|mac_out2~dataout\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT25\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT26\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT27\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT28\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT29\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT30\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst1|Mult1|auto_generated|mac_out2~DATAOUT31\ <= \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst1|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT28\
& \inst1|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT23\
& \inst1|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT18\
& \inst1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT13\
& \inst1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst1|Mult0|auto_generated|mac_mult1~dataout\ & \inst1|Mult0|auto_generated|mac_mult1~3\ & \inst1|Mult0|auto_generated|mac_mult1~2\ & 
\inst1|Mult0|auto_generated|mac_mult1~1\ & \inst1|Mult0|auto_generated|mac_mult1~0\);

\inst1|Mult0|auto_generated|mac_out2~0\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst1|Mult0|auto_generated|mac_out2~1\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst1|Mult0|auto_generated|mac_out2~2\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst1|Mult0|auto_generated|mac_out2~3\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst1|Mult0|auto_generated|mac_out2~dataout\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst1|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst1|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\inst1|Add7~47_combout\ & \inst1|Add7~46_combout\ & \inst1|Add7~45_combout\ & \inst1|Add7~44_combout\ & \inst1|Add7~43_combout\ & \inst1|Add7~42_combout\ & \inst1|Add7~41_combout\ & 
\inst1|Add7~40_combout\ & \inst1|Add7~39_combout\ & \inst1|Add7~38_combout\ & \inst1|Add7~37_combout\ & \inst1|Add7~36_combout\ & \inst1|Add7~35_combout\ & \inst1|Add7~34_combout\ & \inst1|Add7~33_combout\ & \inst1|Add7~32_combout\ & gnd & gnd);

\inst1|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\inst1|Add7~47_combout\ & \inst1|Add7~46_combout\ & \inst1|Add7~45_combout\ & \inst1|Add7~44_combout\ & \inst1|Add7~43_combout\ & \inst1|Add7~42_combout\ & \inst1|Add7~41_combout\ & 
\inst1|Add7~40_combout\ & \inst1|Add7~39_combout\ & \inst1|Add7~38_combout\ & \inst1|Add7~37_combout\ & \inst1|Add7~36_combout\ & \inst1|Add7~35_combout\ & \inst1|Add7~34_combout\ & \inst1|Add7~33_combout\ & \inst1|Add7~32_combout\ & gnd & gnd);

\inst1|Mult1|auto_generated|mac_mult1~0\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst1|Mult1|auto_generated|mac_mult1~1\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst1|Mult1|auto_generated|mac_mult1~2\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst1|Mult1|auto_generated|mac_mult1~3\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst1|Mult1|auto_generated|mac_mult1~dataout\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT30\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst1|Mult1|auto_generated|mac_mult1~DATAOUT31\ <= \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst1|Add6~47_combout\ & \inst1|Add6~46_combout\ & \inst1|Add6~45_combout\ & \inst1|Add6~44_combout\ & \inst1|Add6~43_combout\ & \inst1|Add6~42_combout\ & \inst1|Add6~41_combout\ & 
\inst1|Add6~40_combout\ & \inst1|Add6~39_combout\ & \inst1|Add6~38_combout\ & \inst1|Add6~37_combout\ & \inst1|Add6~36_combout\ & \inst1|Add6~35_combout\ & \inst1|Add6~34_combout\ & \inst1|Add6~33_combout\ & \inst1|Add6~32_combout\ & gnd & gnd);

\inst1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\inst1|Add6~47_combout\ & \inst1|Add6~46_combout\ & \inst1|Add6~45_combout\ & \inst1|Add6~44_combout\ & \inst1|Add6~43_combout\ & \inst1|Add6~42_combout\ & \inst1|Add6~41_combout\ & 
\inst1|Add6~40_combout\ & \inst1|Add6~39_combout\ & \inst1|Add6~38_combout\ & \inst1|Add6~37_combout\ & \inst1|Add6~36_combout\ & \inst1|Add6~35_combout\ & \inst1|Add6~34_combout\ & \inst1|Add6~33_combout\ & \inst1|Add6~32_combout\ & gnd & gnd);

\inst1|Mult0|auto_generated|mac_mult1~0\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst1|Mult0|auto_generated|mac_mult1~1\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst1|Mult0|auto_generated|mac_mult1~2\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst1|Mult0|auto_generated|mac_mult1~3\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst1|Mult0|auto_generated|mac_mult1~dataout\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst1|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~dataout\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~17\ & 
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~16\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~15\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~14\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~13\ & 
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~12\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~11\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~10\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~9\ & 
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~8\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~7\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~6\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~5\ & 
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~4\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~3\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~2\ & \inst1|psac_inst|Mult0|auto_generated|mac_mult1~1\ & 
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~0\);

\inst1|psac_inst|Mult0|auto_generated|mac_out2~0\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~1\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~2\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~3\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~4\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~5\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~6\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~7\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~8\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~9\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~10\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~11\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~12\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~13\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~14\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~15\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~16\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~17\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~dataout\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a24\ & \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0~portadataout\ & \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a1\ & 
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a2\ & \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a3\ & \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a4\ & \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a5\ & 
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a6\ & \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a7\ & \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a8\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\inst1|psac_inst|x2[7]~13_combout\ & \inst1|psac_inst|x2[6]~12_combout\ & \inst1|psac_inst|x2[5]~11_combout\ & \inst1|psac_inst|x2[4]~10_combout\ & \inst1|psac_inst|x2[3]~9_combout\ & 
\inst1|psac_inst|x2[2]~8_combout\ & \inst1|psac_inst|x2[1]~7_combout\ & \inst1|psac_inst|x2[0]~6_combout\ & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst1|psac_inst|Mult0|auto_generated|mac_mult1~0\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~1\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~2\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~3\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~4\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~5\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~6\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~7\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~8\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~9\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~10\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~11\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~12\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~13\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~14\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~15\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~16\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~17\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~dataout\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst1|psac_inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|psac_inst|x2[13]~5_combout\ & \inst1|psac_inst|x2[12]~4_combout\ & \inst1|psac_inst|x2[11]~3_combout\ & \inst1|psac_inst|x2[10]~2_combout\ & 
\inst1|psac_inst|x2[9]~1_combout\ & \inst1|psac_inst|x2[8]~0_combout\);

\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a1\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a2\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a3\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a4\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a5\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a6\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a7\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a8\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a9\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a10\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a11\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a12\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a13\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a14\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a15\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a16\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a17\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a18\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a19\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a20\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a21\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a22\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a23\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a24\ <= \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\instSndDrv|inst_ctrl|ALT_INV_cntr\(1) <= NOT \instSndDrv|inst_ctrl|cntr\(1);

-- Location: FF_X73_Y42_N13
\instSndDrv|inst_ctrl|cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[5]~17_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(5));

-- Location: LCCOMB_X73_Y42_N12
\instSndDrv|inst_ctrl|cntr[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[5]~17_combout\ = (\instSndDrv|inst_ctrl|cntr\(5) & (\instSndDrv|inst_ctrl|cntr[4]~16\ $ (GND))) # (!\instSndDrv|inst_ctrl|cntr\(5) & (!\instSndDrv|inst_ctrl|cntr[4]~16\ & VCC))
-- \instSndDrv|inst_ctrl|cntr[5]~18\ = CARRY((\instSndDrv|inst_ctrl|cntr\(5) & !\instSndDrv|inst_ctrl|cntr[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(5),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[4]~16\,
	combout => \instSndDrv|inst_ctrl|cntr[5]~17_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[5]~18\);

-- Location: FF_X72_Y37_N13
\inst1|rack[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[18]~77_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(18));

-- Location: FF_X70_Y35_N7
\inst1|lack[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[31]~102_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(31));

-- Location: FF_X70_Y36_N21
\inst1|lack[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[22]~84_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(22));

-- Location: FF_X70_Y36_N7
\inst1|lack[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[15]~70_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(15));

-- Location: LCCOMB_X67_Y40_N4
\inst1|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~0_combout\ = (\inst1|am\(5) & (\inst1|al\(4) $ (VCC))) # (!\inst1|am\(5) & (\inst1|al\(4) & VCC))
-- \inst1|Add4~1\ = CARRY((\inst1|am\(5) & \inst1|al\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(5),
	datab => \inst1|al\(4),
	datad => VCC,
	combout => \inst1|Add4~0_combout\,
	cout => \inst1|Add4~1\);

-- Location: LCCOMB_X67_Y40_N6
\inst1|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~2_combout\ = (\inst1|al\(5) & ((\inst1|am\(6) & (\inst1|Add4~1\ & VCC)) # (!\inst1|am\(6) & (!\inst1|Add4~1\)))) # (!\inst1|al\(5) & ((\inst1|am\(6) & (!\inst1|Add4~1\)) # (!\inst1|am\(6) & ((\inst1|Add4~1\) # (GND)))))
-- \inst1|Add4~3\ = CARRY((\inst1|al\(5) & (!\inst1|am\(6) & !\inst1|Add4~1\)) # (!\inst1|al\(5) & ((!\inst1|Add4~1\) # (!\inst1|am\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|al\(5),
	datab => \inst1|am\(6),
	datad => VCC,
	cin => \inst1|Add4~1\,
	combout => \inst1|Add4~2_combout\,
	cout => \inst1|Add4~3\);

-- Location: LCCOMB_X67_Y40_N8
\inst1|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~4_combout\ = ((\inst1|al\(6) $ (\inst1|am\(7) $ (!\inst1|Add4~3\)))) # (GND)
-- \inst1|Add4~5\ = CARRY((\inst1|al\(6) & ((\inst1|am\(7)) # (!\inst1|Add4~3\))) # (!\inst1|al\(6) & (\inst1|am\(7) & !\inst1|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|al\(6),
	datab => \inst1|am\(7),
	datad => VCC,
	cin => \inst1|Add4~3\,
	combout => \inst1|Add4~4_combout\,
	cout => \inst1|Add4~5\);

-- Location: LCCOMB_X67_Y40_N12
\inst1|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~8_combout\ = ((\inst1|al\(8) $ (\inst1|am\(9) $ (!\inst1|Add4~7\)))) # (GND)
-- \inst1|Add4~9\ = CARRY((\inst1|al\(8) & ((\inst1|am\(9)) # (!\inst1|Add4~7\))) # (!\inst1|al\(8) & (\inst1|am\(9) & !\inst1|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|al\(8),
	datab => \inst1|am\(9),
	datad => VCC,
	cin => \inst1|Add4~7\,
	combout => \inst1|Add4~8_combout\,
	cout => \inst1|Add4~9\);

-- Location: LCCOMB_X67_Y40_N18
\inst1|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~14_combout\ = (\inst1|am\(12) & ((\inst1|al\(11) & (\inst1|Add4~13\ & VCC)) # (!\inst1|al\(11) & (!\inst1|Add4~13\)))) # (!\inst1|am\(12) & ((\inst1|al\(11) & (!\inst1|Add4~13\)) # (!\inst1|al\(11) & ((\inst1|Add4~13\) # (GND)))))
-- \inst1|Add4~15\ = CARRY((\inst1|am\(12) & (!\inst1|al\(11) & !\inst1|Add4~13\)) # (!\inst1|am\(12) & ((!\inst1|Add4~13\) # (!\inst1|al\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(12),
	datab => \inst1|al\(11),
	datad => VCC,
	cin => \inst1|Add4~13\,
	combout => \inst1|Add4~14_combout\,
	cout => \inst1|Add4~15\);

-- Location: LCCOMB_X67_Y40_N20
\inst1|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~16_combout\ = ((\inst1|am\(13) $ (\inst1|al\(12) $ (!\inst1|Add4~15\)))) # (GND)
-- \inst1|Add4~17\ = CARRY((\inst1|am\(13) & ((\inst1|al\(12)) # (!\inst1|Add4~15\))) # (!\inst1|am\(13) & (\inst1|al\(12) & !\inst1|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(13),
	datab => \inst1|al\(12),
	datad => VCC,
	cin => \inst1|Add4~15\,
	combout => \inst1|Add4~16_combout\,
	cout => \inst1|Add4~17\);

-- Location: LCCOMB_X67_Y40_N22
\inst1|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~18_combout\ = (\inst1|al\(13) & ((\inst1|am\(14) & (\inst1|Add4~17\ & VCC)) # (!\inst1|am\(14) & (!\inst1|Add4~17\)))) # (!\inst1|al\(13) & ((\inst1|am\(14) & (!\inst1|Add4~17\)) # (!\inst1|am\(14) & ((\inst1|Add4~17\) # (GND)))))
-- \inst1|Add4~19\ = CARRY((\inst1|al\(13) & (!\inst1|am\(14) & !\inst1|Add4~17\)) # (!\inst1|al\(13) & ((!\inst1|Add4~17\) # (!\inst1|am\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|al\(13),
	datab => \inst1|am\(14),
	datad => VCC,
	cin => \inst1|Add4~17\,
	combout => \inst1|Add4~18_combout\,
	cout => \inst1|Add4~19\);

-- Location: LCCOMB_X67_Y40_N24
\inst1|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~20_combout\ = ((\inst1|am\(15) $ (\inst1|al\(14) $ (!\inst1|Add4~19\)))) # (GND)
-- \inst1|Add4~21\ = CARRY((\inst1|am\(15) & ((\inst1|al\(14)) # (!\inst1|Add4~19\))) # (!\inst1|am\(15) & (\inst1|al\(14) & !\inst1|Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(15),
	datab => \inst1|al\(14),
	datad => VCC,
	cin => \inst1|Add4~19\,
	combout => \inst1|Add4~20_combout\,
	cout => \inst1|Add4~21\);

-- Location: LCCOMB_X67_Y41_N2
\inst1|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~0_combout\ = (\inst1|am\(5) & (\inst1|ar\(4) $ (VCC))) # (!\inst1|am\(5) & (\inst1|ar\(4) & VCC))
-- \inst1|Add5~1\ = CARRY((\inst1|am\(5) & \inst1|ar\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(5),
	datab => \inst1|ar\(4),
	datad => VCC,
	combout => \inst1|Add5~0_combout\,
	cout => \inst1|Add5~1\);

-- Location: LCCOMB_X67_Y41_N4
\inst1|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~2_combout\ = (\inst1|am\(6) & ((\inst1|ar\(5) & (\inst1|Add5~1\ & VCC)) # (!\inst1|ar\(5) & (!\inst1|Add5~1\)))) # (!\inst1|am\(6) & ((\inst1|ar\(5) & (!\inst1|Add5~1\)) # (!\inst1|ar\(5) & ((\inst1|Add5~1\) # (GND)))))
-- \inst1|Add5~3\ = CARRY((\inst1|am\(6) & (!\inst1|ar\(5) & !\inst1|Add5~1\)) # (!\inst1|am\(6) & ((!\inst1|Add5~1\) # (!\inst1|ar\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(6),
	datab => \inst1|ar\(5),
	datad => VCC,
	cin => \inst1|Add5~1\,
	combout => \inst1|Add5~2_combout\,
	cout => \inst1|Add5~3\);

-- Location: LCCOMB_X67_Y41_N6
\inst1|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~4_combout\ = ((\inst1|ar\(6) $ (\inst1|am\(7) $ (!\inst1|Add5~3\)))) # (GND)
-- \inst1|Add5~5\ = CARRY((\inst1|ar\(6) & ((\inst1|am\(7)) # (!\inst1|Add5~3\))) # (!\inst1|ar\(6) & (\inst1|am\(7) & !\inst1|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ar\(6),
	datab => \inst1|am\(7),
	datad => VCC,
	cin => \inst1|Add5~3\,
	combout => \inst1|Add5~4_combout\,
	cout => \inst1|Add5~5\);

-- Location: LCCOMB_X67_Y41_N10
\inst1|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~8_combout\ = ((\inst1|ar\(8) $ (\inst1|am\(9) $ (!\inst1|Add5~7\)))) # (GND)
-- \inst1|Add5~9\ = CARRY((\inst1|ar\(8) & ((\inst1|am\(9)) # (!\inst1|Add5~7\))) # (!\inst1|ar\(8) & (\inst1|am\(9) & !\inst1|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ar\(8),
	datab => \inst1|am\(9),
	datad => VCC,
	cin => \inst1|Add5~7\,
	combout => \inst1|Add5~8_combout\,
	cout => \inst1|Add5~9\);

-- Location: LCCOMB_X67_Y41_N16
\inst1|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~14_combout\ = (\inst1|am\(12) & ((\inst1|ar\(11) & (\inst1|Add5~13\ & VCC)) # (!\inst1|ar\(11) & (!\inst1|Add5~13\)))) # (!\inst1|am\(12) & ((\inst1|ar\(11) & (!\inst1|Add5~13\)) # (!\inst1|ar\(11) & ((\inst1|Add5~13\) # (GND)))))
-- \inst1|Add5~15\ = CARRY((\inst1|am\(12) & (!\inst1|ar\(11) & !\inst1|Add5~13\)) # (!\inst1|am\(12) & ((!\inst1|Add5~13\) # (!\inst1|ar\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(12),
	datab => \inst1|ar\(11),
	datad => VCC,
	cin => \inst1|Add5~13\,
	combout => \inst1|Add5~14_combout\,
	cout => \inst1|Add5~15\);

-- Location: LCCOMB_X67_Y41_N18
\inst1|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~16_combout\ = ((\inst1|am\(13) $ (\inst1|ar\(12) $ (!\inst1|Add5~15\)))) # (GND)
-- \inst1|Add5~17\ = CARRY((\inst1|am\(13) & ((\inst1|ar\(12)) # (!\inst1|Add5~15\))) # (!\inst1|am\(13) & (\inst1|ar\(12) & !\inst1|Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(13),
	datab => \inst1|ar\(12),
	datad => VCC,
	cin => \inst1|Add5~15\,
	combout => \inst1|Add5~16_combout\,
	cout => \inst1|Add5~17\);

-- Location: LCCOMB_X67_Y41_N20
\inst1|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~18_combout\ = (\inst1|ar\(13) & ((\inst1|am\(14) & (\inst1|Add5~17\ & VCC)) # (!\inst1|am\(14) & (!\inst1|Add5~17\)))) # (!\inst1|ar\(13) & ((\inst1|am\(14) & (!\inst1|Add5~17\)) # (!\inst1|am\(14) & ((\inst1|Add5~17\) # (GND)))))
-- \inst1|Add5~19\ = CARRY((\inst1|ar\(13) & (!\inst1|am\(14) & !\inst1|Add5~17\)) # (!\inst1|ar\(13) & ((!\inst1|Add5~17\) # (!\inst1|am\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ar\(13),
	datab => \inst1|am\(14),
	datad => VCC,
	cin => \inst1|Add5~17\,
	combout => \inst1|Add5~18_combout\,
	cout => \inst1|Add5~19\);

-- Location: LCCOMB_X67_Y41_N22
\inst1|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~20_combout\ = ((\inst1|ar\(14) $ (\inst1|am\(15) $ (!\inst1|Add5~19\)))) # (GND)
-- \inst1|Add5~21\ = CARRY((\inst1|ar\(14) & ((\inst1|am\(15)) # (!\inst1|Add5~19\))) # (!\inst1|ar\(14) & (\inst1|am\(15) & !\inst1|Add5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ar\(14),
	datab => \inst1|am\(15),
	datad => VCC,
	cin => \inst1|Add5~19\,
	combout => \inst1|Add5~20_combout\,
	cout => \inst1|Add5~21\);

-- Location: FF_X72_Y38_N21
\inst1|rack[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[6]~52_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(6));

-- Location: FF_X72_Y38_N17
\inst1|rack[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[4]~48_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(4));

-- Location: FF_X72_Y38_N15
\inst1|rack[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[3]~46_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(3));

-- Location: FF_X72_Y38_N13
\inst1|rack[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[2]~44_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(2));

-- Location: FF_X72_Y38_N11
\inst1|rack[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[1]~42_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(1));

-- Location: FF_X72_Y38_N9
\inst1|rack[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[0]~40_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(0));

-- Location: LCCOMB_X73_Y38_N8
\inst1|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~0_combout\ = (\inst1|rack\(0) & ((GND) # (!\inst1|rack\(10)))) # (!\inst1|rack\(0) & (\inst1|rack\(10) $ (GND)))
-- \inst1|Add10~1\ = CARRY((\inst1|rack\(0)) # (!\inst1|rack\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(0),
	datab => \inst1|rack\(10),
	datad => VCC,
	combout => \inst1|Add10~0_combout\,
	cout => \inst1|Add10~1\);

-- Location: LCCOMB_X73_Y38_N18
\inst1|Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~10_combout\ = (\inst1|rack\(15) & ((\inst1|rack\(5) & (!\inst1|Add10~9\)) # (!\inst1|rack\(5) & ((\inst1|Add10~9\) # (GND))))) # (!\inst1|rack\(15) & ((\inst1|rack\(5) & (\inst1|Add10~9\ & VCC)) # (!\inst1|rack\(5) & (!\inst1|Add10~9\))))
-- \inst1|Add10~11\ = CARRY((\inst1|rack\(15) & ((!\inst1|Add10~9\) # (!\inst1|rack\(5)))) # (!\inst1|rack\(15) & (!\inst1|rack\(5) & !\inst1|Add10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(15),
	datab => \inst1|rack\(5),
	datad => VCC,
	cin => \inst1|Add10~9\,
	combout => \inst1|Add10~10_combout\,
	cout => \inst1|Add10~11\);

-- Location: LCCOMB_X73_Y38_N20
\inst1|Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~12_combout\ = ((\inst1|rack\(6) $ (\inst1|rack\(16) $ (\inst1|Add10~11\)))) # (GND)
-- \inst1|Add10~13\ = CARRY((\inst1|rack\(6) & ((!\inst1|Add10~11\) # (!\inst1|rack\(16)))) # (!\inst1|rack\(6) & (!\inst1|rack\(16) & !\inst1|Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(6),
	datab => \inst1|rack\(16),
	datad => VCC,
	cin => \inst1|Add10~11\,
	combout => \inst1|Add10~12_combout\,
	cout => \inst1|Add10~13\);

-- Location: DSPOUT_X71_Y38_N2
\inst1|Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst1|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X72_Y38_N8
\inst1|rack[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[0]~40_combout\ = (\inst1|Add10~0_combout\ & (\inst1|Add7~32_combout\ $ (VCC))) # (!\inst1|Add10~0_combout\ & (\inst1|Add7~32_combout\ & VCC))
-- \inst1|rack[0]~41\ = CARRY((\inst1|Add10~0_combout\ & \inst1|Add7~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~0_combout\,
	datab => \inst1|Add7~32_combout\,
	datad => VCC,
	combout => \inst1|rack[0]~40_combout\,
	cout => \inst1|rack[0]~41\);

-- Location: LCCOMB_X72_Y38_N10
\inst1|rack[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[1]~42_combout\ = (\inst1|Add10~2_combout\ & (!\inst1|rack[0]~41\)) # (!\inst1|Add10~2_combout\ & ((\inst1|rack[0]~41\) # (GND)))
-- \inst1|rack[1]~43\ = CARRY((!\inst1|rack[0]~41\) # (!\inst1|Add10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add10~2_combout\,
	datad => VCC,
	cin => \inst1|rack[0]~41\,
	combout => \inst1|rack[1]~42_combout\,
	cout => \inst1|rack[1]~43\);

-- Location: LCCOMB_X72_Y38_N12
\inst1|rack[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[2]~44_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT2\ $ (\inst1|Add10~4_combout\ $ (!\inst1|rack[1]~43\)))) # (GND)
-- \inst1|rack[2]~45\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT2\ & ((\inst1|Add10~4_combout\) # (!\inst1|rack[1]~43\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT2\ & (\inst1|Add10~4_combout\ & !\inst1|rack[1]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datab => \inst1|Add10~4_combout\,
	datad => VCC,
	cin => \inst1|rack[1]~43\,
	combout => \inst1|rack[2]~44_combout\,
	cout => \inst1|rack[2]~45\);

-- Location: LCCOMB_X72_Y38_N14
\inst1|rack[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[3]~46_combout\ = (\inst1|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\inst1|Add10~6_combout\ & (\inst1|rack[2]~45\ & VCC)) # (!\inst1|Add10~6_combout\ & (!\inst1|rack[2]~45\)))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT3\ & 
-- ((\inst1|Add10~6_combout\ & (!\inst1|rack[2]~45\)) # (!\inst1|Add10~6_combout\ & ((\inst1|rack[2]~45\) # (GND)))))
-- \inst1|rack[3]~47\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT3\ & (!\inst1|Add10~6_combout\ & !\inst1|rack[2]~45\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((!\inst1|rack[2]~45\) # (!\inst1|Add10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datab => \inst1|Add10~6_combout\,
	datad => VCC,
	cin => \inst1|rack[2]~45\,
	combout => \inst1|rack[3]~46_combout\,
	cout => \inst1|rack[3]~47\);

-- Location: LCCOMB_X72_Y38_N16
\inst1|rack[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[4]~48_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT4\ $ (\inst1|Add10~8_combout\ $ (!\inst1|rack[3]~47\)))) # (GND)
-- \inst1|rack[4]~49\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT4\ & ((\inst1|Add10~8_combout\) # (!\inst1|rack[3]~47\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT4\ & (\inst1|Add10~8_combout\ & !\inst1|rack[3]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datab => \inst1|Add10~8_combout\,
	datad => VCC,
	cin => \inst1|rack[3]~47\,
	combout => \inst1|rack[4]~48_combout\,
	cout => \inst1|rack[4]~49\);

-- Location: LCCOMB_X72_Y38_N20
\inst1|rack[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[6]~52_combout\ = ((\inst1|Add10~12_combout\ $ (\inst1|Mult1|auto_generated|mac_out2~DATAOUT6\ $ (!\inst1|rack[5]~51\)))) # (GND)
-- \inst1|rack[6]~53\ = CARRY((\inst1|Add10~12_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT6\) # (!\inst1|rack[5]~51\))) # (!\inst1|Add10~12_combout\ & (\inst1|Mult1|auto_generated|mac_out2~DATAOUT6\ & !\inst1|rack[5]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~12_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \inst1|rack[5]~51\,
	combout => \inst1|rack[6]~52_combout\,
	cout => \inst1|rack[6]~53\);

-- Location: LCCOMB_X73_Y38_N26
\inst1|Add10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~18_combout\ = (\inst1|rack\(9) & ((\inst1|rack\(19) & (!\inst1|Add10~17\)) # (!\inst1|rack\(19) & (\inst1|Add10~17\ & VCC)))) # (!\inst1|rack\(9) & ((\inst1|rack\(19) & ((\inst1|Add10~17\) # (GND))) # (!\inst1|rack\(19) & 
-- (!\inst1|Add10~17\))))
-- \inst1|Add10~19\ = CARRY((\inst1|rack\(9) & (\inst1|rack\(19) & !\inst1|Add10~17\)) # (!\inst1|rack\(9) & ((\inst1|rack\(19)) # (!\inst1|Add10~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(9),
	datab => \inst1|rack\(19),
	datad => VCC,
	cin => \inst1|Add10~17\,
	combout => \inst1|Add10~18_combout\,
	cout => \inst1|Add10~19\);

-- Location: LCCOMB_X73_Y38_N30
\inst1|Add10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~22_combout\ = (\inst1|rack\(21) & ((\inst1|rack\(11) & (!\inst1|Add10~21\)) # (!\inst1|rack\(11) & ((\inst1|Add10~21\) # (GND))))) # (!\inst1|rack\(21) & ((\inst1|rack\(11) & (\inst1|Add10~21\ & VCC)) # (!\inst1|rack\(11) & 
-- (!\inst1|Add10~21\))))
-- \inst1|Add10~23\ = CARRY((\inst1|rack\(21) & ((!\inst1|Add10~21\) # (!\inst1|rack\(11)))) # (!\inst1|rack\(21) & (!\inst1|rack\(11) & !\inst1|Add10~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(21),
	datab => \inst1|rack\(11),
	datad => VCC,
	cin => \inst1|Add10~21\,
	combout => \inst1|Add10~22_combout\,
	cout => \inst1|Add10~23\);

-- Location: LCCOMB_X73_Y37_N2
\inst1|Add10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~26_combout\ = (\inst1|rack\(13) & ((\inst1|rack\(23) & (!\inst1|Add10~25\)) # (!\inst1|rack\(23) & (\inst1|Add10~25\ & VCC)))) # (!\inst1|rack\(13) & ((\inst1|rack\(23) & ((\inst1|Add10~25\) # (GND))) # (!\inst1|rack\(23) & 
-- (!\inst1|Add10~25\))))
-- \inst1|Add10~27\ = CARRY((\inst1|rack\(13) & (\inst1|rack\(23) & !\inst1|Add10~25\)) # (!\inst1|rack\(13) & ((\inst1|rack\(23)) # (!\inst1|Add10~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(13),
	datab => \inst1|rack\(23),
	datad => VCC,
	cin => \inst1|Add10~25\,
	combout => \inst1|Add10~26_combout\,
	cout => \inst1|Add10~27\);

-- Location: LCCOMB_X73_Y37_N6
\inst1|Add10~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~30_combout\ = (\inst1|rack\(25) & ((\inst1|rack\(15) & (!\inst1|Add10~29\)) # (!\inst1|rack\(15) & ((\inst1|Add10~29\) # (GND))))) # (!\inst1|rack\(25) & ((\inst1|rack\(15) & (\inst1|Add10~29\ & VCC)) # (!\inst1|rack\(15) & 
-- (!\inst1|Add10~29\))))
-- \inst1|Add10~31\ = CARRY((\inst1|rack\(25) & ((!\inst1|Add10~29\) # (!\inst1|rack\(15)))) # (!\inst1|rack\(25) & (!\inst1|rack\(15) & !\inst1|Add10~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(25),
	datab => \inst1|rack\(15),
	datad => VCC,
	cin => \inst1|Add10~29\,
	combout => \inst1|Add10~30_combout\,
	cout => \inst1|Add10~31\);

-- Location: LCCOMB_X73_Y37_N8
\inst1|Add10~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~32_combout\ = ((\inst1|rack\(16) $ (\inst1|rack\(26) $ (\inst1|Add10~31\)))) # (GND)
-- \inst1|Add10~33\ = CARRY((\inst1|rack\(16) & ((!\inst1|Add10~31\) # (!\inst1|rack\(26)))) # (!\inst1|rack\(16) & (!\inst1|rack\(26) & !\inst1|Add10~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(16),
	datab => \inst1|rack\(26),
	datad => VCC,
	cin => \inst1|Add10~31\,
	combout => \inst1|Add10~32_combout\,
	cout => \inst1|Add10~33\);

-- Location: LCCOMB_X73_Y37_N10
\inst1|Add10~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~34_combout\ = (\inst1|rack\(17) & ((\inst1|rack\(27) & (!\inst1|Add10~33\)) # (!\inst1|rack\(27) & (\inst1|Add10~33\ & VCC)))) # (!\inst1|rack\(17) & ((\inst1|rack\(27) & ((\inst1|Add10~33\) # (GND))) # (!\inst1|rack\(27) & 
-- (!\inst1|Add10~33\))))
-- \inst1|Add10~35\ = CARRY((\inst1|rack\(17) & (\inst1|rack\(27) & !\inst1|Add10~33\)) # (!\inst1|rack\(17) & ((\inst1|rack\(27)) # (!\inst1|Add10~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(17),
	datab => \inst1|rack\(27),
	datad => VCC,
	cin => \inst1|Add10~33\,
	combout => \inst1|Add10~34_combout\,
	cout => \inst1|Add10~35\);

-- Location: LCCOMB_X72_Y37_N12
\inst1|rack[18]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[18]~77_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (\inst1|Add10~36_combout\ $ (!\inst1|rack[17]~76\)))) # (GND)
-- \inst1|rack[18]~78\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\inst1|Add10~36_combout\) # (!\inst1|rack[17]~76\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT18\ & (\inst1|Add10~36_combout\ & !\inst1|rack[17]~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \inst1|Add10~36_combout\,
	datad => VCC,
	cin => \inst1|rack[17]~76\,
	combout => \inst1|rack[18]~77_combout\,
	cout => \inst1|rack[18]~78\);

-- Location: LCCOMB_X73_Y37_N16
\inst1|Add10~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~40_combout\ = ((\inst1|rack\(20) $ (\inst1|rack\(30) $ (\inst1|Add10~39\)))) # (GND)
-- \inst1|Add10~41\ = CARRY((\inst1|rack\(20) & ((!\inst1|Add10~39\) # (!\inst1|rack\(30)))) # (!\inst1|rack\(20) & (!\inst1|rack\(30) & !\inst1|Add10~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(20),
	datab => \inst1|rack\(30),
	datad => VCC,
	cin => \inst1|Add10~39\,
	combout => \inst1|Add10~40_combout\,
	cout => \inst1|Add10~41\);

-- Location: LCCOMB_X73_Y37_N20
\inst1|Add10~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~44_combout\ = ((\inst1|rack\(32) $ (\inst1|rack\(22) $ (\inst1|Add10~43\)))) # (GND)
-- \inst1|Add10~45\ = CARRY((\inst1|rack\(32) & (\inst1|rack\(22) & !\inst1|Add10~43\)) # (!\inst1|rack\(32) & ((\inst1|rack\(22)) # (!\inst1|Add10~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(32),
	datab => \inst1|rack\(22),
	datad => VCC,
	cin => \inst1|Add10~43\,
	combout => \inst1|Add10~44_combout\,
	cout => \inst1|Add10~45\);

-- Location: LCCOMB_X73_Y37_N26
\inst1|Add10~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~50_combout\ = (\inst1|rack\(25) & ((\inst1|rack\(35) & (!\inst1|Add10~49\)) # (!\inst1|rack\(35) & (\inst1|Add10~49\ & VCC)))) # (!\inst1|rack\(25) & ((\inst1|rack\(35) & ((\inst1|Add10~49\) # (GND))) # (!\inst1|rack\(35) & 
-- (!\inst1|Add10~49\))))
-- \inst1|Add10~51\ = CARRY((\inst1|rack\(25) & (\inst1|rack\(35) & !\inst1|Add10~49\)) # (!\inst1|rack\(25) & ((\inst1|rack\(35)) # (!\inst1|Add10~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(25),
	datab => \inst1|rack\(35),
	datad => VCC,
	cin => \inst1|Add10~49\,
	combout => \inst1|Add10~50_combout\,
	cout => \inst1|Add10~51\);

-- Location: FF_X72_Y36_N17
\inst1|rack[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[36]~113_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(36));

-- Location: LCCOMB_X73_Y37_N30
\inst1|Add10~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~54_combout\ = (\inst1|rack\(37) & ((\inst1|rack\(27) & (!\inst1|Add10~53\)) # (!\inst1|rack\(27) & ((\inst1|Add10~53\) # (GND))))) # (!\inst1|rack\(37) & ((\inst1|rack\(27) & (\inst1|Add10~53\ & VCC)) # (!\inst1|rack\(27) & 
-- (!\inst1|Add10~53\))))
-- \inst1|Add10~55\ = CARRY((\inst1|rack\(37) & ((!\inst1|Add10~53\) # (!\inst1|rack\(27)))) # (!\inst1|rack\(37) & (!\inst1|rack\(27) & !\inst1|Add10~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(37),
	datab => \inst1|rack\(27),
	datad => VCC,
	cin => \inst1|Add10~53\,
	combout => \inst1|Add10~54_combout\,
	cout => \inst1|Add10~55\);

-- Location: LCCOMB_X73_Y36_N6
\inst1|Add10~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~62_combout\ = (\inst1|rack\(31) & (\inst1|Add10~61\ & VCC)) # (!\inst1|rack\(31) & (!\inst1|Add10~61\))
-- \inst1|Add10~63\ = CARRY((!\inst1|rack\(31) & !\inst1|Add10~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(31),
	datad => VCC,
	cin => \inst1|Add10~61\,
	combout => \inst1|Add10~62_combout\,
	cout => \inst1|Add10~63\);

-- Location: FF_X70_Y35_N21
\inst1|lack[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[38]~116_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(38));

-- Location: FF_X70_Y35_N15
\inst1|lack[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[35]~110_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(35));

-- Location: FF_X70_Y37_N21
\inst1|lack[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[6]~52_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(6));

-- Location: FF_X70_Y37_N17
\inst1|lack[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[4]~48_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(4));

-- Location: LCCOMB_X69_Y37_N10
\inst1|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~2_combout\ = (\inst1|lack\(11) & ((\inst1|lack\(1) & (!\inst1|Add8~1\)) # (!\inst1|lack\(1) & ((\inst1|Add8~1\) # (GND))))) # (!\inst1|lack\(11) & ((\inst1|lack\(1) & (\inst1|Add8~1\ & VCC)) # (!\inst1|lack\(1) & (!\inst1|Add8~1\))))
-- \inst1|Add8~3\ = CARRY((\inst1|lack\(11) & ((!\inst1|Add8~1\) # (!\inst1|lack\(1)))) # (!\inst1|lack\(11) & (!\inst1|lack\(1) & !\inst1|Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(11),
	datab => \inst1|lack\(1),
	datad => VCC,
	cin => \inst1|Add8~1\,
	combout => \inst1|Add8~2_combout\,
	cout => \inst1|Add8~3\);

-- Location: LCCOMB_X69_Y37_N12
\inst1|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~4_combout\ = ((\inst1|lack\(12) $ (\inst1|lack\(2) $ (\inst1|Add8~3\)))) # (GND)
-- \inst1|Add8~5\ = CARRY((\inst1|lack\(12) & (\inst1|lack\(2) & !\inst1|Add8~3\)) # (!\inst1|lack\(12) & ((\inst1|lack\(2)) # (!\inst1|Add8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(12),
	datab => \inst1|lack\(2),
	datad => VCC,
	cin => \inst1|Add8~3\,
	combout => \inst1|Add8~4_combout\,
	cout => \inst1|Add8~5\);

-- Location: LCCOMB_X69_Y37_N26
\inst1|Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~18_combout\ = (\inst1|lack\(19) & ((\inst1|lack\(9) & (!\inst1|Add8~17\)) # (!\inst1|lack\(9) & ((\inst1|Add8~17\) # (GND))))) # (!\inst1|lack\(19) & ((\inst1|lack\(9) & (\inst1|Add8~17\ & VCC)) # (!\inst1|lack\(9) & (!\inst1|Add8~17\))))
-- \inst1|Add8~19\ = CARRY((\inst1|lack\(19) & ((!\inst1|Add8~17\) # (!\inst1|lack\(9)))) # (!\inst1|lack\(19) & (!\inst1|lack\(9) & !\inst1|Add8~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(19),
	datab => \inst1|lack\(9),
	datad => VCC,
	cin => \inst1|Add8~17\,
	combout => \inst1|Add8~18_combout\,
	cout => \inst1|Add8~19\);

-- Location: LCCOMB_X69_Y37_N28
\inst1|Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~20_combout\ = ((\inst1|lack\(20) $ (\inst1|lack\(10) $ (\inst1|Add8~19\)))) # (GND)
-- \inst1|Add8~21\ = CARRY((\inst1|lack\(20) & (\inst1|lack\(10) & !\inst1|Add8~19\)) # (!\inst1|lack\(20) & ((\inst1|lack\(10)) # (!\inst1|Add8~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(20),
	datab => \inst1|lack\(10),
	datad => VCC,
	cin => \inst1|Add8~19\,
	combout => \inst1|Add8~20_combout\,
	cout => \inst1|Add8~21\);

-- Location: LCCOMB_X69_Y36_N2
\inst1|Add8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~26_combout\ = (\inst1|lack\(13) & ((\inst1|lack\(23) & (!\inst1|Add8~25\)) # (!\inst1|lack\(23) & (\inst1|Add8~25\ & VCC)))) # (!\inst1|lack\(13) & ((\inst1|lack\(23) & ((\inst1|Add8~25\) # (GND))) # (!\inst1|lack\(23) & (!\inst1|Add8~25\))))
-- \inst1|Add8~27\ = CARRY((\inst1|lack\(13) & (\inst1|lack\(23) & !\inst1|Add8~25\)) # (!\inst1|lack\(13) & ((\inst1|lack\(23)) # (!\inst1|Add8~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(13),
	datab => \inst1|lack\(23),
	datad => VCC,
	cin => \inst1|Add8~25\,
	combout => \inst1|Add8~26_combout\,
	cout => \inst1|Add8~27\);

-- Location: LCCOMB_X69_Y36_N8
\inst1|Add8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~32_combout\ = ((\inst1|lack\(16) $ (\inst1|lack\(26) $ (\inst1|Add8~31\)))) # (GND)
-- \inst1|Add8~33\ = CARRY((\inst1|lack\(16) & ((!\inst1|Add8~31\) # (!\inst1|lack\(26)))) # (!\inst1|lack\(16) & (!\inst1|lack\(26) & !\inst1|Add8~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(16),
	datab => \inst1|lack\(26),
	datad => VCC,
	cin => \inst1|Add8~31\,
	combout => \inst1|Add8~32_combout\,
	cout => \inst1|Add8~33\);

-- Location: LCCOMB_X69_Y36_N12
\inst1|Add8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~36_combout\ = ((\inst1|lack\(28) $ (\inst1|lack\(18) $ (\inst1|Add8~35\)))) # (GND)
-- \inst1|Add8~37\ = CARRY((\inst1|lack\(28) & (\inst1|lack\(18) & !\inst1|Add8~35\)) # (!\inst1|lack\(28) & ((\inst1|lack\(18)) # (!\inst1|Add8~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(28),
	datab => \inst1|lack\(18),
	datad => VCC,
	cin => \inst1|Add8~35\,
	combout => \inst1|Add8~36_combout\,
	cout => \inst1|Add8~37\);

-- Location: LCCOMB_X69_Y36_N14
\inst1|Add8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~38_combout\ = (\inst1|lack\(29) & ((\inst1|lack\(19) & (!\inst1|Add8~37\)) # (!\inst1|lack\(19) & ((\inst1|Add8~37\) # (GND))))) # (!\inst1|lack\(29) & ((\inst1|lack\(19) & (\inst1|Add8~37\ & VCC)) # (!\inst1|lack\(19) & (!\inst1|Add8~37\))))
-- \inst1|Add8~39\ = CARRY((\inst1|lack\(29) & ((!\inst1|Add8~37\) # (!\inst1|lack\(19)))) # (!\inst1|lack\(29) & (!\inst1|lack\(19) & !\inst1|Add8~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(29),
	datab => \inst1|lack\(19),
	datad => VCC,
	cin => \inst1|Add8~37\,
	combout => \inst1|Add8~38_combout\,
	cout => \inst1|Add8~39\);

-- Location: LCCOMB_X69_Y36_N16
\inst1|Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~40_combout\ = ((\inst1|lack\(30) $ (\inst1|lack\(20) $ (\inst1|Add8~39\)))) # (GND)
-- \inst1|Add8~41\ = CARRY((\inst1|lack\(30) & (\inst1|lack\(20) & !\inst1|Add8~39\)) # (!\inst1|lack\(30) & ((\inst1|lack\(20)) # (!\inst1|Add8~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(30),
	datab => \inst1|lack\(20),
	datad => VCC,
	cin => \inst1|Add8~39\,
	combout => \inst1|Add8~40_combout\,
	cout => \inst1|Add8~41\);

-- Location: LCCOMB_X69_Y36_N28
\inst1|Add8~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~52_combout\ = ((\inst1|lack\(36) $ (\inst1|lack\(26) $ (\inst1|Add8~51\)))) # (GND)
-- \inst1|Add8~53\ = CARRY((\inst1|lack\(36) & (\inst1|lack\(26) & !\inst1|Add8~51\)) # (!\inst1|lack\(36) & ((\inst1|lack\(26)) # (!\inst1|Add8~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(36),
	datab => \inst1|lack\(26),
	datad => VCC,
	cin => \inst1|Add8~51\,
	combout => \inst1|Add8~52_combout\,
	cout => \inst1|Add8~53\);

-- Location: LCCOMB_X69_Y36_N30
\inst1|Add8~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~54_combout\ = (\inst1|lack\(37) & ((\inst1|lack\(27) & (!\inst1|Add8~53\)) # (!\inst1|lack\(27) & ((\inst1|Add8~53\) # (GND))))) # (!\inst1|lack\(37) & ((\inst1|lack\(27) & (\inst1|Add8~53\ & VCC)) # (!\inst1|lack\(27) & (!\inst1|Add8~53\))))
-- \inst1|Add8~55\ = CARRY((\inst1|lack\(37) & ((!\inst1|Add8~53\) # (!\inst1|lack\(27)))) # (!\inst1|lack\(37) & (!\inst1|lack\(27) & !\inst1|Add8~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(37),
	datab => \inst1|lack\(27),
	datad => VCC,
	cin => \inst1|Add8~53\,
	combout => \inst1|Add8~54_combout\,
	cout => \inst1|Add8~55\);

-- Location: LCCOMB_X69_Y35_N0
\inst1|Add8~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~56_combout\ = ((\inst1|lack\(38) $ (\inst1|lack\(28) $ (\inst1|Add8~55\)))) # (GND)
-- \inst1|Add8~57\ = CARRY((\inst1|lack\(38) & (\inst1|lack\(28) & !\inst1|Add8~55\)) # (!\inst1|lack\(38) & ((\inst1|lack\(28)) # (!\inst1|Add8~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(38),
	datab => \inst1|lack\(28),
	datad => VCC,
	cin => \inst1|Add8~55\,
	combout => \inst1|Add8~56_combout\,
	cout => \inst1|Add8~57\);

-- Location: LCCOMB_X69_Y35_N2
\inst1|Add8~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~58_combout\ = (\inst1|lack\(29) & ((\inst1|lack\(39) & (!\inst1|Add8~57\)) # (!\inst1|lack\(39) & (\inst1|Add8~57\ & VCC)))) # (!\inst1|lack\(29) & ((\inst1|lack\(39) & ((\inst1|Add8~57\) # (GND))) # (!\inst1|lack\(39) & (!\inst1|Add8~57\))))
-- \inst1|Add8~59\ = CARRY((\inst1|lack\(29) & (\inst1|lack\(39) & !\inst1|Add8~57\)) # (!\inst1|lack\(29) & ((\inst1|lack\(39)) # (!\inst1|Add8~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(29),
	datab => \inst1|lack\(39),
	datad => VCC,
	cin => \inst1|Add8~57\,
	combout => \inst1|Add8~58_combout\,
	cout => \inst1|Add8~59\);

-- Location: LCCOMB_X69_Y35_N6
\inst1|Add8~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~62_combout\ = (\inst1|lack\(31) & (\inst1|Add8~61\ & VCC)) # (!\inst1|lack\(31) & (!\inst1|Add8~61\))
-- \inst1|Add8~63\ = CARRY((!\inst1|lack\(31) & !\inst1|Add8~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(31),
	datad => VCC,
	cin => \inst1|Add8~61\,
	combout => \inst1|Add8~62_combout\,
	cout => \inst1|Add8~63\);

-- Location: LCCOMB_X69_Y35_N8
\inst1|Add8~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~64_combout\ = (\inst1|lack\(32) & ((GND) # (!\inst1|Add8~63\))) # (!\inst1|lack\(32) & (\inst1|Add8~63\ $ (GND)))
-- \inst1|Add8~65\ = CARRY((\inst1|lack\(32)) # (!\inst1|Add8~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lack\(32),
	datad => VCC,
	cin => \inst1|Add8~63\,
	combout => \inst1|Add8~64_combout\,
	cout => \inst1|Add8~65\);

-- Location: DSPOUT_X71_Y37_N2
\inst1|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X70_Y37_N16
\inst1|lack[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[4]~48_combout\ = ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (\inst1|Add8~8_combout\ $ (!\inst1|lack[3]~47\)))) # (GND)
-- \inst1|lack[4]~49\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\inst1|Add8~8_combout\) # (!\inst1|lack[3]~47\))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT4\ & (\inst1|Add8~8_combout\ & !\inst1|lack[3]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \inst1|Add8~8_combout\,
	datad => VCC,
	cin => \inst1|lack[3]~47\,
	combout => \inst1|lack[4]~48_combout\,
	cout => \inst1|lack[4]~49\);

-- Location: LCCOMB_X70_Y37_N20
\inst1|lack[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[6]~52_combout\ = ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (\inst1|Add8~12_combout\ $ (!\inst1|lack[5]~51\)))) # (GND)
-- \inst1|lack[6]~53\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\inst1|Add8~12_combout\) # (!\inst1|lack[5]~51\))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT6\ & (\inst1|Add8~12_combout\ & !\inst1|lack[5]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \inst1|Add8~12_combout\,
	datad => VCC,
	cin => \inst1|lack[5]~51\,
	combout => \inst1|lack[6]~52_combout\,
	cout => \inst1|lack[6]~53\);

-- Location: LCCOMB_X70_Y36_N6
\inst1|lack[15]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[15]~70_combout\ = (\inst1|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\inst1|Add8~30_combout\ & (\inst1|lack[14]~69\ & VCC)) # (!\inst1|Add8~30_combout\ & (!\inst1|lack[14]~69\)))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- ((\inst1|Add8~30_combout\ & (!\inst1|lack[14]~69\)) # (!\inst1|Add8~30_combout\ & ((\inst1|lack[14]~69\) # (GND)))))
-- \inst1|lack[15]~71\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\inst1|Add8~30_combout\ & !\inst1|lack[14]~69\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((!\inst1|lack[14]~69\) # (!\inst1|Add8~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \inst1|Add8~30_combout\,
	datad => VCC,
	cin => \inst1|lack[14]~69\,
	combout => \inst1|lack[15]~70_combout\,
	cout => \inst1|lack[15]~71\);

-- Location: LCCOMB_X70_Y36_N20
\inst1|lack[22]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[22]~84_combout\ = ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (\inst1|Add8~44_combout\ $ (!\inst1|lack[21]~83\)))) # (GND)
-- \inst1|lack[22]~85\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\inst1|Add8~44_combout\) # (!\inst1|lack[21]~83\))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\inst1|Add8~44_combout\ & !\inst1|lack[21]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \inst1|Add8~44_combout\,
	datad => VCC,
	cin => \inst1|lack[21]~83\,
	combout => \inst1|lack[22]~84_combout\,
	cout => \inst1|lack[22]~85\);

-- Location: LCCOMB_X70_Y35_N6
\inst1|lack[31]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[31]~102_combout\ = (\inst1|Add8~62_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT31\ & (\inst1|lack[30]~101\ & VCC)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\inst1|lack[30]~101\)))) # (!\inst1|Add8~62_combout\ & 
-- ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\inst1|lack[30]~101\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\inst1|lack[30]~101\) # (GND)))))
-- \inst1|lack[31]~103\ = CARRY((\inst1|Add8~62_combout\ & (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT31\ & !\inst1|lack[30]~101\)) # (!\inst1|Add8~62_combout\ & ((!\inst1|lack[30]~101\) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~62_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \inst1|lack[30]~101\,
	combout => \inst1|lack[31]~102_combout\,
	cout => \inst1|lack[31]~103\);

-- Location: LCCOMB_X69_Y35_N10
\inst1|Add8~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~66_combout\ = (\inst1|lack\(33) & (\inst1|Add8~65\ & VCC)) # (!\inst1|lack\(33) & (!\inst1|Add8~65\))
-- \inst1|Add8~67\ = CARRY((!\inst1|lack\(33) & !\inst1|Add8~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lack\(33),
	datad => VCC,
	cin => \inst1|Add8~65\,
	combout => \inst1|Add8~66_combout\,
	cout => \inst1|Add8~67\);

-- Location: LCCOMB_X69_Y35_N12
\inst1|Add8~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~68_combout\ = (\inst1|lack\(34) & ((GND) # (!\inst1|Add8~67\))) # (!\inst1|lack\(34) & (\inst1|Add8~67\ $ (GND)))
-- \inst1|Add8~69\ = CARRY((\inst1|lack\(34)) # (!\inst1|Add8~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lack\(34),
	datad => VCC,
	cin => \inst1|Add8~67\,
	combout => \inst1|Add8~68_combout\,
	cout => \inst1|Add8~69\);

-- Location: FF_X65_Y42_N31
\inst1|psac_inst|Res_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(14));

-- Location: FF_X65_Y42_N29
\inst1|psac_inst|Res_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[13]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(13));

-- Location: FF_X65_Y42_N7
\inst1|psac_inst|Res_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[2]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(2));

-- Location: FF_X65_Y42_N5
\inst1|psac_inst|Res_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(1));

-- Location: LCCOMB_X65_Y40_N8
\inst1|psac_inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~8_combout\ = (\inst1|psac_inst|Res_2\(5) & (!\inst1|psac_inst|Add1~7\ & VCC)) # (!\inst1|psac_inst|Res_2\(5) & (\inst1|psac_inst|Add1~7\ $ (GND)))
-- \inst1|psac_inst|Add1~9\ = CARRY((!\inst1|psac_inst|Res_2\(5) & !\inst1|psac_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Res_2\(5),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~7\,
	combout => \inst1|psac_inst|Add1~8_combout\,
	cout => \inst1|psac_inst|Add1~9\);

-- Location: LCCOMB_X65_Y40_N10
\inst1|psac_inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~10_combout\ = (\inst1|psac_inst|Res_2\(6) & ((\inst1|psac_inst|Add1~9\) # (GND))) # (!\inst1|psac_inst|Res_2\(6) & (!\inst1|psac_inst|Add1~9\))
-- \inst1|psac_inst|Add1~11\ = CARRY((\inst1|psac_inst|Res_2\(6)) # (!\inst1|psac_inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Res_2\(6),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~9\,
	combout => \inst1|psac_inst|Add1~10_combout\,
	cout => \inst1|psac_inst|Add1~11\);

-- Location: LCCOMB_X65_Y40_N12
\inst1|psac_inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~12_combout\ = (\inst1|psac_inst|Res_2\(7) & (!\inst1|psac_inst|Add1~11\ & VCC)) # (!\inst1|psac_inst|Res_2\(7) & (\inst1|psac_inst|Add1~11\ $ (GND)))
-- \inst1|psac_inst|Add1~13\ = CARRY((!\inst1|psac_inst|Res_2\(7) & !\inst1|psac_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Res_2\(7),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~11\,
	combout => \inst1|psac_inst|Add1~12_combout\,
	cout => \inst1|psac_inst|Add1~13\);

-- Location: LCCOMB_X65_Y40_N14
\inst1|psac_inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~14_combout\ = (\inst1|psac_inst|Res_2\(8) & ((\inst1|psac_inst|Add1~13\) # (GND))) # (!\inst1|psac_inst|Res_2\(8) & (!\inst1|psac_inst|Add1~13\))
-- \inst1|psac_inst|Add1~15\ = CARRY((\inst1|psac_inst|Res_2\(8)) # (!\inst1|psac_inst|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Res_2\(8),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~13\,
	combout => \inst1|psac_inst|Add1~14_combout\,
	cout => \inst1|psac_inst|Add1~15\);

-- Location: LCCOMB_X65_Y40_N20
\inst1|psac_inst|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~20_combout\ = (\inst1|psac_inst|Res_2\(11) & (!\inst1|psac_inst|Add1~19\ & VCC)) # (!\inst1|psac_inst|Res_2\(11) & (\inst1|psac_inst|Add1~19\ $ (GND)))
-- \inst1|psac_inst|Add1~21\ = CARRY((!\inst1|psac_inst|Res_2\(11) & !\inst1|psac_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Res_2\(11),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~19\,
	combout => \inst1|psac_inst|Add1~20_combout\,
	cout => \inst1|psac_inst|Add1~21\);

-- Location: LCCOMB_X65_Y40_N24
\inst1|psac_inst|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~24_combout\ = (\inst1|psac_inst|Res_2\(13) & (!\inst1|psac_inst|Add1~23\ & VCC)) # (!\inst1|psac_inst|Res_2\(13) & (\inst1|psac_inst|Add1~23\ $ (GND)))
-- \inst1|psac_inst|Add1~25\ = CARRY((!\inst1|psac_inst|Res_2\(13) & !\inst1|psac_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Res_2\(13),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~23\,
	combout => \inst1|psac_inst|Add1~24_combout\,
	cout => \inst1|psac_inst|Add1~25\);

-- Location: LCCOMB_X73_Y36_N16
\inst1|Add10~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~72_combout\ = (\inst1|rack\(36) & ((GND) # (!\inst1|Add10~71\))) # (!\inst1|rack\(36) & (\inst1|Add10~71\ $ (GND)))
-- \inst1|Add10~73\ = CARRY((\inst1|rack\(36)) # (!\inst1|Add10~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(36),
	datad => VCC,
	cin => \inst1|Add10~71\,
	combout => \inst1|Add10~72_combout\,
	cout => \inst1|Add10~73\);

-- Location: LCCOMB_X72_Y36_N16
\inst1|rack[36]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[36]~113_combout\ = (\inst1|Add10~72_combout\ & (\inst1|rack[35]~112\ $ (GND))) # (!\inst1|Add10~72_combout\ & (!\inst1|rack[35]~112\ & VCC))
-- \inst1|rack[36]~114\ = CARRY((\inst1|Add10~72_combout\ & !\inst1|rack[35]~112\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~72_combout\,
	datad => VCC,
	cin => \inst1|rack[35]~112\,
	combout => \inst1|rack[36]~113_combout\,
	cout => \inst1|rack[36]~114\);

-- Location: LCCOMB_X73_Y36_N18
\inst1|Add10~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~74_combout\ = (\inst1|rack\(37) & (\inst1|Add10~73\ & VCC)) # (!\inst1|rack\(37) & (!\inst1|Add10~73\))
-- \inst1|Add10~75\ = CARRY((!\inst1|rack\(37) & !\inst1|Add10~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(37),
	datad => VCC,
	cin => \inst1|Add10~73\,
	combout => \inst1|Add10~74_combout\,
	cout => \inst1|Add10~75\);

-- Location: LCCOMB_X73_Y36_N20
\inst1|Add10~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~76_combout\ = (\inst1|rack\(38) & ((GND) # (!\inst1|Add10~75\))) # (!\inst1|rack\(38) & (\inst1|Add10~75\ $ (GND)))
-- \inst1|Add10~77\ = CARRY((\inst1|rack\(38)) # (!\inst1|Add10~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(38),
	datad => VCC,
	cin => \inst1|Add10~75\,
	combout => \inst1|Add10~76_combout\,
	cout => \inst1|Add10~77\);

-- Location: LCCOMB_X69_Y35_N14
\inst1|Add8~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~70_combout\ = (\inst1|lack\(35) & (\inst1|Add8~69\ & VCC)) # (!\inst1|lack\(35) & (!\inst1|Add8~69\))
-- \inst1|Add8~71\ = CARRY((!\inst1|lack\(35) & !\inst1|Add8~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(35),
	datad => VCC,
	cin => \inst1|Add8~69\,
	combout => \inst1|Add8~70_combout\,
	cout => \inst1|Add8~71\);

-- Location: LCCOMB_X69_Y35_N16
\inst1|Add8~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~72_combout\ = (\inst1|lack\(36) & ((GND) # (!\inst1|Add8~71\))) # (!\inst1|lack\(36) & (\inst1|Add8~71\ $ (GND)))
-- \inst1|Add8~73\ = CARRY((\inst1|lack\(36)) # (!\inst1|Add8~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lack\(36),
	datad => VCC,
	cin => \inst1|Add8~71\,
	combout => \inst1|Add8~72_combout\,
	cout => \inst1|Add8~73\);

-- Location: LCCOMB_X70_Y35_N14
\inst1|lack[35]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[35]~110_combout\ = (\inst1|Add8~70_combout\ & (!\inst1|lack[34]~109\)) # (!\inst1|Add8~70_combout\ & ((\inst1|lack[34]~109\) # (GND)))
-- \inst1|lack[35]~111\ = CARRY((!\inst1|lack[34]~109\) # (!\inst1|Add8~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~70_combout\,
	datad => VCC,
	cin => \inst1|lack[34]~109\,
	combout => \inst1|lack[35]~110_combout\,
	cout => \inst1|lack[35]~111\);

-- Location: LCCOMB_X70_Y35_N20
\inst1|lack[38]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[38]~116_combout\ = (\inst1|Add8~76_combout\ & (\inst1|lack[37]~115\ $ (GND))) # (!\inst1|Add8~76_combout\ & (!\inst1|lack[37]~115\ & VCC))
-- \inst1|lack[38]~117\ = CARRY((\inst1|Add8~76_combout\ & !\inst1|lack[37]~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add8~76_combout\,
	datad => VCC,
	cin => \inst1|lack[37]~115\,
	combout => \inst1|lack[38]~116_combout\,
	cout => \inst1|lack[38]~117\);

-- Location: DSPOUT_X71_Y42_N2
\inst1|psac_inst|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst1|psac_inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X65_Y42_N4
\inst1|psac_inst|Res_2[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[1]~17_combout\ = (\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a21\ & (\inst1|psac_inst|Res_2[0]~16\ & VCC)) # 
-- (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a21\ & (!\inst1|psac_inst|Res_2[0]~16\)))) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a21\ & 
-- (!\inst1|psac_inst|Res_2[0]~16\)) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a21\ & ((\inst1|psac_inst|Res_2[0]~16\) # (GND)))))
-- \inst1|psac_inst|Res_2[1]~18\ = CARRY((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a21\ & !\inst1|psac_inst|Res_2[0]~16\)) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- ((!\inst1|psac_inst|Res_2[0]~16\) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a21\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[0]~16\,
	combout => \inst1|psac_inst|Res_2[1]~17_combout\,
	cout => \inst1|psac_inst|Res_2[1]~18\);

-- Location: LCCOMB_X65_Y42_N6
\inst1|psac_inst|Res_2[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[2]~19_combout\ = ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a20\ $ (\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT10\ $ (!\inst1|psac_inst|Res_2[1]~18\)))) # (GND)
-- \inst1|psac_inst|Res_2[2]~20\ = CARRY((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a20\ & ((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT10\) # (!\inst1|psac_inst|Res_2[1]~18\))) # 
-- (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a20\ & (\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT10\ & !\inst1|psac_inst|Res_2[1]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a20\,
	datab => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[1]~18\,
	combout => \inst1|psac_inst|Res_2[2]~19_combout\,
	cout => \inst1|psac_inst|Res_2[2]~20\);

-- Location: LCCOMB_X65_Y42_N26
\inst1|psac_inst|Res_2[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[12]~39_combout\ = (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a10\ & (\inst1|psac_inst|Res_2[11]~38\ $ (GND))) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a10\ & (!\inst1|psac_inst|Res_2[11]~38\ & VCC))
-- \inst1|psac_inst|Res_2[12]~40\ = CARRY((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a10\ & !\inst1|psac_inst|Res_2[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a10\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[11]~38\,
	combout => \inst1|psac_inst|Res_2[12]~39_combout\,
	cout => \inst1|psac_inst|Res_2[12]~40\);

-- Location: LCCOMB_X65_Y42_N28
\inst1|psac_inst|Res_2[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[13]~41_combout\ = (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a9\ & (!\inst1|psac_inst|Res_2[12]~40\)) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a9\ & ((\inst1|psac_inst|Res_2[12]~40\) # (GND)))
-- \inst1|psac_inst|Res_2[13]~42\ = CARRY((!\inst1|psac_inst|Res_2[12]~40\) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a9\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[12]~40\,
	combout => \inst1|psac_inst|Res_2[13]~41_combout\,
	cout => \inst1|psac_inst|Res_2[13]~42\);

-- Location: LCCOMB_X65_Y42_N30
\inst1|psac_inst|Res_2[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[14]~43_combout\ = \inst1|psac_inst|Res_2[13]~42\ $ (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a23\,
	cin => \inst1|psac_inst|Res_2[13]~42\,
	combout => \inst1|psac_inst|Res_2[14]~43_combout\);

-- Location: FF_X68_Y42_N27
\inst1|xm[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[14]~36_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(14));

-- Location: M9K_X64_Y42_N0
\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000B7FEA0000CDFEF0000CAFF18000937F44000987F34000C2BE6C000C23E020",
	mem_init0 => X"00F8DF92000CB9FCA000861EBA000E36F6600090AE0E000A4CF9E000D88EC1000D77631000E937A9000F8577900081E7E500083270D000BB869D000EB7A43000F5DB53000C61ACB000EF2BDB000D68BC7000BDB3D70008F93CF000A063DF0019F82C00018BBD50001D19D8800194AC98001D50C04001883564001BAE4B4001F145CC001E5B85C00195180200189C862001A671D200184908A001E3C16A0015A7FDA0015B1F0600162CEA600145B79600137E7B600164478E0010A3BAE001766A9E0013E0A3E0010153FE0011E2241001267CA1001121CE1001444D910016FD5D100143A4B100111F9710015299F100110C9090014331890015E60490014C0049",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Sound.Sound0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "my_fancy_application:inst1|PSAC:psac_inst|altsyncram:Mux1_rtl_0|altsyncram_37v:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 25,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X66_Y42_N13
\inst1|xl[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[6]~27_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(6));

-- Location: FF_X66_Y42_N11
\inst1|xl[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[5]~25_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(5));

-- Location: FF_X66_Y42_N7
\inst1|xl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[3]~21_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(3));

-- Location: LCCOMB_X66_Y42_N6
\inst1|xl[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[3]~21_combout\ = (\inst1|xl\(3) & (\inst1|xl[2]~20\ & VCC)) # (!\inst1|xl\(3) & (!\inst1|xl[2]~20\))
-- \inst1|xl[3]~22\ = CARRY((!\inst1|xl\(3) & !\inst1|xl[2]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(3),
	datad => VCC,
	cin => \inst1|xl[2]~20\,
	combout => \inst1|xl[3]~21_combout\,
	cout => \inst1|xl[3]~22\);

-- Location: LCCOMB_X66_Y42_N10
\inst1|xl[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[5]~25_combout\ = (\inst1|xl\(5) & (\inst1|xl[4]~24\ & VCC)) # (!\inst1|xl\(5) & (!\inst1|xl[4]~24\))
-- \inst1|xl[5]~26\ = CARRY((!\inst1|xl\(5) & !\inst1|xl[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(5),
	datad => VCC,
	cin => \inst1|xl[4]~24\,
	combout => \inst1|xl[5]~25_combout\,
	cout => \inst1|xl[5]~26\);

-- Location: LCCOMB_X66_Y42_N12
\inst1|xl[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[6]~27_combout\ = (\inst1|xl\(6) & ((GND) # (!\inst1|xl[5]~26\))) # (!\inst1|xl\(6) & (\inst1|xl[5]~26\ $ (GND)))
-- \inst1|xl[6]~28\ = CARRY((\inst1|xl\(6)) # (!\inst1|xl[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(6),
	datad => VCC,
	cin => \inst1|xl[5]~26\,
	combout => \inst1|xl[6]~27_combout\,
	cout => \inst1|xl[6]~28\);

-- Location: FF_X68_Y42_N11
\inst1|xm[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[6]~20_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(6));

-- Location: FF_X68_Y42_N7
\inst1|xm[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[4]~16_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(4));

-- Location: LCCOMB_X68_Y42_N6
\inst1|xm[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[4]~16_combout\ = (\inst1|xm\(4) & (\inst1|xm[4]~15_cout\ $ (GND))) # (!\inst1|xm\(4) & (!\inst1|xm[4]~15_cout\ & VCC))
-- \inst1|xm[4]~17\ = CARRY((\inst1|xm\(4) & !\inst1|xm[4]~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(4),
	datad => VCC,
	cin => \inst1|xm[4]~15_cout\,
	combout => \inst1|xm[4]~16_combout\,
	cout => \inst1|xm[4]~17\);

-- Location: LCCOMB_X68_Y42_N10
\inst1|xm[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[6]~20_combout\ = (\inst1|xm\(6) & (\inst1|xm[5]~19\ $ (GND))) # (!\inst1|xm\(6) & (!\inst1|xm[5]~19\ & VCC))
-- \inst1|xm[6]~21\ = CARRY((\inst1|xm\(6) & !\inst1|xm[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(6),
	datad => VCC,
	cin => \inst1|xm[5]~19\,
	combout => \inst1|xm[6]~20_combout\,
	cout => \inst1|xm[6]~21\);

-- Location: LCCOMB_X68_Y42_N26
\inst1|xm[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[14]~36_combout\ = (\inst1|xm\(14) & (\inst1|xm[13]~35\ $ (GND))) # (!\inst1|xm\(14) & (!\inst1|xm[13]~35\ & VCC))
-- \inst1|xm[14]~37\ = CARRY((\inst1|xm\(14) & !\inst1|xm[13]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(14),
	datad => VCC,
	cin => \inst1|xm[13]~35\,
	combout => \inst1|xm[14]~36_combout\,
	cout => \inst1|xm[14]~37\);

-- Location: FF_X70_Y42_N7
\inst1|xr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[5]~20_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(5));

-- Location: LCCOMB_X70_Y42_N6
\inst1|xr[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[5]~20_combout\ = (\inst1|xr\(5) & (!\inst1|xr[4]~19\)) # (!\inst1|xr\(5) & ((\inst1|xr[4]~19\) # (GND)))
-- \inst1|xr[5]~21\ = CARRY((!\inst1|xr[4]~19\) # (!\inst1|xr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xr\(5),
	datad => VCC,
	cin => \inst1|xr[4]~19\,
	combout => \inst1|xr[5]~20_combout\,
	cout => \inst1|xr[5]~21\);

-- Location: FF_X69_Y42_N13
\inst1|x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux12~0_combout\,
	asdata => \inst1|xr\(3),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(3));

-- Location: FF_X67_Y42_N11
\inst1|x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux11~0_combout\,
	asdata => \inst1|xr\(4),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(4));

-- Location: FF_X69_Y42_N7
\inst1|x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux10~0_combout\,
	asdata => \inst1|xr\(5),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(5));

-- Location: FF_X67_Y42_N13
\inst1|x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux9~0_combout\,
	asdata => \inst1|xr\(6),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(6));

-- Location: FF_X72_Y42_N13
\instSndDrv|inst_ctrl|cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[0]~27_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(0));

-- Location: FF_X72_Y40_N7
\instSndDrv|inst_left|TXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~3_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(13));

-- Location: FF_X67_Y40_N23
\inst1|al[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~32_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(13));

-- Location: FF_X66_Y40_N27
\inst1|am[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~32_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(13));

-- Location: FF_X66_Y40_N13
\inst1|am[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~33_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(12));

-- Location: FF_X66_Y40_N15
\inst1|am[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~34_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(11));

-- Location: FF_X67_Y40_N13
\inst1|al[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~37_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(8));

-- Location: FF_X67_Y40_N11
\inst1|al[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~38_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(7));

-- Location: FF_X67_Y40_N9
\inst1|al[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~39_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(6));

-- Location: FF_X67_Y40_N7
\inst1|al[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~40_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(5));

-- Location: FF_X66_Y40_N11
\inst1|am[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~40_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(5));

-- Location: FF_X69_Y40_N31
\instSndDrv|inst_left|RXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(14),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(15));

-- Location: FF_X69_Y40_N29
\instSndDrv|inst_left|RXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(13),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(14));

-- Location: FF_X69_Y40_N27
\instSndDrv|inst_left|RXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(12),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(13));

-- Location: FF_X69_Y40_N25
\instSndDrv|inst_left|RXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(11),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(12));

-- Location: FF_X69_Y40_N23
\instSndDrv|inst_left|RXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(10),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(11));

-- Location: LCCOMB_X68_Y40_N12
\inst1|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~28_combout\ = (\SW[7]~input_o\ & \inst1|Add4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst1|Add4~20_combout\,
	combout => \inst1|Add4~28_combout\);

-- Location: LCCOMB_X68_Y40_N6
\inst1|Add4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~29_combout\ = (\SW[7]~input_o\ & \inst1|Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst1|Add4~18_combout\,
	combout => \inst1|Add4~29_combout\);

-- Location: LCCOMB_X68_Y40_N16
\inst1|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~30_combout\ = (\SW[7]~input_o\ & \inst1|Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst1|Add4~16_combout\,
	combout => \inst1|Add4~30_combout\);

-- Location: LCCOMB_X68_Y40_N2
\inst1|Add4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~31_combout\ = (\SW[7]~input_o\ & \inst1|Add4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst1|Add4~14_combout\,
	combout => \inst1|Add4~31_combout\);

-- Location: LCCOMB_X68_Y40_N0
\inst1|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~34_combout\ = (\SW[7]~input_o\ & \inst1|Add4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst1|Add4~8_combout\,
	combout => \inst1|Add4~34_combout\);

-- Location: LCCOMB_X68_Y40_N20
\inst1|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~36_combout\ = (\SW[7]~input_o\ & \inst1|Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst1|Add4~4_combout\,
	combout => \inst1|Add4~36_combout\);

-- Location: LCCOMB_X68_Y40_N14
\inst1|Add4~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~37_combout\ = (\inst1|Add4~2_combout\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add4~2_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst1|Add4~37_combout\);

-- Location: LCCOMB_X68_Y40_N8
\inst1|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~38_combout\ = (\inst1|Add4~0_combout\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add4~0_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst1|Add4~38_combout\);

-- Location: FF_X67_Y41_N23
\inst1|ar[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~31_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(14));

-- Location: FF_X67_Y41_N21
\inst1|ar[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~32_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(13));

-- Location: FF_X67_Y41_N13
\inst1|ar[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~36_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(9));

-- Location: FF_X67_Y41_N11
\inst1|ar[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~37_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(8));

-- Location: FF_X67_Y41_N7
\inst1|ar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~39_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(6));

-- Location: FF_X69_Y41_N31
\instSndDrv|inst_right|RXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(14),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(15));

-- Location: LCCOMB_X68_Y41_N10
\inst1|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~28_combout\ = (\SW[6]~input_o\ & \inst1|Add5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst1|Add5~20_combout\,
	combout => \inst1|Add5~28_combout\);

-- Location: LCCOMB_X68_Y41_N4
\inst1|Add5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~29_combout\ = (\SW[6]~input_o\ & \inst1|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst1|Add5~18_combout\,
	combout => \inst1|Add5~29_combout\);

-- Location: LCCOMB_X68_Y41_N14
\inst1|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~30_combout\ = (\SW[6]~input_o\ & \inst1|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst1|Add5~16_combout\,
	combout => \inst1|Add5~30_combout\);

-- Location: LCCOMB_X68_Y41_N16
\inst1|Add5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~31_combout\ = (\inst1|Add5~14_combout\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add5~14_combout\,
	datad => \SW[6]~input_o\,
	combout => \inst1|Add5~31_combout\);

-- Location: LCCOMB_X68_Y41_N20
\inst1|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~34_combout\ = (\SW[6]~input_o\ & \inst1|Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst1|Add5~8_combout\,
	combout => \inst1|Add5~34_combout\);

-- Location: LCCOMB_X68_Y41_N8
\inst1|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~36_combout\ = (\inst1|Add5~4_combout\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add5~4_combout\,
	datad => \SW[6]~input_o\,
	combout => \inst1|Add5~36_combout\);

-- Location: LCCOMB_X68_Y41_N2
\inst1|Add5~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~37_combout\ = (\inst1|Add5~2_combout\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add5~2_combout\,
	datad => \SW[6]~input_o\,
	combout => \inst1|Add5~37_combout\);

-- Location: LCCOMB_X68_Y41_N12
\inst1|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~38_combout\ = (\SW[6]~input_o\ & \inst1|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst1|Add5~0_combout\,
	combout => \inst1|Add5~38_combout\);

-- Location: FF_X72_Y40_N1
\instSndDrv|inst_left|TXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~4_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(12));

-- Location: FF_X70_Y40_N27
\inst1|LDAC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~2_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(13));

-- Location: LCCOMB_X72_Y40_N6
\instSndDrv|inst_left|TXReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~3_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(12))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(12),
	datac => \inst1|LDAC\(13),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~3_combout\);

-- Location: LCCOMB_X66_Y40_N26
\inst1|psac_inst|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~32_combout\ = (\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Add1~24_combout\))) # (!\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Res_2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Res_2\(13),
	datab => \inst1|psac_inst|Add1~24_combout\,
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~32_combout\);

-- Location: FF_X72_Y38_N3
\inst1|noise[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|noise\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(0));

-- Location: FF_X72_Y40_N19
\instSndDrv|inst_left|TXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~5_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(11));

-- Location: FF_X70_Y38_N17
\inst1|LDAC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~3_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(12));

-- Location: LCCOMB_X72_Y40_N0
\instSndDrv|inst_left|TXReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~4_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(11))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(11),
	datac => \inst1|LDAC\(12),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~4_combout\);

-- Location: LCCOMB_X70_Y40_N26
\inst1|LDAC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~2_combout\ = (\inst1|process_1~0_combout\ & (\inst1|Add6~26_combout\ & (!\SW[5]~input_o\))) # (!\inst1|process_1~0_combout\ & (((!\inst1|noise\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~26_combout\,
	datab => \inst1|process_1~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \inst1|noise\(15),
	combout => \inst1|LDAC~2_combout\);

-- Location: LCCOMB_X66_Y41_N10
\inst1|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux26~1_combout\ = (\inst1|state_counter\(1) & \inst1|state_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(1),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux26~1_combout\);

-- Location: FF_X72_Y38_N5
\inst1|noise[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(1));

-- Location: FF_X70_Y38_N11
\inst1|RDAC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~3_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(12));

-- Location: FF_X72_Y40_N13
\instSndDrv|inst_left|TXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~6_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(10));

-- Location: FF_X70_Y38_N29
\inst1|LDAC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~4_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(11));

-- Location: LCCOMB_X72_Y40_N18
\instSndDrv|inst_left|TXReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~5_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(10))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(10),
	datac => \inst1|LDAC\(11),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~5_combout\);

-- Location: LCCOMB_X70_Y38_N16
\inst1|LDAC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~3_combout\ = (\inst1|process_1~0_combout\ & (\inst1|Add6~24_combout\ & (!\SW[5]~input_o\))) # (!\inst1|process_1~0_combout\ & (((!\inst1|noise\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|Add6~24_combout\,
	datac => \SW[5]~input_o\,
	datad => \inst1|noise\(15),
	combout => \inst1|LDAC~3_combout\);

-- Location: FF_X72_Y38_N7
\inst1|noise[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|noise\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(2));

-- Location: LCCOMB_X70_Y38_N10
\inst1|RDAC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~3_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(15))))) # (!\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & (\inst1|Add7~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|Add7~24_combout\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|noise\(15),
	combout => \inst1|RDAC~3_combout\);

-- Location: FF_X70_Y38_N15
\inst1|RDAC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~4_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(11));

-- Location: FF_X72_Y40_N23
\instSndDrv|inst_left|TXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~7_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(9));

-- Location: FF_X70_Y40_N29
\inst1|LDAC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~5_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(10));

-- Location: LCCOMB_X72_Y40_N12
\instSndDrv|inst_left|TXReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~6_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(9)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|LDAC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LDAC\(10),
	datac => \instSndDrv|inst_left|TXReg\(9),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~6_combout\);

-- Location: LCCOMB_X70_Y38_N28
\inst1|LDAC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~4_combout\ = (\inst1|process_1~0_combout\ & (((!\SW[5]~input_o\ & \inst1|Add6~22_combout\)))) # (!\inst1|process_1~0_combout\ & (!\inst1|noise\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(15),
	datac => \SW[5]~input_o\,
	datad => \inst1|Add6~22_combout\,
	combout => \inst1|LDAC~4_combout\);

-- Location: FF_X69_Y38_N5
\inst1|noise[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(3));

-- Location: LCCOMB_X70_Y38_N14
\inst1|RDAC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~4_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(15))))) # (!\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & (\inst1|Add7~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|Add7~22_combout\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|noise\(15),
	combout => \inst1|RDAC~4_combout\);

-- Location: FF_X72_Y40_N9
\instSndDrv|inst_left|TXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~8_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(8));

-- Location: FF_X70_Y41_N31
\inst1|LDAC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~6_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(9));

-- Location: LCCOMB_X72_Y40_N22
\instSndDrv|inst_left|TXReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~7_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(8))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(8),
	datac => \inst1|LDAC\(9),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~7_combout\);

-- Location: LCCOMB_X70_Y40_N28
\inst1|LDAC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~5_combout\ = (\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & ((\inst1|Add6~20_combout\)))) # (!\inst1|process_1~0_combout\ & (((!\inst1|noise\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|noise\(14),
	datad => \inst1|Add6~20_combout\,
	combout => \inst1|LDAC~5_combout\);

-- Location: FF_X69_Y38_N7
\inst1|noise[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(4));

-- Location: FF_X72_Y40_N27
\instSndDrv|inst_left|TXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~9_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(7));

-- Location: FF_X70_Y41_N5
\inst1|LDAC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~7_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(8));

-- Location: LCCOMB_X72_Y40_N8
\instSndDrv|inst_left|TXReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~8_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(7)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|LDAC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LDAC\(8),
	datac => \instSndDrv|inst_left|TXReg\(7),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~8_combout\);

-- Location: LCCOMB_X70_Y41_N30
\inst1|LDAC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~6_combout\ = (\inst1|process_1~0_combout\ & (((!\SW[5]~input_o\ & \inst1|Add6~18_combout\)))) # (!\inst1|process_1~0_combout\ & (!\inst1|noise\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(13),
	datac => \SW[5]~input_o\,
	datad => \inst1|Add6~18_combout\,
	combout => \inst1|LDAC~6_combout\);

-- Location: LCCOMB_X69_Y42_N12
\inst1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = (\inst1|state_counter\(0) & ((\inst1|xl\(3)))) # (!\inst1|state_counter\(0) & (\inst1|xl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(1),
	datab => \inst1|xl\(3),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux12~0_combout\);

-- Location: LCCOMB_X67_Y42_N10
\inst1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = (\inst1|state_counter\(0) & ((\inst1|xl\(4)))) # (!\inst1|state_counter\(0) & (\inst1|xm\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(4),
	datab => \inst1|state_counter\(0),
	datad => \inst1|xl\(4),
	combout => \inst1|Mux11~0_combout\);

-- Location: LCCOMB_X69_Y42_N6
\inst1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = (\inst1|state_counter\(0) & ((\inst1|xl\(5)))) # (!\inst1|state_counter\(0) & (\inst1|xm\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(5),
	datab => \inst1|xl\(5),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux10~0_combout\);

-- Location: LCCOMB_X67_Y42_N12
\inst1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\inst1|state_counter\(0) & (\inst1|xl\(6))) # (!\inst1|state_counter\(0) & ((\inst1|xm\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(6),
	datab => \inst1|xm\(6),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux9~0_combout\);

-- Location: FF_X69_Y38_N25
\inst1|noise[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|noise\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(5));

-- Location: FF_X74_Y38_N23
\instSndDrv|inst_right|TXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~9_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(7));

-- Location: FF_X72_Y40_N21
\instSndDrv|inst_left|TXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~10_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(6));

-- Location: FF_X70_Y41_N11
\inst1|LDAC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~8_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(7));

-- Location: LCCOMB_X72_Y40_N26
\instSndDrv|inst_left|TXReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~9_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(6))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(6),
	datac => \inst1|LDAC\(7),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~9_combout\);

-- Location: LCCOMB_X70_Y41_N4
\inst1|LDAC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~7_combout\ = (\inst1|process_1~0_combout\ & (\inst1|Add6~16_combout\ & (!\SW[5]~input_o\))) # (!\inst1|process_1~0_combout\ & (((!\inst1|noise\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|Add6~16_combout\,
	datac => \SW[5]~input_o\,
	datad => \inst1|noise\(12),
	combout => \inst1|LDAC~7_combout\);

-- Location: FF_X69_Y38_N27
\inst1|noise[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|noise\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(6));

-- Location: FF_X70_Y41_N29
\inst1|RDAC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~8_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(7));

-- Location: FF_X74_Y38_N17
\instSndDrv|inst_right|TXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~10_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(6));

-- Location: LCCOMB_X74_Y38_N22
\instSndDrv|inst_right|TXReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~9_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(7))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RDAC\(7),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|TXReg\(6),
	combout => \instSndDrv|inst_right|TXReg~9_combout\);

-- Location: FF_X72_Y40_N15
\instSndDrv|inst_left|TXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~11_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(5));

-- Location: FF_X70_Y41_N23
\inst1|LDAC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~9_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(6));

-- Location: LCCOMB_X72_Y40_N20
\instSndDrv|inst_left|TXReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~10_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(5))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(5),
	datac => \inst1|LDAC\(6),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~10_combout\);

-- Location: LCCOMB_X70_Y41_N10
\inst1|LDAC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~8_combout\ = (\inst1|process_1~0_combout\ & (((!\SW[5]~input_o\ & \inst1|Add6~14_combout\)))) # (!\inst1|process_1~0_combout\ & (!\inst1|noise\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(11),
	datac => \SW[5]~input_o\,
	datad => \inst1|Add6~14_combout\,
	combout => \inst1|LDAC~8_combout\);

-- Location: LCCOMB_X70_Y41_N28
\inst1|RDAC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~8_combout\ = (\inst1|process_1~0_combout\ & (!\inst1|noise\(11))) # (!\inst1|process_1~0_combout\ & (((!\SW[5]~input_o\ & \inst1|Add7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(11),
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~14_combout\,
	combout => \inst1|RDAC~8_combout\);

-- Location: FF_X72_Y41_N27
\inst1|RDAC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~9_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(6));

-- Location: FF_X74_Y38_N27
\instSndDrv|inst_right|TXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~11_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(5));

-- Location: LCCOMB_X74_Y38_N16
\instSndDrv|inst_right|TXReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~10_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|RDAC\(6)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(5),
	datab => \inst1|RDAC\(6),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~10_combout\);

-- Location: FF_X72_Y40_N17
\instSndDrv|inst_left|TXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~12_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(4));

-- Location: FF_X72_Y41_N5
\inst1|LDAC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~10_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(5));

-- Location: LCCOMB_X72_Y40_N14
\instSndDrv|inst_left|TXReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~11_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(4))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_left|TXReg\(4),
	datad => \inst1|LDAC\(5),
	combout => \instSndDrv|inst_left|TXReg~11_combout\);

-- Location: LCCOMB_X70_Y41_N22
\inst1|LDAC~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~9_combout\ = (\inst1|process_1~0_combout\ & (\inst1|Add6~12_combout\ & (!\SW[5]~input_o\))) # (!\inst1|process_1~0_combout\ & (((!\inst1|noise\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|Add6~12_combout\,
	datac => \SW[5]~input_o\,
	datad => \inst1|noise\(10),
	combout => \inst1|LDAC~9_combout\);

-- Location: LCCOMB_X72_Y41_N26
\inst1|RDAC~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~9_combout\ = (\inst1|process_1~0_combout\ & (!\inst1|noise\(10))) # (!\inst1|process_1~0_combout\ & (((\inst1|Add7~12_combout\ & !\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(10),
	datac => \inst1|Add7~12_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|RDAC~9_combout\);

-- Location: FF_X72_Y41_N7
\inst1|RDAC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~10_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(5));

-- Location: FF_X74_Y38_N21
\instSndDrv|inst_right|TXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~12_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(4));

-- Location: LCCOMB_X74_Y38_N26
\instSndDrv|inst_right|TXReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~11_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(5))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst1|RDAC\(5),
	datad => \instSndDrv|inst_right|TXReg\(4),
	combout => \instSndDrv|inst_right|TXReg~11_combout\);

-- Location: FF_X72_Y40_N11
\instSndDrv|inst_left|TXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~13_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(3));

-- Location: FF_X72_Y41_N9
\inst1|LDAC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~11_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(4));

-- Location: LCCOMB_X72_Y40_N16
\instSndDrv|inst_left|TXReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~12_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(3))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(3),
	datab => \inst1|LDAC\(4),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~12_combout\);

-- Location: LCCOMB_X72_Y41_N4
\inst1|LDAC~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~10_combout\ = (\inst1|process_1~0_combout\ & (((\inst1|Add6~10_combout\ & !\SW[5]~input_o\)))) # (!\inst1|process_1~0_combout\ & (!\inst1|noise\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(9),
	datac => \inst1|Add6~10_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|LDAC~10_combout\);

-- Location: LCCOMB_X72_Y41_N6
\inst1|RDAC~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~10_combout\ = (\inst1|process_1~0_combout\ & (!\inst1|noise\(9))) # (!\inst1|process_1~0_combout\ & (((\inst1|Add7~10_combout\ & !\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(9),
	datac => \inst1|Add7~10_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|RDAC~10_combout\);

-- Location: FF_X72_Y41_N3
\inst1|RDAC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~11_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(4));

-- Location: FF_X74_Y38_N31
\instSndDrv|inst_right|TXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~13_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(3));

-- Location: LCCOMB_X74_Y38_N20
\instSndDrv|inst_right|TXReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~12_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|RDAC\(4)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(3),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst1|RDAC\(4),
	combout => \instSndDrv|inst_right|TXReg~12_combout\);

-- Location: FF_X72_Y40_N29
\instSndDrv|inst_left|TXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~14_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(2));

-- Location: FF_X72_Y41_N21
\inst1|LDAC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~12_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(3));

-- Location: LCCOMB_X72_Y40_N10
\instSndDrv|inst_left|TXReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(2)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|LDAC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LDAC\(3),
	datab => \instSndDrv|inst_left|TXReg\(2),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~13_combout\);

-- Location: LCCOMB_X72_Y41_N8
\inst1|LDAC~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~11_combout\ = (\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & (\inst1|Add6~8_combout\))) # (!\inst1|process_1~0_combout\ & (((!\inst1|noise\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \inst1|Add6~8_combout\,
	datad => \inst1|noise\(8),
	combout => \inst1|LDAC~11_combout\);

-- Location: LCCOMB_X72_Y41_N2
\inst1|RDAC~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~11_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(8))))) # (!\inst1|process_1~0_combout\ & (\inst1|Add7~8_combout\ & (!\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add7~8_combout\,
	datab => \SW[5]~input_o\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|noise\(8),
	combout => \inst1|RDAC~11_combout\);

-- Location: FF_X72_Y41_N23
\inst1|RDAC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~12_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(3));

-- Location: FF_X74_Y38_N25
\instSndDrv|inst_right|TXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~14_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(2));

-- Location: LCCOMB_X74_Y38_N30
\instSndDrv|inst_right|TXReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(3))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RDAC\(3),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|TXReg\(2),
	combout => \instSndDrv|inst_right|TXReg~13_combout\);

-- Location: FF_X72_Y40_N31
\instSndDrv|inst_left|TXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~15_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(1));

-- Location: FF_X69_Y38_N13
\inst1|LDAC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~13_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(2));

-- Location: LCCOMB_X72_Y40_N28
\instSndDrv|inst_left|TXReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~14_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(1))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(1),
	datac => \inst1|LDAC\(2),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~14_combout\);

-- Location: LCCOMB_X72_Y41_N20
\inst1|LDAC~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~12_combout\ = (\inst1|process_1~0_combout\ & (\inst1|Add6~6_combout\ & (!\SW[5]~input_o\))) # (!\inst1|process_1~0_combout\ & (((!\inst1|noise\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~6_combout\,
	datab => \SW[5]~input_o\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|noise\(7),
	combout => \inst1|LDAC~12_combout\);

-- Location: LCCOMB_X72_Y41_N22
\inst1|RDAC~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~12_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(7))))) # (!\inst1|process_1~0_combout\ & (\inst1|Add7~6_combout\ & (!\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add7~6_combout\,
	datab => \SW[5]~input_o\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|noise\(7),
	combout => \inst1|RDAC~12_combout\);

-- Location: FF_X69_Y38_N23
\inst1|RDAC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~13_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(2));

-- Location: FF_X74_Y38_N11
\instSndDrv|inst_right|TXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~15_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(1));

-- Location: LCCOMB_X74_Y38_N24
\instSndDrv|inst_right|TXReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~14_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(2))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RDAC\(2),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|TXReg\(1),
	combout => \instSndDrv|inst_right|TXReg~14_combout\);

-- Location: FF_X70_Y37_N5
\instSndDrv|inst_left|TXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg[0]~17_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(0));

-- Location: FF_X69_Y38_N17
\inst1|LDAC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~14_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(1));

-- Location: LCCOMB_X72_Y40_N30
\instSndDrv|inst_left|TXReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~15_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(0)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|LDAC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LDAC\(1),
	datac => \instSndDrv|inst_left|TXReg\(0),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~15_combout\);

-- Location: LCCOMB_X69_Y38_N12
\inst1|LDAC~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~13_combout\ = (\inst1|process_1~0_combout\ & (\inst1|Add6~4_combout\ & ((!\SW[5]~input_o\)))) # (!\inst1|process_1~0_combout\ & (((!\inst1|noise\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~4_combout\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|noise\(6),
	datad => \SW[5]~input_o\,
	combout => \inst1|LDAC~13_combout\);

-- Location: LCCOMB_X69_Y38_N22
\inst1|RDAC~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~13_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(6))))) # (!\inst1|process_1~0_combout\ & (\inst1|Add7~4_combout\ & ((!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|Add7~4_combout\,
	datac => \inst1|noise\(6),
	datad => \SW[5]~input_o\,
	combout => \inst1|RDAC~13_combout\);

-- Location: FF_X69_Y38_N19
\inst1|RDAC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~14_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(1));

-- Location: FF_X74_Y38_N29
\instSndDrv|inst_right|TXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg[0]~17_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(0));

-- Location: LCCOMB_X74_Y38_N10
\instSndDrv|inst_right|TXReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~15_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(1))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RDAC\(1),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|TXReg\(0),
	combout => \instSndDrv|inst_right|TXReg~15_combout\);

-- Location: FF_X69_Y38_N21
\inst1|LDAC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~15_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(0));

-- Location: LCCOMB_X70_Y37_N6
\instSndDrv|inst_left|TXReg[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg[0]~16_combout\ = (\inst1|DAC_en~q\ & ((\inst1|LDAC\(0)))) # (!\inst1|DAC_en~q\ & (\instSndDrv|inst_left|TXReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(0),
	datac => \inst1|LDAC\(0),
	datad => \inst1|DAC_en~q\,
	combout => \instSndDrv|inst_left|TXReg[0]~16_combout\);

-- Location: LCCOMB_X70_Y37_N4
\instSndDrv|inst_left|TXReg[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg[0]~17_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (((\instSndDrv|inst_left|TXReg\(0) & !\instSndDrv|inst_right|tx~0_combout\)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg[0]~16_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|TXReg\(0),
	datad => \instSndDrv|inst_right|tx~0_combout\,
	combout => \instSndDrv|inst_left|TXReg[0]~17_combout\);

-- Location: LCCOMB_X69_Y38_N16
\inst1|LDAC~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~14_combout\ = (\inst1|process_1~0_combout\ & (((\inst1|Add6~2_combout\ & !\SW[5]~input_o\)))) # (!\inst1|process_1~0_combout\ & (!\inst1|noise\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(5),
	datac => \inst1|Add6~2_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|LDAC~14_combout\);

-- Location: LCCOMB_X69_Y38_N18
\inst1|RDAC~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~14_combout\ = (\inst1|process_1~0_combout\ & (!\inst1|noise\(5))) # (!\inst1|process_1~0_combout\ & (((\inst1|Add7~2_combout\ & !\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(5),
	datac => \inst1|Add7~2_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|RDAC~14_combout\);

-- Location: LCCOMB_X74_Y38_N6
\instSndDrv|inst_right|TXReg[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg[13]~16_combout\ = (\inst1|DAC_en~q\ & \instSndDrv|inst_ctrl|cntr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DAC_en~q\,
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg[13]~16_combout\);

-- Location: FF_X69_Y38_N15
\inst1|RDAC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~15_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(0));

-- Location: LCCOMB_X74_Y38_N28
\instSndDrv|inst_right|TXReg[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg[0]~17_combout\ = (\instSndDrv|inst_right|TXReg[13]~1_combout\ & (\inst1|RDAC\(0) & ((\instSndDrv|inst_right|TXReg[13]~16_combout\)))) # (!\instSndDrv|inst_right|TXReg[13]~1_combout\ & ((\instSndDrv|inst_right|TXReg\(0)) # 
-- ((\inst1|RDAC\(0) & \instSndDrv|inst_right|TXReg[13]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	datab => \inst1|RDAC\(0),
	datac => \instSndDrv|inst_right|TXReg\(0),
	datad => \instSndDrv|inst_right|TXReg[13]~16_combout\,
	combout => \instSndDrv|inst_right|TXReg[0]~17_combout\);

-- Location: LCCOMB_X69_Y38_N20
\inst1|LDAC~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~15_combout\ = (\inst1|process_1~0_combout\ & (((\inst1|Add6~0_combout\ & !\SW[5]~input_o\)))) # (!\inst1|process_1~0_combout\ & (!\inst1|noise\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|noise\(4),
	datab => \inst1|Add6~0_combout\,
	datac => \inst1|process_1~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|LDAC~15_combout\);

-- Location: LCCOMB_X69_Y38_N14
\inst1|RDAC~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~15_combout\ = (\inst1|process_1~0_combout\ & (!\inst1|noise\(4))) # (!\inst1|process_1~0_combout\ & (((\inst1|Add7~0_combout\ & !\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|noise\(4),
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|Add7~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|RDAC~15_combout\);

-- Location: LCCOMB_X72_Y42_N12
\instSndDrv|inst_ctrl|cntr[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[0]~27_combout\ = !\instSndDrv|inst_ctrl|cntr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instSndDrv|inst_ctrl|cntr\(0),
	combout => \instSndDrv|inst_ctrl|cntr[0]~27_combout\);

-- Location: LCCOMB_X72_Y38_N4
\inst1|noise[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise[1]~feeder_combout\ = \inst1|noise\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|noise\(2),
	combout => \inst1|noise[1]~feeder_combout\);

-- Location: LCCOMB_X69_Y38_N4
\inst1|noise[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise[3]~feeder_combout\ = \inst1|noise\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|noise\(4),
	combout => \inst1|noise[3]~feeder_combout\);

-- Location: LCCOMB_X69_Y38_N6
\inst1|noise[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise[4]~feeder_combout\ = \inst1|noise\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|noise\(5),
	combout => \inst1|noise[4]~feeder_combout\);

-- Location: IOOBUF_X0_Y61_N23
\mclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst_ctrl|ALT_INV_cntr\(1),
	devoe => ww_devoe,
	o => \mclk~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\bclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst_ctrl|cntr\(3),
	devoe => ww_devoe,
	o => \bclk~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\adclrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst_ctrl|cntr\(9),
	devoe => ww_devoe,
	o => \adclrc~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\daclrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst_ctrl|cntr\(9),
	devoe => ww_devoe,
	o => \daclrc~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\dacdat~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst1|dacdatout~0_combout\,
	devoe => ww_devoe,
	o => \dacdat~output_o\);

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

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LEDR\(0),
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
	i => \inst1|LEDR\(1),
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
	i => \inst1|LEDR\(2),
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
	i => \inst1|LEDR\(3),
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
	i => \inst1|LEDR\(4),
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
	i => \inst1|LEDR\(5),
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
	i => \inst1|LEDR\(6),
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
	i => \inst1|LEDR\(7),
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
	i => \inst1|LEDR\(8),
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
	i => \inst1|LEDR\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LEDR\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LEDR\(11),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LEDR\(12),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LEDR\(13),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LEDR\(14),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LEDR\(15),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LEDR\(16),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LEDR\(17),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

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

-- Location: LCCOMB_X73_Y42_N4
\instSndDrv|inst_ctrl|cntr[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[1]~9_combout\ = (\instSndDrv|inst_ctrl|cntr\(0) & (\instSndDrv|inst_ctrl|cntr\(1) $ (VCC))) # (!\instSndDrv|inst_ctrl|cntr\(0) & (\instSndDrv|inst_ctrl|cntr\(1) & VCC))
-- \instSndDrv|inst_ctrl|cntr[1]~10\ = CARRY((\instSndDrv|inst_ctrl|cntr\(0) & \instSndDrv|inst_ctrl|cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(0),
	datab => \instSndDrv|inst_ctrl|cntr\(1),
	datad => VCC,
	combout => \instSndDrv|inst_ctrl|cntr[1]~9_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[1]~10\);

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

-- Location: FF_X73_Y42_N5
\instSndDrv|inst_ctrl|cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[1]~9_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(1));

-- Location: LCCOMB_X73_Y42_N6
\instSndDrv|inst_ctrl|cntr[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[2]~11_combout\ = (\instSndDrv|inst_ctrl|cntr\(2) & (!\instSndDrv|inst_ctrl|cntr[1]~10\)) # (!\instSndDrv|inst_ctrl|cntr\(2) & ((\instSndDrv|inst_ctrl|cntr[1]~10\) # (GND)))
-- \instSndDrv|inst_ctrl|cntr[2]~12\ = CARRY((!\instSndDrv|inst_ctrl|cntr[1]~10\) # (!\instSndDrv|inst_ctrl|cntr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(2),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[1]~10\,
	combout => \instSndDrv|inst_ctrl|cntr[2]~11_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[2]~12\);

-- Location: LCCOMB_X73_Y42_N8
\instSndDrv|inst_ctrl|cntr[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[3]~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(3) & (\instSndDrv|inst_ctrl|cntr[2]~12\ $ (GND))) # (!\instSndDrv|inst_ctrl|cntr\(3) & (!\instSndDrv|inst_ctrl|cntr[2]~12\ & VCC))
-- \instSndDrv|inst_ctrl|cntr[3]~14\ = CARRY((\instSndDrv|inst_ctrl|cntr\(3) & !\instSndDrv|inst_ctrl|cntr[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(3),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[2]~12\,
	combout => \instSndDrv|inst_ctrl|cntr[3]~13_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[3]~14\);

-- Location: FF_X73_Y42_N9
\instSndDrv|inst_ctrl|cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[3]~13_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(3));

-- Location: LCCOMB_X73_Y42_N10
\instSndDrv|inst_ctrl|cntr[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[4]~15_combout\ = (\instSndDrv|inst_ctrl|cntr\(4) & (!\instSndDrv|inst_ctrl|cntr[3]~14\)) # (!\instSndDrv|inst_ctrl|cntr\(4) & ((\instSndDrv|inst_ctrl|cntr[3]~14\) # (GND)))
-- \instSndDrv|inst_ctrl|cntr[4]~16\ = CARRY((!\instSndDrv|inst_ctrl|cntr[3]~14\) # (!\instSndDrv|inst_ctrl|cntr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(4),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[3]~14\,
	combout => \instSndDrv|inst_ctrl|cntr[4]~15_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[4]~16\);

-- Location: LCCOMB_X73_Y42_N14
\instSndDrv|inst_ctrl|cntr[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[6]~19_combout\ = (\instSndDrv|inst_ctrl|cntr\(6) & (!\instSndDrv|inst_ctrl|cntr[5]~18\)) # (!\instSndDrv|inst_ctrl|cntr\(6) & ((\instSndDrv|inst_ctrl|cntr[5]~18\) # (GND)))
-- \instSndDrv|inst_ctrl|cntr[6]~20\ = CARRY((!\instSndDrv|inst_ctrl|cntr[5]~18\) # (!\instSndDrv|inst_ctrl|cntr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(6),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[5]~18\,
	combout => \instSndDrv|inst_ctrl|cntr[6]~19_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[6]~20\);

-- Location: FF_X73_Y42_N15
\instSndDrv|inst_ctrl|cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[6]~19_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(6));

-- Location: LCCOMB_X73_Y42_N16
\instSndDrv|inst_ctrl|cntr[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[7]~21_combout\ = (\instSndDrv|inst_ctrl|cntr\(7) & (\instSndDrv|inst_ctrl|cntr[6]~20\ $ (GND))) # (!\instSndDrv|inst_ctrl|cntr\(7) & (!\instSndDrv|inst_ctrl|cntr[6]~20\ & VCC))
-- \instSndDrv|inst_ctrl|cntr[7]~22\ = CARRY((\instSndDrv|inst_ctrl|cntr\(7) & !\instSndDrv|inst_ctrl|cntr[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(7),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[6]~20\,
	combout => \instSndDrv|inst_ctrl|cntr[7]~21_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[7]~22\);

-- Location: FF_X73_Y42_N17
\instSndDrv|inst_ctrl|cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[7]~21_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(7));

-- Location: LCCOMB_X73_Y42_N18
\instSndDrv|inst_ctrl|cntr[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[8]~23_combout\ = (\instSndDrv|inst_ctrl|cntr\(8) & (!\instSndDrv|inst_ctrl|cntr[7]~22\)) # (!\instSndDrv|inst_ctrl|cntr\(8) & ((\instSndDrv|inst_ctrl|cntr[7]~22\) # (GND)))
-- \instSndDrv|inst_ctrl|cntr[8]~24\ = CARRY((!\instSndDrv|inst_ctrl|cntr[7]~22\) # (!\instSndDrv|inst_ctrl|cntr\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(8),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[7]~22\,
	combout => \instSndDrv|inst_ctrl|cntr[8]~23_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[8]~24\);

-- Location: FF_X73_Y42_N19
\instSndDrv|inst_ctrl|cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[8]~23_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(8));

-- Location: LCCOMB_X73_Y42_N20
\instSndDrv|inst_ctrl|cntr[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[9]~25_combout\ = \instSndDrv|inst_ctrl|cntr\(9) $ (!\instSndDrv|inst_ctrl|cntr[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	cin => \instSndDrv|inst_ctrl|cntr[8]~24\,
	combout => \instSndDrv|inst_ctrl|cntr[9]~25_combout\);

-- Location: FF_X73_Y42_N21
\instSndDrv|inst_ctrl|cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[9]~25_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(9));

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X66_Y42_N0
\inst1|xl[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[1]~16_cout\ = CARRY(\inst1|xr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xr\(1),
	datad => VCC,
	cout => \inst1|xl[1]~16_cout\);

-- Location: LCCOMB_X66_Y42_N2
\inst1|xl[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[1]~17_combout\ = (\inst1|xl\(1) & (\inst1|xl[1]~16_cout\ & VCC)) # (!\inst1|xl\(1) & (!\inst1|xl[1]~16_cout\))
-- \inst1|xl[1]~18\ = CARRY((!\inst1|xl\(1) & !\inst1|xl[1]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(1),
	datad => VCC,
	cin => \inst1|xl[1]~16_cout\,
	combout => \inst1|xl[1]~17_combout\,
	cout => \inst1|xl[1]~18\);

-- Location: FF_X73_Y42_N7
\instSndDrv|inst_ctrl|cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[2]~11_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(2));

-- Location: FF_X73_Y42_N11
\instSndDrv|inst_ctrl|cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[4]~15_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(4));

-- Location: LCCOMB_X73_Y42_N24
\instSndDrv|inst_ctrl|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|Equal1~1_combout\ = (!\instSndDrv|inst_ctrl|cntr\(5) & (!\instSndDrv|inst_ctrl|cntr\(7) & (!\instSndDrv|inst_ctrl|cntr\(2) & !\instSndDrv|inst_ctrl|cntr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(5),
	datab => \instSndDrv|inst_ctrl|cntr\(7),
	datac => \instSndDrv|inst_ctrl|cntr\(2),
	datad => \instSndDrv|inst_ctrl|cntr\(4),
	combout => \instSndDrv|inst_ctrl|Equal1~1_combout\);

-- Location: LCCOMB_X73_Y42_N26
\instSndDrv|inst_ctrl|ADC_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|ADC_en~0_combout\ = (\instSndDrv|inst_ctrl|Equal1~0_combout\ & (!\instSndDrv|inst_ctrl|cntr\(6) & \instSndDrv|inst_ctrl|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|Equal1~0_combout\,
	datac => \instSndDrv|inst_ctrl|cntr\(6),
	datad => \instSndDrv|inst_ctrl|Equal1~1_combout\,
	combout => \instSndDrv|inst_ctrl|ADC_en~0_combout\);

-- Location: FF_X66_Y42_N3
\inst1|xl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[1]~17_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(1));

-- Location: LCCOMB_X66_Y42_N4
\inst1|xl[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[2]~19_combout\ = (\inst1|xl\(2) & ((GND) # (!\inst1|xl[1]~18\))) # (!\inst1|xl\(2) & (\inst1|xl[1]~18\ $ (GND)))
-- \inst1|xl[2]~20\ = CARRY((\inst1|xl\(2)) # (!\inst1|xl[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(2),
	datad => VCC,
	cin => \inst1|xl[1]~18\,
	combout => \inst1|xl[2]~19_combout\,
	cout => \inst1|xl[2]~20\);

-- Location: FF_X66_Y42_N5
\inst1|xl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[2]~19_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(2));

-- Location: LCCOMB_X66_Y42_N8
\inst1|xl[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[4]~23_combout\ = (\inst1|xl\(4) & (\inst1|xl[3]~22\ $ (GND))) # (!\inst1|xl\(4) & (!\inst1|xl[3]~22\ & VCC))
-- \inst1|xl[4]~24\ = CARRY((\inst1|xl\(4) & !\inst1|xl[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(4),
	datad => VCC,
	cin => \inst1|xl[3]~22\,
	combout => \inst1|xl[4]~23_combout\,
	cout => \inst1|xl[4]~24\);

-- Location: FF_X66_Y42_N9
\inst1|xl[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[4]~23_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(4));

-- Location: LCCOMB_X66_Y42_N14
\inst1|xl[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[7]~29_combout\ = (\inst1|xl\(7) & (\inst1|xl[6]~28\ & VCC)) # (!\inst1|xl\(7) & (!\inst1|xl[6]~28\))
-- \inst1|xl[7]~30\ = CARRY((!\inst1|xl\(7) & !\inst1|xl[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(7),
	datad => VCC,
	cin => \inst1|xl[6]~28\,
	combout => \inst1|xl[7]~29_combout\,
	cout => \inst1|xl[7]~30\);

-- Location: FF_X66_Y42_N15
\inst1|xl[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[7]~29_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(7));

-- Location: LCCOMB_X66_Y42_N16
\inst1|xl[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[8]~31_combout\ = (\inst1|xl\(8) & ((GND) # (!\inst1|xl[7]~30\))) # (!\inst1|xl\(8) & (\inst1|xl[7]~30\ $ (GND)))
-- \inst1|xl[8]~32\ = CARRY((\inst1|xl\(8)) # (!\inst1|xl[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(8),
	datad => VCC,
	cin => \inst1|xl[7]~30\,
	combout => \inst1|xl[8]~31_combout\,
	cout => \inst1|xl[8]~32\);

-- Location: FF_X66_Y42_N17
\inst1|xl[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[8]~31_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(8));

-- Location: LCCOMB_X73_Y42_N22
\instSndDrv|inst_ctrl|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|Equal1~0_combout\ = (!\instSndDrv|inst_ctrl|cntr\(0) & (!\instSndDrv|inst_ctrl|cntr\(1) & (!\instSndDrv|inst_ctrl|cntr\(3) & !\instSndDrv|inst_ctrl|cntr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(0),
	datab => \instSndDrv|inst_ctrl|cntr\(1),
	datac => \instSndDrv|inst_ctrl|cntr\(3),
	datad => \instSndDrv|inst_ctrl|cntr\(8),
	combout => \instSndDrv|inst_ctrl|Equal1~0_combout\);

-- Location: LCCOMB_X69_Y42_N2
\inst1|state_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state_counter~9_combout\ = (!\inst1|state_counter\(0) & ((\instSndDrv|inst_ctrl|cntr\(6)) # ((!\instSndDrv|inst_ctrl|Equal1~1_combout\) # (!\instSndDrv|inst_ctrl|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(6),
	datab => \instSndDrv|inst_ctrl|Equal1~0_combout\,
	datac => \inst1|state_counter\(0),
	datad => \instSndDrv|inst_ctrl|Equal1~1_combout\,
	combout => \inst1|state_counter~9_combout\);

-- Location: LCCOMB_X69_Y42_N20
\inst1|state_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state_counter~6_combout\ = (!\instSndDrv|inst_ctrl|ADC_en~0_combout\ & (\inst1|state_counter\(0) $ (\inst1|state_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state_counter\(0),
	datac => \inst1|state_counter\(1),
	datad => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	combout => \inst1|state_counter~6_combout\);

-- Location: FF_X69_Y42_N21
\inst1|state_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|state_counter~6_combout\,
	ena => \inst1|state_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state_counter\(1));

-- Location: LCCOMB_X69_Y42_N22
\inst1|state_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state_counter~11_combout\ = (!\instSndDrv|inst_ctrl|ADC_en~0_combout\ & (\inst1|state_counter\(2) $ (((\inst1|state_counter\(0) & \inst1|state_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	datab => \inst1|state_counter\(0),
	datac => \inst1|state_counter\(2),
	datad => \inst1|state_counter\(1),
	combout => \inst1|state_counter~11_combout\);

-- Location: FF_X69_Y42_N23
\inst1|state_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|state_counter~11_combout\,
	ena => \inst1|state_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state_counter\(2));

-- Location: LCCOMB_X66_Y41_N2
\inst1|state_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state_counter~7_combout\ = (!\instSndDrv|inst_ctrl|ADC_en~0_combout\ & ((\inst1|state_counter\(3)) # ((\inst1|Mux26~1_combout\ & \inst1|state_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux26~1_combout\,
	datab => \inst1|state_counter\(2),
	datac => \inst1|state_counter\(3),
	datad => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	combout => \inst1|state_counter~7_combout\);

-- Location: FF_X66_Y41_N3
\inst1|state_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|state_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state_counter\(3));

-- Location: LCCOMB_X69_Y42_N28
\inst1|state_counter[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state_counter[2]~10_combout\ = ((!\instSndDrv|inst_ctrl|cntr\(6) & (\instSndDrv|inst_ctrl|Equal1~0_combout\ & \instSndDrv|inst_ctrl|Equal1~1_combout\))) # (!\inst1|state_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(6),
	datab => \instSndDrv|inst_ctrl|Equal1~0_combout\,
	datac => \inst1|state_counter\(3),
	datad => \instSndDrv|inst_ctrl|Equal1~1_combout\,
	combout => \inst1|state_counter[2]~10_combout\);

-- Location: FF_X69_Y42_N3
\inst1|state_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|state_counter~9_combout\,
	ena => \inst1|state_counter[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state_counter\(0));

-- Location: LCCOMB_X69_Y42_N24
\inst1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst1|state_counter\(0) & ((\inst1|xl\(8)))) # (!\inst1|state_counter\(0) & (\inst1|xm\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(8),
	datab => \inst1|xl\(8),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X70_Y42_N0
\inst1|xr[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[2]~14_combout\ = (\inst1|xr\(1) & (\inst1|xr\(2) $ (VCC))) # (!\inst1|xr\(1) & (\inst1|xr\(2) & VCC))
-- \inst1|xr[2]~15\ = CARRY((\inst1|xr\(1) & \inst1|xr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xr\(1),
	datab => \inst1|xr\(2),
	datad => VCC,
	combout => \inst1|xr[2]~14_combout\,
	cout => \inst1|xr[2]~15\);

-- Location: FF_X70_Y42_N1
\inst1|xr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[2]~14_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(2));

-- Location: LCCOMB_X70_Y42_N2
\inst1|xr[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[3]~16_combout\ = (\inst1|xr\(3) & (!\inst1|xr[2]~15\)) # (!\inst1|xr\(3) & ((\inst1|xr[2]~15\) # (GND)))
-- \inst1|xr[3]~17\ = CARRY((!\inst1|xr[2]~15\) # (!\inst1|xr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xr\(3),
	datad => VCC,
	cin => \inst1|xr[2]~15\,
	combout => \inst1|xr[3]~16_combout\,
	cout => \inst1|xr[3]~17\);

-- Location: FF_X70_Y42_N3
\inst1|xr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[3]~16_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(3));

-- Location: LCCOMB_X70_Y42_N4
\inst1|xr[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[4]~18_combout\ = (\inst1|xr\(4) & ((GND) # (!\inst1|xr[3]~17\))) # (!\inst1|xr\(4) & (\inst1|xr[3]~17\ $ (GND)))
-- \inst1|xr[4]~19\ = CARRY((\inst1|xr\(4)) # (!\inst1|xr[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xr\(4),
	datad => VCC,
	cin => \inst1|xr[3]~17\,
	combout => \inst1|xr[4]~18_combout\,
	cout => \inst1|xr[4]~19\);

-- Location: FF_X70_Y42_N5
\inst1|xr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[4]~18_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(4));

-- Location: LCCOMB_X70_Y42_N8
\inst1|xr[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[6]~22_combout\ = (\inst1|xr\(6) & ((GND) # (!\inst1|xr[5]~21\))) # (!\inst1|xr\(6) & (\inst1|xr[5]~21\ $ (GND)))
-- \inst1|xr[6]~23\ = CARRY((\inst1|xr\(6)) # (!\inst1|xr[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xr\(6),
	datad => VCC,
	cin => \inst1|xr[5]~21\,
	combout => \inst1|xr[6]~22_combout\,
	cout => \inst1|xr[6]~23\);

-- Location: FF_X70_Y42_N9
\inst1|xr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[6]~22_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(6));

-- Location: LCCOMB_X70_Y42_N10
\inst1|xr[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[7]~24_combout\ = (\inst1|xr\(7) & (!\inst1|xr[6]~23\)) # (!\inst1|xr\(7) & ((\inst1|xr[6]~23\) # (GND)))
-- \inst1|xr[7]~25\ = CARRY((!\inst1|xr[6]~23\) # (!\inst1|xr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xr\(7),
	datad => VCC,
	cin => \inst1|xr[6]~23\,
	combout => \inst1|xr[7]~24_combout\,
	cout => \inst1|xr[7]~25\);

-- Location: LCCOMB_X70_Y42_N12
\inst1|xr[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[8]~26_combout\ = (\inst1|xr\(8) & (\inst1|xr[7]~25\ $ (GND))) # (!\inst1|xr\(8) & (!\inst1|xr[7]~25\ & VCC))
-- \inst1|xr[8]~27\ = CARRY((\inst1|xr\(8) & !\inst1|xr[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xr\(8),
	datad => VCC,
	cin => \inst1|xr[7]~25\,
	combout => \inst1|xr[8]~26_combout\,
	cout => \inst1|xr[8]~27\);

-- Location: FF_X70_Y42_N13
\inst1|xr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[8]~26_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(8));

-- Location: LCCOMB_X66_Y41_N20
\inst1|x[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|x[15]~0_combout\ = (!\inst1|state_counter\(3) & (!\inst1|state_counter\(2) & ((!\inst1|state_counter\(0)) # (!\inst1|state_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(1),
	datab => \inst1|state_counter\(3),
	datac => \inst1|state_counter\(2),
	datad => \inst1|state_counter\(0),
	combout => \inst1|x[15]~0_combout\);

-- Location: FF_X69_Y42_N25
\inst1|x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux7~0_combout\,
	asdata => \inst1|xr\(8),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(8));

-- Location: LCCOMB_X66_Y42_N18
\inst1|xl[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[9]~33_combout\ = (\inst1|xl\(9) & (!\inst1|xl[8]~32\)) # (!\inst1|xl\(9) & ((\inst1|xl[8]~32\) # (GND)))
-- \inst1|xl[9]~34\ = CARRY((!\inst1|xl[8]~32\) # (!\inst1|xl\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(9),
	datad => VCC,
	cin => \inst1|xl[8]~32\,
	combout => \inst1|xl[9]~33_combout\,
	cout => \inst1|xl[9]~34\);

-- Location: FF_X66_Y42_N19
\inst1|xl[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[9]~33_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(9));

-- Location: LCCOMB_X66_Y42_N20
\inst1|xl[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[10]~35_combout\ = (\inst1|xl\(10) & (\inst1|xl[9]~34\ $ (GND))) # (!\inst1|xl\(10) & (!\inst1|xl[9]~34\ & VCC))
-- \inst1|xl[10]~36\ = CARRY((\inst1|xl\(10) & !\inst1|xl[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(10),
	datad => VCC,
	cin => \inst1|xl[9]~34\,
	combout => \inst1|xl[10]~35_combout\,
	cout => \inst1|xl[10]~36\);

-- Location: FF_X66_Y42_N21
\inst1|xl[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[10]~35_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(10));

-- Location: LCCOMB_X66_Y42_N22
\inst1|xl[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[11]~37_combout\ = (\inst1|xl\(11) & (!\inst1|xl[10]~36\)) # (!\inst1|xl\(11) & ((\inst1|xl[10]~36\) # (GND)))
-- \inst1|xl[11]~38\ = CARRY((!\inst1|xl[10]~36\) # (!\inst1|xl\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(11),
	datad => VCC,
	cin => \inst1|xl[10]~36\,
	combout => \inst1|xl[11]~37_combout\,
	cout => \inst1|xl[11]~38\);

-- Location: LCCOMB_X66_Y42_N24
\inst1|xl[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[12]~39_combout\ = (\inst1|xl\(12) & (\inst1|xl[11]~38\ $ (GND))) # (!\inst1|xl\(12) & (!\inst1|xl[11]~38\ & VCC))
-- \inst1|xl[12]~40\ = CARRY((\inst1|xl\(12) & !\inst1|xl[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(12),
	datad => VCC,
	cin => \inst1|xl[11]~38\,
	combout => \inst1|xl[12]~39_combout\,
	cout => \inst1|xl[12]~40\);

-- Location: FF_X66_Y42_N25
\inst1|xl[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[12]~39_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(12));

-- Location: LCCOMB_X66_Y42_N26
\inst1|xl[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[13]~41_combout\ = (\inst1|xl\(13) & (!\inst1|xl[12]~40\)) # (!\inst1|xl\(13) & ((\inst1|xl[12]~40\) # (GND)))
-- \inst1|xl[13]~42\ = CARRY((!\inst1|xl[12]~40\) # (!\inst1|xl\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(13),
	datad => VCC,
	cin => \inst1|xl[12]~40\,
	combout => \inst1|xl[13]~41_combout\,
	cout => \inst1|xl[13]~42\);

-- Location: LCCOMB_X66_Y42_N28
\inst1|xl[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[14]~43_combout\ = (\inst1|xl\(14) & (\inst1|xl[13]~42\ $ (GND))) # (!\inst1|xl\(14) & (!\inst1|xl[13]~42\ & VCC))
-- \inst1|xl[14]~44\ = CARRY((\inst1|xl\(14) & !\inst1|xl[13]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(14),
	datad => VCC,
	cin => \inst1|xl[13]~42\,
	combout => \inst1|xl[14]~43_combout\,
	cout => \inst1|xl[14]~44\);

-- Location: FF_X66_Y42_N29
\inst1|xl[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[14]~43_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(14));

-- Location: LCCOMB_X69_Y42_N18
\inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst1|state_counter\(0) & ((\inst1|xl\(14)))) # (!\inst1|state_counter\(0) & (\inst1|xm\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(14),
	datab => \inst1|xl\(14),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y42_N14
\inst1|xr[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[9]~28_combout\ = (\inst1|xr\(9) & (\inst1|xr[8]~27\ & VCC)) # (!\inst1|xr\(9) & (!\inst1|xr[8]~27\))
-- \inst1|xr[9]~29\ = CARRY((!\inst1|xr\(9) & !\inst1|xr[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xr\(9),
	datad => VCC,
	cin => \inst1|xr[8]~27\,
	combout => \inst1|xr[9]~28_combout\,
	cout => \inst1|xr[9]~29\);

-- Location: FF_X70_Y42_N15
\inst1|xr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[9]~28_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(9));

-- Location: LCCOMB_X70_Y42_N16
\inst1|xr[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[10]~30_combout\ = (\inst1|xr\(10) & (\inst1|xr[9]~29\ $ (GND))) # (!\inst1|xr\(10) & (!\inst1|xr[9]~29\ & VCC))
-- \inst1|xr[10]~31\ = CARRY((\inst1|xr\(10) & !\inst1|xr[9]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xr\(10),
	datad => VCC,
	cin => \inst1|xr[9]~29\,
	combout => \inst1|xr[10]~30_combout\,
	cout => \inst1|xr[10]~31\);

-- Location: FF_X70_Y42_N17
\inst1|xr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[10]~30_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(10));

-- Location: LCCOMB_X70_Y42_N18
\inst1|xr[11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[11]~32_combout\ = (\inst1|xr\(11) & (!\inst1|xr[10]~31\)) # (!\inst1|xr\(11) & ((\inst1|xr[10]~31\) # (GND)))
-- \inst1|xr[11]~33\ = CARRY((!\inst1|xr[10]~31\) # (!\inst1|xr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xr\(11),
	datad => VCC,
	cin => \inst1|xr[10]~31\,
	combout => \inst1|xr[11]~32_combout\,
	cout => \inst1|xr[11]~33\);

-- Location: FF_X70_Y42_N19
\inst1|xr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[11]~32_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(11));

-- Location: LCCOMB_X70_Y42_N20
\inst1|xr[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[12]~34_combout\ = (\inst1|xr\(12) & (\inst1|xr[11]~33\ $ (GND))) # (!\inst1|xr\(12) & (!\inst1|xr[11]~33\ & VCC))
-- \inst1|xr[12]~35\ = CARRY((\inst1|xr\(12) & !\inst1|xr[11]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xr\(12),
	datad => VCC,
	cin => \inst1|xr[11]~33\,
	combout => \inst1|xr[12]~34_combout\,
	cout => \inst1|xr[12]~35\);

-- Location: FF_X70_Y42_N21
\inst1|xr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[12]~34_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(12));

-- Location: LCCOMB_X70_Y42_N22
\inst1|xr[13]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[13]~36_combout\ = (\inst1|xr\(13) & (!\inst1|xr[12]~35\)) # (!\inst1|xr\(13) & ((\inst1|xr[12]~35\) # (GND)))
-- \inst1|xr[13]~37\ = CARRY((!\inst1|xr[12]~35\) # (!\inst1|xr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xr\(13),
	datad => VCC,
	cin => \inst1|xr[12]~35\,
	combout => \inst1|xr[13]~36_combout\,
	cout => \inst1|xr[13]~37\);

-- Location: LCCOMB_X70_Y42_N24
\inst1|xr[14]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[14]~38_combout\ = (\inst1|xr\(14) & (\inst1|xr[13]~37\ $ (GND))) # (!\inst1|xr\(14) & (!\inst1|xr[13]~37\ & VCC))
-- \inst1|xr[14]~39\ = CARRY((\inst1|xr\(14) & !\inst1|xr[13]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xr\(14),
	datad => VCC,
	cin => \inst1|xr[13]~37\,
	combout => \inst1|xr[14]~38_combout\,
	cout => \inst1|xr[14]~39\);

-- Location: FF_X70_Y42_N25
\inst1|xr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[14]~38_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(14));

-- Location: FF_X69_Y42_N19
\inst1|x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux1~0_combout\,
	asdata => \inst1|xr\(14),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(14));

-- Location: LCCOMB_X69_Y42_N16
\inst1|psac_inst|x2[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[8]~0_combout\ = \inst1|x\(8) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|x\(8),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[8]~0_combout\);

-- Location: LCCOMB_X70_Y42_N28
\inst1|xr[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[1]~42_combout\ = !\inst1|xr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|xr\(1),
	combout => \inst1|xr[1]~42_combout\);

-- Location: FF_X70_Y42_N29
\inst1|xr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[1]~42_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(1));

-- Location: LCCOMB_X68_Y42_N2
\inst1|xm[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[4]~13_cout\ = CARRY(\inst1|xr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xr\(1),
	datad => VCC,
	cout => \inst1|xm[4]~13_cout\);

-- Location: LCCOMB_X68_Y42_N4
\inst1|xm[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[4]~15_cout\ = CARRY((!\inst1|xl\(1) & !\inst1|xm[4]~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xl\(1),
	datad => VCC,
	cin => \inst1|xm[4]~13_cout\,
	cout => \inst1|xm[4]~15_cout\);

-- Location: LCCOMB_X68_Y42_N8
\inst1|xm[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[5]~18_combout\ = (\inst1|xm\(5) & (!\inst1|xm[4]~17\)) # (!\inst1|xm\(5) & ((\inst1|xm[4]~17\) # (GND)))
-- \inst1|xm[5]~19\ = CARRY((!\inst1|xm[4]~17\) # (!\inst1|xm\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xm\(5),
	datad => VCC,
	cin => \inst1|xm[4]~17\,
	combout => \inst1|xm[5]~18_combout\,
	cout => \inst1|xm[5]~19\);

-- Location: FF_X68_Y42_N9
\inst1|xm[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[5]~18_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(5));

-- Location: LCCOMB_X68_Y42_N12
\inst1|xm[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[7]~22_combout\ = (\inst1|xm\(7) & (\inst1|xm[6]~21\ & VCC)) # (!\inst1|xm\(7) & (!\inst1|xm[6]~21\))
-- \inst1|xm[7]~23\ = CARRY((!\inst1|xm\(7) & !\inst1|xm[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(7),
	datad => VCC,
	cin => \inst1|xm[6]~21\,
	combout => \inst1|xm[7]~22_combout\,
	cout => \inst1|xm[7]~23\);

-- Location: LCCOMB_X68_Y42_N14
\inst1|xm[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[8]~24_combout\ = (\inst1|xm\(8) & ((GND) # (!\inst1|xm[7]~23\))) # (!\inst1|xm\(8) & (\inst1|xm[7]~23\ $ (GND)))
-- \inst1|xm[8]~25\ = CARRY((\inst1|xm\(8)) # (!\inst1|xm[7]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xm\(8),
	datad => VCC,
	cin => \inst1|xm[7]~23\,
	combout => \inst1|xm[8]~24_combout\,
	cout => \inst1|xm[8]~25\);

-- Location: FF_X68_Y42_N15
\inst1|xm[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[8]~24_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(8));

-- Location: LCCOMB_X68_Y42_N16
\inst1|xm[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[9]~26_combout\ = (\inst1|xm\(9) & (!\inst1|xm[8]~25\)) # (!\inst1|xm\(9) & ((\inst1|xm[8]~25\) # (GND)))
-- \inst1|xm[9]~27\ = CARRY((!\inst1|xm[8]~25\) # (!\inst1|xm\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xm\(9),
	datad => VCC,
	cin => \inst1|xm[8]~25\,
	combout => \inst1|xm[9]~26_combout\,
	cout => \inst1|xm[9]~27\);

-- Location: FF_X68_Y42_N17
\inst1|xm[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[9]~26_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(9));

-- Location: LCCOMB_X67_Y42_N0
\inst1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst1|state_counter\(0) & (\inst1|xl\(9))) # (!\inst1|state_counter\(0) & ((\inst1|xm\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(0),
	datab => \inst1|xl\(9),
	datad => \inst1|xm\(9),
	combout => \inst1|Mux6~0_combout\);

-- Location: FF_X67_Y42_N1
\inst1|x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux6~0_combout\,
	asdata => \inst1|xr\(9),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(9));

-- Location: LCCOMB_X67_Y42_N30
\inst1|psac_inst|x2[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[9]~1_combout\ = \inst1|x\(9) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|x\(9),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[9]~1_combout\);

-- Location: LCCOMB_X68_Y42_N18
\inst1|xm[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[10]~28_combout\ = (\inst1|xm\(10) & (\inst1|xm[9]~27\ $ (GND))) # (!\inst1|xm\(10) & (!\inst1|xm[9]~27\ & VCC))
-- \inst1|xm[10]~29\ = CARRY((\inst1|xm\(10) & !\inst1|xm[9]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xm\(10),
	datad => VCC,
	cin => \inst1|xm[9]~27\,
	combout => \inst1|xm[10]~28_combout\,
	cout => \inst1|xm[10]~29\);

-- Location: FF_X68_Y42_N19
\inst1|xm[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[10]~28_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(10));

-- Location: LCCOMB_X67_Y42_N18
\inst1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst1|state_counter\(0) & (\inst1|xl\(10))) # (!\inst1|state_counter\(0) & ((\inst1|xm\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(0),
	datab => \inst1|xl\(10),
	datad => \inst1|xm\(10),
	combout => \inst1|Mux5~0_combout\);

-- Location: FF_X67_Y42_N19
\inst1|x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux5~0_combout\,
	asdata => \inst1|xr\(10),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(10));

-- Location: LCCOMB_X67_Y42_N8
\inst1|psac_inst|x2[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[10]~2_combout\ = \inst1|x\(10) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|x\(10),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[10]~2_combout\);

-- Location: FF_X66_Y42_N23
\inst1|xl[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[11]~37_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(11));

-- Location: LCCOMB_X67_Y42_N4
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst1|state_counter\(0) & ((\inst1|xl\(11)))) # (!\inst1|state_counter\(0) & (\inst1|xm\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(11),
	datab => \inst1|xl\(11),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux4~0_combout\);

-- Location: FF_X67_Y42_N5
\inst1|x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux4~0_combout\,
	asdata => \inst1|xr\(11),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(11));

-- Location: LCCOMB_X67_Y42_N2
\inst1|psac_inst|x2[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[11]~3_combout\ = \inst1|x\(11) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|x\(11),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[11]~3_combout\);

-- Location: LCCOMB_X68_Y42_N20
\inst1|xm[11]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[11]~30_combout\ = (\inst1|xm\(11) & (!\inst1|xm[10]~29\)) # (!\inst1|xm\(11) & ((\inst1|xm[10]~29\) # (GND)))
-- \inst1|xm[11]~31\ = CARRY((!\inst1|xm[10]~29\) # (!\inst1|xm\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xm\(11),
	datad => VCC,
	cin => \inst1|xm[10]~29\,
	combout => \inst1|xm[11]~30_combout\,
	cout => \inst1|xm[11]~31\);

-- Location: FF_X68_Y42_N21
\inst1|xm[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[11]~30_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(11));

-- Location: LCCOMB_X68_Y42_N22
\inst1|xm[12]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[12]~32_combout\ = (\inst1|xm\(12) & (\inst1|xm[11]~31\ $ (GND))) # (!\inst1|xm\(12) & (!\inst1|xm[11]~31\ & VCC))
-- \inst1|xm[12]~33\ = CARRY((\inst1|xm\(12) & !\inst1|xm[11]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xm\(12),
	datad => VCC,
	cin => \inst1|xm[11]~31\,
	combout => \inst1|xm[12]~32_combout\,
	cout => \inst1|xm[12]~33\);

-- Location: FF_X68_Y42_N23
\inst1|xm[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[12]~32_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(12));

-- Location: LCCOMB_X67_Y42_N22
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst1|state_counter\(0) & (\inst1|xl\(12))) # (!\inst1|state_counter\(0) & ((\inst1|xm\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(0),
	datab => \inst1|xl\(12),
	datad => \inst1|xm\(12),
	combout => \inst1|Mux3~0_combout\);

-- Location: FF_X67_Y42_N23
\inst1|x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux3~0_combout\,
	asdata => \inst1|xr\(12),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(12));

-- Location: LCCOMB_X67_Y42_N28
\inst1|psac_inst|x2[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[12]~4_combout\ = \inst1|x\(12) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|x\(12),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[12]~4_combout\);

-- Location: FF_X66_Y42_N27
\inst1|xl[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[13]~41_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(13));

-- Location: LCCOMB_X68_Y42_N24
\inst1|xm[13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[13]~34_combout\ = (\inst1|xm\(13) & (!\inst1|xm[12]~33\)) # (!\inst1|xm\(13) & ((\inst1|xm[12]~33\) # (GND)))
-- \inst1|xm[13]~35\ = CARRY((!\inst1|xm[12]~33\) # (!\inst1|xm\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|xm\(13),
	datad => VCC,
	cin => \inst1|xm[12]~33\,
	combout => \inst1|xm[13]~34_combout\,
	cout => \inst1|xm[13]~35\);

-- Location: FF_X68_Y42_N25
\inst1|xm[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[13]~34_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(13));

-- Location: LCCOMB_X68_Y42_N30
\inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst1|state_counter\(0) & (\inst1|xl\(13))) # (!\inst1|state_counter\(0) & ((\inst1|xm\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(0),
	datab => \inst1|xl\(13),
	datad => \inst1|xm\(13),
	combout => \inst1|Mux2~0_combout\);

-- Location: FF_X70_Y42_N23
\inst1|xr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[13]~36_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(13));

-- Location: FF_X68_Y42_N31
\inst1|x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux2~0_combout\,
	asdata => \inst1|xr\(13),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(13));

-- Location: LCCOMB_X69_Y42_N26
\inst1|psac_inst|x2[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[13]~5_combout\ = \inst1|x\(13) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|x\(13),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[13]~5_combout\);

-- Location: LCCOMB_X66_Y41_N0
\inst1|state_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state_counter~8_combout\ = (\inst1|state_counter\(0) & \inst1|xr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state_counter\(0),
	datac => \inst1|xr\(1),
	combout => \inst1|state_counter~8_combout\);

-- Location: FF_X66_Y41_N1
\inst1|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|state_counter~8_combout\,
	sclr => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(0));

-- Location: LCCOMB_X66_Y41_N22
\inst1|psac_inst|x2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[0]~6_combout\ = \inst1|x\(0) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|x\(0),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[0]~6_combout\);

-- Location: LCCOMB_X69_Y42_N10
\inst1|x[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|x[1]~1_combout\ = (\inst1|state_counter\(0) & (\inst1|xl\(1))) # (!\inst1|state_counter\(0) & (((\inst1|state_counter\(1) & \inst1|xr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(1),
	datab => \inst1|state_counter\(1),
	datac => \inst1|xr\(1),
	datad => \inst1|state_counter\(0),
	combout => \inst1|x[1]~1_combout\);

-- Location: LCCOMB_X67_Y42_N14
\inst1|x[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|x[1]~2_combout\ = (\inst1|x[15]~0_combout\ & ((\inst1|x[1]~1_combout\))) # (!\inst1|x[15]~0_combout\ & (\inst1|x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|x[15]~0_combout\,
	datac => \inst1|x\(1),
	datad => \inst1|x[1]~1_combout\,
	combout => \inst1|x[1]~2_combout\);

-- Location: FF_X67_Y42_N15
\inst1|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|x[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(1));

-- Location: LCCOMB_X67_Y42_N24
\inst1|psac_inst|x2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[1]~7_combout\ = \inst1|x\(1) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|x\(1),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[1]~7_combout\);

-- Location: LCCOMB_X67_Y42_N16
\inst1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = (\inst1|state_counter\(0) & (\inst1|xl\(2))) # (!\inst1|state_counter\(0) & ((\inst1|xr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(2),
	datab => \inst1|xr\(1),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux13~0_combout\);

-- Location: FF_X67_Y42_N17
\inst1|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux13~0_combout\,
	asdata => \inst1|xr\(2),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(2));

-- Location: LCCOMB_X67_Y42_N26
\inst1|psac_inst|x2[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[2]~8_combout\ = \inst1|x\(2) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|x\(2),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[2]~8_combout\);

-- Location: LCCOMB_X69_Y42_N4
\inst1|psac_inst|x2[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[3]~9_combout\ = \inst1|x\(3) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|x\(3),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[3]~9_combout\);

-- Location: LCCOMB_X67_Y42_N20
\inst1|psac_inst|x2[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[4]~10_combout\ = \inst1|x\(4) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|x\(4),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[4]~10_combout\);

-- Location: LCCOMB_X69_Y42_N30
\inst1|psac_inst|x2[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[5]~11_combout\ = \inst1|x\(5) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|x\(5),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[5]~11_combout\);

-- Location: LCCOMB_X67_Y42_N6
\inst1|psac_inst|x2[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[6]~12_combout\ = \inst1|x\(6) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|x\(6),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[6]~12_combout\);

-- Location: FF_X68_Y42_N13
\inst1|xm[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[7]~22_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(7));

-- Location: LCCOMB_X69_Y42_N8
\inst1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (\inst1|state_counter\(0) & (\inst1|xl\(7))) # (!\inst1|state_counter\(0) & ((\inst1|xm\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(7),
	datab => \inst1|xm\(7),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux8~0_combout\);

-- Location: FF_X70_Y42_N11
\inst1|xr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[7]~24_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(7));

-- Location: FF_X69_Y42_N9
\inst1|x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux8~0_combout\,
	asdata => \inst1|xr\(7),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(7));

-- Location: LCCOMB_X69_Y42_N0
\inst1|psac_inst|x2[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|x2[7]~13_combout\ = \inst1|x\(7) $ (\inst1|x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|x\(7),
	datad => \inst1|x\(14),
	combout => \inst1|psac_inst|x2[7]~13_combout\);

-- Location: DSPMULT_X71_Y42_N0
\inst1|psac_inst|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst1|psac_inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X65_Y42_N2
\inst1|psac_inst|Res_2[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[0]~15_combout\ = (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a22\ & (\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT8\ $ (VCC))) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a22\ & 
-- (\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT8\ & VCC))
-- \inst1|psac_inst|Res_2[0]~16\ = CARRY((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a22\ & \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a22\,
	datab => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	combout => \inst1|psac_inst|Res_2[0]~15_combout\,
	cout => \inst1|psac_inst|Res_2[0]~16\);

-- Location: LCCOMB_X65_Y42_N8
\inst1|psac_inst|Res_2[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[3]~21_combout\ = (\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a19\ & (\inst1|psac_inst|Res_2[2]~20\ & VCC)) # 
-- (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a19\ & (!\inst1|psac_inst|Res_2[2]~20\)))) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a19\ & 
-- (!\inst1|psac_inst|Res_2[2]~20\)) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a19\ & ((\inst1|psac_inst|Res_2[2]~20\) # (GND)))))
-- \inst1|psac_inst|Res_2[3]~22\ = CARRY((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a19\ & !\inst1|psac_inst|Res_2[2]~20\)) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT11\ 
-- & ((!\inst1|psac_inst|Res_2[2]~20\) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a19\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[2]~20\,
	combout => \inst1|psac_inst|Res_2[3]~21_combout\,
	cout => \inst1|psac_inst|Res_2[3]~22\);

-- Location: LCCOMB_X65_Y42_N10
\inst1|psac_inst|Res_2[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[4]~23_combout\ = ((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT12\ $ (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a18\ $ (!\inst1|psac_inst|Res_2[3]~22\)))) # (GND)
-- \inst1|psac_inst|Res_2[4]~24\ = CARRY((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a18\) # (!\inst1|psac_inst|Res_2[3]~22\))) # 
-- (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a18\ & !\inst1|psac_inst|Res_2[3]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a18\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[3]~22\,
	combout => \inst1|psac_inst|Res_2[4]~23_combout\,
	cout => \inst1|psac_inst|Res_2[4]~24\);

-- Location: LCCOMB_X65_Y42_N12
\inst1|psac_inst|Res_2[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[5]~25_combout\ = (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a17\ & ((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\inst1|psac_inst|Res_2[4]~24\ & VCC)) # 
-- (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\inst1|psac_inst|Res_2[4]~24\)))) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a17\ & ((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- (!\inst1|psac_inst|Res_2[4]~24\)) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\inst1|psac_inst|Res_2[4]~24\) # (GND)))))
-- \inst1|psac_inst|Res_2[5]~26\ = CARRY((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a17\ & (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT13\ & !\inst1|psac_inst|Res_2[4]~24\)) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a17\ 
-- & ((!\inst1|psac_inst|Res_2[4]~24\) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a17\,
	datab => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[4]~24\,
	combout => \inst1|psac_inst|Res_2[5]~25_combout\,
	cout => \inst1|psac_inst|Res_2[5]~26\);

-- Location: LCCOMB_X65_Y42_N14
\inst1|psac_inst|Res_2[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[6]~27_combout\ = ((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT14\ $ (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a16\ $ (!\inst1|psac_inst|Res_2[5]~26\)))) # (GND)
-- \inst1|psac_inst|Res_2[6]~28\ = CARRY((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a16\) # (!\inst1|psac_inst|Res_2[5]~26\))) # 
-- (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a16\ & !\inst1|psac_inst|Res_2[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a16\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[5]~26\,
	combout => \inst1|psac_inst|Res_2[6]~27_combout\,
	cout => \inst1|psac_inst|Res_2[6]~28\);

-- Location: LCCOMB_X65_Y42_N16
\inst1|psac_inst|Res_2[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[7]~29_combout\ = (\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a15\ & (\inst1|psac_inst|Res_2[6]~28\ & VCC)) # 
-- (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a15\ & (!\inst1|psac_inst|Res_2[6]~28\)))) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a15\ & 
-- (!\inst1|psac_inst|Res_2[6]~28\)) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a15\ & ((\inst1|psac_inst|Res_2[6]~28\) # (GND)))))
-- \inst1|psac_inst|Res_2[7]~30\ = CARRY((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a15\ & !\inst1|psac_inst|Res_2[6]~28\)) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT15\ 
-- & ((!\inst1|psac_inst|Res_2[6]~28\) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a15\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[6]~28\,
	combout => \inst1|psac_inst|Res_2[7]~29_combout\,
	cout => \inst1|psac_inst|Res_2[7]~30\);

-- Location: LCCOMB_X65_Y42_N18
\inst1|psac_inst|Res_2[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[8]~31_combout\ = ((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT16\ $ (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a14\ $ (!\inst1|psac_inst|Res_2[7]~30\)))) # (GND)
-- \inst1|psac_inst|Res_2[8]~32\ = CARRY((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a14\) # (!\inst1|psac_inst|Res_2[7]~30\))) # 
-- (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a14\ & !\inst1|psac_inst|Res_2[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datab => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a14\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[7]~30\,
	combout => \inst1|psac_inst|Res_2[8]~31_combout\,
	cout => \inst1|psac_inst|Res_2[8]~32\);

-- Location: LCCOMB_X65_Y42_N20
\inst1|psac_inst|Res_2[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[9]~33_combout\ = (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a13\ & ((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\inst1|psac_inst|Res_2[8]~32\ & VCC)) # 
-- (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\inst1|psac_inst|Res_2[8]~32\)))) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a13\ & ((\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- (!\inst1|psac_inst|Res_2[8]~32\)) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\inst1|psac_inst|Res_2[8]~32\) # (GND)))))
-- \inst1|psac_inst|Res_2[9]~34\ = CARRY((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a13\ & (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\inst1|psac_inst|Res_2[8]~32\)) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a13\ 
-- & ((!\inst1|psac_inst|Res_2[8]~32\) # (!\inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a13\,
	datab => \inst1|psac_inst|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[8]~32\,
	combout => \inst1|psac_inst|Res_2[9]~33_combout\,
	cout => \inst1|psac_inst|Res_2[9]~34\);

-- Location: LCCOMB_X65_Y42_N22
\inst1|psac_inst|Res_2[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[10]~35_combout\ = (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a12\ & (\inst1|psac_inst|Res_2[9]~34\ $ (GND))) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a12\ & (!\inst1|psac_inst|Res_2[9]~34\ & VCC))
-- \inst1|psac_inst|Res_2[10]~36\ = CARRY((\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a12\ & !\inst1|psac_inst|Res_2[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a12\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[9]~34\,
	combout => \inst1|psac_inst|Res_2[10]~35_combout\,
	cout => \inst1|psac_inst|Res_2[10]~36\);

-- Location: LCCOMB_X65_Y42_N24
\inst1|psac_inst|Res_2[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Res_2[11]~37_combout\ = (\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a11\ & (!\inst1|psac_inst|Res_2[10]~36\)) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a11\ & ((\inst1|psac_inst|Res_2[10]~36\) # (GND)))
-- \inst1|psac_inst|Res_2[11]~38\ = CARRY((!\inst1|psac_inst|Res_2[10]~36\) # (!\inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Mux1_rtl_0|auto_generated|ram_block1a11\,
	datad => VCC,
	cin => \inst1|psac_inst|Res_2[10]~36\,
	combout => \inst1|psac_inst|Res_2[11]~37_combout\,
	cout => \inst1|psac_inst|Res_2[11]~38\);

-- Location: FF_X65_Y42_N27
\inst1|psac_inst|Res_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(12));

-- Location: FF_X65_Y42_N25
\inst1|psac_inst|Res_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[11]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(11));

-- Location: FF_X65_Y42_N23
\inst1|psac_inst|Res_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[10]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(10));

-- Location: FF_X65_Y42_N15
\inst1|psac_inst|Res_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(6));

-- Location: FF_X65_Y42_N13
\inst1|psac_inst|Res_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(5));

-- Location: FF_X65_Y42_N11
\inst1|psac_inst|Res_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(4));

-- Location: FF_X65_Y42_N9
\inst1|psac_inst|Res_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(3));

-- Location: FF_X65_Y42_N3
\inst1|psac_inst|Res_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(0));

-- Location: LCCOMB_X65_Y40_N0
\inst1|psac_inst|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~1_cout\ = CARRY((!\inst1|psac_inst|Res_2\(1) & !\inst1|psac_inst|Res_2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Res_2\(1),
	datab => \inst1|psac_inst|Res_2\(0),
	datad => VCC,
	cout => \inst1|psac_inst|Add1~1_cout\);

-- Location: LCCOMB_X65_Y40_N2
\inst1|psac_inst|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~3_cout\ = CARRY((\inst1|psac_inst|Res_2\(2)) # (!\inst1|psac_inst|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Res_2\(2),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~1_cout\,
	cout => \inst1|psac_inst|Add1~3_cout\);

-- Location: LCCOMB_X65_Y40_N4
\inst1|psac_inst|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~5_cout\ = CARRY((!\inst1|psac_inst|Res_2\(3) & !\inst1|psac_inst|Add1~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Res_2\(3),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~3_cout\,
	cout => \inst1|psac_inst|Add1~5_cout\);

-- Location: LCCOMB_X65_Y40_N6
\inst1|psac_inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~6_combout\ = (\inst1|psac_inst|Res_2\(4) & ((\inst1|psac_inst|Add1~5_cout\) # (GND))) # (!\inst1|psac_inst|Res_2\(4) & (!\inst1|psac_inst|Add1~5_cout\))
-- \inst1|psac_inst|Add1~7\ = CARRY((\inst1|psac_inst|Res_2\(4)) # (!\inst1|psac_inst|Add1~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Res_2\(4),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~5_cout\,
	combout => \inst1|psac_inst|Add1~6_combout\,
	cout => \inst1|psac_inst|Add1~7\);

-- Location: LCCOMB_X65_Y40_N16
\inst1|psac_inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~16_combout\ = (\inst1|psac_inst|Res_2\(9) & (!\inst1|psac_inst|Add1~15\ & VCC)) # (!\inst1|psac_inst|Res_2\(9) & (\inst1|psac_inst|Add1~15\ $ (GND)))
-- \inst1|psac_inst|Add1~17\ = CARRY((!\inst1|psac_inst|Res_2\(9) & !\inst1|psac_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Res_2\(9),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~15\,
	combout => \inst1|psac_inst|Add1~16_combout\,
	cout => \inst1|psac_inst|Add1~17\);

-- Location: LCCOMB_X65_Y40_N18
\inst1|psac_inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~18_combout\ = (\inst1|psac_inst|Res_2\(10) & ((\inst1|psac_inst|Add1~17\) # (GND))) # (!\inst1|psac_inst|Res_2\(10) & (!\inst1|psac_inst|Add1~17\))
-- \inst1|psac_inst|Add1~19\ = CARRY((\inst1|psac_inst|Res_2\(10)) # (!\inst1|psac_inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Res_2\(10),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~17\,
	combout => \inst1|psac_inst|Add1~18_combout\,
	cout => \inst1|psac_inst|Add1~19\);

-- Location: LCCOMB_X65_Y40_N22
\inst1|psac_inst|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~22_combout\ = (\inst1|psac_inst|Res_2\(12) & ((\inst1|psac_inst|Add1~21\) # (GND))) # (!\inst1|psac_inst|Res_2\(12) & (!\inst1|psac_inst|Add1~21\))
-- \inst1|psac_inst|Add1~23\ = CARRY((\inst1|psac_inst|Res_2\(12)) # (!\inst1|psac_inst|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Res_2\(12),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~21\,
	combout => \inst1|psac_inst|Add1~22_combout\,
	cout => \inst1|psac_inst|Add1~23\);

-- Location: LCCOMB_X65_Y40_N26
\inst1|psac_inst|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~26_combout\ = (\inst1|psac_inst|Res_2\(14) & ((\inst1|psac_inst|Add1~25\) # (GND))) # (!\inst1|psac_inst|Res_2\(14) & (!\inst1|psac_inst|Add1~25\))
-- \inst1|psac_inst|Add1~27\ = CARRY((\inst1|psac_inst|Res_2\(14)) # (!\inst1|psac_inst|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Res_2\(14),
	datad => VCC,
	cin => \inst1|psac_inst|Add1~25\,
	combout => \inst1|psac_inst|Add1~26_combout\,
	cout => \inst1|psac_inst|Add1~27\);

-- Location: LCCOMB_X65_Y40_N28
\inst1|psac_inst|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~28_combout\ = \inst1|psac_inst|Add1~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|psac_inst|Add1~27\,
	combout => \inst1|psac_inst|Add1~28_combout\);

-- Location: LCCOMB_X66_Y42_N30
\inst1|xl[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xl[15]~45_combout\ = \inst1|xl\(15) $ (\inst1|xl[14]~44\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xl\(15),
	cin => \inst1|xl[14]~44\,
	combout => \inst1|xl[15]~45_combout\);

-- Location: FF_X66_Y42_N31
\inst1|xl[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xl[15]~45_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xl\(15));

-- Location: LCCOMB_X68_Y42_N28
\inst1|xm[15]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xm[15]~38_combout\ = \inst1|xm[14]~37\ $ (\inst1|xm\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|xm\(15),
	cin => \inst1|xm[14]~37\,
	combout => \inst1|xm[15]~38_combout\);

-- Location: FF_X68_Y42_N29
\inst1|xm[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xm[15]~38_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xm\(15));

-- Location: LCCOMB_X68_Y42_N0
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|state_counter\(0) & (\inst1|xl\(15))) # (!\inst1|state_counter\(0) & ((\inst1|xm\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(0),
	datab => \inst1|xl\(15),
	datad => \inst1|xm\(15),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y42_N26
\inst1|xr[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|xr[15]~40_combout\ = \inst1|xr\(15) $ (\inst1|xr[14]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|xr\(15),
	cin => \inst1|xr[14]~39\,
	combout => \inst1|xr[15]~40_combout\);

-- Location: FF_X70_Y42_N27
\inst1|xr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|xr[15]~40_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|xr\(15));

-- Location: FF_X68_Y42_N1
\inst1|x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux0~0_combout\,
	asdata => \inst1|xr\(15),
	sload => \inst1|state_counter\(1),
	ena => \inst1|x[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|x\(15));

-- Location: LCCOMB_X66_Y40_N30
\inst1|psac_inst|inv_res_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|inv_res_1~feeder_combout\ = \inst1|x\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|x\(15),
	combout => \inst1|psac_inst|inv_res_1~feeder_combout\);

-- Location: FF_X66_Y40_N31
\inst1|psac_inst|inv_res_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|inv_res_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|inv_res_1~q\);

-- Location: FF_X66_Y40_N21
\inst1|psac_inst|inv_res_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|inv_res_1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|inv_res_2~q\);

-- Location: LCCOMB_X67_Y40_N0
\inst1|psac_inst|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~30_combout\ = (\inst1|psac_inst|Add1~28_combout\ & \inst1|psac_inst|inv_res_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|psac_inst|Add1~28_combout\,
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~30_combout\);

-- Location: LCCOMB_X67_Y40_N2
\inst1|al[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|al[15]~feeder_combout\ = \inst1|psac_inst|Add1~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|psac_inst|Add1~30_combout\,
	combout => \inst1|al[15]~feeder_combout\);

-- Location: LCCOMB_X66_Y41_N30
\inst1|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux38~0_combout\ = (!\inst1|state_counter\(1) & (!\inst1|state_counter\(3) & (\inst1|state_counter\(2) & !\inst1|state_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(1),
	datab => \inst1|state_counter\(3),
	datac => \inst1|state_counter\(2),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux38~0_combout\);

-- Location: FF_X67_Y40_N3
\inst1|al[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|al[15]~feeder_combout\,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(15));

-- Location: LCCOMB_X66_Y40_N24
\inst1|psac_inst|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~31_combout\ = (\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Add1~26_combout\))) # (!\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Res_2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Res_2\(14),
	datac => \inst1|psac_inst|Add1~26_combout\,
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~31_combout\);

-- Location: FF_X67_Y40_N25
\inst1|al[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~31_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(14));

-- Location: LCCOMB_X66_Y41_N12
\inst1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux26~0_combout\ = (\inst1|state_counter\(1) & (!\inst1|state_counter\(3) & (!\inst1|state_counter\(2) & \inst1|state_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(1),
	datab => \inst1|state_counter\(3),
	datac => \inst1|state_counter\(2),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux26~0_combout\);

-- Location: FF_X66_Y40_N25
\inst1|am[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~31_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(14));

-- Location: LCCOMB_X66_Y40_N12
\inst1|psac_inst|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~33_combout\ = (\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Add1~22_combout\)) # (!\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Res_2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Add1~22_combout\,
	datac => \inst1|psac_inst|Res_2\(12),
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~33_combout\);

-- Location: FF_X67_Y40_N21
\inst1|al[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~33_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(12));

-- Location: LCCOMB_X66_Y40_N14
\inst1|psac_inst|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~34_combout\ = (\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Add1~20_combout\)) # (!\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Res_2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Add1~20_combout\,
	datac => \inst1|psac_inst|Res_2\(11),
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~34_combout\);

-- Location: FF_X67_Y40_N19
\inst1|al[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~34_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(11));

-- Location: LCCOMB_X66_Y40_N8
\inst1|psac_inst|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~35_combout\ = (\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Add1~18_combout\))) # (!\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Res_2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Res_2\(10),
	datac => \inst1|psac_inst|Add1~18_combout\,
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~35_combout\);

-- Location: FF_X67_Y40_N17
\inst1|al[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~35_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(10));

-- Location: FF_X65_Y42_N21
\inst1|psac_inst|Res_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(9));

-- Location: LCCOMB_X66_Y40_N2
\inst1|psac_inst|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~36_combout\ = (\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Add1~16_combout\))) # (!\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Res_2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Res_2\(9),
	datac => \inst1|psac_inst|Add1~16_combout\,
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~36_combout\);

-- Location: FF_X67_Y40_N15
\inst1|al[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~36_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(9));

-- Location: FF_X66_Y40_N3
\inst1|am[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~36_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(9));

-- Location: FF_X65_Y42_N19
\inst1|psac_inst|Res_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(8));

-- Location: LCCOMB_X66_Y40_N28
\inst1|psac_inst|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~37_combout\ = (\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Add1~14_combout\)) # (!\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Res_2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Add1~14_combout\,
	datac => \inst1|psac_inst|Res_2\(8),
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~37_combout\);

-- Location: FF_X66_Y40_N29
\inst1|am[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~37_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(8));

-- Location: FF_X65_Y42_N17
\inst1|psac_inst|Res_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Res_2[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|psac_inst|Res_2\(7));

-- Location: LCCOMB_X66_Y40_N22
\inst1|psac_inst|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~38_combout\ = (\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Add1~12_combout\)) # (!\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Res_2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Add1~12_combout\,
	datac => \inst1|psac_inst|Res_2\(7),
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~38_combout\);

-- Location: FF_X66_Y40_N23
\inst1|am[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~38_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(7));

-- Location: LCCOMB_X66_Y40_N16
\inst1|psac_inst|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~39_combout\ = (\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Add1~10_combout\)) # (!\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Res_2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Add1~10_combout\,
	datab => \inst1|psac_inst|Res_2\(6),
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~39_combout\);

-- Location: FF_X66_Y40_N17
\inst1|am[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~39_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(6));

-- Location: LCCOMB_X66_Y40_N20
\inst1|psac_inst|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~41_combout\ = (\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Add1~6_combout\)) # (!\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Res_2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|psac_inst|Add1~6_combout\,
	datac => \inst1|psac_inst|inv_res_2~q\,
	datad => \inst1|psac_inst|Res_2\(4),
	combout => \inst1|psac_inst|Add1~41_combout\);

-- Location: FF_X67_Y40_N5
\inst1|al[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~41_combout\,
	sload => VCC,
	ena => \inst1|Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|al\(4));

-- Location: LCCOMB_X67_Y40_N10
\inst1|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~6_combout\ = (\inst1|al\(7) & ((\inst1|am\(8) & (\inst1|Add4~5\ & VCC)) # (!\inst1|am\(8) & (!\inst1|Add4~5\)))) # (!\inst1|al\(7) & ((\inst1|am\(8) & (!\inst1|Add4~5\)) # (!\inst1|am\(8) & ((\inst1|Add4~5\) # (GND)))))
-- \inst1|Add4~7\ = CARRY((\inst1|al\(7) & (!\inst1|am\(8) & !\inst1|Add4~5\)) # (!\inst1|al\(7) & ((!\inst1|Add4~5\) # (!\inst1|am\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|al\(7),
	datab => \inst1|am\(8),
	datad => VCC,
	cin => \inst1|Add4~5\,
	combout => \inst1|Add4~6_combout\,
	cout => \inst1|Add4~7\);

-- Location: LCCOMB_X67_Y40_N14
\inst1|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~10_combout\ = (\inst1|am\(10) & ((\inst1|al\(9) & (\inst1|Add4~9\ & VCC)) # (!\inst1|al\(9) & (!\inst1|Add4~9\)))) # (!\inst1|am\(10) & ((\inst1|al\(9) & (!\inst1|Add4~9\)) # (!\inst1|al\(9) & ((\inst1|Add4~9\) # (GND)))))
-- \inst1|Add4~11\ = CARRY((\inst1|am\(10) & (!\inst1|al\(9) & !\inst1|Add4~9\)) # (!\inst1|am\(10) & ((!\inst1|Add4~9\) # (!\inst1|al\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(10),
	datab => \inst1|al\(9),
	datad => VCC,
	cin => \inst1|Add4~9\,
	combout => \inst1|Add4~10_combout\,
	cout => \inst1|Add4~11\);

-- Location: LCCOMB_X67_Y40_N16
\inst1|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~12_combout\ = ((\inst1|am\(11) $ (\inst1|al\(10) $ (!\inst1|Add4~11\)))) # (GND)
-- \inst1|Add4~13\ = CARRY((\inst1|am\(11) & ((\inst1|al\(10)) # (!\inst1|Add4~11\))) # (!\inst1|am\(11) & (\inst1|al\(10) & !\inst1|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(11),
	datab => \inst1|al\(10),
	datad => VCC,
	cin => \inst1|Add4~11\,
	combout => \inst1|Add4~12_combout\,
	cout => \inst1|Add4~13\);

-- Location: LCCOMB_X67_Y40_N26
\inst1|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~22_combout\ = (\inst1|am\(15) & ((\inst1|al\(15) & (\inst1|Add4~21\ & VCC)) # (!\inst1|al\(15) & (!\inst1|Add4~21\)))) # (!\inst1|am\(15) & ((\inst1|al\(15) & (!\inst1|Add4~21\)) # (!\inst1|al\(15) & ((\inst1|Add4~21\) # (GND)))))
-- \inst1|Add4~23\ = CARRY((\inst1|am\(15) & (!\inst1|al\(15) & !\inst1|Add4~21\)) # (!\inst1|am\(15) & ((!\inst1|Add4~21\) # (!\inst1|al\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(15),
	datab => \inst1|al\(15),
	datad => VCC,
	cin => \inst1|Add4~21\,
	combout => \inst1|Add4~22_combout\,
	cout => \inst1|Add4~23\);

-- Location: LCCOMB_X67_Y40_N28
\inst1|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~24_combout\ = \inst1|am\(15) $ (\inst1|al\(15) $ (!\inst1|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(15),
	datab => \inst1|al\(15),
	cin => \inst1|Add4~23\,
	combout => \inst1|Add4~24_combout\);

-- Location: LCCOMB_X68_Y40_N24
\inst1|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~26_combout\ = (\SW[7]~input_o\ & \inst1|Add4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst1|Add4~24_combout\,
	combout => \inst1|Add4~26_combout\);

-- Location: LCCOMB_X68_Y40_N10
\inst1|Add4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~27_combout\ = (\inst1|Add4~22_combout\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add4~22_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst1|Add4~27_combout\);

-- Location: IOIBUF_X0_Y68_N1
\adcdat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adcdat,
	o => \adcdat~input_o\);

-- Location: LCCOMB_X73_Y42_N2
\instSndDrv|inst_right|tx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|tx~1_combout\ = (\instSndDrv|inst_ctrl|cntr\(0) & (\instSndDrv|inst_ctrl|cntr\(1) & \instSndDrv|inst_ctrl|cntr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(0),
	datac => \instSndDrv|inst_ctrl|cntr\(1),
	datad => \instSndDrv|inst_ctrl|cntr\(2),
	combout => \instSndDrv|inst_right|tx~1_combout\);

-- Location: LCCOMB_X73_Y42_N28
\instSndDrv|inst_left|RXReg[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[15]~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|tx~1_combout\ & (!\instSndDrv|inst_ctrl|cntr\(3) & !\instSndDrv|inst_ctrl|cntr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_right|tx~1_combout\,
	datac => \instSndDrv|inst_ctrl|cntr\(3),
	datad => \instSndDrv|inst_ctrl|cntr\(8),
	combout => \instSndDrv|inst_left|RXReg[15]~0_combout\);

-- Location: FF_X69_Y40_N1
\instSndDrv|inst_left|RXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adcdat~input_o\,
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(0));

-- Location: FF_X69_Y40_N3
\instSndDrv|inst_left|RXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(0),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(1));

-- Location: FF_X69_Y40_N5
\instSndDrv|inst_left|RXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(1),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(2));

-- Location: FF_X69_Y40_N7
\instSndDrv|inst_left|RXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(2),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(3));

-- Location: FF_X69_Y40_N9
\instSndDrv|inst_left|RXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(3),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(4));

-- Location: FF_X69_Y40_N11
\instSndDrv|inst_left|RXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(4),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(5));

-- Location: FF_X69_Y40_N13
\instSndDrv|inst_left|RXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(5),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(6));

-- Location: FF_X69_Y40_N15
\instSndDrv|inst_left|RXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(6),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(7));

-- Location: FF_X69_Y40_N17
\instSndDrv|inst_left|RXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(7),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(8));

-- Location: FF_X69_Y40_N19
\instSndDrv|inst_left|RXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(8),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(9));

-- Location: FF_X69_Y40_N21
\instSndDrv|inst_left|RXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(9),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(10));

-- Location: LCCOMB_X68_Y40_N4
\inst1|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~32_combout\ = (\inst1|Add4~12_combout\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add4~12_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst1|Add4~32_combout\);

-- Location: LCCOMB_X68_Y40_N22
\inst1|Add4~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~33_combout\ = (\SW[7]~input_o\ & \inst1|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst1|Add4~10_combout\,
	combout => \inst1|Add4~33_combout\);

-- Location: LCCOMB_X68_Y40_N18
\inst1|Add4~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~35_combout\ = (\SW[7]~input_o\ & \inst1|Add4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst1|Add4~6_combout\,
	combout => \inst1|Add4~35_combout\);

-- Location: LCCOMB_X69_Y40_N0
\inst1|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~0_combout\ = (\inst1|Add4~38_combout\ & (\instSndDrv|inst_left|RXReg\(0) $ (VCC))) # (!\inst1|Add4~38_combout\ & (\instSndDrv|inst_left|RXReg\(0) & VCC))
-- \inst1|Add6~1\ = CARRY((\inst1|Add4~38_combout\ & \instSndDrv|inst_left|RXReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~38_combout\,
	datab => \instSndDrv|inst_left|RXReg\(0),
	datad => VCC,
	combout => \inst1|Add6~0_combout\,
	cout => \inst1|Add6~1\);

-- Location: LCCOMB_X69_Y40_N2
\inst1|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~2_combout\ = (\inst1|Add4~37_combout\ & ((\instSndDrv|inst_left|RXReg\(1) & (\inst1|Add6~1\ & VCC)) # (!\instSndDrv|inst_left|RXReg\(1) & (!\inst1|Add6~1\)))) # (!\inst1|Add4~37_combout\ & ((\instSndDrv|inst_left|RXReg\(1) & (!\inst1|Add6~1\)) 
-- # (!\instSndDrv|inst_left|RXReg\(1) & ((\inst1|Add6~1\) # (GND)))))
-- \inst1|Add6~3\ = CARRY((\inst1|Add4~37_combout\ & (!\instSndDrv|inst_left|RXReg\(1) & !\inst1|Add6~1\)) # (!\inst1|Add4~37_combout\ & ((!\inst1|Add6~1\) # (!\instSndDrv|inst_left|RXReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~37_combout\,
	datab => \instSndDrv|inst_left|RXReg\(1),
	datad => VCC,
	cin => \inst1|Add6~1\,
	combout => \inst1|Add6~2_combout\,
	cout => \inst1|Add6~3\);

-- Location: LCCOMB_X69_Y40_N4
\inst1|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~4_combout\ = ((\inst1|Add4~36_combout\ $ (\instSndDrv|inst_left|RXReg\(2) $ (!\inst1|Add6~3\)))) # (GND)
-- \inst1|Add6~5\ = CARRY((\inst1|Add4~36_combout\ & ((\instSndDrv|inst_left|RXReg\(2)) # (!\inst1|Add6~3\))) # (!\inst1|Add4~36_combout\ & (\instSndDrv|inst_left|RXReg\(2) & !\inst1|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~36_combout\,
	datab => \instSndDrv|inst_left|RXReg\(2),
	datad => VCC,
	cin => \inst1|Add6~3\,
	combout => \inst1|Add6~4_combout\,
	cout => \inst1|Add6~5\);

-- Location: LCCOMB_X69_Y40_N6
\inst1|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~6_combout\ = (\instSndDrv|inst_left|RXReg\(3) & ((\inst1|Add4~35_combout\ & (\inst1|Add6~5\ & VCC)) # (!\inst1|Add4~35_combout\ & (!\inst1|Add6~5\)))) # (!\instSndDrv|inst_left|RXReg\(3) & ((\inst1|Add4~35_combout\ & (!\inst1|Add6~5\)) # 
-- (!\inst1|Add4~35_combout\ & ((\inst1|Add6~5\) # (GND)))))
-- \inst1|Add6~7\ = CARRY((\instSndDrv|inst_left|RXReg\(3) & (!\inst1|Add4~35_combout\ & !\inst1|Add6~5\)) # (!\instSndDrv|inst_left|RXReg\(3) & ((!\inst1|Add6~5\) # (!\inst1|Add4~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(3),
	datab => \inst1|Add4~35_combout\,
	datad => VCC,
	cin => \inst1|Add6~5\,
	combout => \inst1|Add6~6_combout\,
	cout => \inst1|Add6~7\);

-- Location: LCCOMB_X69_Y40_N8
\inst1|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~8_combout\ = ((\inst1|Add4~34_combout\ $ (\instSndDrv|inst_left|RXReg\(4) $ (!\inst1|Add6~7\)))) # (GND)
-- \inst1|Add6~9\ = CARRY((\inst1|Add4~34_combout\ & ((\instSndDrv|inst_left|RXReg\(4)) # (!\inst1|Add6~7\))) # (!\inst1|Add4~34_combout\ & (\instSndDrv|inst_left|RXReg\(4) & !\inst1|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~34_combout\,
	datab => \instSndDrv|inst_left|RXReg\(4),
	datad => VCC,
	cin => \inst1|Add6~7\,
	combout => \inst1|Add6~8_combout\,
	cout => \inst1|Add6~9\);

-- Location: LCCOMB_X69_Y40_N10
\inst1|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~10_combout\ = (\instSndDrv|inst_left|RXReg\(5) & ((\inst1|Add4~33_combout\ & (\inst1|Add6~9\ & VCC)) # (!\inst1|Add4~33_combout\ & (!\inst1|Add6~9\)))) # (!\instSndDrv|inst_left|RXReg\(5) & ((\inst1|Add4~33_combout\ & (!\inst1|Add6~9\)) # 
-- (!\inst1|Add4~33_combout\ & ((\inst1|Add6~9\) # (GND)))))
-- \inst1|Add6~11\ = CARRY((\instSndDrv|inst_left|RXReg\(5) & (!\inst1|Add4~33_combout\ & !\inst1|Add6~9\)) # (!\instSndDrv|inst_left|RXReg\(5) & ((!\inst1|Add6~9\) # (!\inst1|Add4~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(5),
	datab => \inst1|Add4~33_combout\,
	datad => VCC,
	cin => \inst1|Add6~9\,
	combout => \inst1|Add6~10_combout\,
	cout => \inst1|Add6~11\);

-- Location: LCCOMB_X69_Y40_N12
\inst1|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~12_combout\ = ((\instSndDrv|inst_left|RXReg\(6) $ (\inst1|Add4~32_combout\ $ (!\inst1|Add6~11\)))) # (GND)
-- \inst1|Add6~13\ = CARRY((\instSndDrv|inst_left|RXReg\(6) & ((\inst1|Add4~32_combout\) # (!\inst1|Add6~11\))) # (!\instSndDrv|inst_left|RXReg\(6) & (\inst1|Add4~32_combout\ & !\inst1|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(6),
	datab => \inst1|Add4~32_combout\,
	datad => VCC,
	cin => \inst1|Add6~11\,
	combout => \inst1|Add6~12_combout\,
	cout => \inst1|Add6~13\);

-- Location: LCCOMB_X69_Y40_N14
\inst1|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~14_combout\ = (\inst1|Add4~31_combout\ & ((\instSndDrv|inst_left|RXReg\(7) & (\inst1|Add6~13\ & VCC)) # (!\instSndDrv|inst_left|RXReg\(7) & (!\inst1|Add6~13\)))) # (!\inst1|Add4~31_combout\ & ((\instSndDrv|inst_left|RXReg\(7) & 
-- (!\inst1|Add6~13\)) # (!\instSndDrv|inst_left|RXReg\(7) & ((\inst1|Add6~13\) # (GND)))))
-- \inst1|Add6~15\ = CARRY((\inst1|Add4~31_combout\ & (!\instSndDrv|inst_left|RXReg\(7) & !\inst1|Add6~13\)) # (!\inst1|Add4~31_combout\ & ((!\inst1|Add6~13\) # (!\instSndDrv|inst_left|RXReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~31_combout\,
	datab => \instSndDrv|inst_left|RXReg\(7),
	datad => VCC,
	cin => \inst1|Add6~13\,
	combout => \inst1|Add6~14_combout\,
	cout => \inst1|Add6~15\);

-- Location: LCCOMB_X69_Y40_N16
\inst1|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~16_combout\ = ((\inst1|Add4~30_combout\ $ (\instSndDrv|inst_left|RXReg\(8) $ (!\inst1|Add6~15\)))) # (GND)
-- \inst1|Add6~17\ = CARRY((\inst1|Add4~30_combout\ & ((\instSndDrv|inst_left|RXReg\(8)) # (!\inst1|Add6~15\))) # (!\inst1|Add4~30_combout\ & (\instSndDrv|inst_left|RXReg\(8) & !\inst1|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~30_combout\,
	datab => \instSndDrv|inst_left|RXReg\(8),
	datad => VCC,
	cin => \inst1|Add6~15\,
	combout => \inst1|Add6~16_combout\,
	cout => \inst1|Add6~17\);

-- Location: LCCOMB_X69_Y40_N18
\inst1|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~18_combout\ = (\inst1|Add4~29_combout\ & ((\instSndDrv|inst_left|RXReg\(9) & (\inst1|Add6~17\ & VCC)) # (!\instSndDrv|inst_left|RXReg\(9) & (!\inst1|Add6~17\)))) # (!\inst1|Add4~29_combout\ & ((\instSndDrv|inst_left|RXReg\(9) & 
-- (!\inst1|Add6~17\)) # (!\instSndDrv|inst_left|RXReg\(9) & ((\inst1|Add6~17\) # (GND)))))
-- \inst1|Add6~19\ = CARRY((\inst1|Add4~29_combout\ & (!\instSndDrv|inst_left|RXReg\(9) & !\inst1|Add6~17\)) # (!\inst1|Add4~29_combout\ & ((!\inst1|Add6~17\) # (!\instSndDrv|inst_left|RXReg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~29_combout\,
	datab => \instSndDrv|inst_left|RXReg\(9),
	datad => VCC,
	cin => \inst1|Add6~17\,
	combout => \inst1|Add6~18_combout\,
	cout => \inst1|Add6~19\);

-- Location: LCCOMB_X69_Y40_N20
\inst1|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~20_combout\ = ((\inst1|Add4~28_combout\ $ (\instSndDrv|inst_left|RXReg\(10) $ (!\inst1|Add6~19\)))) # (GND)
-- \inst1|Add6~21\ = CARRY((\inst1|Add4~28_combout\ & ((\instSndDrv|inst_left|RXReg\(10)) # (!\inst1|Add6~19\))) # (!\inst1|Add4~28_combout\ & (\instSndDrv|inst_left|RXReg\(10) & !\inst1|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~28_combout\,
	datab => \instSndDrv|inst_left|RXReg\(10),
	datad => VCC,
	cin => \inst1|Add6~19\,
	combout => \inst1|Add6~20_combout\,
	cout => \inst1|Add6~21\);

-- Location: LCCOMB_X69_Y40_N22
\inst1|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~22_combout\ = (\instSndDrv|inst_left|RXReg\(11) & ((\inst1|Add4~27_combout\ & (\inst1|Add6~21\ & VCC)) # (!\inst1|Add4~27_combout\ & (!\inst1|Add6~21\)))) # (!\instSndDrv|inst_left|RXReg\(11) & ((\inst1|Add4~27_combout\ & (!\inst1|Add6~21\)) # 
-- (!\inst1|Add4~27_combout\ & ((\inst1|Add6~21\) # (GND)))))
-- \inst1|Add6~23\ = CARRY((\instSndDrv|inst_left|RXReg\(11) & (!\inst1|Add4~27_combout\ & !\inst1|Add6~21\)) # (!\instSndDrv|inst_left|RXReg\(11) & ((!\inst1|Add6~21\) # (!\inst1|Add4~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(11),
	datab => \inst1|Add4~27_combout\,
	datad => VCC,
	cin => \inst1|Add6~21\,
	combout => \inst1|Add6~22_combout\,
	cout => \inst1|Add6~23\);

-- Location: LCCOMB_X69_Y40_N24
\inst1|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~24_combout\ = ((\instSndDrv|inst_left|RXReg\(12) $ (\inst1|Add4~26_combout\ $ (!\inst1|Add6~23\)))) # (GND)
-- \inst1|Add6~25\ = CARRY((\instSndDrv|inst_left|RXReg\(12) & ((\inst1|Add4~26_combout\) # (!\inst1|Add6~23\))) # (!\instSndDrv|inst_left|RXReg\(12) & (\inst1|Add4~26_combout\ & !\inst1|Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(12),
	datab => \inst1|Add4~26_combout\,
	datad => VCC,
	cin => \inst1|Add6~23\,
	combout => \inst1|Add6~24_combout\,
	cout => \inst1|Add6~25\);

-- Location: LCCOMB_X69_Y40_N26
\inst1|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~26_combout\ = (\instSndDrv|inst_left|RXReg\(13) & ((\inst1|Add4~26_combout\ & (\inst1|Add6~25\ & VCC)) # (!\inst1|Add4~26_combout\ & (!\inst1|Add6~25\)))) # (!\instSndDrv|inst_left|RXReg\(13) & ((\inst1|Add4~26_combout\ & (!\inst1|Add6~25\)) # 
-- (!\inst1|Add4~26_combout\ & ((\inst1|Add6~25\) # (GND)))))
-- \inst1|Add6~27\ = CARRY((\instSndDrv|inst_left|RXReg\(13) & (!\inst1|Add4~26_combout\ & !\inst1|Add6~25\)) # (!\instSndDrv|inst_left|RXReg\(13) & ((!\inst1|Add6~25\) # (!\inst1|Add4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(13),
	datab => \inst1|Add4~26_combout\,
	datad => VCC,
	cin => \inst1|Add6~25\,
	combout => \inst1|Add6~26_combout\,
	cout => \inst1|Add6~27\);

-- Location: LCCOMB_X69_Y40_N28
\inst1|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~28_combout\ = ((\instSndDrv|inst_left|RXReg\(14) $ (\inst1|Add4~26_combout\ $ (!\inst1|Add6~27\)))) # (GND)
-- \inst1|Add6~29\ = CARRY((\instSndDrv|inst_left|RXReg\(14) & ((\inst1|Add4~26_combout\) # (!\inst1|Add6~27\))) # (!\instSndDrv|inst_left|RXReg\(14) & (\inst1|Add4~26_combout\ & !\inst1|Add6~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(14),
	datab => \inst1|Add4~26_combout\,
	datad => VCC,
	cin => \inst1|Add6~27\,
	combout => \inst1|Add6~28_combout\,
	cout => \inst1|Add6~29\);

-- Location: LCCOMB_X70_Y35_N30
\inst1|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~0_combout\ = (\instSndDrv|inst_ctrl|Equal1~0_combout\ & (!\instSndDrv|inst_ctrl|cntr\(6) & (!\instSndDrv|inst_ctrl|cntr\(9) & \instSndDrv|inst_ctrl|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|Equal1~0_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(6),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_ctrl|Equal1~1_combout\,
	combout => \inst1|process_1~0_combout\);

-- Location: LCCOMB_X70_Y40_N8
\inst1|noise[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise[14]~feeder_combout\ = \inst1|noise\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|noise\(15),
	combout => \inst1|noise[14]~feeder_combout\);

-- Location: FF_X70_Y40_N9
\inst1|noise[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(14));

-- Location: FF_X70_Y40_N19
\inst1|noise[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|noise\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(13));

-- Location: FF_X70_Y41_N7
\inst1|noise[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|noise\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(12));

-- Location: LCCOMB_X70_Y41_N24
\inst1|noise[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise[11]~feeder_combout\ = \inst1|noise\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|noise\(12),
	combout => \inst1|noise[11]~feeder_combout\);

-- Location: FF_X70_Y41_N25
\inst1|noise[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(11));

-- Location: LCCOMB_X70_Y41_N20
\inst1|noise[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise[10]~feeder_combout\ = \inst1|noise\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|noise\(11),
	combout => \inst1|noise[10]~feeder_combout\);

-- Location: FF_X70_Y41_N21
\inst1|noise[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(10));

-- Location: LCCOMB_X72_Y41_N0
\inst1|noise[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise[9]~feeder_combout\ = \inst1|noise\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|noise\(10),
	combout => \inst1|noise[9]~feeder_combout\);

-- Location: FF_X72_Y41_N1
\inst1|noise[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(9));

-- Location: LCCOMB_X72_Y41_N12
\inst1|noise[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise[8]~feeder_combout\ = \inst1|noise\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|noise\(9),
	combout => \inst1|noise[8]~feeder_combout\);

-- Location: FF_X72_Y41_N13
\inst1|noise[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(8));

-- Location: LCCOMB_X72_Y41_N10
\inst1|noise[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise[7]~feeder_combout\ = \inst1|noise\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|noise\(8),
	combout => \inst1|noise[7]~feeder_combout\);

-- Location: FF_X72_Y41_N11
\inst1|noise[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(7));

-- Location: LCCOMB_X72_Y41_N24
\inst1|noise~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|noise~0_combout\ = \inst1|noise\(0) $ (!\inst1|noise\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|noise\(0),
	datad => \inst1|noise\(7),
	combout => \inst1|noise~0_combout\);

-- Location: FF_X72_Y41_N25
\inst1|noise[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|noise~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|noise\(15));

-- Location: LCCOMB_X70_Y40_N24
\inst1|LDAC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~1_combout\ = (\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & (\inst1|Add6~28_combout\))) # (!\inst1|process_1~0_combout\ & (((!\inst1|noise\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|Add6~28_combout\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|noise\(15),
	combout => \inst1|LDAC~1_combout\);

-- Location: FF_X70_Y40_N25
\inst1|LDAC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~1_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(14));

-- Location: LCCOMB_X72_Y40_N2
\instSndDrv|inst_left|TXReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~2_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(13))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(13),
	datab => \inst1|LDAC\(14),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~2_combout\);

-- Location: FF_X73_Y42_N27
\inst1|DAC_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|DAC_en~q\);

-- Location: LCCOMB_X73_Y42_N0
\instSndDrv|inst_right|tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|tx~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(0) & (\instSndDrv|inst_ctrl|cntr\(1) & (\instSndDrv|inst_ctrl|cntr\(3) & \instSndDrv|inst_ctrl|cntr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(0),
	datab => \instSndDrv|inst_ctrl|cntr\(1),
	datac => \instSndDrv|inst_ctrl|cntr\(3),
	datad => \instSndDrv|inst_ctrl|cntr\(2),
	combout => \instSndDrv|inst_right|tx~0_combout\);

-- Location: LCCOMB_X72_Y40_N4
\instSndDrv|inst_left|TXReg[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg[13]~1_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|tx~0_combout\))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|DAC_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \inst1|DAC_en~q\,
	datad => \instSndDrv|inst_right|tx~0_combout\,
	combout => \instSndDrv|inst_left|TXReg[13]~1_combout\);

-- Location: FF_X72_Y40_N3
\instSndDrv|inst_left|TXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~2_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(14));

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X69_Y40_N30
\inst1|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~30_combout\ = \instSndDrv|inst_left|RXReg\(15) $ (\inst1|Add6~29\ $ (\inst1|Add4~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(15),
	datad => \inst1|Add4~26_combout\,
	cin => \inst1|Add6~29\,
	combout => \inst1|Add6~30_combout\);

-- Location: LCCOMB_X70_Y38_N0
\inst1|LDAC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LDAC~0_combout\ = (\inst1|process_1~0_combout\ & (((!\SW[5]~input_o\ & \inst1|Add6~30_combout\)))) # (!\inst1|process_1~0_combout\ & (!\inst1|noise\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|noise\(15),
	datac => \SW[5]~input_o\,
	datad => \inst1|Add6~30_combout\,
	combout => \inst1|LDAC~0_combout\);

-- Location: FF_X70_Y38_N1
\inst1|LDAC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LDAC~0_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LDAC\(15));

-- Location: LCCOMB_X72_Y40_N24
\instSndDrv|inst_left|TXReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(14))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|LDAC\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(14),
	datac => \inst1|LDAC\(15),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~0_combout\);

-- Location: FF_X72_Y40_N25
\instSndDrv|inst_left|TXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~0_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_left|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(15));

-- Location: FF_X67_Y40_N1
\inst1|am[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~30_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(15));

-- Location: LCCOMB_X67_Y41_N0
\inst1|ar[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ar[15]~feeder_combout\ = \inst1|psac_inst|Add1~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|psac_inst|Add1~30_combout\,
	combout => \inst1|ar[15]~feeder_combout\);

-- Location: LCCOMB_X66_Y41_N16
\inst1|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux50~0_combout\ = (!\inst1|state_counter\(1) & (!\inst1|state_counter\(3) & (\inst1|state_counter\(2) & \inst1|state_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state_counter\(1),
	datab => \inst1|state_counter\(3),
	datac => \inst1|state_counter\(2),
	datad => \inst1|state_counter\(0),
	combout => \inst1|Mux50~0_combout\);

-- Location: FF_X67_Y41_N1
\inst1|ar[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|ar[15]~feeder_combout\,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(15));

-- Location: FF_X67_Y41_N19
\inst1|ar[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~33_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(12));

-- Location: FF_X67_Y41_N17
\inst1|ar[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~34_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(11));

-- Location: FF_X67_Y41_N15
\inst1|ar[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~35_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(10));

-- Location: FF_X66_Y40_N9
\inst1|am[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|psac_inst|Add1~35_combout\,
	ena => \inst1|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|am\(10));

-- Location: FF_X67_Y41_N9
\inst1|ar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~38_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(7));

-- Location: LCCOMB_X66_Y40_N10
\inst1|psac_inst|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|psac_inst|Add1~40_combout\ = (\inst1|psac_inst|inv_res_2~q\ & (\inst1|psac_inst|Add1~8_combout\)) # (!\inst1|psac_inst|inv_res_2~q\ & ((\inst1|psac_inst|Res_2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|psac_inst|Add1~8_combout\,
	datac => \inst1|psac_inst|Res_2\(5),
	datad => \inst1|psac_inst|inv_res_2~q\,
	combout => \inst1|psac_inst|Add1~40_combout\);

-- Location: FF_X67_Y41_N5
\inst1|ar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~40_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(5));

-- Location: FF_X67_Y41_N3
\inst1|ar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|psac_inst|Add1~41_combout\,
	sload => VCC,
	ena => \inst1|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ar\(4));

-- Location: LCCOMB_X67_Y41_N8
\inst1|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~6_combout\ = (\inst1|am\(8) & ((\inst1|ar\(7) & (\inst1|Add5~5\ & VCC)) # (!\inst1|ar\(7) & (!\inst1|Add5~5\)))) # (!\inst1|am\(8) & ((\inst1|ar\(7) & (!\inst1|Add5~5\)) # (!\inst1|ar\(7) & ((\inst1|Add5~5\) # (GND)))))
-- \inst1|Add5~7\ = CARRY((\inst1|am\(8) & (!\inst1|ar\(7) & !\inst1|Add5~5\)) # (!\inst1|am\(8) & ((!\inst1|Add5~5\) # (!\inst1|ar\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(8),
	datab => \inst1|ar\(7),
	datad => VCC,
	cin => \inst1|Add5~5\,
	combout => \inst1|Add5~6_combout\,
	cout => \inst1|Add5~7\);

-- Location: LCCOMB_X67_Y41_N12
\inst1|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~10_combout\ = (\inst1|ar\(9) & ((\inst1|am\(10) & (\inst1|Add5~9\ & VCC)) # (!\inst1|am\(10) & (!\inst1|Add5~9\)))) # (!\inst1|ar\(9) & ((\inst1|am\(10) & (!\inst1|Add5~9\)) # (!\inst1|am\(10) & ((\inst1|Add5~9\) # (GND)))))
-- \inst1|Add5~11\ = CARRY((\inst1|ar\(9) & (!\inst1|am\(10) & !\inst1|Add5~9\)) # (!\inst1|ar\(9) & ((!\inst1|Add5~9\) # (!\inst1|am\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ar\(9),
	datab => \inst1|am\(10),
	datad => VCC,
	cin => \inst1|Add5~9\,
	combout => \inst1|Add5~10_combout\,
	cout => \inst1|Add5~11\);

-- Location: LCCOMB_X67_Y41_N14
\inst1|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~12_combout\ = ((\inst1|am\(11) $ (\inst1|ar\(10) $ (!\inst1|Add5~11\)))) # (GND)
-- \inst1|Add5~13\ = CARRY((\inst1|am\(11) & ((\inst1|ar\(10)) # (!\inst1|Add5~11\))) # (!\inst1|am\(11) & (\inst1|ar\(10) & !\inst1|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|am\(11),
	datab => \inst1|ar\(10),
	datad => VCC,
	cin => \inst1|Add5~11\,
	combout => \inst1|Add5~12_combout\,
	cout => \inst1|Add5~13\);

-- Location: LCCOMB_X67_Y41_N24
\inst1|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~22_combout\ = (\inst1|ar\(15) & ((\inst1|am\(15) & (\inst1|Add5~21\ & VCC)) # (!\inst1|am\(15) & (!\inst1|Add5~21\)))) # (!\inst1|ar\(15) & ((\inst1|am\(15) & (!\inst1|Add5~21\)) # (!\inst1|am\(15) & ((\inst1|Add5~21\) # (GND)))))
-- \inst1|Add5~23\ = CARRY((\inst1|ar\(15) & (!\inst1|am\(15) & !\inst1|Add5~21\)) # (!\inst1|ar\(15) & ((!\inst1|Add5~21\) # (!\inst1|am\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ar\(15),
	datab => \inst1|am\(15),
	datad => VCC,
	cin => \inst1|Add5~21\,
	combout => \inst1|Add5~22_combout\,
	cout => \inst1|Add5~23\);

-- Location: LCCOMB_X67_Y41_N26
\inst1|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~24_combout\ = \inst1|am\(15) $ (\inst1|Add5~23\ $ (!\inst1|ar\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|am\(15),
	datad => \inst1|ar\(15),
	cin => \inst1|Add5~23\,
	combout => \inst1|Add5~24_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X67_Y41_N28
\inst1|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~26_combout\ = (\inst1|Add5~24_combout\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add5~24_combout\,
	datad => \SW[6]~input_o\,
	combout => \inst1|Add5~26_combout\);

-- Location: LCCOMB_X73_Y42_N30
\instSndDrv|inst_right|RXReg[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[15]~0_combout\ = (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|tx~1_combout\ & (!\instSndDrv|inst_ctrl|cntr\(3) & !\instSndDrv|inst_ctrl|cntr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_right|tx~1_combout\,
	datac => \instSndDrv|inst_ctrl|cntr\(3),
	datad => \instSndDrv|inst_ctrl|cntr\(8),
	combout => \instSndDrv|inst_right|RXReg[15]~0_combout\);

-- Location: FF_X69_Y41_N1
\instSndDrv|inst_right|RXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adcdat~input_o\,
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(0));

-- Location: FF_X69_Y41_N3
\instSndDrv|inst_right|RXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(0),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(1));

-- Location: FF_X69_Y41_N5
\instSndDrv|inst_right|RXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(1),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(2));

-- Location: FF_X69_Y41_N7
\instSndDrv|inst_right|RXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(2),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(3));

-- Location: FF_X69_Y41_N9
\instSndDrv|inst_right|RXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(3),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(4));

-- Location: FF_X69_Y41_N11
\instSndDrv|inst_right|RXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(4),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(5));

-- Location: FF_X69_Y41_N13
\instSndDrv|inst_right|RXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(5),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(6));

-- Location: FF_X69_Y41_N15
\instSndDrv|inst_right|RXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(6),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(7));

-- Location: FF_X69_Y41_N17
\instSndDrv|inst_right|RXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(7),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(8));

-- Location: FF_X69_Y41_N19
\instSndDrv|inst_right|RXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(8),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(9));

-- Location: FF_X69_Y41_N21
\instSndDrv|inst_right|RXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(9),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(10));

-- Location: FF_X69_Y41_N23
\instSndDrv|inst_right|RXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(10),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(11));

-- Location: FF_X69_Y41_N25
\instSndDrv|inst_right|RXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(11),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(12));

-- Location: FF_X69_Y41_N27
\instSndDrv|inst_right|RXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(12),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(13));

-- Location: FF_X69_Y41_N29
\instSndDrv|inst_right|RXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(13),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(14));

-- Location: LCCOMB_X68_Y41_N24
\inst1|Add5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~27_combout\ = (\SW[6]~input_o\ & \inst1|Add5~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst1|Add5~22_combout\,
	combout => \inst1|Add5~27_combout\);

-- Location: LCCOMB_X68_Y41_N18
\inst1|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~32_combout\ = (\SW[6]~input_o\ & \inst1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst1|Add5~12_combout\,
	combout => \inst1|Add5~32_combout\);

-- Location: LCCOMB_X67_Y41_N30
\inst1|Add5~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~33_combout\ = (\SW[6]~input_o\ & \inst1|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst1|Add5~10_combout\,
	combout => \inst1|Add5~33_combout\);

-- Location: LCCOMB_X68_Y41_N22
\inst1|Add5~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~35_combout\ = (\SW[6]~input_o\ & \inst1|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \inst1|Add5~6_combout\,
	combout => \inst1|Add5~35_combout\);

-- Location: LCCOMB_X69_Y41_N0
\inst1|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~0_combout\ = (\inst1|Add5~38_combout\ & (\instSndDrv|inst_right|RXReg\(0) $ (VCC))) # (!\inst1|Add5~38_combout\ & (\instSndDrv|inst_right|RXReg\(0) & VCC))
-- \inst1|Add7~1\ = CARRY((\inst1|Add5~38_combout\ & \instSndDrv|inst_right|RXReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~38_combout\,
	datab => \instSndDrv|inst_right|RXReg\(0),
	datad => VCC,
	combout => \inst1|Add7~0_combout\,
	cout => \inst1|Add7~1\);

-- Location: LCCOMB_X69_Y41_N2
\inst1|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~2_combout\ = (\inst1|Add5~37_combout\ & ((\instSndDrv|inst_right|RXReg\(1) & (\inst1|Add7~1\ & VCC)) # (!\instSndDrv|inst_right|RXReg\(1) & (!\inst1|Add7~1\)))) # (!\inst1|Add5~37_combout\ & ((\instSndDrv|inst_right|RXReg\(1) & 
-- (!\inst1|Add7~1\)) # (!\instSndDrv|inst_right|RXReg\(1) & ((\inst1|Add7~1\) # (GND)))))
-- \inst1|Add7~3\ = CARRY((\inst1|Add5~37_combout\ & (!\instSndDrv|inst_right|RXReg\(1) & !\inst1|Add7~1\)) # (!\inst1|Add5~37_combout\ & ((!\inst1|Add7~1\) # (!\instSndDrv|inst_right|RXReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~37_combout\,
	datab => \instSndDrv|inst_right|RXReg\(1),
	datad => VCC,
	cin => \inst1|Add7~1\,
	combout => \inst1|Add7~2_combout\,
	cout => \inst1|Add7~3\);

-- Location: LCCOMB_X69_Y41_N4
\inst1|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~4_combout\ = ((\inst1|Add5~36_combout\ $ (\instSndDrv|inst_right|RXReg\(2) $ (!\inst1|Add7~3\)))) # (GND)
-- \inst1|Add7~5\ = CARRY((\inst1|Add5~36_combout\ & ((\instSndDrv|inst_right|RXReg\(2)) # (!\inst1|Add7~3\))) # (!\inst1|Add5~36_combout\ & (\instSndDrv|inst_right|RXReg\(2) & !\inst1|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~36_combout\,
	datab => \instSndDrv|inst_right|RXReg\(2),
	datad => VCC,
	cin => \inst1|Add7~3\,
	combout => \inst1|Add7~4_combout\,
	cout => \inst1|Add7~5\);

-- Location: LCCOMB_X69_Y41_N6
\inst1|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~6_combout\ = (\instSndDrv|inst_right|RXReg\(3) & ((\inst1|Add5~35_combout\ & (\inst1|Add7~5\ & VCC)) # (!\inst1|Add5~35_combout\ & (!\inst1|Add7~5\)))) # (!\instSndDrv|inst_right|RXReg\(3) & ((\inst1|Add5~35_combout\ & (!\inst1|Add7~5\)) # 
-- (!\inst1|Add5~35_combout\ & ((\inst1|Add7~5\) # (GND)))))
-- \inst1|Add7~7\ = CARRY((\instSndDrv|inst_right|RXReg\(3) & (!\inst1|Add5~35_combout\ & !\inst1|Add7~5\)) # (!\instSndDrv|inst_right|RXReg\(3) & ((!\inst1|Add7~5\) # (!\inst1|Add5~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(3),
	datab => \inst1|Add5~35_combout\,
	datad => VCC,
	cin => \inst1|Add7~5\,
	combout => \inst1|Add7~6_combout\,
	cout => \inst1|Add7~7\);

-- Location: LCCOMB_X69_Y41_N8
\inst1|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~8_combout\ = ((\inst1|Add5~34_combout\ $ (\instSndDrv|inst_right|RXReg\(4) $ (!\inst1|Add7~7\)))) # (GND)
-- \inst1|Add7~9\ = CARRY((\inst1|Add5~34_combout\ & ((\instSndDrv|inst_right|RXReg\(4)) # (!\inst1|Add7~7\))) # (!\inst1|Add5~34_combout\ & (\instSndDrv|inst_right|RXReg\(4) & !\inst1|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~34_combout\,
	datab => \instSndDrv|inst_right|RXReg\(4),
	datad => VCC,
	cin => \inst1|Add7~7\,
	combout => \inst1|Add7~8_combout\,
	cout => \inst1|Add7~9\);

-- Location: LCCOMB_X69_Y41_N10
\inst1|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~10_combout\ = (\instSndDrv|inst_right|RXReg\(5) & ((\inst1|Add5~33_combout\ & (\inst1|Add7~9\ & VCC)) # (!\inst1|Add5~33_combout\ & (!\inst1|Add7~9\)))) # (!\instSndDrv|inst_right|RXReg\(5) & ((\inst1|Add5~33_combout\ & (!\inst1|Add7~9\)) # 
-- (!\inst1|Add5~33_combout\ & ((\inst1|Add7~9\) # (GND)))))
-- \inst1|Add7~11\ = CARRY((\instSndDrv|inst_right|RXReg\(5) & (!\inst1|Add5~33_combout\ & !\inst1|Add7~9\)) # (!\instSndDrv|inst_right|RXReg\(5) & ((!\inst1|Add7~9\) # (!\inst1|Add5~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(5),
	datab => \inst1|Add5~33_combout\,
	datad => VCC,
	cin => \inst1|Add7~9\,
	combout => \inst1|Add7~10_combout\,
	cout => \inst1|Add7~11\);

-- Location: LCCOMB_X69_Y41_N12
\inst1|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~12_combout\ = ((\instSndDrv|inst_right|RXReg\(6) $ (\inst1|Add5~32_combout\ $ (!\inst1|Add7~11\)))) # (GND)
-- \inst1|Add7~13\ = CARRY((\instSndDrv|inst_right|RXReg\(6) & ((\inst1|Add5~32_combout\) # (!\inst1|Add7~11\))) # (!\instSndDrv|inst_right|RXReg\(6) & (\inst1|Add5~32_combout\ & !\inst1|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(6),
	datab => \inst1|Add5~32_combout\,
	datad => VCC,
	cin => \inst1|Add7~11\,
	combout => \inst1|Add7~12_combout\,
	cout => \inst1|Add7~13\);

-- Location: LCCOMB_X69_Y41_N14
\inst1|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~14_combout\ = (\inst1|Add5~31_combout\ & ((\instSndDrv|inst_right|RXReg\(7) & (\inst1|Add7~13\ & VCC)) # (!\instSndDrv|inst_right|RXReg\(7) & (!\inst1|Add7~13\)))) # (!\inst1|Add5~31_combout\ & ((\instSndDrv|inst_right|RXReg\(7) & 
-- (!\inst1|Add7~13\)) # (!\instSndDrv|inst_right|RXReg\(7) & ((\inst1|Add7~13\) # (GND)))))
-- \inst1|Add7~15\ = CARRY((\inst1|Add5~31_combout\ & (!\instSndDrv|inst_right|RXReg\(7) & !\inst1|Add7~13\)) # (!\inst1|Add5~31_combout\ & ((!\inst1|Add7~13\) # (!\instSndDrv|inst_right|RXReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~31_combout\,
	datab => \instSndDrv|inst_right|RXReg\(7),
	datad => VCC,
	cin => \inst1|Add7~13\,
	combout => \inst1|Add7~14_combout\,
	cout => \inst1|Add7~15\);

-- Location: LCCOMB_X69_Y41_N16
\inst1|Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~16_combout\ = ((\inst1|Add5~30_combout\ $ (\instSndDrv|inst_right|RXReg\(8) $ (!\inst1|Add7~15\)))) # (GND)
-- \inst1|Add7~17\ = CARRY((\inst1|Add5~30_combout\ & ((\instSndDrv|inst_right|RXReg\(8)) # (!\inst1|Add7~15\))) # (!\inst1|Add5~30_combout\ & (\instSndDrv|inst_right|RXReg\(8) & !\inst1|Add7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~30_combout\,
	datab => \instSndDrv|inst_right|RXReg\(8),
	datad => VCC,
	cin => \inst1|Add7~15\,
	combout => \inst1|Add7~16_combout\,
	cout => \inst1|Add7~17\);

-- Location: LCCOMB_X69_Y41_N18
\inst1|Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~18_combout\ = (\inst1|Add5~29_combout\ & ((\instSndDrv|inst_right|RXReg\(9) & (\inst1|Add7~17\ & VCC)) # (!\instSndDrv|inst_right|RXReg\(9) & (!\inst1|Add7~17\)))) # (!\inst1|Add5~29_combout\ & ((\instSndDrv|inst_right|RXReg\(9) & 
-- (!\inst1|Add7~17\)) # (!\instSndDrv|inst_right|RXReg\(9) & ((\inst1|Add7~17\) # (GND)))))
-- \inst1|Add7~19\ = CARRY((\inst1|Add5~29_combout\ & (!\instSndDrv|inst_right|RXReg\(9) & !\inst1|Add7~17\)) # (!\inst1|Add5~29_combout\ & ((!\inst1|Add7~17\) # (!\instSndDrv|inst_right|RXReg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~29_combout\,
	datab => \instSndDrv|inst_right|RXReg\(9),
	datad => VCC,
	cin => \inst1|Add7~17\,
	combout => \inst1|Add7~18_combout\,
	cout => \inst1|Add7~19\);

-- Location: LCCOMB_X69_Y41_N20
\inst1|Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~20_combout\ = ((\inst1|Add5~28_combout\ $ (\instSndDrv|inst_right|RXReg\(10) $ (!\inst1|Add7~19\)))) # (GND)
-- \inst1|Add7~21\ = CARRY((\inst1|Add5~28_combout\ & ((\instSndDrv|inst_right|RXReg\(10)) # (!\inst1|Add7~19\))) # (!\inst1|Add5~28_combout\ & (\instSndDrv|inst_right|RXReg\(10) & !\inst1|Add7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~28_combout\,
	datab => \instSndDrv|inst_right|RXReg\(10),
	datad => VCC,
	cin => \inst1|Add7~19\,
	combout => \inst1|Add7~20_combout\,
	cout => \inst1|Add7~21\);

-- Location: LCCOMB_X69_Y41_N22
\inst1|Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~22_combout\ = (\instSndDrv|inst_right|RXReg\(11) & ((\inst1|Add5~27_combout\ & (\inst1|Add7~21\ & VCC)) # (!\inst1|Add5~27_combout\ & (!\inst1|Add7~21\)))) # (!\instSndDrv|inst_right|RXReg\(11) & ((\inst1|Add5~27_combout\ & (!\inst1|Add7~21\)) 
-- # (!\inst1|Add5~27_combout\ & ((\inst1|Add7~21\) # (GND)))))
-- \inst1|Add7~23\ = CARRY((\instSndDrv|inst_right|RXReg\(11) & (!\inst1|Add5~27_combout\ & !\inst1|Add7~21\)) # (!\instSndDrv|inst_right|RXReg\(11) & ((!\inst1|Add7~21\) # (!\inst1|Add5~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(11),
	datab => \inst1|Add5~27_combout\,
	datad => VCC,
	cin => \inst1|Add7~21\,
	combout => \inst1|Add7~22_combout\,
	cout => \inst1|Add7~23\);

-- Location: LCCOMB_X69_Y41_N24
\inst1|Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~24_combout\ = ((\inst1|Add5~26_combout\ $ (\instSndDrv|inst_right|RXReg\(12) $ (!\inst1|Add7~23\)))) # (GND)
-- \inst1|Add7~25\ = CARRY((\inst1|Add5~26_combout\ & ((\instSndDrv|inst_right|RXReg\(12)) # (!\inst1|Add7~23\))) # (!\inst1|Add5~26_combout\ & (\instSndDrv|inst_right|RXReg\(12) & !\inst1|Add7~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~26_combout\,
	datab => \instSndDrv|inst_right|RXReg\(12),
	datad => VCC,
	cin => \inst1|Add7~23\,
	combout => \inst1|Add7~24_combout\,
	cout => \inst1|Add7~25\);

-- Location: LCCOMB_X69_Y41_N26
\inst1|Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~26_combout\ = (\instSndDrv|inst_right|RXReg\(13) & ((\inst1|Add5~26_combout\ & (\inst1|Add7~25\ & VCC)) # (!\inst1|Add5~26_combout\ & (!\inst1|Add7~25\)))) # (!\instSndDrv|inst_right|RXReg\(13) & ((\inst1|Add5~26_combout\ & (!\inst1|Add7~25\)) 
-- # (!\inst1|Add5~26_combout\ & ((\inst1|Add7~25\) # (GND)))))
-- \inst1|Add7~27\ = CARRY((\instSndDrv|inst_right|RXReg\(13) & (!\inst1|Add5~26_combout\ & !\inst1|Add7~25\)) # (!\instSndDrv|inst_right|RXReg\(13) & ((!\inst1|Add7~25\) # (!\inst1|Add5~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(13),
	datab => \inst1|Add5~26_combout\,
	datad => VCC,
	cin => \inst1|Add7~25\,
	combout => \inst1|Add7~26_combout\,
	cout => \inst1|Add7~27\);

-- Location: LCCOMB_X69_Y41_N28
\inst1|Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~28_combout\ = ((\inst1|Add5~26_combout\ $ (\instSndDrv|inst_right|RXReg\(14) $ (!\inst1|Add7~27\)))) # (GND)
-- \inst1|Add7~29\ = CARRY((\inst1|Add5~26_combout\ & ((\instSndDrv|inst_right|RXReg\(14)) # (!\inst1|Add7~27\))) # (!\inst1|Add5~26_combout\ & (\instSndDrv|inst_right|RXReg\(14) & !\inst1|Add7~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~26_combout\,
	datab => \instSndDrv|inst_right|RXReg\(14),
	datad => VCC,
	cin => \inst1|Add7~27\,
	combout => \inst1|Add7~28_combout\,
	cout => \inst1|Add7~29\);

-- Location: LCCOMB_X69_Y41_N30
\inst1|Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~30_combout\ = \instSndDrv|inst_right|RXReg\(15) $ (\inst1|Add7~29\ $ (\inst1|Add5~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(15),
	datad => \inst1|Add5~26_combout\,
	cin => \inst1|Add7~29\,
	combout => \inst1|Add7~30_combout\);

-- Location: LCCOMB_X70_Y38_N2
\inst1|RDAC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~0_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(15))))) # (!\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & (\inst1|Add7~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|Add7~30_combout\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|noise\(15),
	combout => \inst1|RDAC~0_combout\);

-- Location: FF_X70_Y38_N3
\inst1|RDAC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~0_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(15));

-- Location: LCCOMB_X70_Y38_N20
\inst1|RDAC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~1_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(15))))) # (!\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & (\inst1|Add7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|Add7~28_combout\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|noise\(15),
	combout => \inst1|RDAC~1_combout\);

-- Location: FF_X70_Y38_N21
\inst1|RDAC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~1_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(14));

-- Location: LCCOMB_X70_Y38_N22
\inst1|RDAC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~2_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(15))))) # (!\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & (\inst1|Add7~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|Add7~26_combout\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|noise\(15),
	combout => \inst1|RDAC~2_combout\);

-- Location: FF_X70_Y38_N23
\inst1|RDAC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~2_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(13));

-- Location: LCCOMB_X70_Y40_N22
\inst1|RDAC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~5_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(14))))) # (!\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & ((\inst1|Add7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|noise\(14),
	datad => \inst1|Add7~20_combout\,
	combout => \inst1|RDAC~5_combout\);

-- Location: FF_X70_Y40_N23
\inst1|RDAC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~5_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(10));

-- Location: LCCOMB_X70_Y41_N8
\inst1|RDAC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~7_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(12))))) # (!\inst1|process_1~0_combout\ & (\inst1|Add7~16_combout\ & (!\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~0_combout\,
	datab => \inst1|Add7~16_combout\,
	datac => \SW[5]~input_o\,
	datad => \inst1|noise\(12),
	combout => \inst1|RDAC~7_combout\);

-- Location: FF_X70_Y41_N9
\inst1|RDAC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~7_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(8));

-- Location: LCCOMB_X74_Y38_N4
\instSndDrv|inst_right|TXReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~8_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|RDAC\(8)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(7),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst1|RDAC\(8),
	combout => \instSndDrv|inst_right|TXReg~8_combout\);

-- Location: LCCOMB_X70_Y37_N2
\instSndDrv|inst_right|TXReg[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg[13]~1_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|DAC_en~q\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|tx~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DAC_en~q\,
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|tx~0_combout\,
	combout => \instSndDrv|inst_right|TXReg[13]~1_combout\);

-- Location: FF_X74_Y38_N5
\instSndDrv|inst_right|TXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~8_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(8));

-- Location: LCCOMB_X70_Y41_N26
\inst1|RDAC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|RDAC~6_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|noise\(13))))) # (!\inst1|process_1~0_combout\ & (!\SW[5]~input_o\ & (\inst1|Add7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst1|Add7~18_combout\,
	datac => \inst1|noise\(13),
	datad => \inst1|process_1~0_combout\,
	combout => \inst1|RDAC~6_combout\);

-- Location: FF_X70_Y41_N27
\inst1|RDAC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|RDAC~6_combout\,
	ena => \instSndDrv|inst_ctrl|ADC_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|RDAC\(9));

-- Location: LCCOMB_X74_Y38_N2
\instSndDrv|inst_right|TXReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~7_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst1|RDAC\(9)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|TXReg\(8),
	datad => \inst1|RDAC\(9),
	combout => \instSndDrv|inst_right|TXReg~7_combout\);

-- Location: FF_X74_Y38_N3
\instSndDrv|inst_right|TXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~7_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(9));

-- Location: LCCOMB_X74_Y38_N8
\instSndDrv|inst_right|TXReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~6_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(10))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst1|RDAC\(10),
	datad => \instSndDrv|inst_right|TXReg\(9),
	combout => \instSndDrv|inst_right|TXReg~6_combout\);

-- Location: FF_X74_Y38_N9
\instSndDrv|inst_right|TXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~6_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(10));

-- Location: LCCOMB_X74_Y38_N14
\instSndDrv|inst_right|TXReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~5_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(11))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RDAC\(11),
	datab => \instSndDrv|inst_right|TXReg\(10),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~5_combout\);

-- Location: FF_X74_Y38_N15
\instSndDrv|inst_right|TXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~5_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(11));

-- Location: LCCOMB_X74_Y38_N12
\instSndDrv|inst_right|TXReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~4_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(12))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|RDAC\(12),
	datab => \instSndDrv|inst_right|TXReg\(11),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~4_combout\);

-- Location: FF_X74_Y38_N13
\instSndDrv|inst_right|TXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~4_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(12));

-- Location: LCCOMB_X74_Y38_N18
\instSndDrv|inst_right|TXReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~3_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(13))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RDAC\(13),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|TXReg\(12),
	combout => \instSndDrv|inst_right|TXReg~3_combout\);

-- Location: FF_X74_Y38_N19
\instSndDrv|inst_right|TXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~3_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(13));

-- Location: LCCOMB_X74_Y38_N0
\instSndDrv|inst_right|TXReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~2_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(14))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RDAC\(14),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|TXReg\(13),
	combout => \instSndDrv|inst_right|TXReg~2_combout\);

-- Location: FF_X74_Y38_N1
\instSndDrv|inst_right|TXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~2_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(14));

-- Location: LCCOMB_X72_Y42_N0
\instSndDrv|inst_right|TXReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst1|RDAC\(15))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|RDAC\(15),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|TXReg\(14),
	combout => \instSndDrv|inst_right|TXReg~0_combout\);

-- Location: FF_X72_Y42_N1
\instSndDrv|inst_right|TXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~0_combout\,
	clrn => \rstn~input_o\,
	ena => \instSndDrv|inst_right|TXReg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(15));

-- Location: LCCOMB_X72_Y42_N2
\instSndDrv|inst1|dacdatout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst1|dacdatout~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(15))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(15),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|TXReg\(15),
	combout => \instSndDrv|inst1|dacdatout~0_combout\);

-- Location: LCCOMB_X69_Y38_N8
\inst1|Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~32_combout\ = (\inst1|Add7~0_combout\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add7~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|Add7~32_combout\);

-- Location: LCCOMB_X69_Y38_N28
\inst1|Add7~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~33_combout\ = (\inst1|Add7~2_combout\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add7~2_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|Add7~33_combout\);

-- Location: LCCOMB_X69_Y38_N30
\inst1|Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~34_combout\ = (\inst1|Add7~4_combout\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add7~4_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|Add7~34_combout\);

-- Location: LCCOMB_X72_Y41_N30
\inst1|Add7~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~35_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => \inst1|Add7~6_combout\,
	combout => \inst1|Add7~35_combout\);

-- Location: LCCOMB_X72_Y41_N16
\inst1|Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~36_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => \inst1|Add7~8_combout\,
	combout => \inst1|Add7~36_combout\);

-- Location: LCCOMB_X72_Y41_N18
\inst1|Add7~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~37_combout\ = (\inst1|Add7~10_combout\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add7~10_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|Add7~37_combout\);

-- Location: LCCOMB_X70_Y39_N24
\inst1|Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~38_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~12_combout\,
	combout => \inst1|Add7~38_combout\);

-- Location: LCCOMB_X70_Y41_N0
\inst1|Add7~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~39_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~14_combout\,
	combout => \inst1|Add7~39_combout\);

-- Location: LCCOMB_X70_Y41_N18
\inst1|Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~40_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \inst1|Add7~16_combout\,
	combout => \inst1|Add7~40_combout\);

-- Location: LCCOMB_X70_Y41_N12
\inst1|Add7~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~41_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~18_combout\,
	combout => \inst1|Add7~41_combout\);

-- Location: LCCOMB_X70_Y40_N20
\inst1|Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~42_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~20_combout\,
	combout => \inst1|Add7~42_combout\);

-- Location: LCCOMB_X70_Y38_N12
\inst1|Add7~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~43_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~22_combout\,
	combout => \inst1|Add7~43_combout\);

-- Location: LCCOMB_X70_Y38_N6
\inst1|Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~44_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~24_combout\,
	combout => \inst1|Add7~44_combout\);

-- Location: LCCOMB_X70_Y38_N24
\inst1|Add7~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~45_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~26_combout\,
	combout => \inst1|Add7~45_combout\);

-- Location: LCCOMB_X70_Y38_N26
\inst1|Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~46_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~28_combout\,
	combout => \inst1|Add7~46_combout\);

-- Location: LCCOMB_X70_Y38_N4
\inst1|Add7~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add7~47_combout\ = (!\SW[5]~input_o\ & \inst1|Add7~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add7~30_combout\,
	combout => \inst1|Add7~47_combout\);

-- Location: DSPMULT_X71_Y38_N0
\inst1|Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \inst1|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst1|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst1|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X72_Y37_N30
\inst1|rack[27]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[27]~95_combout\ = (\inst1|Add10~54_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT27\ & (\inst1|rack[26]~94\ & VCC)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT27\ & (!\inst1|rack[26]~94\)))) # (!\inst1|Add10~54_combout\ & 
-- ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT27\ & (!\inst1|rack[26]~94\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT27\ & ((\inst1|rack[26]~94\) # (GND)))))
-- \inst1|rack[27]~96\ = CARRY((\inst1|Add10~54_combout\ & (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT27\ & !\inst1|rack[26]~94\)) # (!\inst1|Add10~54_combout\ & ((!\inst1|rack[26]~94\) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~54_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \inst1|rack[26]~94\,
	combout => \inst1|rack[27]~95_combout\,
	cout => \inst1|rack[27]~96\);

-- Location: LCCOMB_X72_Y36_N0
\inst1|rack[28]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[28]~97_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT28\ $ (\inst1|Add10~56_combout\ $ (!\inst1|rack[27]~96\)))) # (GND)
-- \inst1|rack[28]~98\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT28\ & ((\inst1|Add10~56_combout\) # (!\inst1|rack[27]~96\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT28\ & (\inst1|Add10~56_combout\ & !\inst1|rack[27]~96\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT28\,
	datab => \inst1|Add10~56_combout\,
	datad => VCC,
	cin => \inst1|rack[27]~96\,
	combout => \inst1|rack[28]~97_combout\,
	cout => \inst1|rack[28]~98\);

-- Location: LCCOMB_X72_Y36_N30
\inst1|rack[8]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[8]~58_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_ctrl|Equal1~0_combout\ & (!\instSndDrv|inst_ctrl|cntr\(6) & \instSndDrv|inst_ctrl|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_ctrl|Equal1~0_combout\,
	datac => \instSndDrv|inst_ctrl|cntr\(6),
	datad => \instSndDrv|inst_ctrl|Equal1~1_combout\,
	combout => \inst1|rack[8]~58_combout\);

-- Location: FF_X72_Y36_N1
\inst1|rack[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[28]~97_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(28));

-- Location: LCCOMB_X72_Y37_N20
\inst1|rack[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[22]~85_combout\ = ((\inst1|Add10~44_combout\ $ (\inst1|Mult1|auto_generated|mac_out2~DATAOUT22\ $ (!\inst1|rack[21]~84\)))) # (GND)
-- \inst1|rack[22]~86\ = CARRY((\inst1|Add10~44_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT22\) # (!\inst1|rack[21]~84\))) # (!\inst1|Add10~44_combout\ & (\inst1|Mult1|auto_generated|mac_out2~DATAOUT22\ & !\inst1|rack[21]~84\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~44_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \inst1|rack[21]~84\,
	combout => \inst1|rack[22]~85_combout\,
	cout => \inst1|rack[22]~86\);

-- Location: FF_X72_Y37_N21
\inst1|rack[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[22]~85_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(22));

-- Location: LCCOMB_X72_Y37_N2
\inst1|rack[13]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[13]~67_combout\ = (\inst1|Add10~26_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT13\ & (\inst1|rack[12]~66\ & VCC)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\inst1|rack[12]~66\)))) # (!\inst1|Add10~26_combout\ & 
-- ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\inst1|rack[12]~66\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\inst1|rack[12]~66\) # (GND)))))
-- \inst1|rack[13]~68\ = CARRY((\inst1|Add10~26_combout\ & (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT13\ & !\inst1|rack[12]~66\)) # (!\inst1|Add10~26_combout\ & ((!\inst1|rack[12]~66\) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~26_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \inst1|rack[12]~66\,
	combout => \inst1|rack[13]~67_combout\,
	cout => \inst1|rack[13]~68\);

-- Location: FF_X72_Y37_N3
\inst1|rack[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[13]~67_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(13));

-- Location: LCCOMB_X72_Y38_N30
\inst1|rack[11]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[11]~63_combout\ = (\inst1|Add10~22_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT11\ & (\inst1|rack[10]~62\ & VCC)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\inst1|rack[10]~62\)))) # (!\inst1|Add10~22_combout\ & 
-- ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\inst1|rack[10]~62\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\inst1|rack[10]~62\) # (GND)))))
-- \inst1|rack[11]~64\ = CARRY((\inst1|Add10~22_combout\ & (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT11\ & !\inst1|rack[10]~62\)) # (!\inst1|Add10~22_combout\ & ((!\inst1|rack[10]~62\) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~22_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \inst1|rack[10]~62\,
	combout => \inst1|rack[11]~63_combout\,
	cout => \inst1|rack[11]~64\);

-- Location: LCCOMB_X72_Y37_N0
\inst1|rack[12]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[12]~65_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT12\ $ (\inst1|Add10~24_combout\ $ (!\inst1|rack[11]~64\)))) # (GND)
-- \inst1|rack[12]~66\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\inst1|Add10~24_combout\) # (!\inst1|rack[11]~64\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT12\ & (\inst1|Add10~24_combout\ & !\inst1|rack[11]~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datab => \inst1|Add10~24_combout\,
	datad => VCC,
	cin => \inst1|rack[11]~64\,
	combout => \inst1|rack[12]~65_combout\,
	cout => \inst1|rack[12]~66\);

-- Location: FF_X72_Y37_N1
\inst1|rack[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[12]~65_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(12));

-- Location: LCCOMB_X73_Y38_N10
\inst1|Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~2_combout\ = (\inst1|rack\(1) & ((\inst1|rack\(11) & (!\inst1|Add10~1\)) # (!\inst1|rack\(11) & (\inst1|Add10~1\ & VCC)))) # (!\inst1|rack\(1) & ((\inst1|rack\(11) & ((\inst1|Add10~1\) # (GND))) # (!\inst1|rack\(11) & (!\inst1|Add10~1\))))
-- \inst1|Add10~3\ = CARRY((\inst1|rack\(1) & (\inst1|rack\(11) & !\inst1|Add10~1\)) # (!\inst1|rack\(1) & ((\inst1|rack\(11)) # (!\inst1|Add10~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(1),
	datab => \inst1|rack\(11),
	datad => VCC,
	cin => \inst1|Add10~1\,
	combout => \inst1|Add10~2_combout\,
	cout => \inst1|Add10~3\);

-- Location: LCCOMB_X73_Y38_N12
\inst1|Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~4_combout\ = ((\inst1|rack\(2) $ (\inst1|rack\(12) $ (\inst1|Add10~3\)))) # (GND)
-- \inst1|Add10~5\ = CARRY((\inst1|rack\(2) & ((!\inst1|Add10~3\) # (!\inst1|rack\(12)))) # (!\inst1|rack\(2) & (!\inst1|rack\(12) & !\inst1|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(2),
	datab => \inst1|rack\(12),
	datad => VCC,
	cin => \inst1|Add10~3\,
	combout => \inst1|Add10~4_combout\,
	cout => \inst1|Add10~5\);

-- Location: LCCOMB_X73_Y38_N14
\inst1|Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~6_combout\ = (\inst1|rack\(3) & ((\inst1|rack\(13) & (!\inst1|Add10~5\)) # (!\inst1|rack\(13) & (\inst1|Add10~5\ & VCC)))) # (!\inst1|rack\(3) & ((\inst1|rack\(13) & ((\inst1|Add10~5\) # (GND))) # (!\inst1|rack\(13) & (!\inst1|Add10~5\))))
-- \inst1|Add10~7\ = CARRY((\inst1|rack\(3) & (\inst1|rack\(13) & !\inst1|Add10~5\)) # (!\inst1|rack\(3) & ((\inst1|rack\(13)) # (!\inst1|Add10~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(3),
	datab => \inst1|rack\(13),
	datad => VCC,
	cin => \inst1|Add10~5\,
	combout => \inst1|Add10~6_combout\,
	cout => \inst1|Add10~7\);

-- Location: LCCOMB_X73_Y38_N16
\inst1|Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~8_combout\ = ((\inst1|rack\(4) $ (\inst1|rack\(14) $ (\inst1|Add10~7\)))) # (GND)
-- \inst1|Add10~9\ = CARRY((\inst1|rack\(4) & ((!\inst1|Add10~7\) # (!\inst1|rack\(14)))) # (!\inst1|rack\(4) & (!\inst1|rack\(14) & !\inst1|Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(4),
	datab => \inst1|rack\(14),
	datad => VCC,
	cin => \inst1|Add10~7\,
	combout => \inst1|Add10~8_combout\,
	cout => \inst1|Add10~9\);

-- Location: LCCOMB_X72_Y38_N18
\inst1|rack[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[5]~50_combout\ = (\inst1|Add10~10_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT5\ & (\inst1|rack[4]~49\ & VCC)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\inst1|rack[4]~49\)))) # (!\inst1|Add10~10_combout\ & 
-- ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\inst1|rack[4]~49\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\inst1|rack[4]~49\) # (GND)))))
-- \inst1|rack[5]~51\ = CARRY((\inst1|Add10~10_combout\ & (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT5\ & !\inst1|rack[4]~49\)) # (!\inst1|Add10~10_combout\ & ((!\inst1|rack[4]~49\) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~10_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \inst1|rack[4]~49\,
	combout => \inst1|rack[5]~50_combout\,
	cout => \inst1|rack[5]~51\);

-- Location: LCCOMB_X72_Y38_N22
\inst1|rack[7]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[7]~54_combout\ = (\inst1|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\inst1|Add10~14_combout\ & (\inst1|rack[6]~53\ & VCC)) # (!\inst1|Add10~14_combout\ & (!\inst1|rack[6]~53\)))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT7\ & 
-- ((\inst1|Add10~14_combout\ & (!\inst1|rack[6]~53\)) # (!\inst1|Add10~14_combout\ & ((\inst1|rack[6]~53\) # (GND)))))
-- \inst1|rack[7]~55\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\inst1|Add10~14_combout\ & !\inst1|rack[6]~53\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((!\inst1|rack[6]~53\) # (!\inst1|Add10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \inst1|Add10~14_combout\,
	datad => VCC,
	cin => \inst1|rack[6]~53\,
	combout => \inst1|rack[7]~54_combout\,
	cout => \inst1|rack[7]~55\);

-- Location: FF_X72_Y38_N23
\inst1|rack[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[7]~54_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(7));

-- Location: LCCOMB_X72_Y37_N6
\inst1|rack[15]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[15]~71_combout\ = (\inst1|Add10~30_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT15\ & (\inst1|rack[14]~70\ & VCC)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\inst1|rack[14]~70\)))) # (!\inst1|Add10~30_combout\ & 
-- ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\inst1|rack[14]~70\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\inst1|rack[14]~70\) # (GND)))))
-- \inst1|rack[15]~72\ = CARRY((\inst1|Add10~30_combout\ & (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT15\ & !\inst1|rack[14]~70\)) # (!\inst1|Add10~30_combout\ & ((!\inst1|rack[14]~70\) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~30_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \inst1|rack[14]~70\,
	combout => \inst1|rack[15]~71_combout\,
	cout => \inst1|rack[15]~72\);

-- Location: LCCOMB_X72_Y37_N8
\inst1|rack[16]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[16]~73_combout\ = ((\inst1|Add10~32_combout\ $ (\inst1|Mult1|auto_generated|mac_out2~DATAOUT16\ $ (!\inst1|rack[15]~72\)))) # (GND)
-- \inst1|rack[16]~74\ = CARRY((\inst1|Add10~32_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT16\) # (!\inst1|rack[15]~72\))) # (!\inst1|Add10~32_combout\ & (\inst1|Mult1|auto_generated|mac_out2~DATAOUT16\ & !\inst1|rack[15]~72\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~32_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \inst1|rack[15]~72\,
	combout => \inst1|rack[16]~73_combout\,
	cout => \inst1|rack[16]~74\);

-- Location: FF_X72_Y37_N9
\inst1|rack[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[16]~73_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(16));

-- Location: FF_X72_Y38_N19
\inst1|rack[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[5]~50_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(5));

-- Location: LCCOMB_X73_Y38_N22
\inst1|Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~14_combout\ = (\inst1|rack\(17) & ((\inst1|rack\(7) & (!\inst1|Add10~13\)) # (!\inst1|rack\(7) & ((\inst1|Add10~13\) # (GND))))) # (!\inst1|rack\(17) & ((\inst1|rack\(7) & (\inst1|Add10~13\ & VCC)) # (!\inst1|rack\(7) & (!\inst1|Add10~13\))))
-- \inst1|Add10~15\ = CARRY((\inst1|rack\(17) & ((!\inst1|Add10~13\) # (!\inst1|rack\(7)))) # (!\inst1|rack\(17) & (!\inst1|rack\(7) & !\inst1|Add10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(17),
	datab => \inst1|rack\(7),
	datad => VCC,
	cin => \inst1|Add10~13\,
	combout => \inst1|Add10~14_combout\,
	cout => \inst1|Add10~15\);

-- Location: LCCOMB_X72_Y38_N24
\inst1|rack[8]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[8]~56_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT8\ $ (\inst1|Add10~16_combout\ $ (!\inst1|rack[7]~55\)))) # (GND)
-- \inst1|rack[8]~57\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\inst1|Add10~16_combout\) # (!\inst1|rack[7]~55\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT8\ & (\inst1|Add10~16_combout\ & !\inst1|rack[7]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \inst1|Add10~16_combout\,
	datad => VCC,
	cin => \inst1|rack[7]~55\,
	combout => \inst1|rack[8]~56_combout\,
	cout => \inst1|rack[8]~57\);

-- Location: FF_X72_Y38_N25
\inst1|rack[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[8]~56_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(8));

-- Location: LCCOMB_X73_Y38_N24
\inst1|Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~16_combout\ = ((\inst1|rack\(18) $ (\inst1|rack\(8) $ (\inst1|Add10~15\)))) # (GND)
-- \inst1|Add10~17\ = CARRY((\inst1|rack\(18) & (\inst1|rack\(8) & !\inst1|Add10~15\)) # (!\inst1|rack\(18) & ((\inst1|rack\(8)) # (!\inst1|Add10~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(18),
	datab => \inst1|rack\(8),
	datad => VCC,
	cin => \inst1|Add10~15\,
	combout => \inst1|Add10~16_combout\,
	cout => \inst1|Add10~17\);

-- Location: LCCOMB_X72_Y38_N26
\inst1|rack[9]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[9]~59_combout\ = (\inst1|Add10~18_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT9\ & (\inst1|rack[8]~57\ & VCC)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\inst1|rack[8]~57\)))) # (!\inst1|Add10~18_combout\ & 
-- ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\inst1|rack[8]~57\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT9\ & ((\inst1|rack[8]~57\) # (GND)))))
-- \inst1|rack[9]~60\ = CARRY((\inst1|Add10~18_combout\ & (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\inst1|rack[8]~57\)) # (!\inst1|Add10~18_combout\ & ((!\inst1|rack[8]~57\) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~18_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \inst1|rack[8]~57\,
	combout => \inst1|rack[9]~59_combout\,
	cout => \inst1|rack[9]~60\);

-- Location: LCCOMB_X72_Y38_N28
\inst1|rack[10]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[10]~61_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT10\ $ (\inst1|Add10~20_combout\ $ (!\inst1|rack[9]~60\)))) # (GND)
-- \inst1|rack[10]~62\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT10\ & ((\inst1|Add10~20_combout\) # (!\inst1|rack[9]~60\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT10\ & (\inst1|Add10~20_combout\ & !\inst1|rack[9]~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datab => \inst1|Add10~20_combout\,
	datad => VCC,
	cin => \inst1|rack[9]~60\,
	combout => \inst1|rack[10]~61_combout\,
	cout => \inst1|rack[10]~62\);

-- Location: FF_X72_Y38_N31
\inst1|rack[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[11]~63_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(11));

-- Location: LCCOMB_X73_Y38_N28
\inst1|Add10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~20_combout\ = ((\inst1|rack\(20) $ (\inst1|rack\(10) $ (\inst1|Add10~19\)))) # (GND)
-- \inst1|Add10~21\ = CARRY((\inst1|rack\(20) & (\inst1|rack\(10) & !\inst1|Add10~19\)) # (!\inst1|rack\(20) & ((\inst1|rack\(10)) # (!\inst1|Add10~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(20),
	datab => \inst1|rack\(10),
	datad => VCC,
	cin => \inst1|Add10~19\,
	combout => \inst1|Add10~20_combout\,
	cout => \inst1|Add10~21\);

-- Location: LCCOMB_X73_Y37_N0
\inst1|Add10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~24_combout\ = ((\inst1|rack\(12) $ (\inst1|rack\(22) $ (\inst1|Add10~23\)))) # (GND)
-- \inst1|Add10~25\ = CARRY((\inst1|rack\(12) & ((!\inst1|Add10~23\) # (!\inst1|rack\(22)))) # (!\inst1|rack\(12) & (!\inst1|rack\(22) & !\inst1|Add10~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(12),
	datab => \inst1|rack\(22),
	datad => VCC,
	cin => \inst1|Add10~23\,
	combout => \inst1|Add10~24_combout\,
	cout => \inst1|Add10~25\);

-- Location: LCCOMB_X72_Y37_N4
\inst1|rack[14]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[14]~69_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT14\ $ (\inst1|Add10~28_combout\ $ (!\inst1|rack[13]~68\)))) # (GND)
-- \inst1|rack[14]~70\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\inst1|Add10~28_combout\) # (!\inst1|rack[13]~68\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT14\ & (\inst1|Add10~28_combout\ & !\inst1|rack[13]~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \inst1|Add10~28_combout\,
	datad => VCC,
	cin => \inst1|rack[13]~68\,
	combout => \inst1|rack[14]~69_combout\,
	cout => \inst1|rack[14]~70\);

-- Location: FF_X72_Y37_N5
\inst1|rack[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[14]~69_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(14));

-- Location: LCCOMB_X73_Y37_N4
\inst1|Add10~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~28_combout\ = ((\inst1|rack\(24) $ (\inst1|rack\(14) $ (\inst1|Add10~27\)))) # (GND)
-- \inst1|Add10~29\ = CARRY((\inst1|rack\(24) & (\inst1|rack\(14) & !\inst1|Add10~27\)) # (!\inst1|rack\(24) & ((\inst1|rack\(14)) # (!\inst1|Add10~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(24),
	datab => \inst1|rack\(14),
	datad => VCC,
	cin => \inst1|Add10~27\,
	combout => \inst1|Add10~28_combout\,
	cout => \inst1|Add10~29\);

-- Location: FF_X72_Y37_N7
\inst1|rack[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[15]~71_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(15));

-- Location: LCCOMB_X73_Y37_N12
\inst1|Add10~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~36_combout\ = ((\inst1|rack\(18) $ (\inst1|rack\(28) $ (\inst1|Add10~35\)))) # (GND)
-- \inst1|Add10~37\ = CARRY((\inst1|rack\(18) & ((!\inst1|Add10~35\) # (!\inst1|rack\(28)))) # (!\inst1|rack\(18) & (!\inst1|rack\(28) & !\inst1|Add10~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(18),
	datab => \inst1|rack\(28),
	datad => VCC,
	cin => \inst1|Add10~35\,
	combout => \inst1|Add10~36_combout\,
	cout => \inst1|Add10~37\);

-- Location: LCCOMB_X72_Y37_N10
\inst1|rack[17]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[17]~75_combout\ = (\inst1|Add10~34_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT17\ & (\inst1|rack[16]~74\ & VCC)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\inst1|rack[16]~74\)))) # (!\inst1|Add10~34_combout\ & 
-- ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\inst1|rack[16]~74\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\inst1|rack[16]~74\) # (GND)))))
-- \inst1|rack[17]~76\ = CARRY((\inst1|Add10~34_combout\ & (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT17\ & !\inst1|rack[16]~74\)) # (!\inst1|Add10~34_combout\ & ((!\inst1|rack[16]~74\) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~34_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \inst1|rack[16]~74\,
	combout => \inst1|rack[17]~75_combout\,
	cout => \inst1|rack[17]~76\);

-- Location: LCCOMB_X72_Y37_N14
\inst1|rack[19]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[19]~79_combout\ = (\inst1|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\inst1|Add10~38_combout\ & (\inst1|rack[18]~78\ & VCC)) # (!\inst1|Add10~38_combout\ & (!\inst1|rack[18]~78\)))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\inst1|Add10~38_combout\ & (!\inst1|rack[18]~78\)) # (!\inst1|Add10~38_combout\ & ((\inst1|rack[18]~78\) # (GND)))))
-- \inst1|rack[19]~80\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\inst1|Add10~38_combout\ & !\inst1|rack[18]~78\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((!\inst1|rack[18]~78\) # (!\inst1|Add10~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \inst1|Add10~38_combout\,
	datad => VCC,
	cin => \inst1|rack[18]~78\,
	combout => \inst1|rack[19]~79_combout\,
	cout => \inst1|rack[19]~80\);

-- Location: LCCOMB_X72_Y37_N16
\inst1|rack[20]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[20]~81_combout\ = ((\inst1|Add10~40_combout\ $ (\inst1|Mult1|auto_generated|mac_out2~DATAOUT20\ $ (!\inst1|rack[19]~80\)))) # (GND)
-- \inst1|rack[20]~82\ = CARRY((\inst1|Add10~40_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT20\) # (!\inst1|rack[19]~80\))) # (!\inst1|Add10~40_combout\ & (\inst1|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\inst1|rack[19]~80\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~40_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \inst1|rack[19]~80\,
	combout => \inst1|rack[20]~81_combout\,
	cout => \inst1|rack[20]~82\);

-- Location: LCCOMB_X72_Y37_N18
\inst1|rack[21]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[21]~83_combout\ = (\inst1|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\inst1|Add10~42_combout\ & (\inst1|rack[20]~82\ & VCC)) # (!\inst1|Add10~42_combout\ & (!\inst1|rack[20]~82\)))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\inst1|Add10~42_combout\ & (!\inst1|rack[20]~82\)) # (!\inst1|Add10~42_combout\ & ((\inst1|rack[20]~82\) # (GND)))))
-- \inst1|rack[21]~84\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\inst1|Add10~42_combout\ & !\inst1|rack[20]~82\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((!\inst1|rack[20]~82\) # (!\inst1|Add10~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datab => \inst1|Add10~42_combout\,
	datad => VCC,
	cin => \inst1|rack[20]~82\,
	combout => \inst1|rack[21]~83_combout\,
	cout => \inst1|rack[21]~84\);

-- Location: FF_X72_Y37_N19
\inst1|rack[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[21]~83_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(21));

-- Location: LCCOMB_X73_Y37_N14
\inst1|Add10~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~38_combout\ = (\inst1|rack\(19) & ((\inst1|rack\(29) & (!\inst1|Add10~37\)) # (!\inst1|rack\(29) & (\inst1|Add10~37\ & VCC)))) # (!\inst1|rack\(19) & ((\inst1|rack\(29) & ((\inst1|Add10~37\) # (GND))) # (!\inst1|rack\(29) & 
-- (!\inst1|Add10~37\))))
-- \inst1|Add10~39\ = CARRY((\inst1|rack\(19) & (\inst1|rack\(29) & !\inst1|Add10~37\)) # (!\inst1|rack\(19) & ((\inst1|rack\(29)) # (!\inst1|Add10~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(19),
	datab => \inst1|rack\(29),
	datad => VCC,
	cin => \inst1|Add10~37\,
	combout => \inst1|Add10~38_combout\,
	cout => \inst1|Add10~39\);

-- Location: LCCOMB_X73_Y37_N18
\inst1|Add10~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~42_combout\ = (\inst1|rack\(31) & ((\inst1|rack\(21) & (!\inst1|Add10~41\)) # (!\inst1|rack\(21) & ((\inst1|Add10~41\) # (GND))))) # (!\inst1|rack\(31) & ((\inst1|rack\(21) & (\inst1|Add10~41\ & VCC)) # (!\inst1|rack\(21) & 
-- (!\inst1|Add10~41\))))
-- \inst1|Add10~43\ = CARRY((\inst1|rack\(31) & ((!\inst1|Add10~41\) # (!\inst1|rack\(21)))) # (!\inst1|rack\(31) & (!\inst1|rack\(21) & !\inst1|Add10~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(31),
	datab => \inst1|rack\(21),
	datad => VCC,
	cin => \inst1|Add10~41\,
	combout => \inst1|Add10~42_combout\,
	cout => \inst1|Add10~43\);

-- Location: LCCOMB_X72_Y37_N22
\inst1|rack[23]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[23]~87_combout\ = (\inst1|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\inst1|Add10~46_combout\ & (\inst1|rack[22]~86\ & VCC)) # (!\inst1|Add10~46_combout\ & (!\inst1|rack[22]~86\)))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\inst1|Add10~46_combout\ & (!\inst1|rack[22]~86\)) # (!\inst1|Add10~46_combout\ & ((\inst1|rack[22]~86\) # (GND)))))
-- \inst1|rack[23]~88\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\inst1|Add10~46_combout\ & !\inst1|rack[22]~86\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\inst1|rack[22]~86\) # (!\inst1|Add10~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \inst1|Add10~46_combout\,
	datad => VCC,
	cin => \inst1|rack[22]~86\,
	combout => \inst1|rack[23]~87_combout\,
	cout => \inst1|rack[23]~88\);

-- Location: FF_X72_Y37_N23
\inst1|rack[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[23]~87_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(23));

-- Location: LCCOMB_X73_Y37_N22
\inst1|Add10~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~46_combout\ = (\inst1|rack\(33) & ((\inst1|rack\(23) & (!\inst1|Add10~45\)) # (!\inst1|rack\(23) & ((\inst1|Add10~45\) # (GND))))) # (!\inst1|rack\(33) & ((\inst1|rack\(23) & (\inst1|Add10~45\ & VCC)) # (!\inst1|rack\(23) & 
-- (!\inst1|Add10~45\))))
-- \inst1|Add10~47\ = CARRY((\inst1|rack\(33) & ((!\inst1|Add10~45\) # (!\inst1|rack\(23)))) # (!\inst1|rack\(33) & (!\inst1|rack\(23) & !\inst1|Add10~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(33),
	datab => \inst1|rack\(23),
	datad => VCC,
	cin => \inst1|Add10~45\,
	combout => \inst1|Add10~46_combout\,
	cout => \inst1|Add10~47\);

-- Location: LCCOMB_X72_Y37_N24
\inst1|rack[24]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[24]~89_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT24\ $ (\inst1|Add10~48_combout\ $ (!\inst1|rack[23]~88\)))) # (GND)
-- \inst1|rack[24]~90\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\inst1|Add10~48_combout\) # (!\inst1|rack[23]~88\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT24\ & (\inst1|Add10~48_combout\ & !\inst1|rack[23]~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datab => \inst1|Add10~48_combout\,
	datad => VCC,
	cin => \inst1|rack[23]~88\,
	combout => \inst1|rack[24]~89_combout\,
	cout => \inst1|rack[24]~90\);

-- Location: FF_X72_Y37_N25
\inst1|rack[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[24]~89_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(24));

-- Location: LCCOMB_X73_Y37_N24
\inst1|Add10~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~48_combout\ = ((\inst1|rack\(34) $ (\inst1|rack\(24) $ (\inst1|Add10~47\)))) # (GND)
-- \inst1|Add10~49\ = CARRY((\inst1|rack\(34) & (\inst1|rack\(24) & !\inst1|Add10~47\)) # (!\inst1|rack\(34) & ((\inst1|rack\(24)) # (!\inst1|Add10~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(34),
	datab => \inst1|rack\(24),
	datad => VCC,
	cin => \inst1|Add10~47\,
	combout => \inst1|Add10~48_combout\,
	cout => \inst1|Add10~49\);

-- Location: LCCOMB_X72_Y37_N26
\inst1|rack[25]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[25]~91_combout\ = (\inst1|Add10~50_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT25\ & (\inst1|rack[24]~90\ & VCC)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\inst1|rack[24]~90\)))) # (!\inst1|Add10~50_combout\ & 
-- ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\inst1|rack[24]~90\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\inst1|rack[24]~90\) # (GND)))))
-- \inst1|rack[25]~92\ = CARRY((\inst1|Add10~50_combout\ & (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT25\ & !\inst1|rack[24]~90\)) # (!\inst1|Add10~50_combout\ & ((!\inst1|rack[24]~90\) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~50_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \inst1|rack[24]~90\,
	combout => \inst1|rack[25]~91_combout\,
	cout => \inst1|rack[25]~92\);

-- Location: LCCOMB_X72_Y37_N28
\inst1|rack[26]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[26]~93_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT26\ $ (\inst1|Add10~52_combout\ $ (!\inst1|rack[25]~92\)))) # (GND)
-- \inst1|rack[26]~94\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT26\ & ((\inst1|Add10~52_combout\) # (!\inst1|rack[25]~92\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT26\ & (\inst1|Add10~52_combout\ & !\inst1|rack[25]~92\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT26\,
	datab => \inst1|Add10~52_combout\,
	datad => VCC,
	cin => \inst1|rack[25]~92\,
	combout => \inst1|rack[26]~93_combout\,
	cout => \inst1|rack[26]~94\);

-- Location: FF_X72_Y37_N29
\inst1|rack[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[26]~93_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(26));

-- Location: LCCOMB_X73_Y36_N10
\inst1|Add10~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~66_combout\ = (\inst1|rack\(33) & (\inst1|Add10~65\ & VCC)) # (!\inst1|rack\(33) & (!\inst1|Add10~65\))
-- \inst1|Add10~67\ = CARRY((!\inst1|rack\(33) & !\inst1|Add10~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(33),
	datad => VCC,
	cin => \inst1|Add10~65\,
	combout => \inst1|Add10~66_combout\,
	cout => \inst1|Add10~67\);

-- Location: LCCOMB_X73_Y36_N8
\inst1|Add10~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~64_combout\ = (\inst1|rack\(32) & ((GND) # (!\inst1|Add10~63\))) # (!\inst1|rack\(32) & (\inst1|Add10~63\ $ (GND)))
-- \inst1|Add10~65\ = CARRY((\inst1|rack\(32)) # (!\inst1|Add10~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(32),
	datad => VCC,
	cin => \inst1|Add10~63\,
	combout => \inst1|Add10~64_combout\,
	cout => \inst1|Add10~65\);

-- Location: LCCOMB_X72_Y36_N6
\inst1|rack[31]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[31]~103_combout\ = (\inst1|Add10~62_combout\ & ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT31\ & (\inst1|rack[30]~102\ & VCC)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT31\ & (!\inst1|rack[30]~102\)))) # (!\inst1|Add10~62_combout\ & 
-- ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT31\ & (!\inst1|rack[30]~102\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT31\ & ((\inst1|rack[30]~102\) # (GND)))))
-- \inst1|rack[31]~104\ = CARRY((\inst1|Add10~62_combout\ & (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT31\ & !\inst1|rack[30]~102\)) # (!\inst1|Add10~62_combout\ & ((!\inst1|rack[30]~102\) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~62_combout\,
	datab => \inst1|Mult1|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \inst1|rack[30]~102\,
	combout => \inst1|rack[31]~103_combout\,
	cout => \inst1|rack[31]~104\);

-- Location: LCCOMB_X72_Y36_N8
\inst1|rack[32]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[32]~105_combout\ = (\inst1|Add10~64_combout\ & (\inst1|rack[31]~104\ $ (GND))) # (!\inst1|Add10~64_combout\ & (!\inst1|rack[31]~104\ & VCC))
-- \inst1|rack[32]~106\ = CARRY((\inst1|Add10~64_combout\ & !\inst1|rack[31]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add10~64_combout\,
	datad => VCC,
	cin => \inst1|rack[31]~104\,
	combout => \inst1|rack[32]~105_combout\,
	cout => \inst1|rack[32]~106\);

-- Location: LCCOMB_X72_Y36_N10
\inst1|rack[33]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[33]~107_combout\ = (\inst1|Add10~66_combout\ & (!\inst1|rack[32]~106\)) # (!\inst1|Add10~66_combout\ & ((\inst1|rack[32]~106\) # (GND)))
-- \inst1|rack[33]~108\ = CARRY((!\inst1|rack[32]~106\) # (!\inst1|Add10~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add10~66_combout\,
	datad => VCC,
	cin => \inst1|rack[32]~106\,
	combout => \inst1|rack[33]~107_combout\,
	cout => \inst1|rack[33]~108\);

-- Location: LCCOMB_X72_Y36_N12
\inst1|rack[34]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[34]~109_combout\ = (\inst1|Add10~68_combout\ & (\inst1|rack[33]~108\ $ (GND))) # (!\inst1|Add10~68_combout\ & (!\inst1|rack[33]~108\ & VCC))
-- \inst1|rack[34]~110\ = CARRY((\inst1|Add10~68_combout\ & !\inst1|rack[33]~108\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add10~68_combout\,
	datad => VCC,
	cin => \inst1|rack[33]~108\,
	combout => \inst1|rack[34]~109_combout\,
	cout => \inst1|rack[34]~110\);

-- Location: LCCOMB_X72_Y36_N14
\inst1|rack[35]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[35]~111_combout\ = (\inst1|Add10~70_combout\ & (!\inst1|rack[34]~110\)) # (!\inst1|Add10~70_combout\ & ((\inst1|rack[34]~110\) # (GND)))
-- \inst1|rack[35]~112\ = CARRY((!\inst1|rack[34]~110\) # (!\inst1|Add10~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add10~70_combout\,
	datad => VCC,
	cin => \inst1|rack[34]~110\,
	combout => \inst1|rack[35]~111_combout\,
	cout => \inst1|rack[35]~112\);

-- Location: FF_X72_Y36_N15
\inst1|rack[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[35]~111_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(35));

-- Location: LCCOMB_X73_Y37_N28
\inst1|Add10~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~52_combout\ = ((\inst1|rack\(36) $ (\inst1|rack\(26) $ (\inst1|Add10~51\)))) # (GND)
-- \inst1|Add10~53\ = CARRY((\inst1|rack\(36) & (\inst1|rack\(26) & !\inst1|Add10~51\)) # (!\inst1|rack\(36) & ((\inst1|rack\(26)) # (!\inst1|Add10~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(36),
	datab => \inst1|rack\(26),
	datad => VCC,
	cin => \inst1|Add10~51\,
	combout => \inst1|Add10~52_combout\,
	cout => \inst1|Add10~53\);

-- Location: FF_X72_Y37_N31
\inst1|rack[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[27]~95_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(27));

-- Location: LCCOMB_X73_Y36_N0
\inst1|Add10~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~56_combout\ = ((\inst1|rack\(28) $ (\inst1|rack\(38) $ (\inst1|Add10~55\)))) # (GND)
-- \inst1|Add10~57\ = CARRY((\inst1|rack\(28) & ((!\inst1|Add10~55\) # (!\inst1|rack\(38)))) # (!\inst1|rack\(28) & (!\inst1|rack\(38) & !\inst1|Add10~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(28),
	datab => \inst1|rack\(38),
	datad => VCC,
	cin => \inst1|Add10~55\,
	combout => \inst1|Add10~56_combout\,
	cout => \inst1|Add10~57\);

-- Location: LCCOMB_X72_Y36_N2
\inst1|rack[29]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[29]~99_combout\ = (\inst1|Mult1|auto_generated|mac_out2~DATAOUT29\ & ((\inst1|Add10~58_combout\ & (\inst1|rack[28]~98\ & VCC)) # (!\inst1|Add10~58_combout\ & (!\inst1|rack[28]~98\)))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT29\ & 
-- ((\inst1|Add10~58_combout\ & (!\inst1|rack[28]~98\)) # (!\inst1|Add10~58_combout\ & ((\inst1|rack[28]~98\) # (GND)))))
-- \inst1|rack[29]~100\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT29\ & (!\inst1|Add10~58_combout\ & !\inst1|rack[28]~98\)) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT29\ & ((!\inst1|rack[28]~98\) # (!\inst1|Add10~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT29\,
	datab => \inst1|Add10~58_combout\,
	datad => VCC,
	cin => \inst1|rack[28]~98\,
	combout => \inst1|rack[29]~99_combout\,
	cout => \inst1|rack[29]~100\);

-- Location: LCCOMB_X72_Y36_N4
\inst1|rack[30]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[30]~101_combout\ = ((\inst1|Mult1|auto_generated|mac_out2~DATAOUT30\ $ (\inst1|Add10~60_combout\ $ (!\inst1|rack[29]~100\)))) # (GND)
-- \inst1|rack[30]~102\ = CARRY((\inst1|Mult1|auto_generated|mac_out2~DATAOUT30\ & ((\inst1|Add10~60_combout\) # (!\inst1|rack[29]~100\))) # (!\inst1|Mult1|auto_generated|mac_out2~DATAOUT30\ & (\inst1|Add10~60_combout\ & !\inst1|rack[29]~100\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult1|auto_generated|mac_out2~DATAOUT30\,
	datab => \inst1|Add10~60_combout\,
	datad => VCC,
	cin => \inst1|rack[29]~100\,
	combout => \inst1|rack[30]~101_combout\,
	cout => \inst1|rack[30]~102\);

-- Location: FF_X72_Y36_N5
\inst1|rack[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[30]~101_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(30));

-- Location: LCCOMB_X73_Y36_N2
\inst1|Add10~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~58_combout\ = (\inst1|rack\(29) & ((\inst1|rack\(39) & (!\inst1|Add10~57\)) # (!\inst1|rack\(39) & (\inst1|Add10~57\ & VCC)))) # (!\inst1|rack\(29) & ((\inst1|rack\(39) & ((\inst1|Add10~57\) # (GND))) # (!\inst1|rack\(39) & 
-- (!\inst1|Add10~57\))))
-- \inst1|Add10~59\ = CARRY((\inst1|rack\(29) & (\inst1|rack\(39) & !\inst1|Add10~57\)) # (!\inst1|rack\(29) & ((\inst1|rack\(39)) # (!\inst1|Add10~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(29),
	datab => \inst1|rack\(39),
	datad => VCC,
	cin => \inst1|Add10~57\,
	combout => \inst1|Add10~58_combout\,
	cout => \inst1|Add10~59\);

-- Location: LCCOMB_X73_Y36_N4
\inst1|Add10~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~60_combout\ = (\inst1|rack\(30) & ((GND) # (!\inst1|Add10~59\))) # (!\inst1|rack\(30) & (\inst1|Add10~59\ $ (GND)))
-- \inst1|Add10~61\ = CARRY((\inst1|rack\(30)) # (!\inst1|Add10~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(30),
	datad => VCC,
	cin => \inst1|Add10~59\,
	combout => \inst1|Add10~60_combout\,
	cout => \inst1|Add10~61\);

-- Location: FF_X72_Y36_N7
\inst1|rack[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[31]~103_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(31));

-- Location: LCCOMB_X73_Y36_N12
\inst1|Add10~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~68_combout\ = (\inst1|rack\(34) & ((GND) # (!\inst1|Add10~67\))) # (!\inst1|rack\(34) & (\inst1|Add10~67\ $ (GND)))
-- \inst1|Add10~69\ = CARRY((\inst1|rack\(34)) # (!\inst1|Add10~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(34),
	datad => VCC,
	cin => \inst1|Add10~67\,
	combout => \inst1|Add10~68_combout\,
	cout => \inst1|Add10~69\);

-- Location: FF_X72_Y36_N13
\inst1|rack[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[34]~109_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(34));

-- Location: LCCOMB_X73_Y36_N14
\inst1|Add10~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~70_combout\ = (\inst1|rack\(35) & (\inst1|Add10~69\ & VCC)) # (!\inst1|rack\(35) & (!\inst1|Add10~69\))
-- \inst1|Add10~71\ = CARRY((!\inst1|rack\(35) & !\inst1|Add10~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(35),
	datad => VCC,
	cin => \inst1|Add10~69\,
	combout => \inst1|Add10~70_combout\,
	cout => \inst1|Add10~71\);

-- Location: LCCOMB_X72_Y36_N18
\inst1|rack[37]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[37]~115_combout\ = (\inst1|Add10~74_combout\ & (!\inst1|rack[36]~114\)) # (!\inst1|Add10~74_combout\ & ((\inst1|rack[36]~114\) # (GND)))
-- \inst1|rack[37]~116\ = CARRY((!\inst1|rack[36]~114\) # (!\inst1|Add10~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~74_combout\,
	datad => VCC,
	cin => \inst1|rack[36]~114\,
	combout => \inst1|rack[37]~115_combout\,
	cout => \inst1|rack[37]~116\);

-- Location: LCCOMB_X72_Y36_N20
\inst1|rack[38]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[38]~117_combout\ = (\inst1|Add10~76_combout\ & (\inst1|rack[37]~116\ $ (GND))) # (!\inst1|Add10~76_combout\ & (!\inst1|rack[37]~116\ & VCC))
-- \inst1|rack[38]~118\ = CARRY((\inst1|Add10~76_combout\ & !\inst1|rack[37]~116\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add10~76_combout\,
	datad => VCC,
	cin => \inst1|rack[37]~116\,
	combout => \inst1|rack[38]~117_combout\,
	cout => \inst1|rack[38]~118\);

-- Location: FF_X72_Y36_N21
\inst1|rack[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[38]~117_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(38));

-- Location: FF_X72_Y36_N19
\inst1|rack[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[37]~115_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(37));

-- Location: LCCOMB_X73_Y36_N22
\inst1|Add10~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add10~78_combout\ = \inst1|Add10~77\ $ (!\inst1|rack\(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|rack\(39),
	cin => \inst1|Add10~77\,
	combout => \inst1|Add10~78_combout\);

-- Location: LCCOMB_X72_Y36_N22
\inst1|rack[39]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|rack[39]~119_combout\ = \inst1|rack[38]~118\ $ (\inst1|Add10~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add10~78_combout\,
	cin => \inst1|rack[38]~118\,
	combout => \inst1|rack[39]~119_combout\);

-- Location: FF_X72_Y36_N23
\inst1|rack[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[39]~119_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(39));

-- Location: FF_X72_Y36_N3
\inst1|rack[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[29]~99_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(29));

-- Location: FF_X72_Y37_N15
\inst1|rack[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[19]~79_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(19));

-- Location: FF_X72_Y38_N29
\inst1|rack[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[10]~61_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(10));

-- Location: FF_X72_Y38_N27
\inst1|rack[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[9]~59_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(9));

-- Location: LCCOMB_X72_Y38_N0
\inst1|LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~0_combout\ = (\inst1|rack\(10)) # ((\inst1|rack\(9)) # (\inst1|rack\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(10),
	datac => \inst1|rack\(9),
	datad => \inst1|rack\(8),
	combout => \inst1|LEDR~0_combout\);

-- Location: FF_X72_Y38_N1
\inst1|LEDR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(0));

-- Location: LCCOMB_X73_Y38_N0
\inst1|LEDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~1_combout\ = (\inst1|rack\(12)) # ((\inst1|rack\(13)) # (\inst1|rack\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(12),
	datac => \inst1|rack\(13),
	datad => \inst1|rack\(11),
	combout => \inst1|LEDR~1_combout\);

-- Location: FF_X73_Y38_N1
\inst1|LEDR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(1));

-- Location: LCCOMB_X73_Y38_N2
\inst1|LEDR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~2_combout\ = (\inst1|rack\(16)) # ((\inst1|rack\(15)) # (\inst1|rack\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(16),
	datac => \inst1|rack\(15),
	datad => \inst1|rack\(14),
	combout => \inst1|LEDR~2_combout\);

-- Location: FF_X73_Y38_N3
\inst1|LEDR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(2));

-- Location: FF_X72_Y37_N11
\inst1|rack[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[17]~75_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(17));

-- Location: LCCOMB_X73_Y38_N4
\inst1|LEDR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~3_combout\ = (\inst1|rack\(18)) # ((\inst1|rack\(19)) # (\inst1|rack\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(18),
	datac => \inst1|rack\(19),
	datad => \inst1|rack\(17),
	combout => \inst1|LEDR~3_combout\);

-- Location: FF_X73_Y38_N5
\inst1|LEDR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(3));

-- Location: FF_X72_Y37_N17
\inst1|rack[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[20]~81_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(20));

-- Location: LCCOMB_X73_Y38_N6
\inst1|LEDR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~4_combout\ = (\inst1|rack\(21)) # ((\inst1|rack\(22)) # (\inst1|rack\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(21),
	datab => \inst1|rack\(22),
	datac => \inst1|rack\(20),
	combout => \inst1|LEDR~4_combout\);

-- Location: FF_X73_Y38_N7
\inst1|LEDR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(4));

-- Location: FF_X72_Y37_N27
\inst1|rack[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[25]~91_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(25));

-- Location: LCCOMB_X74_Y37_N0
\inst1|LEDR~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~5_combout\ = (\inst1|rack\(25)) # ((\inst1|rack\(24)) # (\inst1|rack\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(25),
	datac => \inst1|rack\(24),
	datad => \inst1|rack\(23),
	combout => \inst1|LEDR~5_combout\);

-- Location: FF_X74_Y37_N1
\inst1|LEDR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(5));

-- Location: LCCOMB_X72_Y36_N24
\inst1|LEDR~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~6_combout\ = (\inst1|rack\(28)) # ((\inst1|rack\(27)) # (\inst1|rack\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(28),
	datac => \inst1|rack\(27),
	datad => \inst1|rack\(26),
	combout => \inst1|LEDR~6_combout\);

-- Location: FF_X72_Y36_N25
\inst1|LEDR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(6));

-- Location: LCCOMB_X72_Y36_N26
\inst1|LEDR~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~7_combout\ = (\inst1|rack\(29)) # ((\inst1|rack\(30)) # (\inst1|rack\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|rack\(29),
	datac => \inst1|rack\(30),
	datad => \inst1|rack\(31),
	combout => \inst1|LEDR~7_combout\);

-- Location: FF_X72_Y36_N27
\inst1|LEDR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(7));

-- Location: FF_X72_Y36_N9
\inst1|rack[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[32]~105_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(32));

-- Location: FF_X72_Y36_N11
\inst1|rack[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|rack[33]~107_combout\,
	ena => \inst1|rack[8]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rack\(33));

-- Location: LCCOMB_X72_Y36_N28
\inst1|LEDR~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~8_combout\ = (\inst1|rack\(34)) # ((\inst1|rack\(32)) # (\inst1|rack\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rack\(34),
	datac => \inst1|rack\(32),
	datad => \inst1|rack\(33),
	combout => \inst1|LEDR~8_combout\);

-- Location: FF_X72_Y36_N29
\inst1|LEDR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(8));

-- Location: LCCOMB_X69_Y38_N2
\inst1|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~32_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => \inst1|Add6~0_combout\,
	combout => \inst1|Add6~32_combout\);

-- Location: LCCOMB_X69_Y38_N0
\inst1|Add6~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~33_combout\ = (\inst1|Add6~2_combout\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add6~2_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|Add6~33_combout\);

-- Location: LCCOMB_X69_Y38_N10
\inst1|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~34_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => \inst1|Add6~4_combout\,
	combout => \inst1|Add6~34_combout\);

-- Location: LCCOMB_X72_Y41_N28
\inst1|Add6~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~35_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => \inst1|Add6~6_combout\,
	combout => \inst1|Add6~35_combout\);

-- Location: LCCOMB_X70_Y39_N26
\inst1|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~36_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add6~8_combout\,
	combout => \inst1|Add6~36_combout\);

-- Location: LCCOMB_X72_Y41_N14
\inst1|Add6~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~37_combout\ = (\inst1|Add6~10_combout\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add6~10_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst1|Add6~37_combout\);

-- Location: LCCOMB_X70_Y39_N20
\inst1|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~38_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \inst1|Add6~12_combout\,
	combout => \inst1|Add6~38_combout\);

-- Location: LCCOMB_X70_Y41_N14
\inst1|Add6~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~39_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add6~14_combout\,
	combout => \inst1|Add6~39_combout\);

-- Location: LCCOMB_X70_Y41_N16
\inst1|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~40_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add6~16_combout\,
	combout => \inst1|Add6~40_combout\);

-- Location: LCCOMB_X70_Y41_N2
\inst1|Add6~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~41_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \inst1|Add6~18_combout\,
	combout => \inst1|Add6~41_combout\);

-- Location: LCCOMB_X70_Y40_N6
\inst1|Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~42_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add6~20_combout\,
	combout => \inst1|Add6~42_combout\);

-- Location: LCCOMB_X70_Y38_N30
\inst1|Add6~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~43_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \inst1|Add6~22_combout\,
	combout => \inst1|Add6~43_combout\);

-- Location: LCCOMB_X70_Y38_N8
\inst1|Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~44_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \inst1|Add6~24_combout\,
	combout => \inst1|Add6~44_combout\);

-- Location: LCCOMB_X70_Y40_N0
\inst1|Add6~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~45_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \inst1|Add6~26_combout\,
	combout => \inst1|Add6~45_combout\);

-- Location: LCCOMB_X70_Y40_N10
\inst1|Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~46_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \inst1|Add6~28_combout\,
	combout => \inst1|Add6~46_combout\);

-- Location: LCCOMB_X70_Y38_N18
\inst1|Add6~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~47_combout\ = (!\SW[5]~input_o\ & \inst1|Add6~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \inst1|Add6~30_combout\,
	combout => \inst1|Add6~47_combout\);

-- Location: DSPMULT_X71_Y37_N0
\inst1|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \inst1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X70_Y35_N8
\inst1|lack[32]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[32]~104_combout\ = (\inst1|Add8~64_combout\ & (\inst1|lack[31]~103\ $ (GND))) # (!\inst1|Add8~64_combout\ & (!\inst1|lack[31]~103\ & VCC))
-- \inst1|lack[32]~105\ = CARRY((\inst1|Add8~64_combout\ & !\inst1|lack[31]~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~64_combout\,
	datad => VCC,
	cin => \inst1|lack[31]~103\,
	combout => \inst1|lack[32]~104_combout\,
	cout => \inst1|lack[32]~105\);

-- Location: LCCOMB_X70_Y35_N10
\inst1|lack[33]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[33]~106_combout\ = (\inst1|Add8~66_combout\ & (!\inst1|lack[32]~105\)) # (!\inst1|Add8~66_combout\ & ((\inst1|lack[32]~105\) # (GND)))
-- \inst1|lack[33]~107\ = CARRY((!\inst1|lack[32]~105\) # (!\inst1|Add8~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~66_combout\,
	datad => VCC,
	cin => \inst1|lack[32]~105\,
	combout => \inst1|lack[33]~106_combout\,
	cout => \inst1|lack[33]~107\);

-- Location: LCCOMB_X70_Y35_N12
\inst1|lack[34]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[34]~108_combout\ = (\inst1|Add8~68_combout\ & (\inst1|lack[33]~107\ $ (GND))) # (!\inst1|Add8~68_combout\ & (!\inst1|lack[33]~107\ & VCC))
-- \inst1|lack[34]~109\ = CARRY((\inst1|Add8~68_combout\ & !\inst1|lack[33]~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~68_combout\,
	datad => VCC,
	cin => \inst1|lack[33]~107\,
	combout => \inst1|lack[34]~108_combout\,
	cout => \inst1|lack[34]~109\);

-- Location: LCCOMB_X70_Y35_N16
\inst1|lack[36]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[36]~112_combout\ = (\inst1|Add8~72_combout\ & (\inst1|lack[35]~111\ $ (GND))) # (!\inst1|Add8~72_combout\ & (!\inst1|lack[35]~111\ & VCC))
-- \inst1|lack[36]~113\ = CARRY((\inst1|Add8~72_combout\ & !\inst1|lack[35]~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~72_combout\,
	datad => VCC,
	cin => \inst1|lack[35]~111\,
	combout => \inst1|lack[36]~112_combout\,
	cout => \inst1|lack[36]~113\);

-- Location: FF_X70_Y35_N17
\inst1|lack[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[36]~112_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(36));

-- Location: FF_X70_Y35_N13
\inst1|lack[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[34]~108_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(34));

-- Location: FF_X70_Y35_N11
\inst1|lack[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[33]~106_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(33));

-- Location: LCCOMB_X69_Y35_N4
\inst1|Add8~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~60_combout\ = (\inst1|lack\(30) & ((GND) # (!\inst1|Add8~59\))) # (!\inst1|lack\(30) & (\inst1|Add8~59\ $ (GND)))
-- \inst1|Add8~61\ = CARRY((\inst1|lack\(30)) # (!\inst1|Add8~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(30),
	datad => VCC,
	cin => \inst1|Add8~59\,
	combout => \inst1|Add8~60_combout\,
	cout => \inst1|Add8~61\);

-- Location: LCCOMB_X69_Y35_N18
\inst1|Add8~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~74_combout\ = (\inst1|lack\(37) & (\inst1|Add8~73\ & VCC)) # (!\inst1|lack\(37) & (!\inst1|Add8~73\))
-- \inst1|Add8~75\ = CARRY((!\inst1|lack\(37) & !\inst1|Add8~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lack\(37),
	datad => VCC,
	cin => \inst1|Add8~73\,
	combout => \inst1|Add8~74_combout\,
	cout => \inst1|Add8~75\);

-- Location: LCCOMB_X70_Y35_N18
\inst1|lack[37]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[37]~114_combout\ = (\inst1|Add8~74_combout\ & (!\inst1|lack[36]~113\)) # (!\inst1|Add8~74_combout\ & ((\inst1|lack[36]~113\) # (GND)))
-- \inst1|lack[37]~115\ = CARRY((!\inst1|lack[36]~113\) # (!\inst1|Add8~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add8~74_combout\,
	datad => VCC,
	cin => \inst1|lack[36]~113\,
	combout => \inst1|lack[37]~114_combout\,
	cout => \inst1|lack[37]~115\);

-- Location: FF_X70_Y35_N19
\inst1|lack[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[37]~114_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(37));

-- Location: LCCOMB_X69_Y35_N20
\inst1|Add8~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~76_combout\ = (\inst1|lack\(38) & ((GND) # (!\inst1|Add8~75\))) # (!\inst1|lack\(38) & (\inst1|Add8~75\ $ (GND)))
-- \inst1|Add8~77\ = CARRY((\inst1|lack\(38)) # (!\inst1|Add8~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(38),
	datad => VCC,
	cin => \inst1|Add8~75\,
	combout => \inst1|Add8~76_combout\,
	cout => \inst1|Add8~77\);

-- Location: LCCOMB_X69_Y35_N22
\inst1|Add8~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~78_combout\ = \inst1|Add8~77\ $ (!\inst1|lack\(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|lack\(39),
	cin => \inst1|Add8~77\,
	combout => \inst1|Add8~78_combout\);

-- Location: LCCOMB_X70_Y35_N22
\inst1|lack[39]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[39]~118_combout\ = \inst1|lack[38]~117\ $ (\inst1|Add8~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add8~78_combout\,
	cin => \inst1|lack[38]~117\,
	combout => \inst1|lack[39]~118_combout\);

-- Location: FF_X70_Y35_N23
\inst1|lack[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[39]~118_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(39));

-- Location: LCCOMB_X70_Y36_N30
\inst1|lack[27]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[27]~94_combout\ = (\inst1|Add8~54_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\inst1|lack[26]~93\ & VCC)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\inst1|lack[26]~93\)))) # (!\inst1|Add8~54_combout\ & 
-- ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\inst1|lack[26]~93\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\inst1|lack[26]~93\) # (GND)))))
-- \inst1|lack[27]~95\ = CARRY((\inst1|Add8~54_combout\ & (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT27\ & !\inst1|lack[26]~93\)) # (!\inst1|Add8~54_combout\ & ((!\inst1|lack[26]~93\) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~54_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \inst1|lack[26]~93\,
	combout => \inst1|lack[27]~94_combout\,
	cout => \inst1|lack[27]~95\);

-- Location: FF_X70_Y36_N31
\inst1|lack[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[27]~94_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(27));

-- Location: LCCOMB_X70_Y36_N28
\inst1|lack[26]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[26]~92_combout\ = ((\inst1|Add8~52_combout\ $ (\inst1|Mult0|auto_generated|mac_out2~DATAOUT26\ $ (!\inst1|lack[25]~91\)))) # (GND)
-- \inst1|lack[26]~93\ = CARRY((\inst1|Add8~52_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT26\) # (!\inst1|lack[25]~91\))) # (!\inst1|Add8~52_combout\ & (\inst1|Mult0|auto_generated|mac_out2~DATAOUT26\ & !\inst1|lack[25]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~52_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \inst1|lack[25]~91\,
	combout => \inst1|lack[26]~92_combout\,
	cout => \inst1|lack[26]~93\);

-- Location: FF_X70_Y36_N29
\inst1|lack[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[26]~92_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(26));

-- Location: LCCOMB_X69_Y36_N6
\inst1|Add8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~30_combout\ = (\inst1|lack\(15) & ((\inst1|lack\(25) & (!\inst1|Add8~29\)) # (!\inst1|lack\(25) & (\inst1|Add8~29\ & VCC)))) # (!\inst1|lack\(15) & ((\inst1|lack\(25) & ((\inst1|Add8~29\) # (GND))) # (!\inst1|lack\(25) & (!\inst1|Add8~29\))))
-- \inst1|Add8~31\ = CARRY((\inst1|lack\(15) & (\inst1|lack\(25) & !\inst1|Add8~29\)) # (!\inst1|lack\(15) & ((\inst1|lack\(25)) # (!\inst1|Add8~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(15),
	datab => \inst1|lack\(25),
	datad => VCC,
	cin => \inst1|Add8~29\,
	combout => \inst1|Add8~30_combout\,
	cout => \inst1|Add8~31\);

-- Location: LCCOMB_X69_Y36_N4
\inst1|Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~28_combout\ = ((\inst1|lack\(14) $ (\inst1|lack\(24) $ (\inst1|Add8~27\)))) # (GND)
-- \inst1|Add8~29\ = CARRY((\inst1|lack\(14) & ((!\inst1|Add8~27\) # (!\inst1|lack\(24)))) # (!\inst1|lack\(14) & (!\inst1|lack\(24) & !\inst1|Add8~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(14),
	datab => \inst1|lack\(24),
	datad => VCC,
	cin => \inst1|Add8~27\,
	combout => \inst1|Add8~28_combout\,
	cout => \inst1|Add8~29\);

-- Location: LCCOMB_X69_Y37_N30
\inst1|Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~22_combout\ = (\inst1|lack\(11) & ((\inst1|lack\(21) & (!\inst1|Add8~21\)) # (!\inst1|lack\(21) & (\inst1|Add8~21\ & VCC)))) # (!\inst1|lack\(11) & ((\inst1|lack\(21) & ((\inst1|Add8~21\) # (GND))) # (!\inst1|lack\(21) & (!\inst1|Add8~21\))))
-- \inst1|Add8~23\ = CARRY((\inst1|lack\(11) & (\inst1|lack\(21) & !\inst1|Add8~21\)) # (!\inst1|lack\(11) & ((\inst1|lack\(21)) # (!\inst1|Add8~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(11),
	datab => \inst1|lack\(21),
	datad => VCC,
	cin => \inst1|Add8~21\,
	combout => \inst1|Add8~22_combout\,
	cout => \inst1|Add8~23\);

-- Location: LCCOMB_X70_Y37_N28
\inst1|lack[10]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[10]~60_combout\ = ((\inst1|Add8~20_combout\ $ (\inst1|Mult0|auto_generated|mac_out2~DATAOUT10\ $ (!\inst1|lack[9]~59\)))) # (GND)
-- \inst1|lack[10]~61\ = CARRY((\inst1|Add8~20_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT10\) # (!\inst1|lack[9]~59\))) # (!\inst1|Add8~20_combout\ & (\inst1|Mult0|auto_generated|mac_out2~DATAOUT10\ & !\inst1|lack[9]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~20_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \inst1|lack[9]~59\,
	combout => \inst1|lack[10]~60_combout\,
	cout => \inst1|lack[10]~61\);

-- Location: LCCOMB_X70_Y37_N30
\inst1|lack[11]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[11]~62_combout\ = (\inst1|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\inst1|Add8~22_combout\ & (\inst1|lack[10]~61\ & VCC)) # (!\inst1|Add8~22_combout\ & (!\inst1|lack[10]~61\)))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- ((\inst1|Add8~22_combout\ & (!\inst1|lack[10]~61\)) # (!\inst1|Add8~22_combout\ & ((\inst1|lack[10]~61\) # (GND)))))
-- \inst1|lack[11]~63\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\inst1|Add8~22_combout\ & !\inst1|lack[10]~61\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((!\inst1|lack[10]~61\) # (!\inst1|Add8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \inst1|Add8~22_combout\,
	datad => VCC,
	cin => \inst1|lack[10]~61\,
	combout => \inst1|lack[11]~62_combout\,
	cout => \inst1|lack[11]~63\);

-- Location: LCCOMB_X70_Y36_N0
\inst1|lack[12]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[12]~64_combout\ = ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT12\ $ (\inst1|Add8~24_combout\ $ (!\inst1|lack[11]~63\)))) # (GND)
-- \inst1|lack[12]~65\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\inst1|Add8~24_combout\) # (!\inst1|lack[11]~63\))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT12\ & (\inst1|Add8~24_combout\ & !\inst1|lack[11]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \inst1|Add8~24_combout\,
	datad => VCC,
	cin => \inst1|lack[11]~63\,
	combout => \inst1|lack[12]~64_combout\,
	cout => \inst1|lack[12]~65\);

-- Location: LCCOMB_X70_Y36_N2
\inst1|lack[13]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[13]~66_combout\ = (\inst1|Add8~26_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\inst1|lack[12]~65\ & VCC)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\inst1|lack[12]~65\)))) # (!\inst1|Add8~26_combout\ & 
-- ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\inst1|lack[12]~65\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\inst1|lack[12]~65\) # (GND)))))
-- \inst1|lack[13]~67\ = CARRY((\inst1|Add8~26_combout\ & (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT13\ & !\inst1|lack[12]~65\)) # (!\inst1|Add8~26_combout\ & ((!\inst1|lack[12]~65\) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~26_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \inst1|lack[12]~65\,
	combout => \inst1|lack[13]~66_combout\,
	cout => \inst1|lack[13]~67\);

-- Location: LCCOMB_X70_Y36_N4
\inst1|lack[14]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[14]~68_combout\ = ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT14\ $ (\inst1|Add8~28_combout\ $ (!\inst1|lack[13]~67\)))) # (GND)
-- \inst1|lack[14]~69\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\inst1|Add8~28_combout\) # (!\inst1|lack[13]~67\))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT14\ & (\inst1|Add8~28_combout\ & !\inst1|lack[13]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \inst1|Add8~28_combout\,
	datad => VCC,
	cin => \inst1|lack[13]~67\,
	combout => \inst1|lack[14]~68_combout\,
	cout => \inst1|lack[14]~69\);

-- Location: LCCOMB_X70_Y36_N8
\inst1|lack[16]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[16]~72_combout\ = ((\inst1|Add8~32_combout\ $ (\inst1|Mult0|auto_generated|mac_out2~DATAOUT16\ $ (!\inst1|lack[15]~71\)))) # (GND)
-- \inst1|lack[16]~73\ = CARRY((\inst1|Add8~32_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\inst1|lack[15]~71\))) # (!\inst1|Add8~32_combout\ & (\inst1|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\inst1|lack[15]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~32_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \inst1|lack[15]~71\,
	combout => \inst1|lack[16]~72_combout\,
	cout => \inst1|lack[16]~73\);

-- Location: FF_X70_Y36_N9
\inst1|lack[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[16]~72_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(16));

-- Location: FF_X70_Y36_N5
\inst1|lack[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[14]~68_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(14));

-- Location: LCCOMB_X70_Y37_N8
\inst1|lack[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[0]~40_combout\ = (\inst1|Add6~32_combout\ & (\inst1|Add8~0_combout\ $ (VCC))) # (!\inst1|Add6~32_combout\ & (\inst1|Add8~0_combout\ & VCC))
-- \inst1|lack[0]~41\ = CARRY((\inst1|Add6~32_combout\ & \inst1|Add8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~32_combout\,
	datab => \inst1|Add8~0_combout\,
	datad => VCC,
	combout => \inst1|lack[0]~40_combout\,
	cout => \inst1|lack[0]~41\);

-- Location: FF_X70_Y37_N9
\inst1|lack[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[0]~40_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(0));

-- Location: LCCOMB_X69_Y37_N8
\inst1|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~0_combout\ = (\inst1|lack\(10) & (\inst1|lack\(0) $ (VCC))) # (!\inst1|lack\(10) & ((\inst1|lack\(0)) # (GND)))
-- \inst1|Add8~1\ = CARRY((\inst1|lack\(0)) # (!\inst1|lack\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(10),
	datab => \inst1|lack\(0),
	datad => VCC,
	combout => \inst1|Add8~0_combout\,
	cout => \inst1|Add8~1\);

-- Location: LCCOMB_X70_Y37_N10
\inst1|lack[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[1]~42_combout\ = (\inst1|Add8~2_combout\ & (!\inst1|lack[0]~41\)) # (!\inst1|Add8~2_combout\ & ((\inst1|lack[0]~41\) # (GND)))
-- \inst1|lack[1]~43\ = CARRY((!\inst1|lack[0]~41\) # (!\inst1|Add8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~2_combout\,
	datad => VCC,
	cin => \inst1|lack[0]~41\,
	combout => \inst1|lack[1]~42_combout\,
	cout => \inst1|lack[1]~43\);

-- Location: LCCOMB_X70_Y37_N12
\inst1|lack[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[2]~44_combout\ = ((\inst1|Add8~4_combout\ $ (\inst1|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (!\inst1|lack[1]~43\)))) # (GND)
-- \inst1|lack[2]~45\ = CARRY((\inst1|Add8~4_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\inst1|lack[1]~43\))) # (!\inst1|Add8~4_combout\ & (\inst1|Mult0|auto_generated|mac_out2~DATAOUT2\ & !\inst1|lack[1]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~4_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \inst1|lack[1]~43\,
	combout => \inst1|lack[2]~44_combout\,
	cout => \inst1|lack[2]~45\);

-- Location: FF_X70_Y37_N13
\inst1|lack[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[2]~44_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(2));

-- Location: FF_X70_Y37_N11
\inst1|lack[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[1]~42_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(1));

-- Location: LCCOMB_X69_Y37_N14
\inst1|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~6_combout\ = (\inst1|lack\(13) & ((\inst1|lack\(3) & (!\inst1|Add8~5\)) # (!\inst1|lack\(3) & ((\inst1|Add8~5\) # (GND))))) # (!\inst1|lack\(13) & ((\inst1|lack\(3) & (\inst1|Add8~5\ & VCC)) # (!\inst1|lack\(3) & (!\inst1|Add8~5\))))
-- \inst1|Add8~7\ = CARRY((\inst1|lack\(13) & ((!\inst1|Add8~5\) # (!\inst1|lack\(3)))) # (!\inst1|lack\(13) & (!\inst1|lack\(3) & !\inst1|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(13),
	datab => \inst1|lack\(3),
	datad => VCC,
	cin => \inst1|Add8~5\,
	combout => \inst1|Add8~6_combout\,
	cout => \inst1|Add8~7\);

-- Location: LCCOMB_X70_Y37_N14
\inst1|lack[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[3]~46_combout\ = (\inst1|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\inst1|Add8~6_combout\ & (\inst1|lack[2]~45\ & VCC)) # (!\inst1|Add8~6_combout\ & (!\inst1|lack[2]~45\)))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- ((\inst1|Add8~6_combout\ & (!\inst1|lack[2]~45\)) # (!\inst1|Add8~6_combout\ & ((\inst1|lack[2]~45\) # (GND)))))
-- \inst1|lack[3]~47\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\inst1|Add8~6_combout\ & !\inst1|lack[2]~45\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((!\inst1|lack[2]~45\) # (!\inst1|Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \inst1|Add8~6_combout\,
	datad => VCC,
	cin => \inst1|lack[2]~45\,
	combout => \inst1|lack[3]~46_combout\,
	cout => \inst1|lack[3]~47\);

-- Location: FF_X70_Y37_N15
\inst1|lack[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[3]~46_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(3));

-- Location: LCCOMB_X69_Y37_N16
\inst1|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~8_combout\ = ((\inst1|lack\(4) $ (\inst1|lack\(14) $ (\inst1|Add8~7\)))) # (GND)
-- \inst1|Add8~9\ = CARRY((\inst1|lack\(4) & ((!\inst1|Add8~7\) # (!\inst1|lack\(14)))) # (!\inst1|lack\(4) & (!\inst1|lack\(14) & !\inst1|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(4),
	datab => \inst1|lack\(14),
	datad => VCC,
	cin => \inst1|Add8~7\,
	combout => \inst1|Add8~8_combout\,
	cout => \inst1|Add8~9\);

-- Location: LCCOMB_X69_Y37_N18
\inst1|Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~10_combout\ = (\inst1|lack\(15) & ((\inst1|lack\(5) & (!\inst1|Add8~9\)) # (!\inst1|lack\(5) & ((\inst1|Add8~9\) # (GND))))) # (!\inst1|lack\(15) & ((\inst1|lack\(5) & (\inst1|Add8~9\ & VCC)) # (!\inst1|lack\(5) & (!\inst1|Add8~9\))))
-- \inst1|Add8~11\ = CARRY((\inst1|lack\(15) & ((!\inst1|Add8~9\) # (!\inst1|lack\(5)))) # (!\inst1|lack\(15) & (!\inst1|lack\(5) & !\inst1|Add8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(15),
	datab => \inst1|lack\(5),
	datad => VCC,
	cin => \inst1|Add8~9\,
	combout => \inst1|Add8~10_combout\,
	cout => \inst1|Add8~11\);

-- Location: LCCOMB_X70_Y37_N18
\inst1|lack[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[5]~50_combout\ = (\inst1|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\inst1|Add8~10_combout\ & (\inst1|lack[4]~49\ & VCC)) # (!\inst1|Add8~10_combout\ & (!\inst1|lack[4]~49\)))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- ((\inst1|Add8~10_combout\ & (!\inst1|lack[4]~49\)) # (!\inst1|Add8~10_combout\ & ((\inst1|lack[4]~49\) # (GND)))))
-- \inst1|lack[5]~51\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\inst1|Add8~10_combout\ & !\inst1|lack[4]~49\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((!\inst1|lack[4]~49\) # (!\inst1|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \inst1|Add8~10_combout\,
	datad => VCC,
	cin => \inst1|lack[4]~49\,
	combout => \inst1|lack[5]~50_combout\,
	cout => \inst1|lack[5]~51\);

-- Location: FF_X70_Y37_N19
\inst1|lack[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[5]~50_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(5));

-- Location: LCCOMB_X69_Y37_N20
\inst1|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~12_combout\ = ((\inst1|lack\(6) $ (\inst1|lack\(16) $ (\inst1|Add8~11\)))) # (GND)
-- \inst1|Add8~13\ = CARRY((\inst1|lack\(6) & ((!\inst1|Add8~11\) # (!\inst1|lack\(16)))) # (!\inst1|lack\(6) & (!\inst1|lack\(16) & !\inst1|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(6),
	datab => \inst1|lack\(16),
	datad => VCC,
	cin => \inst1|Add8~11\,
	combout => \inst1|Add8~12_combout\,
	cout => \inst1|Add8~13\);

-- Location: LCCOMB_X70_Y37_N22
\inst1|lack[7]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[7]~54_combout\ = (\inst1|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\inst1|Add8~14_combout\ & (\inst1|lack[6]~53\ & VCC)) # (!\inst1|Add8~14_combout\ & (!\inst1|lack[6]~53\)))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- ((\inst1|Add8~14_combout\ & (!\inst1|lack[6]~53\)) # (!\inst1|Add8~14_combout\ & ((\inst1|lack[6]~53\) # (GND)))))
-- \inst1|lack[7]~55\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\inst1|Add8~14_combout\ & !\inst1|lack[6]~53\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((!\inst1|lack[6]~53\) # (!\inst1|Add8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \inst1|Add8~14_combout\,
	datad => VCC,
	cin => \inst1|lack[6]~53\,
	combout => \inst1|lack[7]~54_combout\,
	cout => \inst1|lack[7]~55\);

-- Location: FF_X70_Y37_N23
\inst1|lack[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[7]~54_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(7));

-- Location: LCCOMB_X69_Y37_N22
\inst1|Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~14_combout\ = (\inst1|lack\(17) & ((\inst1|lack\(7) & (!\inst1|Add8~13\)) # (!\inst1|lack\(7) & ((\inst1|Add8~13\) # (GND))))) # (!\inst1|lack\(17) & ((\inst1|lack\(7) & (\inst1|Add8~13\ & VCC)) # (!\inst1|lack\(7) & (!\inst1|Add8~13\))))
-- \inst1|Add8~15\ = CARRY((\inst1|lack\(17) & ((!\inst1|Add8~13\) # (!\inst1|lack\(7)))) # (!\inst1|lack\(17) & (!\inst1|lack\(7) & !\inst1|Add8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(17),
	datab => \inst1|lack\(7),
	datad => VCC,
	cin => \inst1|Add8~13\,
	combout => \inst1|Add8~14_combout\,
	cout => \inst1|Add8~15\);

-- Location: LCCOMB_X70_Y37_N24
\inst1|lack[8]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[8]~56_combout\ = ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT8\ $ (\inst1|Add8~16_combout\ $ (!\inst1|lack[7]~55\)))) # (GND)
-- \inst1|lack[8]~57\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\inst1|Add8~16_combout\) # (!\inst1|lack[7]~55\))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT8\ & (\inst1|Add8~16_combout\ & !\inst1|lack[7]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \inst1|Add8~16_combout\,
	datad => VCC,
	cin => \inst1|lack[7]~55\,
	combout => \inst1|lack[8]~56_combout\,
	cout => \inst1|lack[8]~57\);

-- Location: FF_X70_Y37_N25
\inst1|lack[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[8]~56_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(8));

-- Location: LCCOMB_X69_Y37_N24
\inst1|Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~16_combout\ = ((\inst1|lack\(18) $ (\inst1|lack\(8) $ (\inst1|Add8~15\)))) # (GND)
-- \inst1|Add8~17\ = CARRY((\inst1|lack\(18) & (\inst1|lack\(8) & !\inst1|Add8~15\)) # (!\inst1|lack\(18) & ((\inst1|lack\(8)) # (!\inst1|Add8~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(18),
	datab => \inst1|lack\(8),
	datad => VCC,
	cin => \inst1|Add8~15\,
	combout => \inst1|Add8~16_combout\,
	cout => \inst1|Add8~17\);

-- Location: LCCOMB_X70_Y37_N26
\inst1|lack[9]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[9]~58_combout\ = (\inst1|Add8~18_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT9\ & (\inst1|lack[8]~57\ & VCC)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\inst1|lack[8]~57\)))) # (!\inst1|Add8~18_combout\ & 
-- ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\inst1|lack[8]~57\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\inst1|lack[8]~57\) # (GND)))))
-- \inst1|lack[9]~59\ = CARRY((\inst1|Add8~18_combout\ & (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT9\ & !\inst1|lack[8]~57\)) # (!\inst1|Add8~18_combout\ & ((!\inst1|lack[8]~57\) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~18_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \inst1|lack[8]~57\,
	combout => \inst1|lack[9]~58_combout\,
	cout => \inst1|lack[9]~59\);

-- Location: FF_X70_Y37_N29
\inst1|lack[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[10]~60_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(10));

-- Location: FF_X70_Y37_N27
\inst1|lack[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[9]~58_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(9));

-- Location: LCCOMB_X69_Y36_N0
\inst1|Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~24_combout\ = ((\inst1|lack\(22) $ (\inst1|lack\(12) $ (\inst1|Add8~23\)))) # (GND)
-- \inst1|Add8~25\ = CARRY((\inst1|lack\(22) & (\inst1|lack\(12) & !\inst1|Add8~23\)) # (!\inst1|lack\(22) & ((\inst1|lack\(12)) # (!\inst1|Add8~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(22),
	datab => \inst1|lack\(12),
	datad => VCC,
	cin => \inst1|Add8~23\,
	combout => \inst1|Add8~24_combout\,
	cout => \inst1|Add8~25\);

-- Location: FF_X70_Y36_N1
\inst1|lack[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[12]~64_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(12));

-- Location: LCCOMB_X69_Y36_N10
\inst1|Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~34_combout\ = (\inst1|lack\(17) & ((\inst1|lack\(27) & (!\inst1|Add8~33\)) # (!\inst1|lack\(27) & (\inst1|Add8~33\ & VCC)))) # (!\inst1|lack\(17) & ((\inst1|lack\(27) & ((\inst1|Add8~33\) # (GND))) # (!\inst1|lack\(27) & (!\inst1|Add8~33\))))
-- \inst1|Add8~35\ = CARRY((\inst1|lack\(17) & (\inst1|lack\(27) & !\inst1|Add8~33\)) # (!\inst1|lack\(17) & ((\inst1|lack\(27)) # (!\inst1|Add8~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(17),
	datab => \inst1|lack\(27),
	datad => VCC,
	cin => \inst1|Add8~33\,
	combout => \inst1|Add8~34_combout\,
	cout => \inst1|Add8~35\);

-- Location: LCCOMB_X70_Y36_N10
\inst1|lack[17]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[17]~74_combout\ = (\inst1|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\inst1|Add8~34_combout\ & (\inst1|lack[16]~73\ & VCC)) # (!\inst1|Add8~34_combout\ & (!\inst1|lack[16]~73\)))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\inst1|Add8~34_combout\ & (!\inst1|lack[16]~73\)) # (!\inst1|Add8~34_combout\ & ((\inst1|lack[16]~73\) # (GND)))))
-- \inst1|lack[17]~75\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\inst1|Add8~34_combout\ & !\inst1|lack[16]~73\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((!\inst1|lack[16]~73\) # (!\inst1|Add8~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \inst1|Add8~34_combout\,
	datad => VCC,
	cin => \inst1|lack[16]~73\,
	combout => \inst1|lack[17]~74_combout\,
	cout => \inst1|lack[17]~75\);

-- Location: LCCOMB_X70_Y36_N12
\inst1|lack[18]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[18]~76_combout\ = ((\inst1|Add8~36_combout\ $ (\inst1|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (!\inst1|lack[17]~75\)))) # (GND)
-- \inst1|lack[18]~77\ = CARRY((\inst1|Add8~36_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\inst1|lack[17]~75\))) # (!\inst1|Add8~36_combout\ & (\inst1|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\inst1|lack[17]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~36_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \inst1|lack[17]~75\,
	combout => \inst1|lack[18]~76_combout\,
	cout => \inst1|lack[18]~77\);

-- Location: LCCOMB_X70_Y36_N14
\inst1|lack[19]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[19]~78_combout\ = (\inst1|Add8~38_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\inst1|lack[18]~77\ & VCC)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\inst1|lack[18]~77\)))) # (!\inst1|Add8~38_combout\ & 
-- ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\inst1|lack[18]~77\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\inst1|lack[18]~77\) # (GND)))))
-- \inst1|lack[19]~79\ = CARRY((\inst1|Add8~38_combout\ & (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\inst1|lack[18]~77\)) # (!\inst1|Add8~38_combout\ & ((!\inst1|lack[18]~77\) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~38_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \inst1|lack[18]~77\,
	combout => \inst1|lack[19]~78_combout\,
	cout => \inst1|lack[19]~79\);

-- Location: LCCOMB_X70_Y36_N16
\inst1|lack[20]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[20]~80_combout\ = ((\inst1|Add8~40_combout\ $ (\inst1|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\inst1|lack[19]~79\)))) # (GND)
-- \inst1|lack[20]~81\ = CARRY((\inst1|Add8~40_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\inst1|lack[19]~79\))) # (!\inst1|Add8~40_combout\ & (\inst1|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\inst1|lack[19]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~40_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \inst1|lack[19]~79\,
	combout => \inst1|lack[20]~80_combout\,
	cout => \inst1|lack[20]~81\);

-- Location: FF_X70_Y36_N17
\inst1|lack[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[20]~80_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(20));

-- Location: FF_X70_Y36_N15
\inst1|lack[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[19]~78_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(19));

-- Location: FF_X70_Y36_N13
\inst1|lack[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[18]~76_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(18));

-- Location: LCCOMB_X69_Y36_N18
\inst1|Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~42_combout\ = (\inst1|lack\(31) & ((\inst1|lack\(21) & (!\inst1|Add8~41\)) # (!\inst1|lack\(21) & ((\inst1|Add8~41\) # (GND))))) # (!\inst1|lack\(31) & ((\inst1|lack\(21) & (\inst1|Add8~41\ & VCC)) # (!\inst1|lack\(21) & (!\inst1|Add8~41\))))
-- \inst1|Add8~43\ = CARRY((\inst1|lack\(31) & ((!\inst1|Add8~41\) # (!\inst1|lack\(21)))) # (!\inst1|lack\(31) & (!\inst1|lack\(21) & !\inst1|Add8~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(31),
	datab => \inst1|lack\(21),
	datad => VCC,
	cin => \inst1|Add8~41\,
	combout => \inst1|Add8~42_combout\,
	cout => \inst1|Add8~43\);

-- Location: LCCOMB_X70_Y36_N18
\inst1|lack[21]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[21]~82_combout\ = (\inst1|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\inst1|Add8~42_combout\ & (\inst1|lack[20]~81\ & VCC)) # (!\inst1|Add8~42_combout\ & (!\inst1|lack[20]~81\)))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\inst1|Add8~42_combout\ & (!\inst1|lack[20]~81\)) # (!\inst1|Add8~42_combout\ & ((\inst1|lack[20]~81\) # (GND)))))
-- \inst1|lack[21]~83\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\inst1|Add8~42_combout\ & !\inst1|lack[20]~81\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((!\inst1|lack[20]~81\) # (!\inst1|Add8~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \inst1|Add8~42_combout\,
	datad => VCC,
	cin => \inst1|lack[20]~81\,
	combout => \inst1|lack[21]~82_combout\,
	cout => \inst1|lack[21]~83\);

-- Location: FF_X70_Y36_N19
\inst1|lack[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[21]~82_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(21));

-- Location: LCCOMB_X69_Y36_N20
\inst1|Add8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~44_combout\ = ((\inst1|lack\(22) $ (\inst1|lack\(32) $ (\inst1|Add8~43\)))) # (GND)
-- \inst1|Add8~45\ = CARRY((\inst1|lack\(22) & ((!\inst1|Add8~43\) # (!\inst1|lack\(32)))) # (!\inst1|lack\(22) & (!\inst1|lack\(32) & !\inst1|Add8~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(22),
	datab => \inst1|lack\(32),
	datad => VCC,
	cin => \inst1|Add8~43\,
	combout => \inst1|Add8~44_combout\,
	cout => \inst1|Add8~45\);

-- Location: LCCOMB_X70_Y36_N22
\inst1|lack[23]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[23]~86_combout\ = (\inst1|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\inst1|Add8~46_combout\ & (\inst1|lack[22]~85\ & VCC)) # (!\inst1|Add8~46_combout\ & (!\inst1|lack[22]~85\)))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((\inst1|Add8~46_combout\ & (!\inst1|lack[22]~85\)) # (!\inst1|Add8~46_combout\ & ((\inst1|lack[22]~85\) # (GND)))))
-- \inst1|lack[23]~87\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\inst1|Add8~46_combout\ & !\inst1|lack[22]~85\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((!\inst1|lack[22]~85\) # (!\inst1|Add8~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \inst1|Add8~46_combout\,
	datad => VCC,
	cin => \inst1|lack[22]~85\,
	combout => \inst1|lack[23]~86_combout\,
	cout => \inst1|lack[23]~87\);

-- Location: FF_X70_Y36_N23
\inst1|lack[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[23]~86_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(23));

-- Location: LCCOMB_X69_Y36_N22
\inst1|Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~46_combout\ = (\inst1|lack\(33) & ((\inst1|lack\(23) & (!\inst1|Add8~45\)) # (!\inst1|lack\(23) & ((\inst1|Add8~45\) # (GND))))) # (!\inst1|lack\(33) & ((\inst1|lack\(23) & (\inst1|Add8~45\ & VCC)) # (!\inst1|lack\(23) & (!\inst1|Add8~45\))))
-- \inst1|Add8~47\ = CARRY((\inst1|lack\(33) & ((!\inst1|Add8~45\) # (!\inst1|lack\(23)))) # (!\inst1|lack\(33) & (!\inst1|lack\(23) & !\inst1|Add8~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(33),
	datab => \inst1|lack\(23),
	datad => VCC,
	cin => \inst1|Add8~45\,
	combout => \inst1|Add8~46_combout\,
	cout => \inst1|Add8~47\);

-- Location: LCCOMB_X70_Y36_N24
\inst1|lack[24]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[24]~88_combout\ = ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\inst1|Add8~48_combout\ $ (!\inst1|lack[23]~87\)))) # (GND)
-- \inst1|lack[24]~89\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\inst1|Add8~48_combout\) # (!\inst1|lack[23]~87\))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\inst1|Add8~48_combout\ & !\inst1|lack[23]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \inst1|Add8~48_combout\,
	datad => VCC,
	cin => \inst1|lack[23]~87\,
	combout => \inst1|lack[24]~88_combout\,
	cout => \inst1|lack[24]~89\);

-- Location: FF_X70_Y36_N25
\inst1|lack[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[24]~88_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(24));

-- Location: LCCOMB_X69_Y36_N24
\inst1|Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~48_combout\ = ((\inst1|lack\(34) $ (\inst1|lack\(24) $ (\inst1|Add8~47\)))) # (GND)
-- \inst1|Add8~49\ = CARRY((\inst1|lack\(34) & (\inst1|lack\(24) & !\inst1|Add8~47\)) # (!\inst1|lack\(34) & ((\inst1|lack\(24)) # (!\inst1|Add8~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(34),
	datab => \inst1|lack\(24),
	datad => VCC,
	cin => \inst1|Add8~47\,
	combout => \inst1|Add8~48_combout\,
	cout => \inst1|Add8~49\);

-- Location: LCCOMB_X70_Y36_N26
\inst1|lack[25]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[25]~90_combout\ = (\inst1|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\inst1|Add8~50_combout\ & (\inst1|lack[24]~89\ & VCC)) # (!\inst1|Add8~50_combout\ & (!\inst1|lack[24]~89\)))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- ((\inst1|Add8~50_combout\ & (!\inst1|lack[24]~89\)) # (!\inst1|Add8~50_combout\ & ((\inst1|lack[24]~89\) # (GND)))))
-- \inst1|lack[25]~91\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\inst1|Add8~50_combout\ & !\inst1|lack[24]~89\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((!\inst1|lack[24]~89\) # (!\inst1|Add8~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \inst1|Add8~50_combout\,
	datad => VCC,
	cin => \inst1|lack[24]~89\,
	combout => \inst1|lack[25]~90_combout\,
	cout => \inst1|lack[25]~91\);

-- Location: FF_X70_Y36_N27
\inst1|lack[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[25]~90_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(25));

-- Location: LCCOMB_X69_Y36_N26
\inst1|Add8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add8~50_combout\ = (\inst1|lack\(35) & ((\inst1|lack\(25) & (!\inst1|Add8~49\)) # (!\inst1|lack\(25) & ((\inst1|Add8~49\) # (GND))))) # (!\inst1|lack\(35) & ((\inst1|lack\(25) & (\inst1|Add8~49\ & VCC)) # (!\inst1|lack\(25) & (!\inst1|Add8~49\))))
-- \inst1|Add8~51\ = CARRY((\inst1|lack\(35) & ((!\inst1|Add8~49\) # (!\inst1|lack\(25)))) # (!\inst1|lack\(35) & (!\inst1|lack\(25) & !\inst1|Add8~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(35),
	datab => \inst1|lack\(25),
	datad => VCC,
	cin => \inst1|Add8~49\,
	combout => \inst1|Add8~50_combout\,
	cout => \inst1|Add8~51\);

-- Location: LCCOMB_X70_Y35_N0
\inst1|lack[28]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[28]~96_combout\ = ((\inst1|Add8~56_combout\ $ (\inst1|Mult0|auto_generated|mac_out2~DATAOUT28\ $ (!\inst1|lack[27]~95\)))) # (GND)
-- \inst1|lack[28]~97\ = CARRY((\inst1|Add8~56_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT28\) # (!\inst1|lack[27]~95\))) # (!\inst1|Add8~56_combout\ & (\inst1|Mult0|auto_generated|mac_out2~DATAOUT28\ & !\inst1|lack[27]~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~56_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \inst1|lack[27]~95\,
	combout => \inst1|lack[28]~96_combout\,
	cout => \inst1|lack[28]~97\);

-- Location: FF_X70_Y35_N1
\inst1|lack[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[28]~96_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(28));

-- Location: LCCOMB_X70_Y35_N2
\inst1|lack[29]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[29]~98_combout\ = (\inst1|Add8~58_combout\ & ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT29\ & (\inst1|lack[28]~97\ & VCC)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\inst1|lack[28]~97\)))) # (!\inst1|Add8~58_combout\ & 
-- ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\inst1|lack[28]~97\)) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\inst1|lack[28]~97\) # (GND)))))
-- \inst1|lack[29]~99\ = CARRY((\inst1|Add8~58_combout\ & (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT29\ & !\inst1|lack[28]~97\)) # (!\inst1|Add8~58_combout\ & ((!\inst1|lack[28]~97\) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add8~58_combout\,
	datab => \inst1|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \inst1|lack[28]~97\,
	combout => \inst1|lack[29]~98_combout\,
	cout => \inst1|lack[29]~99\);

-- Location: LCCOMB_X70_Y35_N4
\inst1|lack[30]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lack[30]~100_combout\ = ((\inst1|Mult0|auto_generated|mac_out2~DATAOUT30\ $ (\inst1|Add8~60_combout\ $ (!\inst1|lack[29]~99\)))) # (GND)
-- \inst1|lack[30]~101\ = CARRY((\inst1|Mult0|auto_generated|mac_out2~DATAOUT30\ & ((\inst1|Add8~60_combout\) # (!\inst1|lack[29]~99\))) # (!\inst1|Mult0|auto_generated|mac_out2~DATAOUT30\ & (\inst1|Add8~60_combout\ & !\inst1|lack[29]~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mult0|auto_generated|mac_out2~DATAOUT30\,
	datab => \inst1|Add8~60_combout\,
	datad => VCC,
	cin => \inst1|lack[29]~99\,
	combout => \inst1|lack[30]~100_combout\,
	cout => \inst1|lack[30]~101\);

-- Location: FF_X70_Y35_N9
\inst1|lack[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[32]~104_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(32));

-- Location: LCCOMB_X70_Y35_N24
\inst1|LEDR~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~9_combout\ = (\inst1|lack\(33)) # ((\inst1|lack\(32)) # (\inst1|lack\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(33),
	datac => \inst1|lack\(32),
	datad => \inst1|lack\(34),
	combout => \inst1|LEDR~9_combout\);

-- Location: FF_X70_Y35_N25
\inst1|LEDR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(9));

-- Location: FF_X70_Y35_N5
\inst1|lack[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[30]~100_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(30));

-- Location: FF_X70_Y35_N3
\inst1|lack[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[29]~98_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(29));

-- Location: LCCOMB_X70_Y35_N26
\inst1|LEDR~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~10_combout\ = (\inst1|lack\(31)) # ((\inst1|lack\(30)) # (\inst1|lack\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(31),
	datac => \inst1|lack\(30),
	datad => \inst1|lack\(29),
	combout => \inst1|LEDR~10_combout\);

-- Location: FF_X70_Y35_N27
\inst1|LEDR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(10));

-- Location: LCCOMB_X70_Y35_N28
\inst1|LEDR~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~11_combout\ = (\inst1|lack\(26)) # ((\inst1|lack\(28)) # (\inst1|lack\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(26),
	datab => \inst1|lack\(28),
	datac => \inst1|lack\(27),
	combout => \inst1|LEDR~11_combout\);

-- Location: FF_X70_Y35_N29
\inst1|LEDR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(11));

-- Location: LCCOMB_X68_Y38_N16
\inst1|LEDR~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~12_combout\ = (\inst1|lack\(25)) # ((\inst1|lack\(24)) # (\inst1|lack\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lack\(25),
	datac => \inst1|lack\(24),
	datad => \inst1|lack\(23),
	combout => \inst1|LEDR~12_combout\);

-- Location: FF_X68_Y38_N17
\inst1|LEDR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(12));

-- Location: LCCOMB_X69_Y37_N0
\inst1|LEDR~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~13_combout\ = (\inst1|lack\(22)) # ((\inst1|lack\(21)) # (\inst1|lack\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(22),
	datab => \inst1|lack\(21),
	datad => \inst1|lack\(20),
	combout => \inst1|LEDR~13_combout\);

-- Location: FF_X69_Y37_N1
\inst1|LEDR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(13));

-- Location: FF_X70_Y36_N11
\inst1|lack[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[17]~74_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(17));

-- Location: LCCOMB_X69_Y37_N2
\inst1|LEDR~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~14_combout\ = (\inst1|lack\(18)) # ((\inst1|lack\(17)) # (\inst1|lack\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(18),
	datac => \inst1|lack\(17),
	datad => \inst1|lack\(19),
	combout => \inst1|LEDR~14_combout\);

-- Location: FF_X69_Y37_N3
\inst1|LEDR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(14));

-- Location: LCCOMB_X69_Y37_N4
\inst1|LEDR~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~15_combout\ = (\inst1|lack\(15)) # ((\inst1|lack\(14)) # (\inst1|lack\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(15),
	datab => \inst1|lack\(14),
	datad => \inst1|lack\(16),
	combout => \inst1|LEDR~15_combout\);

-- Location: FF_X69_Y37_N5
\inst1|LEDR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(15));

-- Location: FF_X70_Y37_N31
\inst1|lack[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[11]~62_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(11));

-- Location: FF_X70_Y36_N3
\inst1|lack[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lack[13]~66_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lack\(13));

-- Location: LCCOMB_X69_Y37_N6
\inst1|LEDR~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~16_combout\ = (\inst1|lack\(12)) # ((\inst1|lack\(11)) # (\inst1|lack\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lack\(12),
	datac => \inst1|lack\(11),
	datad => \inst1|lack\(13),
	combout => \inst1|LEDR~16_combout\);

-- Location: FF_X69_Y37_N7
\inst1|LEDR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(16));

-- Location: LCCOMB_X70_Y37_N0
\inst1|LEDR~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LEDR~17_combout\ = (\inst1|lack\(10)) # ((\inst1|lack\(9)) # (\inst1|lack\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lack\(10),
	datac => \inst1|lack\(9),
	datad => \inst1|lack\(8),
	combout => \inst1|LEDR~17_combout\);

-- Location: FF_X70_Y37_N1
\inst1|LEDR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|LEDR~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LEDR\(17));

ww_mclk <= \mclk~output_o\;

ww_bclk <= \bclk~output_o\;

ww_adclrc <= \adclrc~output_o\;

ww_daclrc <= \daclrc~output_o\;

ww_dacdat <= \dacdat~output_o\;

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

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


