//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Fri Feb 13 17:47:51 2026
//Host        : en433345.uoa.auckland.ac.nz running 64-bit Ubuntu 24.04.2 LTS
//Command     : generate_target secure_soc_wrapper.bd
//Design      : secure_soc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module secure_soc_wrapper
   (clk_out1_0,
    rst_n_0,
    sb_addr_0,
    sb_be_0,
    sb_rdata_0,
    sb_ready_0,
    sb_req_0,
    sb_rvalid_0,
    sb_wdata_0,
    sb_we_0,
    sys_clock);
  output clk_out1_0;
  input rst_n_0;
  input [31:0]sb_addr_0;
  input [3:0]sb_be_0;
  output [31:0]sb_rdata_0;
  output sb_ready_0;
  input sb_req_0;
  output sb_rvalid_0;
  input [31:0]sb_wdata_0;
  input sb_we_0;
  input sys_clock;

  wire clk_out1_0;
  wire rst_n_0;
  wire [31:0]sb_addr_0;
  wire [3:0]sb_be_0;
  wire [31:0]sb_rdata_0;
  wire sb_ready_0;
  wire sb_req_0;
  wire sb_rvalid_0;
  wire [31:0]sb_wdata_0;
  wire sb_we_0;
  wire sys_clock;

  secure_soc secure_soc_i
       (.clk_out1_0(clk_out1_0),
        .rst_n_0(rst_n_0),
        .sb_addr_0(sb_addr_0),
        .sb_be_0(sb_be_0),
        .sb_rdata_0(sb_rdata_0),
        .sb_ready_0(sb_ready_0),
        .sb_req_0(sb_req_0),
        .sb_rvalid_0(sb_rvalid_0),
        .sb_wdata_0(sb_wdata_0),
        .sb_we_0(sb_we_0),
        .sys_clock(sys_clock));
endmodule
