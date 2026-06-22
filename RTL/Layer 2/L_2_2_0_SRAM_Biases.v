`timescale 1ns/1ps

module L_2_2_0_SRAM_Biases #(
    parameter M = 6,
    parameter N = 8
)(
    input  wire        clk,
    input  wire        rst,

    // ============================
    // PRELOAD PORTS (ADDED ONLY)
    // ============================
    input  wire        preload_en,
    input  wire [M-1:0] preload_addr,
    input  wire [N-1:0] preload_data1,

    output reg  [N-1:0] read_data_01,
    output reg         write_done,
    output reg         done
);

    localparam MAX_ADDR = (1<<M)-1;
	wire [7:0] qb;
    // ============================================================
    // FSM
    // ============================================================
    reg [2:0] state,next_state;
    localparam RESET  = 3'd0,
               WRITE = 3'd1,
               WRITE_LAST = 3'd2,
               READ = 3'd3,
               READ_LAST = 3'd4,
               DONE_S = 3'd5;

    reg [M-1:0] wr_addr, rd_addr;
    reg [M-1:0] wr_addr_q;    

    // ============================================================
    // ROMs
    // ============================================================
    reg [N-1:0] rom1 [0:MAX_ADDR];

    // ============================================================
    // PRELOAD LOGIC (ONLY ADDITION)
    // ============================================================
    always @(posedge clk) begin
        if (preload_en) begin
            rom1[preload_addr] <= preload_data1;
        end
    end

    // ============================================================
    // Pipeline between SRAM and ROM
    // ============================================================
    always@(negedge clk or posedge rst)
    begin
        if(rst)
            wr_addr_q <= 0;
        else if (state == WRITE || state == WRITE_LAST)
            wr_addr_q <= wr_addr;
    end

    // ============================================================
    // PIPELINE REGISTERS (FSM → SRAM)
    // ============================================================
    reg [M-1:0] aa_d;
    reg [N-1:0] da1_d;
    reg         we_d, ce_d;
    reg [N-1:0] bwe_d;

    // ============================================================
    // SRAM INPUT REGISTERS (NEGEDGE)
    // ============================================================
    (* dont_touch = "true" *) reg [M-1:0] aa_1;
    (* dont_touch = "true" *) reg [N-1:0] da_1;
    (* dont_touch = "true" *) reg [N-1:0] bwe_1;
    reg         we_1;
    reg         ce_1;

    wire [N-1:0] qa_1;

    // ============================================================
    // Read Flush
    // ============================================================
    reg [1:0] rd_flush;
    reg wr_flush = 1;

    // ============================================================
    // NEGEDGE PIPELINE
    // ============================================================
    always @(negedge clk or posedge rst) begin
        if (rst) begin
            aa_1  <= 0;
            da_1  <= 0;
            we_1  <= 1'b1;
            ce_1  <= 1'b1;
            bwe_1 <= {N{1'b1}};
        end else begin
            aa_1  <= aa_d;
            da_1  <= da1_d;
            we_1  <= we_d;
            ce_1  <= ce_d;
            bwe_1 <= bwe_d;
        end
    end

    // ============================================================
    // FSM NEXT STATE LOGIC
    // ============================================================
    always @(*) begin
        case(state)
            RESET      : next_state = WRITE;
            WRITE      : next_state = (wr_addr == MAX_ADDR) ? WRITE_LAST : WRITE;
            WRITE_LAST : next_state = READ;
            READ       : next_state = (rd_addr == MAX_ADDR) ? READ_LAST : READ;
            READ_LAST  : next_state = (rd_flush == 2) ? DONE_S : READ_LAST;
            DONE_S     : next_state = DONE_S;
            default    : next_state = RESET;
        endcase
    end

    // ============================================================
    // STATE REGISTER
    // ============================================================
    always @(negedge clk or posedge rst) begin
        if (rst)
            state <= RESET;
        else
            state <= next_state;
    end

    // ============================================================
    // FLUSH COUNTER
    // ============================================================
    always @(negedge clk or posedge rst) begin
        if (rst)
            rd_flush <= 0;
        else if (state == READ_LAST)
            rd_flush <= rd_flush + 1;
        else
            rd_flush <= 0;
    end

    // ============================================================
    // OUTPUT LOGIC
    // ============================================================
    always @(*) begin
        case(state)
            RESET: begin
                write_done = 0;
                done = 0;
                aa_d = 0;
                da1_d = 0;
                we_d = 1; ce_d = 1; bwe_d = {N{1'b1}};
				read_data_01 = 0;                
            end
            WRITE, WRITE_LAST: begin
                write_done = 0;
				done = 0;
				aa_d = wr_addr_q;
                da1_d = rom1[wr_addr_q];                
                we_d = 0; ce_d = 0; bwe_d = {N{1'b0}};
				read_data_01 = 0;                
            end
            READ: begin
                write_done = 1;
				done = 0;
                aa_d = rd_addr;
				da1_d = 0;				
				we_d = 0;
				bwe_d = 0;
                read_data_01 = qa_1;                
                we_d = 1; ce_d = 0; bwe_d = {N{1'b1}};
            end
            READ_LAST: begin
                write_done = 1;
				done = 0;
				aa_d = MAX_ADDR;
				we_d = 0;
				bwe_d = 0;
				da1_d = 0;				
                read_data_01 = qa_1;                
                we_d = 0; ce_d = 0; bwe_d = {N{1'b1}};
            end
            DONE_S: begin
                write_done = 1;
				done = 1;
				aa_d = MAX_ADDR;
				we_d = 0;
				bwe_d = 0;
				da1_d = 0;				
				read_data_01 = qa_1;                
				ce_d = 1;
            end
			default: begin
				write_done = 0;
				aa_d = 0;
				we_d = 0;
				bwe_d = 0;
				da1_d = 0;				
				read_data_01 = qa_1;                
				done = 0;
				ce_d = 1;
			end
        endcase
    end

    // ============================================================
    // ADDRESS COUNTERS
    // ============================================================
    always @(negedge clk) begin
        case(state)
            RESET: begin wr_addr <= 0; rd_addr <= 0; end
            WRITE: wr_addr <= wr_addr + 1;
            WRITE_LAST: wr_addr <= MAX_ADDR;
            READ: if (rd_addr < MAX_ADDR) rd_addr <= rd_addr + 1;
            default: begin wr_addr <= wr_addr; rd_addr <= rd_addr; end
        endcase
    end

    // ============================================================
    // SRAM MACROS (UNCHANGED)
    // ============================================================
    TSDN65LPLLA64X8M8F S1 ( .AA(aa_1), .DA(da_1), .BWEBA(bwe_1), .WEBA(we_1), .CEBA(ce_1),
        .CLKA(clk), .QA(qa_1), .AB(6'd0), .DB(8'd0), .BWEBB({N{1'b1}}),
        .WEBB(1'b1), .CEBB(1'b1), .CLKB(1'b0), .AMA(6'd0), .DMA(8'd0),
        .BWEBMA({N{1'b1}}), .WEBMA(1'b1), .CEBMA(1'b1),
        .AMB(6'd0), .DMB(8'd0), .BWEBMB({N{1'b1}}), .WEBMB(1'b1),
        .CEBMB(1'b1), .BIST(1'b0), .AWT(1'b0), .CLKM(1'b0), .QB(qb)
    );    

endmodule
