set_property SRC_FILE_INFO {cfile:/home/llia622/ibex_hello_world/ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_clk_wiz_0_0/secure_soc_clk_wiz_0_0.xdc rfile:../../../ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_clk_wiz_0_0/secure_soc_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:u_bd/secure_soc_i/clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/llia622/ibex_hello_world/ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_ila_0_0/ila_v6_2/constraints/ila.xdc rfile:../../../ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_ila_0_0/ila_v6_2/constraints/ila.xdc id:2 order:EARLY scoped_inst:u_bd/secure_soc_i/ila_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/llia622/ibex_hello_world/ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_ila_1_0/ila_v6_2/constraints/ila.xdc rfile:../../../ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_ila_1_0/ila_v6_2/constraints/ila.xdc id:3 order:EARLY scoped_inst:u_bd/secure_soc_i/ila_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/llia622/ibex_hello_world/ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_ila_2_0/ila_v6_2/constraints/ila.xdc rfile:../../../ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_ila_2_0/ila_v6_2/constraints/ila.xdc id:4 order:EARLY scoped_inst:u_bd/secure_soc_i/ila_2/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/llia622/ibex_hello_world/ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_ila_3_0/ila_v6_2/constraints/ila.xdc rfile:../../../ibex_hello_world.gen/sources_1/bd/secure_soc/ip/secure_soc_ila_3_0/ila_v6_2/constraints/ila.xdc id:5 order:EARLY scoped_inst:u_bd/secure_soc_i/ila_3/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/llia622/ibex_hello_world/ibex_hello_world.srcs/constrs_1/new/pynq_z2.xdc rfile:../../../ibex_hello_world.srcs/constrs_1/new/pynq_z2.xdc id:6} [current_design]
current_instance u_bd/secure_soc_i/clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.080
current_instance
current_instance u_bd/secure_soc_i/ila_0/inst
set_property src_info {type:SCOPED_XDC file:2 line:108 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -type CDC -id {CDC-10} -user ila -tags "1191969" -description "CDC-10 waiver for DDR Calibration logic" -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*CLK} -of_objects [get_cells -hierarchical -filter {NAME =~*u_trig/N_DDR_TC.N_DDR_TC_INST[*].U_TC/allx_typeA_match_detection.ltlib_v1_0_3_allx_typeA_inst/DUT/u_srl_drive}]] -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*u_trig/N_DDR_TC.N_DDR_TC_INST[*].U_TC/allx_typeA_match_detection.ltlib_v1_0_3_allx_typeA_inst/DUT/I_IS_TERMINATION_SLICE_W_OUTPUT_REG.DOUT_O_reg}]]
current_instance
current_instance u_bd/secure_soc_i/ila_1/inst
set_property src_info {type:SCOPED_XDC file:3 line:108 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -type CDC -id {CDC-10} -user ila -tags "1191969" -description "CDC-10 waiver for DDR Calibration logic" -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*CLK} -of_objects [get_cells -hierarchical -filter {NAME =~*u_trig/N_DDR_TC.N_DDR_TC_INST[*].U_TC/allx_typeA_match_detection.ltlib_v1_0_3_allx_typeA_inst/DUT/u_srl_drive}]] -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*u_trig/N_DDR_TC.N_DDR_TC_INST[*].U_TC/allx_typeA_match_detection.ltlib_v1_0_3_allx_typeA_inst/DUT/I_IS_TERMINATION_SLICE_W_OUTPUT_REG.DOUT_O_reg}]]
current_instance
current_instance u_bd/secure_soc_i/ila_2/inst
set_property src_info {type:SCOPED_XDC file:4 line:108 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -type CDC -id {CDC-10} -user ila -tags "1191969" -description "CDC-10 waiver for DDR Calibration logic" -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*CLK} -of_objects [get_cells -hierarchical -filter {NAME =~*u_trig/N_DDR_TC.N_DDR_TC_INST[*].U_TC/allx_typeA_match_detection.ltlib_v1_0_3_allx_typeA_inst/DUT/u_srl_drive}]] -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*u_trig/N_DDR_TC.N_DDR_TC_INST[*].U_TC/allx_typeA_match_detection.ltlib_v1_0_3_allx_typeA_inst/DUT/I_IS_TERMINATION_SLICE_W_OUTPUT_REG.DOUT_O_reg}]]
current_instance
current_instance u_bd/secure_soc_i/ila_3/inst
set_property src_info {type:SCOPED_XDC file:5 line:108 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -type CDC -id {CDC-10} -user ila -tags "1191969" -description "CDC-10 waiver for DDR Calibration logic" -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*CLK} -of_objects [get_cells -hierarchical -filter {NAME =~*u_trig/N_DDR_TC.N_DDR_TC_INST[*].U_TC/allx_typeA_match_detection.ltlib_v1_0_3_allx_typeA_inst/DUT/u_srl_drive}]] -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*u_trig/N_DDR_TC.N_DDR_TC_INST[*].U_TC/allx_typeA_match_detection.ltlib_v1_0_3_allx_typeA_inst/DUT/I_IS_TERMINATION_SLICE_W_OUTPUT_REG.DOUT_O_reg}]]
current_instance
set_property src_info {type:XDC file:6 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports sysclk]
set_property src_info {type:XDC file:6 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports btn0]
set_property src_info {type:XDC file:6 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports led0]
set_property src_info {type:XDC file:6 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports uart_tx]
set_property src_info {type:XDC file:6 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports uart_rx]
