transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+secure_soc  -L xil_defaultlib -L xilinx_vip -L xpm -L xlconstant_v1_1_10 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_35 -L axi_vip_v1_1_21 -L util_vector_logic_v2_0_5 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.secure_soc xil_defaultlib.glbl

do {secure_soc.udo}

run 1000ns

endsim

quit -force
