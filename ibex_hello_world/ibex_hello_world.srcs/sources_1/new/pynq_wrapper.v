`timescale 1ns / 1ps

module pynq_wrapper (
    input  wire        sysclk,
    input  wire        btn0,
    output wire        led0,
    output wire        uart_tx,
    input  wire        uart_rx,
    
    // NEW: Expose Bus signals to Block Design
    output wire        bus_clk_o,    // Send the divided clock out
    output wire        bus_rst_n_o,  // Send the reset out
    output wire        sb_req_o,
    output wire        sb_we_o,
    output wire [31:0] sb_addr_o,
    output wire [31:0] sb_wdata_o,
    output wire [3:0]  sb_be_o,
    input  wire        sb_rvalid_i,
    input  wire [31:0] sb_rdata_i,
    input  wire        sb_err_i
);

    wire clk_sys;
    wire rst_sys_n;

    // --- 1. Clock Divider ---
    reg [1:0] clk_cnt;
    
    always @(posedge sysclk) begin
        clk_cnt <= clk_cnt + 1;
    end
    
    assign clk_sys = clk_cnt[1]; 

    // --- 2. Power-On Reset (CRITICAL FIX) ---
    // We hold reset low (0) for the first 15 cycles, then release it (1).
    reg [3:0] reset_counter;
    reg       reset_released;

    // Initial block to ensure simulation starts clean (optional for synth but good practice)
    initial begin
        reset_counter = 0;
        reset_released = 0;
        clk_cnt = 0;
    end

    always @(posedge clk_sys) begin
        if (reset_counter < 10) begin
            reset_counter <= reset_counter + 1;
            reset_released <= 0;
        end else begin
            reset_released <= 1;
        end
    end
    
    // Reset is active low. So we drive it 0 initially, then 1.
    assign rst_sys_n = reset_released & ~btn0; 

    // Connect internal clock/reset to output ports for the Block Design
    assign bus_clk_o   = clk_sys;
    assign bus_rst_n_o = rst_sys_n;

    // --- 3. Instantiate Ibex ---
    // Vivado allows Verilog modules to instantiate SystemVerilog modules
    // as long as the port types are compatible (wires/vectors).
    ibex_simple_system #(
        .SRAMInitFile("/home/llia622/ibex/examples/sw/simple_system/hello_test/hello.vmem")
    ) u_ibex (
        .IO_CLK       (clk_sys),
        .IO_RST_N     (rst_sys_n),
        .led_o        (led0),
        
        // Connect the new AES interface
        .aes_req_o    (sb_req_o),
        .aes_we_o     (sb_we_o),
        .aes_addr_o   (sb_addr_o),
        .aes_wdata_o  (sb_wdata_o),
        .aes_be_o     (sb_be_o),
        .aes_rvalid_i (sb_rvalid_i),
        .aes_rdata_i  (sb_rdata_i),
        .aes_err_i    (sb_err_i)
    );

    assign uart_tx = 1'b1;

endmodule