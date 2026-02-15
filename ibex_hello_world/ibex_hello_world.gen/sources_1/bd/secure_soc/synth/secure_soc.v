//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Fri Feb 13 17:47:51 2026
//Host        : en433345.uoa.auckland.ac.nz running 64-bit Ubuntu 24.04.2 LTS
//Command     : generate_target secure_soc.bd
//Design      : secure_soc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "secure_soc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=secure_soc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_board_cnt=20,da_clkrst_cnt=15,synth_mode=None}" *) (* HW_HANDOFF = "secure_soc.hwdef" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT1_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out1_0;
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

  wire [31:0]bus_axi_periph_0_M_AXI_ARADDR;
  wire [2:0]bus_axi_periph_0_M_AXI_ARPROT;
  wire bus_axi_periph_0_M_AXI_ARREADY;
  wire bus_axi_periph_0_M_AXI_ARVALID;
  wire [31:0]bus_axi_periph_0_M_AXI_AWADDR;
  wire [2:0]bus_axi_periph_0_M_AXI_AWPROT;
  wire bus_axi_periph_0_M_AXI_AWREADY;
  wire bus_axi_periph_0_M_AXI_AWVALID;
  wire bus_axi_periph_0_M_AXI_BREADY;
  wire [1:0]bus_axi_periph_0_M_AXI_BRESP;
  wire bus_axi_periph_0_M_AXI_BVALID;
  wire [31:0]bus_axi_periph_0_M_AXI_RDATA;
  wire bus_axi_periph_0_M_AXI_RREADY;
  wire [1:0]bus_axi_periph_0_M_AXI_RRESP;
  wire bus_axi_periph_0_M_AXI_RVALID;
  wire [31:0]bus_axi_periph_0_M_AXI_WDATA;
  wire bus_axi_periph_0_M_AXI_WREADY;
  wire [3:0]bus_axi_periph_0_M_AXI_WSTRB;
  wire bus_axi_periph_0_M_AXI_WVALID;
  wire clk_out1_0;
  wire clk_wiz_0_locked;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire rst_n_0;
  wire [31:0]sb_addr_0;
  wire [3:0]sb_be_0;
  wire [31:0]sb_rdata_0;
  wire sb_ready_0;
  wire sb_req_0;
  wire sb_rvalid_0;
  wire [31:0]sb_wdata_0;
  wire sb_we_0;
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
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]xlconstant_0_dout;

  secure_soc_aes_axi_periph_0_2 aes_axi_periph_0
       (.s00_axi_aclk(clk_out1_0),
        .s00_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s00_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
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
        .m_axi_araddr(bus_axi_periph_0_M_AXI_ARADDR),
        .m_axi_arprot(bus_axi_periph_0_M_AXI_ARPROT),
        .m_axi_arready(bus_axi_periph_0_M_AXI_ARREADY),
        .m_axi_arvalid(bus_axi_periph_0_M_AXI_ARVALID),
        .m_axi_awaddr(bus_axi_periph_0_M_AXI_AWADDR),
        .m_axi_awprot(bus_axi_periph_0_M_AXI_AWPROT),
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
        .rst_n(proc_sys_reset_0_peripheral_aresetn),
        .sb_addr(sb_addr_0),
        .sb_be(sb_be_0),
        .sb_rdata(sb_rdata_0),
        .sb_ready(sb_ready_0),
        .sb_req(sb_req_0),
        .sb_rvalid(sb_rvalid_0),
        .sb_wdata(sb_wdata_0),
        .sb_we(sb_we_0));
  secure_soc_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock),
        .clk_out1(clk_out1_0),
        .locked(clk_wiz_0_locked),
        .resetn(rst_n_0));
  secure_soc_ila_1_0 ila_1
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
  secure_soc_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(xlconstant_0_dout),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(util_vector_logic_0_Res),
        .mb_debug_sys_rst(xlconstant_0_dout),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
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
        .S00_AXI_awprot(bus_axi_periph_0_M_AXI_AWPROT),
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
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  secure_soc_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(rst_n_0),
        .Res(util_vector_logic_0_Res));
  secure_soc_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
