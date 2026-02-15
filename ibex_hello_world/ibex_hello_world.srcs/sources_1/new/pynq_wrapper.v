module pynq_wrapper (
    input  wire sysclk,
    input  wire btn0,
    output wire led0,
    output wire uart_tx,
    input  wire uart_rx
);

  wire clk_sys;
  wire rst_sys_n = ~btn0;

  // your clock divider + reset release logic here
  // clk_sys, rst_sys_n produced

  // sb wires between Ibex and BD
  wire        sb_req;
  wire        sb_we;
  wire [31:0] sb_addr;
  wire [31:0] sb_wdata;
  wire [3:0]  sb_be;
  wire        sb_rvalid;
  wire [31:0] sb_rdata;
  wire        sb_ready;

  // BD wrapper (after you export sb_* from BD!)
  secure_soc_wrapper u_bd (
    .clk_out1_0 (clk_sys), 
    .rst_n_0   (rst_sys_n),

    .sb_req_0   (sb_req),
    .sb_we_0    (sb_we),
    .sb_addr_0  (sb_addr),
    .sb_wdata_0 (sb_wdata),
    .sb_be_0    (sb_be),

    .sb_rvalid_0(sb_rvalid),
    .sb_rdata_0 (sb_rdata),
    .sb_ready_0 (sb_ready), 
    .sys_clock (sysclk)

    
    
  );

  ibex_simple_system #(
    .SRAMInitFile("/home/llia622/ibex/examples/sw/simple_system/hello_test/hello.vmem")
  ) u_ibex (
    .IO_CLK       (clk_sys),
    .IO_RST_N     (rst_sys_n),
    .led_o        (led0),

    .aes_req_o    (sb_req),
    .aes_we_o     (sb_we),
    .aes_addr_o   (sb_addr),
    .aes_wdata_o  (sb_wdata),
    .aes_be_o     (sb_be),

    .aes_rvalid_i (sb_rvalid),
    .aes_rdata_i  (sb_rdata),

    .aes_err_i    (1'b0)      // tie off, unless you add an err output
  );

  assign uart_tx = 1'b1;

endmodule
