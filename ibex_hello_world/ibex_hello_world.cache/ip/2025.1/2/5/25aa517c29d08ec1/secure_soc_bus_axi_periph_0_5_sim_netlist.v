// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Feb  5 16:25:39 2026
// Host        : en433345.uoa.auckland.ac.nz running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ secure_soc_bus_axi_periph_0_5_sim_netlist.v
// Design      : secure_soc_bus_axi_periph_0_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_to_axi
   (sb_rvalid,
    sb_rdata,
    sb_ready,
    m_axi_awaddr,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_araddr,
    m_axi_awvalid,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_arvalid,
    m_axi_rready,
    sb_we,
    sb_req,
    m_axi_bvalid,
    m_axi_rvalid,
    clk,
    m_axi_rdata,
    sb_addr,
    sb_wdata,
    sb_be,
    m_axi_awready,
    m_axi_wready,
    m_axi_arready,
    rst_n);
  output sb_rvalid;
  output [31:0]sb_rdata;
  output sb_ready;
  output [31:0]m_axi_awaddr;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_araddr;
  output m_axi_awvalid;
  output m_axi_wvalid;
  output m_axi_bready;
  output m_axi_arvalid;
  output m_axi_rready;
  input sb_we;
  input sb_req;
  input m_axi_bvalid;
  input m_axi_rvalid;
  input clk;
  input [31:0]m_axi_rdata;
  input [31:0]sb_addr;
  input [31:0]sb_wdata;
  input [3:0]sb_be;
  input m_axi_awready;
  input m_axi_wready;
  input m_axi_arready;
  input rst_n;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \__12/i__n_0 ;
  wire clk;
  wire [31:0]m_axi_araddr;
  wire \m_axi_araddr[31]_i_1_n_0 ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_arvalid_i_1_n_0;
  wire [31:0]m_axi_awaddr;
  wire \m_axi_awaddr[31]_i_1_n_0 ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_i_1_n_0;
  wire m_axi_bready;
  wire m_axi_bready_i_1_n_0;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire m_axi_rready_i_1_n_0;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire m_axi_wvalid_i_1_n_0;
  wire rst_n;
  wire [31:0]sb_addr;
  wire [3:0]sb_be;
  wire [31:0]sb_rdata;
  wire sb_ready;
  wire sb_req;
  wire sb_rvalid;
  wire sb_rvalid_i_1_n_0;
  wire sb_rvalid_i_2_n_0;
  wire [31:0]sb_wdata;
  wire sb_we;
  wire [1:0]state;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF008F0F8)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(sb_we),
        .I1(sb_req),
        .I2(state[0]),
        .I3(state[1]),
        .I4(m_axi_bvalid),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF0F0044)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(sb_we),
        .I1(sb_req),
        .I2(m_axi_rvalid),
        .I3(state[0]),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00,READ:10,WRITE:01" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(sb_rvalid_i_2_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "IDLE:00,READ:10,WRITE:01" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(sb_rvalid_i_2_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \__12/i_ 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(m_axi_bvalid),
        .O(\__12/i__n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axi_araddr[31]_i_1 
       (.I0(sb_we),
        .I1(sb_req),
        .I2(state[0]),
        .I3(state[1]),
        .O(\m_axi_araddr[31]_i_1_n_0 ));
  FDCE \m_axi_araddr_reg[0] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[0]),
        .Q(m_axi_araddr[0]));
  FDCE \m_axi_araddr_reg[10] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[10]),
        .Q(m_axi_araddr[10]));
  FDCE \m_axi_araddr_reg[11] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[11]),
        .Q(m_axi_araddr[11]));
  FDCE \m_axi_araddr_reg[12] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[12]),
        .Q(m_axi_araddr[12]));
  FDCE \m_axi_araddr_reg[13] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[13]),
        .Q(m_axi_araddr[13]));
  FDCE \m_axi_araddr_reg[14] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[14]),
        .Q(m_axi_araddr[14]));
  FDCE \m_axi_araddr_reg[15] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[15]),
        .Q(m_axi_araddr[15]));
  FDCE \m_axi_araddr_reg[16] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[16]),
        .Q(m_axi_araddr[16]));
  FDCE \m_axi_araddr_reg[17] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[17]),
        .Q(m_axi_araddr[17]));
  FDCE \m_axi_araddr_reg[18] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[18]),
        .Q(m_axi_araddr[18]));
  FDCE \m_axi_araddr_reg[19] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[19]),
        .Q(m_axi_araddr[19]));
  FDCE \m_axi_araddr_reg[1] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[1]),
        .Q(m_axi_araddr[1]));
  FDCE \m_axi_araddr_reg[20] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[20]),
        .Q(m_axi_araddr[20]));
  FDCE \m_axi_araddr_reg[21] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[21]),
        .Q(m_axi_araddr[21]));
  FDCE \m_axi_araddr_reg[22] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[22]),
        .Q(m_axi_araddr[22]));
  FDCE \m_axi_araddr_reg[23] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[23]),
        .Q(m_axi_araddr[23]));
  FDCE \m_axi_araddr_reg[24] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[24]),
        .Q(m_axi_araddr[24]));
  FDCE \m_axi_araddr_reg[25] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[25]),
        .Q(m_axi_araddr[25]));
  FDCE \m_axi_araddr_reg[26] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[26]),
        .Q(m_axi_araddr[26]));
  FDCE \m_axi_araddr_reg[27] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[27]),
        .Q(m_axi_araddr[27]));
  FDCE \m_axi_araddr_reg[28] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[28]),
        .Q(m_axi_araddr[28]));
  FDCE \m_axi_araddr_reg[29] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[29]),
        .Q(m_axi_araddr[29]));
  FDCE \m_axi_araddr_reg[2] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[2]),
        .Q(m_axi_araddr[2]));
  FDCE \m_axi_araddr_reg[30] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[30]),
        .Q(m_axi_araddr[30]));
  FDCE \m_axi_araddr_reg[31] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[31]),
        .Q(m_axi_araddr[31]));
  FDCE \m_axi_araddr_reg[3] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[3]),
        .Q(m_axi_araddr[3]));
  FDCE \m_axi_araddr_reg[4] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[4]),
        .Q(m_axi_araddr[4]));
  FDCE \m_axi_araddr_reg[5] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[5]),
        .Q(m_axi_araddr[5]));
  FDCE \m_axi_araddr_reg[6] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[6]),
        .Q(m_axi_araddr[6]));
  FDCE \m_axi_araddr_reg[7] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[7]),
        .Q(m_axi_araddr[7]));
  FDCE \m_axi_araddr_reg[8] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[8]),
        .Q(m_axi_araddr[8]));
  FDCE \m_axi_araddr_reg[9] 
       (.C(clk),
        .CE(\m_axi_araddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[9]),
        .Q(m_axi_araddr[9]));
  LUT6 #(
    .INIT(64'hFFFF0FFF00000404)) 
    m_axi_arvalid_i_1
       (.I0(sb_we),
        .I1(sb_req),
        .I2(state[1]),
        .I3(m_axi_arready),
        .I4(state[0]),
        .I5(m_axi_arvalid),
        .O(m_axi_arvalid_i_1_n_0));
  FDCE m_axi_arvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_arvalid_i_1_n_0),
        .Q(m_axi_arvalid));
  LUT4 #(
    .INIT(16'h0008)) 
    \m_axi_awaddr[31]_i_1 
       (.I0(sb_we),
        .I1(sb_req),
        .I2(state[0]),
        .I3(state[1]),
        .O(\m_axi_awaddr[31]_i_1_n_0 ));
  FDCE \m_axi_awaddr_reg[0] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[0]),
        .Q(m_axi_awaddr[0]));
  FDCE \m_axi_awaddr_reg[10] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[10]),
        .Q(m_axi_awaddr[10]));
  FDCE \m_axi_awaddr_reg[11] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[11]),
        .Q(m_axi_awaddr[11]));
  FDCE \m_axi_awaddr_reg[12] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[12]),
        .Q(m_axi_awaddr[12]));
  FDCE \m_axi_awaddr_reg[13] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[13]),
        .Q(m_axi_awaddr[13]));
  FDCE \m_axi_awaddr_reg[14] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[14]),
        .Q(m_axi_awaddr[14]));
  FDCE \m_axi_awaddr_reg[15] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[15]),
        .Q(m_axi_awaddr[15]));
  FDCE \m_axi_awaddr_reg[16] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[16]),
        .Q(m_axi_awaddr[16]));
  FDCE \m_axi_awaddr_reg[17] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[17]),
        .Q(m_axi_awaddr[17]));
  FDCE \m_axi_awaddr_reg[18] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[18]),
        .Q(m_axi_awaddr[18]));
  FDCE \m_axi_awaddr_reg[19] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[19]),
        .Q(m_axi_awaddr[19]));
  FDCE \m_axi_awaddr_reg[1] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[1]),
        .Q(m_axi_awaddr[1]));
  FDCE \m_axi_awaddr_reg[20] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[20]),
        .Q(m_axi_awaddr[20]));
  FDCE \m_axi_awaddr_reg[21] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[21]),
        .Q(m_axi_awaddr[21]));
  FDCE \m_axi_awaddr_reg[22] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[22]),
        .Q(m_axi_awaddr[22]));
  FDCE \m_axi_awaddr_reg[23] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[23]),
        .Q(m_axi_awaddr[23]));
  FDCE \m_axi_awaddr_reg[24] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[24]),
        .Q(m_axi_awaddr[24]));
  FDCE \m_axi_awaddr_reg[25] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[25]),
        .Q(m_axi_awaddr[25]));
  FDCE \m_axi_awaddr_reg[26] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[26]),
        .Q(m_axi_awaddr[26]));
  FDCE \m_axi_awaddr_reg[27] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[27]),
        .Q(m_axi_awaddr[27]));
  FDCE \m_axi_awaddr_reg[28] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[28]),
        .Q(m_axi_awaddr[28]));
  FDCE \m_axi_awaddr_reg[29] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[29]),
        .Q(m_axi_awaddr[29]));
  FDCE \m_axi_awaddr_reg[2] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[2]),
        .Q(m_axi_awaddr[2]));
  FDCE \m_axi_awaddr_reg[30] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[30]),
        .Q(m_axi_awaddr[30]));
  FDCE \m_axi_awaddr_reg[31] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[31]),
        .Q(m_axi_awaddr[31]));
  FDCE \m_axi_awaddr_reg[3] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[3]),
        .Q(m_axi_awaddr[3]));
  FDCE \m_axi_awaddr_reg[4] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[4]),
        .Q(m_axi_awaddr[4]));
  FDCE \m_axi_awaddr_reg[5] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[5]),
        .Q(m_axi_awaddr[5]));
  FDCE \m_axi_awaddr_reg[6] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[6]),
        .Q(m_axi_awaddr[6]));
  FDCE \m_axi_awaddr_reg[7] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[7]),
        .Q(m_axi_awaddr[7]));
  FDCE \m_axi_awaddr_reg[8] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[8]),
        .Q(m_axi_awaddr[8]));
  FDCE \m_axi_awaddr_reg[9] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_addr[9]),
        .Q(m_axi_awaddr[9]));
  LUT6 #(
    .INIT(64'hFFFF0FFF00000808)) 
    m_axi_awvalid_i_1
       (.I0(sb_we),
        .I1(sb_req),
        .I2(state[0]),
        .I3(m_axi_awready),
        .I4(state[1]),
        .I5(m_axi_awvalid),
        .O(m_axi_awvalid_i_1_n_0));
  FDCE m_axi_awvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_awvalid_i_1_n_0),
        .Q(m_axi_awvalid));
  LUT6 #(
    .INIT(64'hFFFF0FFF00000808)) 
    m_axi_bready_i_1
       (.I0(sb_we),
        .I1(sb_req),
        .I2(state[0]),
        .I3(m_axi_bvalid),
        .I4(state[1]),
        .I5(m_axi_bready),
        .O(m_axi_bready_i_1_n_0));
  FDCE m_axi_bready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_bready_i_1_n_0),
        .Q(m_axi_bready));
  LUT6 #(
    .INIT(64'hFFFF0FFF00000404)) 
    m_axi_rready_i_1
       (.I0(sb_we),
        .I1(sb_req),
        .I2(state[1]),
        .I3(m_axi_rvalid),
        .I4(state[0]),
        .I5(m_axi_rready),
        .O(m_axi_rready_i_1_n_0));
  FDCE m_axi_rready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rready_i_1_n_0),
        .Q(m_axi_rready));
  FDCE \m_axi_wdata_reg[0] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[0]),
        .Q(m_axi_wdata[0]));
  FDCE \m_axi_wdata_reg[10] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[10]),
        .Q(m_axi_wdata[10]));
  FDCE \m_axi_wdata_reg[11] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[11]),
        .Q(m_axi_wdata[11]));
  FDCE \m_axi_wdata_reg[12] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[12]),
        .Q(m_axi_wdata[12]));
  FDCE \m_axi_wdata_reg[13] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[13]),
        .Q(m_axi_wdata[13]));
  FDCE \m_axi_wdata_reg[14] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[14]),
        .Q(m_axi_wdata[14]));
  FDCE \m_axi_wdata_reg[15] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[15]),
        .Q(m_axi_wdata[15]));
  FDCE \m_axi_wdata_reg[16] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[16]),
        .Q(m_axi_wdata[16]));
  FDCE \m_axi_wdata_reg[17] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[17]),
        .Q(m_axi_wdata[17]));
  FDCE \m_axi_wdata_reg[18] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[18]),
        .Q(m_axi_wdata[18]));
  FDCE \m_axi_wdata_reg[19] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[19]),
        .Q(m_axi_wdata[19]));
  FDCE \m_axi_wdata_reg[1] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[1]),
        .Q(m_axi_wdata[1]));
  FDCE \m_axi_wdata_reg[20] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[20]),
        .Q(m_axi_wdata[20]));
  FDCE \m_axi_wdata_reg[21] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[21]),
        .Q(m_axi_wdata[21]));
  FDCE \m_axi_wdata_reg[22] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[22]),
        .Q(m_axi_wdata[22]));
  FDCE \m_axi_wdata_reg[23] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[23]),
        .Q(m_axi_wdata[23]));
  FDCE \m_axi_wdata_reg[24] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[24]),
        .Q(m_axi_wdata[24]));
  FDCE \m_axi_wdata_reg[25] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[25]),
        .Q(m_axi_wdata[25]));
  FDCE \m_axi_wdata_reg[26] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[26]),
        .Q(m_axi_wdata[26]));
  FDCE \m_axi_wdata_reg[27] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[27]),
        .Q(m_axi_wdata[27]));
  FDCE \m_axi_wdata_reg[28] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[28]),
        .Q(m_axi_wdata[28]));
  FDCE \m_axi_wdata_reg[29] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[29]),
        .Q(m_axi_wdata[29]));
  FDCE \m_axi_wdata_reg[2] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[2]),
        .Q(m_axi_wdata[2]));
  FDCE \m_axi_wdata_reg[30] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[30]),
        .Q(m_axi_wdata[30]));
  FDCE \m_axi_wdata_reg[31] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[31]),
        .Q(m_axi_wdata[31]));
  FDCE \m_axi_wdata_reg[3] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[3]),
        .Q(m_axi_wdata[3]));
  FDCE \m_axi_wdata_reg[4] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[4]),
        .Q(m_axi_wdata[4]));
  FDCE \m_axi_wdata_reg[5] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[5]),
        .Q(m_axi_wdata[5]));
  FDCE \m_axi_wdata_reg[6] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[6]),
        .Q(m_axi_wdata[6]));
  FDCE \m_axi_wdata_reg[7] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[7]),
        .Q(m_axi_wdata[7]));
  FDCE \m_axi_wdata_reg[8] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[8]),
        .Q(m_axi_wdata[8]));
  FDCE \m_axi_wdata_reg[9] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_wdata[9]),
        .Q(m_axi_wdata[9]));
  FDCE \m_axi_wstrb_reg[0] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_be[0]),
        .Q(m_axi_wstrb[0]));
  FDCE \m_axi_wstrb_reg[1] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_be[1]),
        .Q(m_axi_wstrb[1]));
  FDCE \m_axi_wstrb_reg[2] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_be[2]),
        .Q(m_axi_wstrb[2]));
  FDCE \m_axi_wstrb_reg[3] 
       (.C(clk),
        .CE(\m_axi_awaddr[31]_i_1_n_0 ),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_be[3]),
        .Q(m_axi_wstrb[3]));
  LUT6 #(
    .INIT(64'hFFFF0FFF00000808)) 
    m_axi_wvalid_i_1
       (.I0(sb_we),
        .I1(sb_req),
        .I2(state[0]),
        .I3(m_axi_wready),
        .I4(state[1]),
        .I5(m_axi_wvalid),
        .O(m_axi_wvalid_i_1_n_0));
  FDCE m_axi_wvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_wvalid_i_1_n_0),
        .Q(m_axi_wvalid));
  FDCE \sb_rdata_reg[0] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[0]),
        .Q(sb_rdata[0]));
  FDCE \sb_rdata_reg[10] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[10]),
        .Q(sb_rdata[10]));
  FDCE \sb_rdata_reg[11] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[11]),
        .Q(sb_rdata[11]));
  FDCE \sb_rdata_reg[12] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[12]),
        .Q(sb_rdata[12]));
  FDCE \sb_rdata_reg[13] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[13]),
        .Q(sb_rdata[13]));
  FDCE \sb_rdata_reg[14] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[14]),
        .Q(sb_rdata[14]));
  FDCE \sb_rdata_reg[15] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[15]),
        .Q(sb_rdata[15]));
  FDCE \sb_rdata_reg[16] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[16]),
        .Q(sb_rdata[16]));
  FDCE \sb_rdata_reg[17] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[17]),
        .Q(sb_rdata[17]));
  FDCE \sb_rdata_reg[18] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[18]),
        .Q(sb_rdata[18]));
  FDCE \sb_rdata_reg[19] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[19]),
        .Q(sb_rdata[19]));
  FDCE \sb_rdata_reg[1] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[1]),
        .Q(sb_rdata[1]));
  FDCE \sb_rdata_reg[20] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[20]),
        .Q(sb_rdata[20]));
  FDCE \sb_rdata_reg[21] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[21]),
        .Q(sb_rdata[21]));
  FDCE \sb_rdata_reg[22] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[22]),
        .Q(sb_rdata[22]));
  FDCE \sb_rdata_reg[23] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[23]),
        .Q(sb_rdata[23]));
  FDCE \sb_rdata_reg[24] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[24]),
        .Q(sb_rdata[24]));
  FDCE \sb_rdata_reg[25] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[25]),
        .Q(sb_rdata[25]));
  FDCE \sb_rdata_reg[26] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[26]),
        .Q(sb_rdata[26]));
  FDCE \sb_rdata_reg[27] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[27]),
        .Q(sb_rdata[27]));
  FDCE \sb_rdata_reg[28] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[28]),
        .Q(sb_rdata[28]));
  FDCE \sb_rdata_reg[29] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[29]),
        .Q(sb_rdata[29]));
  FDCE \sb_rdata_reg[2] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[2]),
        .Q(sb_rdata[2]));
  FDCE \sb_rdata_reg[30] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[30]),
        .Q(sb_rdata[30]));
  FDCE \sb_rdata_reg[31] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[31]),
        .Q(sb_rdata[31]));
  FDCE \sb_rdata_reg[3] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[3]),
        .Q(sb_rdata[3]));
  FDCE \sb_rdata_reg[4] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[4]),
        .Q(sb_rdata[4]));
  FDCE \sb_rdata_reg[5] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[5]),
        .Q(sb_rdata[5]));
  FDCE \sb_rdata_reg[6] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[6]),
        .Q(sb_rdata[6]));
  FDCE \sb_rdata_reg[7] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[7]),
        .Q(sb_rdata[7]));
  FDCE \sb_rdata_reg[8] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[8]),
        .Q(sb_rdata[8]));
  FDCE \sb_rdata_reg[9] 
       (.C(clk),
        .CE(sb_rvalid_i_1_n_0),
        .CLR(sb_rvalid_i_2_n_0),
        .D(m_axi_rdata[9]),
        .Q(sb_rdata[9]));
  FDCE sb_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sb_rvalid_i_2_n_0),
        .D(\__12/i__n_0 ),
        .Q(sb_ready));
  LUT3 #(
    .INIT(8'h40)) 
    sb_rvalid_i_1
       (.I0(state[0]),
        .I1(m_axi_rvalid),
        .I2(state[1]),
        .O(sb_rvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sb_rvalid_i_2
       (.I0(rst_n),
        .O(sb_rvalid_i_2_n_0));
  FDCE sb_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sb_rvalid_i_2_n_0),
        .D(sb_rvalid_i_1_n_0),
        .Q(sb_rvalid));
endmodule

(* CHECK_LICENSE_TYPE = "secure_soc_bus_axi_periph_0_5,bus_to_axi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "bus_to_axi,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    sb_req,
    sb_we,
    sb_addr,
    sb_wdata,
    sb_be,
    sb_rvalid,
    sb_rdata,
    sb_ready,
    m_axi_awaddr,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready,
    m_axi_awprot,
    m_axi_arprot);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input sb_req;
  input sb_we;
  input [31:0]sb_addr;
  input [31:0]sb_wdata;
  input [3:0]sb_be;
  output sb_rvalid;
  output [31:0]sb_rdata;
  output sb_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, NUM_WRITE_THREADS 1, NUM_READ_THREADS 1, MAX_BURST_LENGTH 1, HAS_RRESP 1, HAS_BRESP 1, HAS_WSTRB 1, HAS_PROT 1, ADDR_WIDTH 32, PROTOCOL AXI4LITE, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output m_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;

  wire \<const0> ;
  wire clk;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire rst_n;
  wire [31:0]sb_addr;
  wire [3:0]sb_be;
  wire [31:0]sb_rdata;
  wire sb_ready;
  wire sb_req;
  wire sb_rvalid;
  wire [31:0]sb_wdata;
  wire sb_we;

  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_to_axi inst
       (.clk(clk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .rst_n(rst_n),
        .sb_addr(sb_addr),
        .sb_be(sb_be),
        .sb_rdata(sb_rdata),
        .sb_ready(sb_ready),
        .sb_req(sb_req),
        .sb_rvalid(sb_rvalid),
        .sb_wdata(sb_wdata),
        .sb_we(sb_we));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
