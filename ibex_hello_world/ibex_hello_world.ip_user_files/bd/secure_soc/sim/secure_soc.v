//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Wed Feb 25 15:58:58 2026
//Host        : en433345.uoa.auckland.ac.nz running 64-bit Ubuntu 24.04.2 LTS
//Command     : generate_target secure_soc.bd
//Design      : secure_soc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "secure_soc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=secure_soc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_board_cnt=20,da_clkrst_cnt=16,synth_mode=None}" *) (* HW_HANDOFF = "secure_soc.hwdef" *) 
module secure_soc
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n_0;
  input [31:0]sb_addr_0;
  input [3:0]sb_be_0;
  output [31:0]sb_rdata_0;
  output sb_ready_0;
  input sb_req_0;
  output sb_rvalid_0;
  input [31:0]sb_wdata_0;
  input sb_we_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, ASSOCIATED_RESET rst_n_0, CLK_DOMAIN secure_soc_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;

  wire [0:0]Net;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]bus_axi_periph_0_M_AXI_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]bus_axi_periph_0_M_AXI_ARPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_ARREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_ARVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]bus_axi_periph_0_M_AXI_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_AWREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_AWVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_BREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]bus_axi_periph_0_M_AXI_BRESP;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_BVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]bus_axi_periph_0_M_AXI_RDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_RREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]bus_axi_periph_0_M_AXI_RRESP;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_RVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]bus_axi_periph_0_M_AXI_WDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_WREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]bus_axi_periph_0_M_AXI_WSTRB;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_M_AXI_WVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_dbg_in_write;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_dbg_sb_req;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]bus_axi_periph_0_m_axi_awprot;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]bus_axi_periph_0_sb_rdata;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_sb_ready;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire bus_axi_periph_0_sb_rvalid;
  wire clk_out1_0;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire rst_n_0;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]sb_addr_0_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]sb_be_0_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire sb_req_0_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]sb_wdata_0_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire sb_we_0_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]smartconnect_0_M00_AXI_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_ARREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_ARVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]smartconnect_0_M00_AXI_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_AWREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_AWVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_BREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M00_AXI_BRESP;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_BVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]smartconnect_0_M00_AXI_RDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_RREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M00_AXI_RRESP;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_RVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]smartconnect_0_M00_AXI_WDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_WREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_WVALID;
  wire sys_clock;
  wire [7:0]util_vector_logic_0_Res;

  assign sb_addr_0_1 = sb_addr_0[31:0];
  assign sb_be_0_1 = sb_be_0[3:0];
  assign sb_rdata_0[31:0] = bus_axi_periph_0_sb_rdata;
  assign sb_ready_0 = bus_axi_periph_0_sb_ready;
  assign sb_req_0_1 = sb_req_0;
  assign sb_rvalid_0 = bus_axi_periph_0_sb_rvalid;
  assign sb_wdata_0_1 = sb_wdata_0[31:0];
  assign sb_we_0_1 = sb_we_0;
  secure_soc_aes_axi_periph_0_2 aes_axi_periph_0
       (.s00_axi_aclk(clk_out1_0),
        .s00_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s00_axi_aresetn(Net),
        .s00_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s00_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s00_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s00_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s00_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .s00_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s00_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s00_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s00_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s00_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s00_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s00_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s00_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s00_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s00_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s00_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s00_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s00_axi_wvalid(smartconnect_0_M00_AXI_WVALID));
  secure_soc_bus_axi_periph_0_5 bus_axi_periph_0
       (.clk(clk_out1_0),
        .dbg_in_write(bus_axi_periph_0_dbg_in_write),
        .dbg_sb_req(bus_axi_periph_0_dbg_sb_req),
        .m_axi_araddr(bus_axi_periph_0_M_AXI_ARADDR),
        .m_axi_arprot(bus_axi_periph_0_M_AXI_ARPROT),
        .m_axi_arready(bus_axi_periph_0_M_AXI_ARREADY),
        .m_axi_arvalid(bus_axi_periph_0_M_AXI_ARVALID),
        .m_axi_awaddr(bus_axi_periph_0_M_AXI_AWADDR),
        .m_axi_awprot(bus_axi_periph_0_m_axi_awprot),
        .m_axi_awready(bus_axi_periph_0_M_AXI_AWREADY),
        .m_axi_awvalid(bus_axi_periph_0_M_AXI_AWVALID),
        .m_axi_bready(bus_axi_periph_0_M_AXI_BREADY),
        .m_axi_bresp(bus_axi_periph_0_M_AXI_BRESP),
        .m_axi_bvalid(bus_axi_periph_0_M_AXI_BVALID),
        .m_axi_rdata(bus_axi_periph_0_M_AXI_RDATA),
        .m_axi_rready(bus_axi_periph_0_M_AXI_RREADY),
        .m_axi_rresp(bus_axi_periph_0_M_AXI_RRESP),
        .m_axi_rvalid(bus_axi_periph_0_M_AXI_RVALID),
        .m_axi_wdata(bus_axi_periph_0_M_AXI_WDATA),
        .m_axi_wready(bus_axi_periph_0_M_AXI_WREADY),
        .m_axi_wstrb(bus_axi_periph_0_M_AXI_WSTRB),
        .m_axi_wvalid(bus_axi_periph_0_M_AXI_WVALID),
        .rst_n(Net),
        .sb_addr(sb_addr_0_1),
        .sb_be(sb_be_0_1),
        .sb_rdata(bus_axi_periph_0_sb_rdata),
        .sb_ready(bus_axi_periph_0_sb_ready),
        .sb_req(sb_req_0_1),
        .sb_rvalid(bus_axi_periph_0_sb_rvalid),
        .sb_wdata(sb_wdata_0_1),
        .sb_we(sb_we_0_1));
  secure_soc_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock),
        .clk_out1(clk_out1_0),
        .resetn(rst_n_0));
  secure_soc_ila_0_0 ila_0
       (.clk(clk_out1_0),
        .probe0(bus_axi_periph_0_sb_rdata),
        .probe1(bus_axi_periph_0_sb_rvalid),
        .probe2(bus_axi_periph_0_sb_ready),
        .probe3(sb_req_0_1),
        .probe4(sb_we_0_1),
        .probe5(sb_addr_0_1),
        .probe6(sb_wdata_0_1),
        .probe7(sb_be_0_1),
        .probe8(bus_axi_periph_0_m_axi_awprot));
  secure_soc_ila_1_0 ila_1
       (.clk(clk_out1_0),
        .probe0(bus_axi_periph_0_M_AXI_WREADY),
        .probe1(bus_axi_periph_0_M_AXI_AWADDR),
        .probe10(bus_axi_periph_0_M_AXI_RDATA),
        .probe11(bus_axi_periph_0_M_AXI_AWVALID),
        .probe12(bus_axi_periph_0_M_AXI_AWREADY),
        .probe13(bus_axi_periph_0_M_AXI_RRESP),
        .probe14(bus_axi_periph_0_M_AXI_WDATA),
        .probe15(bus_axi_periph_0_M_AXI_WSTRB),
        .probe16(bus_axi_periph_0_M_AXI_RVALID),
        .probe17(bus_axi_periph_0_M_AXI_ARPROT),
        .probe18({1'b0,1'b0,1'b0}),
        .probe2(bus_axi_periph_0_M_AXI_BRESP),
        .probe3(bus_axi_periph_0_M_AXI_BVALID),
        .probe4(bus_axi_periph_0_M_AXI_BREADY),
        .probe5(bus_axi_periph_0_M_AXI_ARADDR),
        .probe6(bus_axi_periph_0_M_AXI_RREADY),
        .probe7(bus_axi_periph_0_M_AXI_WVALID),
        .probe8(bus_axi_periph_0_M_AXI_ARVALID),
        .probe9(bus_axi_periph_0_M_AXI_ARREADY));
  secure_soc_ila_2_0 ila_2
       (.clk(clk_out1_0),
        .probe0(smartconnect_0_M00_AXI_WREADY),
        .probe1(smartconnect_0_M00_AXI_AWADDR),
        .probe10(smartconnect_0_M00_AXI_RDATA),
        .probe11(smartconnect_0_M00_AXI_AWVALID),
        .probe12(smartconnect_0_M00_AXI_AWREADY),
        .probe13(smartconnect_0_M00_AXI_RRESP),
        .probe14(smartconnect_0_M00_AXI_WDATA),
        .probe15(smartconnect_0_M00_AXI_WSTRB),
        .probe16(smartconnect_0_M00_AXI_RVALID),
        .probe17(smartconnect_0_M00_AXI_ARPROT),
        .probe18(smartconnect_0_M00_AXI_AWPROT),
        .probe2(smartconnect_0_M00_AXI_BRESP),
        .probe3(smartconnect_0_M00_AXI_BVALID),
        .probe4(smartconnect_0_M00_AXI_BREADY),
        .probe5(smartconnect_0_M00_AXI_ARADDR),
        .probe6(smartconnect_0_M00_AXI_RREADY),
        .probe7(smartconnect_0_M00_AXI_WVALID),
        .probe8(smartconnect_0_M00_AXI_ARVALID),
        .probe9(smartconnect_0_M00_AXI_ARREADY));
  secure_soc_ila_3_0 ila_3
       (.clk(clk_out1_0),
        .probe0(bus_axi_periph_0_dbg_sb_req),
        .probe1(bus_axi_periph_0_dbg_in_write));
  secure_soc_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(util_vector_logic_0_Res[0]),
        .interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(Net),
        .slowest_sync_clk(clk_out1_0));
  secure_soc_smartconnect_0_3 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(bus_axi_periph_0_M_AXI_ARADDR),
        .S00_AXI_arprot(bus_axi_periph_0_M_AXI_ARPROT),
        .S00_AXI_arready(bus_axi_periph_0_M_AXI_ARREADY),
        .S00_AXI_arvalid(bus_axi_periph_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(bus_axi_periph_0_M_AXI_AWADDR),
        .S00_AXI_awprot({1'b0,1'b0,1'b0}),
        .S00_AXI_awready(bus_axi_periph_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(bus_axi_periph_0_M_AXI_AWVALID),
        .S00_AXI_bready(bus_axi_periph_0_M_AXI_BREADY),
        .S00_AXI_bresp(bus_axi_periph_0_M_AXI_BRESP),
        .S00_AXI_bvalid(bus_axi_periph_0_M_AXI_BVALID),
        .S00_AXI_rdata(bus_axi_periph_0_M_AXI_RDATA),
        .S00_AXI_rready(bus_axi_periph_0_M_AXI_RREADY),
        .S00_AXI_rresp(bus_axi_periph_0_M_AXI_RRESP),
        .S00_AXI_rvalid(bus_axi_periph_0_M_AXI_RVALID),
        .S00_AXI_wdata(bus_axi_periph_0_M_AXI_WDATA),
        .S00_AXI_wready(bus_axi_periph_0_M_AXI_WREADY),
        .S00_AXI_wstrb(bus_axi_periph_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(bus_axi_periph_0_M_AXI_WVALID),
        .aclk(clk_out1_0),
        .aresetn(proc_sys_reset_1_interconnect_aresetn));
  secure_soc_util_vector_logic_0_2 util_vector_logic_0
       (.Op1({rst_n_0,rst_n_0,rst_n_0,rst_n_0,rst_n_0,rst_n_0,rst_n_0,rst_n_0}),
        .Res(util_vector_logic_0_Res));
endmodule
