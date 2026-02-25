set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports sysclk]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports btn0]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports led0]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports uart_tx]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports uart_rx]
## Clock Signal (125 MHz)

## Reset Button (BTN0)

## Status LED (LED0)

## UART (Mapped to Arduino Header for USB-UART Adapter)Once those two are working, I can tell you exactly whether the “new AES adapter” is working or whether the issue is clock/reset/address decode in the BD.
## TX (FPGA sends) -> AR1 (Pin U12)
## RX (FPGA receives) -> AR0 (Pin T14)




#set_property MARK_DEBUG true [get_nets {u_ibex/device_sel_req[0]}]
#set_property MARK_DEBUG true [get_nets {u_ibex/device_sel_req[1]}]


#connect_debug_port u_ila_0/probe0 [get_nets [list {dbg_host_addr[2]} {dbg_host_addr[3]} {dbg_host_addr[4]} {dbg_host_addr[5]} {dbg_host_addr[6]} {dbg_host_addr[7]} {dbg_host_addr[8]} {dbg_host_addr[9]} {dbg_host_addr[10]} {dbg_host_addr[11]} {dbg_host_addr[12]} {dbg_host_addr[13]} {dbg_host_addr[14]} {dbg_host_addr[15]} {dbg_host_addr[16]} {dbg_host_addr[17]} {dbg_host_addr[18]} {dbg_host_addr[19]} {dbg_host_addr[20]} {dbg_host_addr[21]} {dbg_host_addr[22]} {dbg_host_addr[23]} {dbg_host_addr[24]} {dbg_host_addr[25]} {dbg_host_addr[26]} {dbg_host_addr[27]} {dbg_host_addr[28]} {dbg_host_addr[29]} {dbg_host_addr[30]} {dbg_host_addr[31]}]]
#connect_debug_port u_ila_0/probe2 [get_nets [list dbg_host_req]]

#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[29]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[30]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[0]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[1]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[2]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[3]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[4]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[5]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[7]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[6]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[8]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[26]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[9]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[10]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[19]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[27]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[16]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[11]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[21]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[22]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[12]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[13]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[23]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[24]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[18]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[20]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[14]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[25]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[15]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[28]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[17]}]
#set_property MARK_DEBUG true [get_nets {aes_addr_dbg[31]}]
#set_property MARK_DEBUG true [get_nets aes_req_dbg]



#connect_debug_port u_ila_0/probe1 [get_nets [list {sb_rdata[0]} {sb_rdata[1]} {sb_rdata[2]} {sb_rdata[3]} {sb_rdata[4]} {sb_rdata[5]} {sb_rdata[6]} {sb_rdata[7]} {sb_rdata[8]} {sb_rdata[9]} {sb_rdata[10]} {sb_rdata[11]} {sb_rdata[12]} {sb_rdata[13]} {sb_rdata[14]} {sb_rdata[15]} {sb_rdata[16]} {sb_rdata[17]} {sb_rdata[18]} {sb_rdata[19]} {sb_rdata[20]} {sb_rdata[21]} {sb_rdata[22]} {sb_rdata[23]} {sb_rdata[24]} {sb_rdata[25]} {sb_rdata[26]} {sb_rdata[27]} {sb_rdata[28]} {sb_rdata[29]} {sb_rdata[30]} {sb_rdata[31]}]]

#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk_sys]
