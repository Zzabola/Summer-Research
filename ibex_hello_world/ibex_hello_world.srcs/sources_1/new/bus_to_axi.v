`timescale 1ns / 1ps

module bus_to_axi (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET rst_n" *)
    
    
    input  wire        clk,
    input  wire        rst_n,

    // ---------------------------------------------------------
    // Slave Side (Connects to Ibex CPU)
    // ---------------------------------------------------------
    input  wire        sb_req,
    input  wire        sb_we,
    input  wire [31:0] sb_addr,
    input  wire [31:0] sb_wdata,
    input  wire [3:0]  sb_be,
    output reg         sb_rvalid,
    output reg  [31:0] sb_rdata,
    output reg         sb_ready,

    // ---------------------------------------------------------
    // Master Side (Connects to AXI SmartConnect)
    // ---------------------------------------------------------
    // Write Address
    output reg  [31:0] m_axi_awaddr,
    output reg         m_axi_awvalid,
    input  wire        m_axi_awready,
    // Write Data
    output reg  [31:0] m_axi_wdata,
    output reg  [3:0]  m_axi_wstrb,
    output reg         m_axi_wvalid,
    input  wire        m_axi_wready,
    // Write Response
    input  wire [1:0]  m_axi_bresp,
    input  wire        m_axi_bvalid,
    output reg         m_axi_bready,
    // Read Address
    output reg  [31:0] m_axi_araddr,
    output reg         m_axi_arvalid,
    input  wire        m_axi_arready,
    // Read Data
    input  wire [31:0] m_axi_rdata,
    input  wire [1:0]  m_axi_rresp,
    input  wire        m_axi_rvalid,
    output reg         m_axi_rready
);

    // State Machine encoding
    localparam [1:0] IDLE  = 2'b00;
    localparam [1:0] WRITE = 2'b01;
    localparam [1:0] READ  = 2'b10;

    reg [1:0] state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            m_axi_awvalid <= 0;
            m_axi_wvalid  <= 0;
            m_axi_arvalid <= 0;
            m_axi_bready  <= 0;
            m_axi_rready  <= 0;
            sb_rvalid     <= 0;
            sb_ready      <= 0;
            // Clear outputs
            m_axi_awaddr  <= 0;
            m_axi_wdata   <= 0;
            m_axi_wstrb   <= 0;
            m_axi_araddr  <= 0;
            sb_rdata      <= 0;
        end else begin
            sb_ready      <= 0; // Default
            sb_rvalid     <= 0; // Default

            case (state)
                IDLE: begin
                    if (sb_req) begin
                        if (sb_we) begin
                            // Start Write Transaction
                            m_axi_awaddr  <= sb_addr;
                            m_axi_awvalid <= 1;
                            m_axi_wdata   <= sb_wdata;
                            m_axi_wstrb   <= sb_be;
                            m_axi_wvalid  <= 1;
                            m_axi_bready  <= 1;
                            state         <= WRITE;
                        end else begin
                            // Start Read Transaction
                            m_axi_araddr  <= sb_addr;
                            m_axi_arvalid <= 1;
                            m_axi_rready  <= 1;
                            state         <= READ;
                        end
                    end
                end

                WRITE: begin
                    // Clear valid signals once handshake occurs
                    if (m_axi_awready) m_axi_awvalid <= 0;
                    if (m_axi_wready)  m_axi_wvalid  <= 0;

                    // Wait for BVALID (Write Response)
                    if (m_axi_bvalid) begin
                        m_axi_bready <= 0;
                        sb_ready     <= 1; // Grant/Done
                        state        <= IDLE;
                    end
                end

                READ: begin
                    // Clear address valid once handshake occurs
                    if (m_axi_arready) m_axi_arvalid <= 0;

                    // Wait for RVALID (Read Data)
                    if (m_axi_rvalid) begin
                        sb_rdata     <= m_axi_rdata;
                        sb_rvalid    <= 1; // Data valid for Ibex
                        m_axi_rready <= 0;
                        state        <= IDLE;
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end
endmodule