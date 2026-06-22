`timescale 1ns/1ps

module L_1_3_1_Filter (
    input clk,
    input reset,
    input signed [7:0] bias,  
    input signed [7:0] ch00,
    input signed [7:0] ch01,
    input signed [7:0] ch02,
    input signed [7:0] ch03,
    input signed [7:0] ch04,
    input signed [7:0] ch05,    
    input signed [7:0] w00,
    input signed [7:0] w01,
    input signed [7:0] w02,
    input signed [7:0] w03,
    input signed [7:0] w04,
    input signed [7:0] w05,
    input signed [7:0] w06,
    input signed [7:0] w07,
    input signed [7:0] w08,
    input signed [7:0] w09,
    input signed [7:0] w10,
    input signed [7:0] w11,
	input weights_ready,	
    //output signed [17:0] result,
	(* dont_touch = "true" *) output signed [17:0] result_p
);
    (* dont_touch = "true" *) reg signed [17:0] products_phase1 [0:5];
    (* dont_touch = "true" *) reg signed [17:0] products_phase2 [0:5];
	(* dont_touch = "true" *) reg signed [15:0] pp1 [0:5];
    (* dont_touch = "true" *) reg signed [15:0] pp2 [0:5];
	(* dont_touch = "true" *) wire signed [17:0] aa [0:5];
	(* dont_touch = "true" *) wire signed [17:0] ab [0:5];
	(* dont_touch = "true" *) wire signed [17:0] ac [0:5];
	(* dont_touch = "true" *) wire signed [17:0] aa_p [0:5];
	(* dont_touch = "true" *) wire signed [17:0] ab_p [0:5];
	(* dont_touch = "true" *) wire signed [17:0] ac_p [0:5];
    wire signed [17:0] temp [0:5];
	wire signed [15:0] temp_p [0:5];
	(* dont_touch = "true" *) wire signed [8:0] ch [0:5];
	(* dont_touch = "true" *) wire signed [8:0] w [0:11];
    always @(posedge clk) 
	begin
        if (reset) 
		begin
            ////products_phase1[0]  <= 18'd0;
            ////products_phase1[1]  <= 18'd0;
            ////products_phase1[2]  <= 18'd0;
            ////products_phase1[3]  <= 18'd0;
            ////products_phase1[4]  <= 18'd0;
            ////products_phase1[5]  <= 18'd0;
			////products_phase2[0] <= 18'd0;
			////products_phase2[1] <= 18'd0;
			////products_phase2[2] <= 18'd0;
			////products_phase2[3] <= 18'd0;
			////products_phase2[4] <= 18'd0;
			////products_phase2[5] <= 18'd0;
			
			pp1[0]  <= 16'd0;
            pp1[1]  <= 16'd0;
            pp1[2]  <= 16'd0;
            pp1[3]  <= 16'd0;
            pp1[4]  <= 16'd0;
            pp1[5]  <= 16'd0;
			pp2[0] <= 16'd0;
			pp2[1] <= 16'd0;
			pp2[2] <= 16'd0;
			pp2[3] <= 16'd0;
			pp2[4] <= 16'd0;
			pp2[5] <= 16'd0;
		end 
		else
		begin
			if(weights_ready)
				begin
					//////products_phase1[0]  <= ch[00]  * w[00];
					//////products_phase1[1]  <= ch[01]  * w[01];
					//////products_phase1[2]  <= ch[02]  * w[02];
					//////products_phase1[3]  <= ch[03]  * w[03];
					//////products_phase1[4]  <= ch[04]  * w[04];
					//////products_phase1[5]  <= ch[05]  * w[05];
					//////products_phase2[0]  <= ch[00]  * w[06];
					//////products_phase2[1]  <= ch[01]  * w[07];
					//////products_phase2[2]  <= ch[02]  * w[08];
					//////products_phase2[3]  <= ch[03]  * w[09];
					//////products_phase2[4]  <= ch[04]  * w[10];
					//////products_phase2[5]  <= ch[05]  * w[11];
					
					pp1[0]  <= ch00  * w00;
					pp1[1]  <= ch01  * w01;
					pp1[2]  <= ch02  * w02;
					pp1[3]  <= ch03  * w03;
					pp1[4]  <= ch04  * w04;
					pp1[5]  <= ch05  * w05;
					pp2[0]  <= ch00  * w06;
					pp2[1]  <= ch01  * w07;
					pp2[2]  <= ch02  * w08;
					pp2[3]  <= ch03  * w09;
					pp2[4]  <= ch04  * w10;
					pp2[5]  <= ch05  * w11;
				end
			else
			begin
				//products_phase1[0]  <= 18'd0;
				//products_phase1[1]  <= 18'd0;
				//products_phase1[2]  <= 18'd0;
				//products_phase1[3]  <= 18'd0;
				//products_phase1[4]  <= 18'd0;
				//products_phase1[5]  <= 18'd0;
				//products_phase2[0] <= 18'd0;
				//products_phase2[1] <= 18'd0;
				//products_phase2[2] <= 18'd0;
				//products_phase2[3] <= 18'd0;
				//products_phase2[4] <= 18'd0;
				//products_phase2[5] <= 18'd0;
				
				pp1[0]  <= 16'd0;
				pp1[1]  <= 16'd0;
				pp1[2]  <= 16'd0;
				pp1[3]  <= 16'd0;
				pp1[4]  <= 16'd0;
				pp1[5]  <= 16'd0;
				pp2[0] <= 16'd0;
				pp2[1] <= 16'd0;
				pp2[2] <= 16'd0;
				pp2[3] <= 16'd0;
				pp2[4] <= 16'd0;
				pp2[5] <= 16'd0;
			end
		end	
	end

    assign ch[0] = ch00;
	assign ch[1] = ch01;
	assign ch[2] = ch02;
	assign ch[3] = ch03;
	assign ch[4] = ch04;
	assign ch[5] = ch05;
	
	assign w[0] = w00;
	assign w[1] = w01;
	assign w[2] = w02;
	assign w[3] = w03;
	assign w[4] = w04;
	assign w[5] = w05;
	assign w[6] = w06;
	assign w[7] = w07;
	assign w[8] = w08;
	assign w[9] = w09;
	assign w[10] = w10;
	assign w[11] = w11;
	
	genvar i;
    generate
        for (i = 0; i < 6; i = i + 1) begin
            //L_1_3_0_DFF_15_bits D (.Q(temp[i]), .D(products_phase1[i]), .clk(clk), .reset(reset));
			L_1_3_0_DFF_16_bits D1 (.Q(temp_p[i]), .D(pp1[i]), .clk(clk), .reset(reset));
        end
    endgenerate
    
    //(* dont_touch = "true" *) assign aa[0] = temp[0] + products_phase2[0];
	//(* dont_touch = "true" *) assign aa[1] = temp[1] + products_phase2[1];
	//(* dont_touch = "true" *) assign aa[2] = temp[2] + products_phase2[2];
	//(* dont_touch = "true" *) assign aa[3] = temp[3] + products_phase2[3];
	//(* dont_touch = "true" *) assign aa[4] = temp[4] + products_phase2[4];
	//(* dont_touch = "true" *) assign aa[5] = temp[5] + products_phase2[5];
	
	//(* dont_touch = "true" *) assign result = aa[0] + aa[1] + aa[2] + aa[3] + aa[4] + aa[5] + bias + 18'b000000000000000000;
	
	(* dont_touch = "true" *) assign aa_p[0] = temp_p[0] + pp2[0];
	(* dont_touch = "true" *) assign aa_p[1] = temp_p[1] + pp2[1];
	(* dont_touch = "true" *) assign aa_p[2] = temp_p[2] + pp2[2];
	(* dont_touch = "true" *) assign aa_p[3] = temp_p[3] + pp2[3];
	(* dont_touch = "true" *) assign aa_p[4] = temp_p[4] + pp2[4];
	(* dont_touch = "true" *) assign aa_p[5] = temp_p[5] + pp2[5];
	
	(* dont_touch = "true" *) assign result_p = aa_p[0] + aa_p[1] + aa_p[2] + aa_p[3] + aa_p[4] + aa_p[5] + bias + 18'b000000000000000000;
	
	
endmodule

