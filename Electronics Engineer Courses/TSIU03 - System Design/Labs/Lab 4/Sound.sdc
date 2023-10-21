# Clock constraints
create_clock -name "clk" -period 20.000ns [get_ports {clk}]

# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

# Handle the reset input (dirty hack. It's totally unrelated to the clock)
set_input_delay -clock clk -max 15 [get_ports {rstn}]
set_input_delay -clock clk -add_delay -min 1 [get_ports {rstn}]
set_input_delay -clock clk -add_delay -rise 0.1 [get_ports {rstn}]
set_input_delay -clock clk -add_delay -fall 0.1 [get_ports {rstn}]

