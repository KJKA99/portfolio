#************************************************************
# THIS IS A WIZARD-GENERATED FILE.                           
#
# Version 12.1 Build 243 01/31/2013 Service Pack 1.33 SJ Full Version
#
#************************************************************

# Copyright (C) 1991-2012 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.



# Clock constraints
create_clock -name "clk" -period 20.000ns [get_ports {fpga_clk}]

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

# Handle the reset input (dirty hack. It's totally unrelated to the clock)
set_input_delay -clock clk -max 15 [get_ports {KEY0}]
set_input_delay -clock clk -add_delay -min 1 [get_ports {KEY0}]
set_input_delay -clock clk -add_delay -rise 0.1 [get_ports {KEY0}]
set_input_delay -clock clk -add_delay -fall 0.1 [get_ports {KEY0}]


### I/O constraints related to SRAM ###
# Constraint SRAM address to 5 ns after clock:
set_output_delay -clock clk -max 5 [get_ports {sram_addr[*]}]
set_output_delay -clock clk -add_delay -fall 0.1 [get_ports {sram_addr[*]}]
set_output_delay -clock clk -add_delay -rise 0.1 [get_ports {sram_addr[*]}]

# Inform that SRAM data will come at latest 3 ns before clock flank (at most 17 ns after prev flank)
set_input_delay -clock clk -max 17 [get_ports {sram_data[*]}]
set_input_delay -clock clk -add_delay -fall 0.1 [get_ports {sram_data[*]}]
set_input_delay -clock clk -add_delay -rise 0.1 [get_ports {sram_data[*]}]

### I/O constraints related to VGA ###
set_output_delay -clock clk -max 3 [get_ports {vga_r[*] vga_g[*] vga_b[*] vga_blank vga_clk hsync vsync}]
set_output_delay -clock clk -add_delay -fall 0.1 [get_ports {vga_r[*] vga_g[*] vga_b[*] vga_blank vga_clk hsync vsync}]
set_output_delay -clock clk -add_delay -rise 0.1 [get_ports {vga_r[*] vga_g[*] vga_b[*] vga_blank vga_clk hsync vsync}]

