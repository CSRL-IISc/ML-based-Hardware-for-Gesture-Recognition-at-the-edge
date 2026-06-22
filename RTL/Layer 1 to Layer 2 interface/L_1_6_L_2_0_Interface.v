`timescale 1ns/1ps
module L_1_6_L_2_0_Interface #(
    parameter M = 9,
    parameter N = 18
	)(
	input clk,
	input reset,
	input [M-1:0] addr_write,
	input [N-1:0] L_1_data_out_00, L_1_data_out_01, L_1_data_out_02, L_1_data_out_03,
	input [N-1:0] L_1_data_out_04, L_1_data_out_05, L_1_data_out_06, L_1_data_out_07,
	input [N-1:0] L_1_data_out_08, L_1_data_out_09, L_1_data_out_10, L_1_data_out_11,
	input [N-1:0] L_1_data_out_12, L_1_data_out_13, L_1_data_out_14, L_1_data_out_15,
	input [N-1:0] L_1_data_out_16, L_1_data_out_17, L_1_data_out_18, L_1_data_out_19,
	input [N-1:0] L_1_data_out_20, L_1_data_out_21, L_1_data_out_22, L_1_data_out_23,
	input [N-1:0] L_1_data_out_24, L_1_data_out_25, L_1_data_out_26, L_1_data_out_27,
	input [N-1:0] L_1_data_out_28, L_1_data_out_29, L_1_data_out_30, L_1_data_out_31,
	input weights_ready_L_2,
	output reg L_2_input_start,
	output process_en,
	output reg [N-1:0] L_2_data_in_00, L_2_data_in_01, L_2_data_in_02, L_2_data_in_03,
	output reg [N-1:0] L_2_data_in_04, L_2_data_in_05, L_2_data_in_06, L_2_data_in_07,
	output reg [N-1:0] L_2_data_in_08, L_2_data_in_09, L_2_data_in_10, L_2_data_in_11,
	output reg [N-1:0] L_2_data_in_12, L_2_data_in_13, L_2_data_in_14, L_2_data_in_15,
	output reg [N-1:0] L_2_data_in_16, L_2_data_in_17, L_2_data_in_18, L_2_data_in_19,
	output reg [N-1:0] L_2_data_in_20, L_2_data_in_21, L_2_data_in_22, L_2_data_in_23,
	output reg [N-1:0] L_2_data_in_24, L_2_data_in_25, L_2_data_in_26, L_2_data_in_27,
	output reg [N-1:0] L_2_data_in_28, L_2_data_in_29, L_2_data_in_30, L_2_data_in_31
	);
	localparam MAX_ADDR = 508;
	reg [2:0] state;
	(* dont_touch = "true" *) reg [2:0] next_state;
	localparam RESET  = 3'd0,
               WRITE = 3'd1,
               WRITE_LAST = 3'd2,
			   HOLD = 3'd3,
               READ = 3'd4,
               READ_LAST = 3'd5,
               DONE_S = 3'd6;
	reg [M-1:0] wr_addr, rd_addr;
    reg [M-1:0] wr_addr_q;
	reg [(8*N)-1:0] L_1_data_00_07_q, L_1_data_08_15_q, L_1_data_16_23_q, L_1_data_24_31_q;
	reg [(8*N)-1:0] L_1_data_00_07_qq, L_1_data_08_15_qq, L_1_data_16_23_qq, L_1_data_24_31_qq;
	reg [(8*N)-1:0] L_1_data_00_07_qqq, L_1_data_08_15_qqq, L_1_data_16_23_qqq, L_1_data_24_31_qqq;
	reg [(8*N)-1:0] L_1_data_00_07_qqqq, L_1_data_08_15_qqqq, L_1_data_16_23_qqqq, L_1_data_24_31_qqqq;
	reg [(8*N)-1:0] L_1_data_00_07_qqqqq, L_1_data_08_15_qqqqq, L_1_data_16_23_qqqqq, L_1_data_24_31_qqqqq;
	wire [(8*N)-1:0] L_2_data_00_07, L_2_data_08_15, L_2_data_16_23, L_2_data_24_31;
	(* dont_touch = "true" *) reg [M-1:0] aa_d;
	
    (* dont_touch = "true" *) reg [(8*N)-1:0] da1_d;
	(* dont_touch = "true" *) reg [(8*N)-1:0] da2_d;
	(* dont_touch = "true" *) reg [(8*N)-1:0] da3_d;
	(* dont_touch = "true" *) reg [(8*N)-1:0] da4_d;
	(* dont_touch = "true" *) reg [M-1:0] aa_1;
	(* dont_touch = "true" *) reg [M-1:0] aa_2;
	(* dont_touch = "true" *) reg [M-1:0] aa_3;
	(* dont_touch = "true" *) reg [M-1:0] aa_4;

    reg we_d, ce_d;
    reg [(8*N)-1:0] bwe_d;
	reg [(8*N)-1:0] da_1, da_2, da_3, da_4;
    reg [(8*N)-1:0] bwe_1, bwe_2, bwe_3, bwe_4;
    reg we_1, we_2, we_3, we_4;
    reg ce_1, ce_2, ce_3, ce_4;
	reg [1:0] rd_flush;
    reg wr_flush = 1;	
	reg [2:0] process_q,process_qq,process;
	wire [(8*N)-1:0] qb_1,qb_2,qb_3,qb_4;
	
	always@(negedge clk)
    begin
        if(reset)
            wr_addr_q <= 0;
        else if (state == WRITE || state == WRITE_LAST)
            wr_addr_q <= wr_addr;
    end
	
	always @(negedge clk or posedge reset) begin
        if (reset) begin
            aa_1  <= 0; aa_2 <= 0; aa_3 <= 0; aa_4 <= 0;
            da_1  <= 0; da_2 <= 0; da_3 <= 0; da_4 <= 0;
            we_1  <= 1'b1; we_2 <= 1'b1; we_3 <= 1'b1; we_4 <= 1'b1;
            ce_1  <= 1'b1; ce_2 <= 1'b1; ce_3 <= 1'b1; ce_4 <= 1'b1;
            bwe_1 <= {(8*N){1'b1}}; bwe_2 <= {(8*N){1'b1}};
            bwe_3 <= {(8*N){1'b1}}; bwe_4 <= {(8*N){1'b1}};
			L_1_data_00_07_q <= 0;
			L_1_data_08_15_q <= 0;
			L_1_data_16_23_q <= 0;
			L_1_data_24_31_q <= 0;
			L_1_data_00_07_qq <= 0;
			L_1_data_08_15_qq <= 0;
			L_1_data_16_23_qq <= 0;
			L_1_data_24_31_qq <= 0;
			L_1_data_00_07_qqq <= 0;
			L_1_data_08_15_qqq <= 0;
			L_1_data_16_23_qqq <= 0;
			L_1_data_24_31_qqq <= 0;			
			L_1_data_00_07_qqqq <= 0;
			L_1_data_08_15_qqqq <= 0;
			L_1_data_16_23_qqqq <= 0;
			L_1_data_24_31_qqqq <= 0;
			L_1_data_00_07_qqqqq <= 0;
			L_1_data_08_15_qqqqq <= 0;
			L_1_data_16_23_qqqqq <= 0;
			L_1_data_24_31_qqqqq <= 0;
        end else begin
            aa_1  <= aa_d;   aa_2  <= aa_d;   aa_3  <= aa_d;   aa_4  <= aa_d;
            da_1  <= da1_d;  da_2  <= da2_d;  da_3  <= da3_d;  da_4  <= da4_d;
            we_1  <= we_d;   we_2  <= we_d;   we_3  <= we_d;   we_4  <= we_d;
            ce_1  <= ce_d;   ce_2  <= ce_d;   ce_3  <= ce_d;   ce_4  <= ce_d;
            bwe_1 <= bwe_d;  bwe_2 <= bwe_d;  bwe_3 <= bwe_d;  bwe_4 <= bwe_d;
			L_1_data_00_07_q <= {L_1_data_out_07 ,L_1_data_out_06 ,L_1_data_out_05 ,L_1_data_out_04 ,L_1_data_out_03 ,L_1_data_out_02 ,L_1_data_out_01 ,L_1_data_out_00};
			L_1_data_08_15_q <= {L_1_data_out_15 ,L_1_data_out_14 ,L_1_data_out_13 ,L_1_data_out_12 ,L_1_data_out_11 ,L_1_data_out_10 ,L_1_data_out_09 ,L_1_data_out_08};
			L_1_data_16_23_q <= {L_1_data_out_23 ,L_1_data_out_22 ,L_1_data_out_21 ,L_1_data_out_20 ,L_1_data_out_19 ,L_1_data_out_18 ,L_1_data_out_17 ,L_1_data_out_16};
			L_1_data_24_31_q <= {L_1_data_out_31 ,L_1_data_out_30 ,L_1_data_out_29 ,L_1_data_out_28 ,L_1_data_out_27 ,L_1_data_out_26 ,L_1_data_out_25 ,L_1_data_out_24};
			L_1_data_00_07_qq <= L_1_data_00_07_q;
			L_1_data_08_15_qq <= L_1_data_08_15_q;
			L_1_data_16_23_qq <= L_1_data_16_23_q;
			L_1_data_24_31_qq <= L_1_data_24_31_q;
			L_1_data_00_07_qqq <= L_1_data_00_07_qq;
			L_1_data_08_15_qqq <= L_1_data_08_15_qq;
			L_1_data_16_23_qqq <= L_1_data_16_23_qq;
			L_1_data_24_31_qqq <= L_1_data_24_31_qq;			
			L_1_data_00_07_qqqq <= L_1_data_00_07_qqq;
			L_1_data_08_15_qqqq <= L_1_data_08_15_qqq;
			L_1_data_16_23_qqqq <= L_1_data_16_23_qqq;
			L_1_data_24_31_qqqq <= L_1_data_24_31_qqq;
			L_1_data_00_07_qqqqq <= L_1_data_00_07_qqqq;
			L_1_data_08_15_qqqqq <= L_1_data_08_15_qqqq;
			L_1_data_16_23_qqqqq <= L_1_data_16_23_qqqq;
			L_1_data_24_31_qqqqq <= L_1_data_24_31_qqqq;
        end
    end
	
	always @(*) begin
        case(state)
            RESET      : next_state = WRITE;
            WRITE      : next_state = (wr_addr == MAX_ADDR) ? WRITE_LAST : WRITE;
            WRITE_LAST : next_state = HOLD;
			HOLD	   : next_state = (weights_ready_L_2 == 1) ? READ : HOLD;		
            READ       : next_state = (rd_addr == MAX_ADDR) ? READ_LAST : READ;
            READ_LAST  : next_state = (process >= 4) ? ((rd_flush == 1) ? DONE_S : READ_LAST) : ((rd_flush == 1) ? READ : READ_LAST);
            DONE_S     : next_state = DONE_S;
            default    : next_state = RESET;
        endcase
    end
	
	always @(negedge clk or posedge reset) begin
        if (reset)
            state <= RESET;
        else
            state <= next_state;
    end
	
	always @(negedge clk or posedge reset) begin
        if (reset)
		begin
            rd_flush <= 0;
		end	
        else if (state == READ_LAST)
		begin
            rd_flush <= rd_flush + 1;
			//rd_addr <= 0;
		end	
        else
		begin
            rd_flush <= 0;
		end	
    end
	
	always @(negedge clk or posedge reset) begin
        if (reset)
		begin
            process <= 1;
		end	
        else if ((next_state == READ) && (state == READ_LAST))
		begin
            process <= process + 1;		
		end        	
    end
	always @(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			process_q <= 0;
			process_qq <= 0;
		end
		else
		begin
			process_q <= process;
			process_qq <= process_q;
		end
	end
	
	always @(*) begin
        case(state)
            RESET: begin
                aa_d = 0;
                da1_d = 0; da2_d = 0; da3_d = 0; da4_d = 0;
                we_d = 1; ce_d = 1; bwe_d = {(8*N){1'b1}};
            end
            WRITE, WRITE_LAST: begin
				aa_d = wr_addr_q;
                da1_d = L_1_data_00_07_qqqqq;
                da2_d = L_1_data_08_15_qqqqq;
                da3_d = L_1_data_16_23_qqqqq;
                da4_d = L_1_data_24_31_qqqqq;
                we_d = 0; ce_d = 0; bwe_d = {(8*N){1'b0}};
            end
            READ: begin
                aa_d = rd_addr;
				da1_d = 0;
				da2_d = 0;
				da3_d = 0;
				da4_d = 0;
				we_d = 0;
				bwe_d = 0;
                we_d = 1; ce_d = 0; bwe_d = {(8*N){1'b1}};
            end
            READ_LAST: begin
				aa_d = MAX_ADDR;
				we_d = 0;
				bwe_d = 0;
				da1_d = 0;
				da2_d = 0;
				da3_d = 0;
				da4_d = 0;
                we_d = 0; ce_d = 0; bwe_d = {(8*N){1'b1}};
            end
            DONE_S: begin
				aa_d = MAX_ADDR;
				we_d = 0;
				bwe_d = 0;
				da1_d = 0;
				da2_d = 0;
				da3_d = 0;
				da4_d = 0;
				ce_d = 1;
            end
			default: begin
				aa_d = 0;
				we_d = 0;
				bwe_d = 0;
				da1_d = 0;
				da2_d = 0;
				da3_d = 0;
				da4_d = 0;
				ce_d = 1;
			end
        endcase
    end
	
	always @(negedge clk) begin
        case(state)
            RESET: begin wr_addr <= 0; rd_addr <= 0; end
            WRITE: begin wr_addr <= addr_write; rd_addr <= rd_addr;end
            WRITE_LAST: begin wr_addr <= MAX_ADDR; rd_addr <= rd_addr;end
            READ: 
				begin
					wr_addr <= wr_addr;
					if (rd_addr < MAX_ADDR) rd_addr <= rd_addr + 1;
				end
			READ_LAST: rd_addr <= 0;	
            default: begin wr_addr <= wr_addr; rd_addr <= rd_addr; end
        endcase
    end
	always@(negedge clk or posedge reset)
	begin
		if(reset)
		begin
			L_2_input_start <= 0;
		end
		else
		begin
			if(state == READ)
			begin
				L_2_input_start <= 1;
			end
		end
	end
	
	(* dont_touch = "true" *) TSDN65LPLLA512X144M4M S1 ( .AA(aa_1), .DA(da_1), .BWEBA(bwe_1), .WEBA(we_1), .CEBA(ce_1),
        .CLKA(clk), .QA(L_2_data_00_07), .AB({M{1'b0}}), .DB({(8*N){1'b0}}), .BWEBB({(8*N){1'b1}}),
        .WEBB(1'b1), .CEBB(1'b1), .CLKB(1'b0), .AMA({M{1'b0}}), .DMA({(8*N){1'b0}}),
        .BWEBMA({(8*N){1'b1}}), .WEBMA(1'b1), .CEBMA(1'b1),
        .AMB({M{1'b0}}), .DMB({(8*N){1'b0}}), .BWEBMB({(8*N){1'b1}}), .WEBMB(1'b1),
        .CEBMB(1'b1), .BIST(1'b0), .AWT(1'b0), .CLKM(1'b0), .QB(qb_1)
    );

    (* dont_touch = "true" *) TSDN65LPLLA512X144M4M S2 ( .AA(aa_2), .DA(da_2), .BWEBA(bwe_2), .WEBA(we_2), .CEBA(ce_2),
        .CLKA(clk), .QA(L_2_data_08_15), .AB({M{1'b0}}), .DB({(8*N){1'b0}}), .BWEBB({(8*N){1'b1}}),
        .WEBB(1'b1), .CEBB(1'b1), .CLKB(1'b0), .AMA({M{1'b0}}), .DMA({(8*N){1'b0}}),
        .BWEBMA({(8*N){1'b1}}), .WEBMA(1'b1), .CEBMA(1'b1),
        .AMB({M{1'b0}}), .DMB({(8*N){1'b0}}), .BWEBMB({(8*N){1'b1}}), .WEBMB(1'b1),
        .CEBMB(1'b1), .BIST(1'b0), .AWT(1'b0), .CLKM(1'b0), .QB(qb_2)
    );

    (* dont_touch = "true" *) TSDN65LPLLA512X144M4M S3 ( .AA(aa_3), .DA(da_3), .BWEBA(bwe_3), .WEBA(we_3), .CEBA(ce_3),
        .CLKA(clk), .QA(L_2_data_16_23), .AB({M{1'b0}}), .DB({(8*N){1'b0}}), .BWEBB({(8*N){1'b1}}),
        .WEBB(1'b1), .CEBB(1'b1), .CLKB(1'b0), .AMA({M{1'b0}}), .DMA({(8*N){1'b0}}),
        .BWEBMA({(8*N){1'b1}}), .WEBMA(1'b1), .CEBMA(1'b1),
        .AMB({M{1'b0}}), .DMB({(8*N){1'b0}}), .BWEBMB({(8*N){1'b1}}), .WEBMB(1'b1),
        .CEBMB(1'b1), .BIST(1'b0), .AWT(1'b0), .CLKM(1'b0), .QB(qb_3)
    );

    (* dont_touch = "true" *) TSDN65LPLLA512X144M4M S4 ( .AA(aa_4), .DA(da_4), .BWEBA(bwe_4), .WEBA(we_4), .CEBA(ce_4),
        .CLKA(clk), .QA(L_2_data_24_31), .AB({M{1'b0}}), .DB({(8*N){1'b0}}), .BWEBB({(8*N){1'b1}}),
        .WEBB(1'b1), .CEBB(1'b1), .CLKB(1'b0), .AMA({M{1'b0}}), .DMA({(8*N){1'b0}}),
        .BWEBMA({(8*N){1'b1}}), .WEBMA(1'b1), .CEBMA(1'b1),
        .AMB({M{1'b0}}), .DMB({(8*N){1'b0}}), .BWEBMB({(8*N){1'b1}}), .WEBMB(1'b1),
        .CEBMB(1'b1), .BIST(1'b0), .AWT(1'b0), .CLKM(1'b0), .QB(qb_4)
    );
	
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			L_2_data_in_00 <=0;
			L_2_data_in_01 <=0;
			L_2_data_in_02 <=0;
			L_2_data_in_03 <=0;
			L_2_data_in_04 <=0;
			L_2_data_in_05 <=0;
			L_2_data_in_06 <=0;
			L_2_data_in_07 <=0;
			L_2_data_in_08 <= 0;
			L_2_data_in_09 <= 0;
			L_2_data_in_10 <= 0;
			L_2_data_in_11 <= 0;
			L_2_data_in_12 <= 0;
			L_2_data_in_13 <= 0;
			L_2_data_in_14 <= 0;
			L_2_data_in_15 <= 0;
			L_2_data_in_16 <= 0;
			L_2_data_in_17 <= 0;
			L_2_data_in_18 <= 0;
			L_2_data_in_19 <= 0;
			L_2_data_in_20 <= 0;
			L_2_data_in_21 <= 0;
			L_2_data_in_22 <= 0;
			L_2_data_in_23 <= 0;
			L_2_data_in_24 <= 0;
			L_2_data_in_25 <= 0;
			L_2_data_in_26 <= 0;
			L_2_data_in_27 <= 0;
			L_2_data_in_28 <= 0;
			L_2_data_in_29 <= 0;
			L_2_data_in_30 <= 0;
			L_2_data_in_31 <= 0;
		end
		else
		begin
			if(L_2_input_start)
			begin
				L_2_data_in_00 <= L_2_data_00_07[17:0];
				L_2_data_in_01 <= L_2_data_00_07[35:18];
				L_2_data_in_02 <= L_2_data_00_07[53:36];
				L_2_data_in_03 <= L_2_data_00_07[71:54];
				L_2_data_in_04 <= L_2_data_00_07[89:72];
				L_2_data_in_05 <= L_2_data_00_07[107:90];
				L_2_data_in_06 <= L_2_data_00_07[125:108];
				L_2_data_in_07 <= L_2_data_00_07[143:126];
				L_2_data_in_08 <= L_2_data_08_15[17:0];
				L_2_data_in_09 <= L_2_data_08_15[35:18];
				L_2_data_in_10 <= L_2_data_08_15[53:36];
				L_2_data_in_11 <= L_2_data_08_15[71:54];
				L_2_data_in_12 <= L_2_data_08_15[89:72];
				L_2_data_in_13 <= L_2_data_08_15[107:90];
				L_2_data_in_14 <= L_2_data_08_15[125:108];
				L_2_data_in_15 <= L_2_data_08_15[143:126];
				L_2_data_in_16 <= L_2_data_16_23[17:0];
				L_2_data_in_17 <= L_2_data_16_23[35:18];
				L_2_data_in_18 <= L_2_data_16_23[53:36];
				L_2_data_in_19 <= L_2_data_16_23[71:54];
				L_2_data_in_20 <= L_2_data_16_23[89:72];
				L_2_data_in_21 <= L_2_data_16_23[107:90];
				L_2_data_in_22 <= L_2_data_16_23[125:108];
				L_2_data_in_23 <= L_2_data_16_23[143:126];
				L_2_data_in_24 <= L_2_data_24_31[17:0];
				L_2_data_in_25 <= L_2_data_24_31[35:18];
				L_2_data_in_26 <= L_2_data_24_31[53:36];
				L_2_data_in_27 <= L_2_data_24_31[71:54];
				L_2_data_in_28 <= L_2_data_24_31[89:72];
				L_2_data_in_29 <= L_2_data_24_31[107:90];
				L_2_data_in_30 <= L_2_data_24_31[125:108];
				L_2_data_in_31 <= L_2_data_24_31[143:126];
			end
			else
			begin
				L_2_data_in_00 <= 0;
				L_2_data_in_01 <= 0;
				L_2_data_in_02 <= 0;
				L_2_data_in_03 <= 0;
				L_2_data_in_04 <= 0;
				L_2_data_in_05 <= 0;
				L_2_data_in_06 <= 0;
				L_2_data_in_07 <= 0;
				L_2_data_in_08 <= 0;
				L_2_data_in_09 <= 0;
				L_2_data_in_10 <= 0;
				L_2_data_in_11 <= 0;
				L_2_data_in_12 <= 0;
				L_2_data_in_13 <= 0;
				L_2_data_in_14 <= 0;
				L_2_data_in_15 <= 0;
				L_2_data_in_16 <= 0;
				L_2_data_in_17 <= 0;
				L_2_data_in_18 <= 0;
				L_2_data_in_19 <= 0;
				L_2_data_in_20 <= 0;
				L_2_data_in_21 <= 0;
				L_2_data_in_22 <= 0;
				L_2_data_in_23 <= 0;
				L_2_data_in_24 <= 0;
				L_2_data_in_25 <= 0;
				L_2_data_in_26 <= 0;
				L_2_data_in_27 <= 0;
				L_2_data_in_28 <= 0;
				L_2_data_in_29 <= 0;
				L_2_data_in_30 <= 0;
				L_2_data_in_31 <= 0;
			end
		end
	end
	
	assign process_en = ~(process ^ process_qq);
	
endmodule
