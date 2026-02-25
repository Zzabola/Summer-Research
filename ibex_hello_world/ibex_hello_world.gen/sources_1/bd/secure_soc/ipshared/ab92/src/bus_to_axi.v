//`timescale 1ns / 1ps

//module bus_to_axi (
//    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
//    (* X_INTERFACE_PARAMETER = "FREQ_HZ 50000000, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET rst_n" *)    
    
//    input  wire        clk,
//    input  wire        rst_n,

//    // ---------------------------------------------------------
//    // Slave Side (Connects to Ibex CPU)
//    // ---------------------------------------------------------
//    input  wire        sb_req,
//    input  wire        sb_we,
//    input  wire [31:0] sb_addr,
//    input  wire [31:0] sb_wdata,
//    input  wire [3:0]  sb_be,
//    output reg         sb_rvalid,
//    output reg  [31:0] sb_rdata,
//    output reg         sb_ready,

//    // ---------------------------------------------------------
//    // Master Side (Connects to AXI SmartConnect)
//    // ---------------------------------------------------------
//    // Write Address
//    output reg  [31:0] m_axi_awaddr,
//    output reg         m_axi_awvalid,
//    input  wire        m_axi_awready,
//    // Write Data
//    output reg  [31:0] m_axi_wdata,
//    output reg  [3:0]  m_axi_wstrb,
//    output reg         m_axi_wvalid,
//    input  wire        m_axi_wready,
//    // Write Response
//    input  wire [1:0]  m_axi_bresp,
//    input  wire        m_axi_bvalid,
//    output reg         m_axi_bready,
//    // Read Address
//    output reg  [31:0] m_axi_araddr,
//    output reg         m_axi_arvalid,
//    input  wire        m_axi_arready,
//    // Read Data
//    input  wire [31:0] m_axi_rdata,
//    input  wire [1:0]  m_axi_rresp,
//    input  wire        m_axi_rvalid,
//    output reg         m_axi_rready,
    
//    output wire [2:0]  m_axi_awprot, 
//    output wire [2:0]  m_axi_arprot, 
    
    
//    output wire dbg_sb_req, 
//    output wire dbg_in_write
//);


//    assign m_axi_awprot = 3'b101;
//    assign m_axi_arprot = 3'b000;
    
    

//    reg aw_hs_done;
//    reg w_hs_done;
//    reg write_resp_pulsed;

    
    
//    // State Machine encoding
//    localparam [1:0] IDLE  = 2'b00;
//    localparam [1:0] WRITE = 2'b01;
//    localparam [1:0] READ  = 2'b10;

//    reg [1:0] state;
    


//    always @(posedge clk or negedge rst_n) begin
//        if (!rst_n) begin
//            aw_hs_done   <= 1'b0;
//            w_hs_done    <= 1'b0;
//            write_resp_pulsed <= 1'b0;

            
            
//            state <= IDLE;
//            m_axi_awvalid <= 0;
//            m_axi_wvalid  <= 0;
//            m_axi_arvalid <= 0;
//            m_axi_bready  <= 0;
//            m_axi_rready  <= 0;
//            sb_rvalid     <= 0;
//            sb_ready      <= 0;
//            // Clear outputs
//            m_axi_awaddr  <= 0;
//            m_axi_wdata   <= 0;
//            m_axi_wstrb   <= 0;
//            m_axi_araddr  <= 0;
//            sb_rdata      <= 0;
//        end else begin
//            sb_ready      <= 0; // Default
//            sb_rvalid     <= 0; // Default

//            case (state)


//                IDLE: begin
//                    // clear tracking each time we are idle
//                    aw_hs_done <= 1'b0;
//                    w_hs_done  <= 1'b0;
//                    write_resp_pulsed <= 1'b0;


//                    if (sb_req) begin
//                        if (sb_we) begin
//                            // Start Write Transaction
//                            m_axi_awaddr  <= sb_addr;
//                            m_axi_awvalid <= 1;
//                            m_axi_wdata   <= sb_wdata;
//                            m_axi_wstrb   <= sb_be;
//                            m_axi_wvalid  <= 1;
//                            m_axi_bready  <= 1;

//                            state         <= WRITE;
//                        end else begin
//                            // Start Read Transaction
//                            m_axi_araddr  <= sb_addr;
//                            m_axi_arvalid <= 1;
//                            m_axi_rready  <= 1;

//                            state         <= READ;
//                        end
//                    end
//                end



//                  WRITE: begin
//                    // Keep BREADY asserted until we see the response
//                    m_axi_bready <= 1'b1;
                
//                    // Mark handshakes when they occur
//                    if (m_axi_awvalid && m_axi_awready) begin
//                      m_axi_awvalid <= 1'b0;
//                      aw_hs_done    <= 1'b1;
//                    end
                  
//                    if (m_axi_wvalid && m_axi_wready) begin
//                      m_axi_wvalid <= 1'b0;
//                      w_hs_done    <= 1'b1;
//                    end
                
//                    // Optional: indicates AW+W have been accepted (not used by ibex right now)
//                    if (aw_hs_done && w_hs_done) begin
//                      sb_ready <= 1'b1;
//                    end
                
//                    // Complete the write when the B channel handshake occurs
//                    if (m_axi_bvalid && m_axi_bready) begin
//                      sb_rvalid    <= 1'b1;   // completion pulse back to ibex bus
//                      sb_rdata     <= 32'b0;  // don't care for writes
//                      m_axi_bready <= 1'b0;   // not strictly required since we go IDLE, but clean
//                      state        <= IDLE;
//                    end
//                  end
                





//                READ: begin
//                    // Pulse sb_ready when AR handshake occurs (request accepted)
//                    if (m_axi_arvalid && m_axi_arready) begin
//                        m_axi_arvalid <= 0;
//                        sb_ready      <= 1'b1;
//                    end

//                    // Wait for RVALID (Read Data)
//                    if (m_axi_rvalid) begin
//                        sb_rdata     <= m_axi_rdata;
//                        sb_rvalid    <= 1; // Data valid for Ibex
//                        m_axi_rready <= 0;
//                        state        <= IDLE;
//                    end
//                end

                
//                default: state <= IDLE;
//            endcase
//        end
        
//    end
//    assign dbg_sb_req   = sb_req;
//    assign dbg_in_write = (state == WRITE);
//endmodule


`timescale 1ns/1ps
module bus_to_axi (
    input  wire        clk,
    input  wire        rst_n,

    // Ibex side (valid/ready style)
    input  wire        sb_req,      // valid
    input  wire        sb_we,
    input  wire [31:0] sb_addr,
    input  wire [31:0] sb_wdata,
    input  wire [3:0]  sb_be,
    output reg         sb_rvalid,    // 1-cycle pulse on completion
    output reg  [31:0] sb_rdata,
    output reg         sb_ready,     // ready to accept request

    // AXI master (AXI4-Lite subset)
    output reg  [31:0] m_axi_awaddr,
    output reg         m_axi_awvalid,
    input  wire        m_axi_awready,

    output reg  [31:0] m_axi_wdata,
    output reg  [3:0]  m_axi_wstrb,
    output reg         m_axi_wvalid,
    input  wire        m_axi_wready,

    input  wire [1:0]  m_axi_bresp,
    input  wire        m_axi_bvalid,
    output reg         m_axi_bready,

    output reg  [31:0] m_axi_araddr,
    output reg         m_axi_arvalid,
    input  wire        m_axi_arready,

    input  wire [31:0] m_axi_rdata,
    input  wire [1:0]  m_axi_rresp,
    input  wire        m_axi_rvalid,
    output reg         m_axi_rready,

    output wire [2:0]  m_axi_awprot,
    output wire [2:0]  m_axi_arprot,

    output wire        dbg_sb_req,
    output wire        dbg_in_write
);

  // keep these constant for now
  assign m_axi_awprot = 3'b000;
  assign m_axi_arprot = 3'b000;

  localparam [1:0] IDLE  = 2'b00;
  localparam [1:0] WRITE = 2'b01;
  localparam [1:0] READ  = 2'b10;

  reg [1:0] state;

  // latched request
  reg        req_we;
  reg [31:0] req_addr;
  reg [31:0] req_wdata;
  reg [3:0]  req_be;
  
  reg [31:0] boot_cnt;
  reg        kicked;

  // accept condition: sb_req && sb_ready
  wire sb_accept = sb_req && sb_ready;

  // debug
  assign dbg_sb_req   = sb_accept;        // shows when we actually accept a request
  assign dbg_in_write = (state == WRITE);

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state        <= IDLE;

      sb_ready     <= 1'b0;
      sb_rvalid    <= 1'b0;
      sb_rdata     <= 32'b0;

      m_axi_awaddr <= 32'b0;
      m_axi_awvalid<= 1'b0;
      m_axi_wdata  <= 32'b0;
      m_axi_wstrb  <= 4'b0;
      m_axi_wvalid <= 1'b0;
      m_axi_bready <= 1'b0;

      m_axi_araddr <= 32'b0;
      m_axi_arvalid<= 1'b0;
      m_axi_rready <= 1'b0;

      req_we       <= 1'b0;
      req_addr     <= 32'b0;
      req_wdata    <= 32'b0;
      req_be       <= 4'b0;
      
      boot_cnt <= 32'd0;
      kicked   <= 1'b0;
    end else begin
      // defaults
      sb_rvalid <= 1'b0;
      
      
      // TEMP SELF-TEST: after reset, launch exactly one AXI write even if sb_req is dead
    if (!kicked) begin
      boot_cnt <= boot_cnt + 1;
      if (boot_cnt == 32'd5_000_000) begin  // ~0.1s at 50MHz
        // force a write launch
        m_axi_awaddr  <= 32'h0009_0000;
        m_axi_awvalid <= 1'b1;
        m_axi_wdata   <= 32'hDEAD_BEEF;
        m_axi_wstrb   <= 4'hF;
        m_axi_wvalid  <= 1'b1;
        m_axi_bready  <= 1'b1;
        state         <= WRITE;
        kicked        <= 1'b1;
      end
    end 

      // ready only in IDLE (one outstanding max)
      sb_ready <= (state == IDLE);

      case (state)
        IDLE: begin
          // if accepted, latch and launch AXI
          if (sb_accept) begin
            req_we    <= sb_we;
            req_addr  <= sb_addr;
            req_wdata <= sb_wdata;
            req_be    <= sb_be;

            if (sb_we) begin
              // launch write
              m_axi_awaddr  <= sb_addr;
              m_axi_awvalid <= 1'b1;

              m_axi_wdata   <= sb_wdata;
              m_axi_wstrb   <= sb_be;
              m_axi_wvalid  <= 1'b1;

              m_axi_bready  <= 1'b1;
              state         <= WRITE;
            end else begin
              // launch read
              m_axi_araddr  <= sb_addr;
              m_axi_arvalid <= 1'b1;
              m_axi_rready  <= 1'b1;
              state         <= READ;
            end
          end
        end

        WRITE: begin
          // hold valid until handshake
          if (m_axi_awvalid && m_axi_awready) m_axi_awvalid <= 1'b0;
          if (m_axi_wvalid  && m_axi_wready)  m_axi_wvalid  <= 1'b0;

          // complete only on B handshake
          if (m_axi_bvalid && m_axi_bready) begin
            sb_rvalid    <= 1'b1;
            sb_rdata     <= 32'b0;
            m_axi_bready <= 1'b0;
            state        <= IDLE;
          end
        end

        READ: begin
          if (m_axi_arvalid && m_axi_arready) begin
            m_axi_arvalid <= 1'b0;
          end

          // complete on R handshake
          if (m_axi_rvalid && m_axi_rready) begin
            sb_rvalid    <= 1'b1;
            sb_rdata     <= m_axi_rdata;
            m_axi_rready <= 1'b0;
            state        <= IDLE;
          end
        end

        default: state <= IDLE;
      endcase
    end
  end

endmodule
