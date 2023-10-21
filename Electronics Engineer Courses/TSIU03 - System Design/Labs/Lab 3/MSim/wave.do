onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color {Cornflower Blue} -itemcolor {Cornflower Blue} /tb_top/clk
add wave -noupdate /tb_top/rstn
add wave -noupdate /tb_top/sram_addr
add wave -noupdate /tb_top/sram_data
add wave -noupdate /tb_top/sram_we
add wave -noupdate /tb_top/sram_oe
add wave -noupdate /tb_top/vga_r
add wave -noupdate /tb_top/vga_g
add wave -noupdate /tb_top/vga_b
add wave -noupdate -color Gold -itemcolor Gold /tb_top/hsync
add wave -noupdate -color Gold -itemcolor Gold /tb_top/vsync
add wave -noupdate -color {Cornflower Blue} -itemcolor {Cornflower Blue} /tb_top/vga_clk
add wave -noupdate /tb_top/blank3
add wave -noupdate /tb_top/blank4
add wave -noupdate -radix unsigned /tb_top/pixcode3
add wave -noupdate /tb_top/pixcode4
add wave -noupdate /tb_top/hsync_del
add wave -noupdate /tb_top/line_cnt
add wave -noupdate /tb_top/done_h
add wave -noupdate /tb_top/done_v
add wave -noupdate /tb_top/done_c
add wave -noupdate /tb_top/vga_sync
add wave -noupdate /tb_top/sram_ub
add wave -noupdate /tb_top/sram_lb
add wave -noupdate /tb_top/sram_ce
add wave -noupdate -divider Tjexshoklad
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1987002 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {1986340 ns} {1987340 ns}
