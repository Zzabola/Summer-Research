`timescale 1ns / 1ps

module aes_axi_wrapper (
    // AXI4-Lite Slave Interface
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn" *)
    input  wire        aclk,
    input  wire        aresetn,
    
    // Write Address
    input  wire [31:0] s_axi_awaddr,
    input  wire        s_axi_awvalid,
    output wire        s_axi_awready,
    
    // Write Data
    input  wire [31:0] s_axi_wdata,
    input  wire [3:0]  s_axi_wstrb,
    input  wire        s_axi_wvalid,
    output wire        s_axi_wready,
    
    // Write Response
    output wire [1:0]  s_axi_bresp,
    output wire        s_axi_bvalid,
    input  wire        s_axi_bready,
    
    // Read Address
    input  wire [31:0] s_axi_araddr,
    input  wire        s_axi_arvalid,
    output wire        s_axi_arready,
    
    // Read Data
    output wire [31:0] s_axi_rdata,
    output wire [1:0]  s_axi_rresp,
    output wire        s_axi_rvalid,
    input  wire        s_axi_rready
);

    // -------------------------------------------------------------------------
    // 1. Internal Registers
    // -------------------------------------------------------------------------
    reg [127:0] reg_key;
    reg [127:0] reg_data_in;
    reg [127:0] reg_data_out;
    
    // Control Signals
    reg ctrl_load_key;  
    reg ctrl_encrypt;   
    reg ctrl_decrypt;   

    // Status Signals
    wire status_key_done; 
    wire status_enc_done;
    wire status_dec_done;
    wire status_enc_busy;
    wire status_dec_busy;

    // AXI Output Registers
    reg int_awready;
    reg int_wready;
    reg int_arready;
    reg int_bvalid;
    reg int_rvalid;
    reg [31:0] int_rdata;

    // Assignments
    assign s_axi_awready = int_awready;
    assign s_axi_wready  = int_wready;
    assign s_axi_bvalid  = int_bvalid;
    assign s_axi_bresp   = 2'b00; // OKAY
    assign s_axi_arready = int_arready;
    assign s_axi_rvalid  = int_rvalid;
    assign s_axi_rdata   = int_rdata;
    assign s_axi_rresp   = 2'b00; // OKAY

    // -------------------------------------------------------------------------
    // 2. AXI Write Logic
    // -------------------------------------------------------------------------
    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            int_awready   <= 0;
            int_wready    <= 0;
            int_bvalid    <= 0;
            ctrl_load_key <= 0;
            ctrl_encrypt  <= 0;
            ctrl_decrypt  <= 0;
            reg_key       <= 0;
            reg_data_in   <= 0;
        end else begin
            // Pulse defaults
            ctrl_load_key <= 0;
            ctrl_encrypt  <= 0;
            ctrl_decrypt  <= 0;

            // Handshake Logic
            if (~int_awready && s_axi_awvalid && s_axi_wvalid) begin
                int_awready <= 1;
                int_wready  <= 1;
            end else begin
                int_awready <= 0;
                int_wready  <= 0;
            end

            if (int_awready && s_axi_awvalid && int_wready && s_axi_wvalid && ~int_bvalid) begin
                int_bvalid <= 1;
                
                // --- REGISTER WRITE MAPPING ---
                case (s_axi_awaddr[7:0]) 
                    8'h00: begin
                        ctrl_load_key <= s_axi_wdata[0];
                        ctrl_encrypt  <= s_axi_wdata[1];
                        ctrl_decrypt  <= s_axi_wdata[2];
                    end
                    8'h10: reg_key[31:0]    <= s_axi_wdata;
                    8'h14: reg_key[63:32]   <= s_axi_wdata;
                    8'h18: reg_key[95:64]   <= s_axi_wdata;
                    8'h1C: reg_key[127:96]  <= s_axi_wdata;
                    8'h20: reg_data_in[31:0]    <= s_axi_wdata;
                    8'h24: reg_data_in[63:32]   <= s_axi_wdata;
                    8'h28: reg_data_in[95:64]   <= s_axi_wdata;
                    8'h2C: reg_data_in[127:96]  <= s_axi_wdata;
                endcase
            end else begin
                if (s_axi_bready && int_bvalid) int_bvalid <= 0;
            end
        end
    end

    // -------------------------------------------------------------------------
    // 3. AXI Read Logic
    // -------------------------------------------------------------------------
    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            int_arready <= 0;
            int_rvalid  <= 0;
            int_rdata   <= 0;
        end else begin
            if (~int_arready && s_axi_arvalid) begin
                int_arready <= 1;
            end else begin
                int_arready <= 0;
            end

            if (int_arready && s_axi_arvalid && ~int_rvalid) begin
                int_rvalid <= 1;
                
                // --- REGISTER READ MAPPING ---
                case (s_axi_araddr[7:0])
                    8'h04: int_rdata <= {27'b0, status_dec_busy, status_enc_busy, status_dec_done, status_enc_done, status_key_done};
                    8'h30: int_rdata <= reg_data_out[31:0];
                    8'h34: int_rdata <= reg_data_out[63:32];
                    8'h38: int_rdata <= reg_data_out[95:64];
                    8'h3C: int_rdata <= reg_data_out[127:96];
                    default: int_rdata <= 32'b0;
                endcase
            end else if (int_rvalid && s_axi_rready) begin
                int_rvalid <= 0;
            end
        end
    end

    // -------------------------------------------------------------------------
    // 4. Instantiate the AES Core
    // -------------------------------------------------------------------------
    wire [127:0] aes_plaintext_out;
    wire [127:0] aes_ciphertext_out;
    wire dummy_ready;

    // Even though AES is SystemVerilog, we can instantiate it in a Verilog file.
    AES u_aes_core (
        .clk              (aclk),
        .rst_n            (aresetn),
        .set_key_i        (ctrl_load_key),
        .key_i            (reg_key),
        .set_key_enable_o (dummy_ready),                 
        .gen_key_done_o   (status_key_done),  
        .encrypt_i        (ctrl_encrypt),
        .plaintext_i      (reg_data_in),      
        .encrypt_busy_o   (status_enc_busy),
        .encrypt_done_o   (status_enc_done),
        .ciphertext_o     (aes_ciphertext_out),
        .decrypt_i        (ctrl_decrypt),
        .ciphertext_i     (reg_data_in),      
        .decrypt_busy_o   (status_dec_busy),
        .decrypt_done_o   (status_dec_done),
        .plaintext_o      (aes_plaintext_out)
    );

    // 5. Output Mux
    always @(posedge aclk) begin
        if (status_enc_done) begin
            reg_data_out <= aes_ciphertext_out;
        end else if (status_dec_done) begin
            reg_data_out <= aes_plaintext_out;
        end
    end

endmodule