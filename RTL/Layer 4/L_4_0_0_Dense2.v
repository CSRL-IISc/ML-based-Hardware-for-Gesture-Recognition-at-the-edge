`timescale 1ns/1ps
module L_4_0_0_Dense2(
    input clk,
    input reset,
	input start,
    (*dont_touch = "true"*) input signed [31:0] data_in_00,
    (*dont_touch = "true"*) input signed [31:0] data_in_01,
    (*dont_touch = "true"*) input signed [31:0] data_in_02,
    (*dont_touch = "true"*) input signed [31:0] data_in_03,
    (*dont_touch = "true"*) input signed [31:0] data_in_04,
    (*dont_touch = "true"*) input signed [31:0] data_in_05,
    (*dont_touch = "true"*) input signed [31:0] data_in_06,
    (*dont_touch = "true"*) input signed [31:0] data_in_07,
    (*dont_touch = "true"*) input signed [31:0] data_in_08,
    (*dont_touch = "true"*) input signed [31:0] data_in_09,
    (*dont_touch = "true"*) input signed [31:0] data_in_10,
    (*dont_touch = "true"*) input signed [31:0] data_in_11,
    (*dont_touch = "true"*) input signed [31:0] data_in_12,
    (*dont_touch = "true"*) input signed [31:0] data_in_13,
    (*dont_touch = "true"*) input signed [31:0] data_in_14,
    (*dont_touch = "true"*) input signed [31:0] data_in_15,
    (*dont_touch = "true"*) input signed [31:0] data_in_16,
    (*dont_touch = "true"*) input signed [31:0] data_in_17,
    (*dont_touch = "true"*) input signed [31:0] data_in_18,
    (*dont_touch = "true"*) input signed [31:0] data_in_19,
    (*dont_touch = "true"*) input signed [31:0] data_in_20,
    (*dont_touch = "true"*) input signed [31:0] data_in_21,
    (*dont_touch = "true"*) input signed [31:0] data_in_22,
    (*dont_touch = "true"*) input signed [31:0] data_in_23,
    (*dont_touch = "true"*) input signed [31:0] data_in_24,
    (*dont_touch = "true"*) input signed [31:0] data_in_25,
    (*dont_touch = "true"*) input signed [31:0] data_in_26,
    (*dont_touch = "true"*) input signed [31:0] data_in_27,
    (*dont_touch = "true"*) input signed [31:0] data_in_28,
    (*dont_touch = "true"*) input signed [31:0] data_in_29,
    (*dont_touch = "true"*) input signed [31:0] data_in_30,
    (*dont_touch = "true"*) input signed [31:0] data_in_31,
    (*dont_touch = "true"*) input signed [31:0] data_in_32,
    (*dont_touch = "true"*) input signed [31:0] data_in_33,
    (*dont_touch = "true"*) input signed [31:0] data_in_34,
    (*dont_touch = "true"*) input signed [31:0] data_in_35,
    (*dont_touch = "true"*) input signed [31:0] data_in_36,
    (*dont_touch = "true"*) input signed [31:0] data_in_37,
    (*dont_touch = "true"*) input signed [31:0] data_in_38,
    (*dont_touch = "true"*) input signed [31:0] data_in_39,
    (*dont_touch = "true"*) input signed [31:0] data_in_40,
    (*dont_touch = "true"*) input signed [31:0] data_in_41,
    (*dont_touch = "true"*) input signed [31:0] data_in_42,
    (*dont_touch = "true"*) input signed [31:0] data_in_43,
    (*dont_touch = "true"*) input signed [31:0] data_in_44,
    (*dont_touch = "true"*) input signed [31:0] data_in_45,
    (*dont_touch = "true"*) input signed [31:0] data_in_46,
    (*dont_touch = "true"*) input signed [31:0] data_in_47,
    (*dont_touch = "true"*) input signed [31:0] data_in_48,
    (*dont_touch = "true"*) input signed [31:0] data_in_49,
    (*dont_touch = "true"*) input signed [31:0] data_in_50,
    (*dont_touch = "true"*) input signed [31:0] data_in_51,
    (*dont_touch = "true"*) input signed [31:0] data_in_52,
    (*dont_touch = "true"*) input signed [31:0] data_in_53,
    (*dont_touch = "true"*) input signed [31:0] data_in_54,
    (*dont_touch = "true"*) input signed [31:0] data_in_55,
    (*dont_touch = "true"*) input signed [31:0] data_in_56,
    (*dont_touch = "true"*) input signed [31:0] data_in_57,
    (*dont_touch = "true"*) input signed [31:0] data_in_58,
    (*dont_touch = "true"*) input signed [31:0] data_in_59,
    (*dont_touch = "true"*) input signed [31:0] data_in_60,
    (*dont_touch = "true"*) input signed [31:0] data_in_61,
    (*dont_touch = "true"*) input signed [31:0] data_in_62,
    (*dont_touch = "true"*) input signed [31:0] data_in_63,

    input [7:0] preload_weights_1,
	
	input [5:0] preload_biases_addr,
	input preload_biases_en,
	input [7:0] preload_biases_1,

    output reg signed [31:0] data_out_0,
	output reg signed [31:0] data_out_1,
	output reg signed [31:0] data_out_2,
	output reg signed [31:0] data_out_3,
	output reg signed [31:0] data_out_4,
	output reg signed [31:0] data_out_5,
	output reg dense_done	
);

    // ============================
    // Pack input vector data_in[0..63]
    // ============================
    wire signed [31:0] data_in [63:0];
	reg signed [31:0] data_out_A0_A5 [5:0];
	reg weights_write_done_q,weights_write_done_qq,weights_write_done_qqq;
	reg [10:0] i;
	reg [5:0] j;
	reg [5:0] k;
	reg [5:0] t = 0;
	reg [6:0] b = 0;
	integer z = 0;
	
	reg signed [7:0] biases_q;
	reg bias_write_done_q,bias_write_done_qq,bias_write_done_qqq;
	reg signed [7:0] bias_data [5:0];
	
	wire signed [7:0] weights_A0_A5, biases;
    reg signed [7:0] weights_A0_A5_q ;
	wire weights_write_done, weights_done, bias_write_done, bias_done;

	
    assign data_in[0]  = data_in_00;
    assign data_in[1]  = data_in_01;
    assign data_in[2]  = data_in_02;
	assign data_in[3]  = data_in_03;
	assign data_in[4]  = data_in_04;
	assign data_in[5]  = data_in_05;
	assign data_in[6]  = data_in_06;
	assign data_in[7]  = data_in_07;
	assign data_in[8]  = data_in_08;
	assign data_in[9]  = data_in_09;
	assign data_in[10]  = data_in_10;
	assign data_in[11]  = data_in_11;
	assign data_in[12]  = data_in_12;
	assign data_in[13]  = data_in_13;
	assign data_in[14]  = data_in_14;
	assign data_in[15]  = data_in_15;
	assign data_in[16]  = data_in_16;
	assign data_in[17]  = data_in_17;
	assign data_in[18]  = data_in_18;
	assign data_in[19]  = data_in_19;
	assign data_in[20]  = data_in_20;
	assign data_in[21]  = data_in_21;
	assign data_in[22]  = data_in_22;
	assign data_in[23]  = data_in_23;
	assign data_in[24]  = data_in_24;
	assign data_in[25]  = data_in_25;
	assign data_in[26]  = data_in_26;
	assign data_in[27]  = data_in_27;
	assign data_in[28]  = data_in_28;
	assign data_in[29]  = data_in_29;
	assign data_in[30]  = data_in_30;
	assign data_in[31]  = data_in_31;
	assign data_in[32]  = data_in_32;
	assign data_in[33]  = data_in_33;
	assign data_in[34]  = data_in_34;
	assign data_in[35]  = data_in_35;
	assign data_in[36]  = data_in_36;
	assign data_in[37]  = data_in_37;
	assign data_in[38]  = data_in_38;
	assign data_in[39]  = data_in_39;
	assign data_in[40]  = data_in_40;
	assign data_in[41]  = data_in_41;
	assign data_in[42]  = data_in_42;
	assign data_in[43]  = data_in_43;
	assign data_in[44]  = data_in_44;
	assign data_in[45]  = data_in_45;
	assign data_in[46]  = data_in_46;
	assign data_in[47]  = data_in_47;
	assign data_in[48]  = data_in_48;
	assign data_in[49]  = data_in_49;
	assign data_in[50]  = data_in_50;
	assign data_in[51]  = data_in_51;
	assign data_in[52]  = data_in_52;
	assign data_in[53]  = data_in_53;
	assign data_in[54]  = data_in_54;
	assign data_in[55]  = data_in_55;
	assign data_in[56]  = data_in_56;
	assign data_in[57]  = data_in_57;
	assign data_in[58]  = data_in_58;
	assign data_in[59]  = data_in_59;
	assign data_in[60]  = data_in_60;
	assign data_in[61]  = data_in_61;
	assign data_in[62]  = data_in_62;
    assign data_in[63] = data_in_63;
    
    (* dont_touch = "true" *) L_4_1_0_Weights m0 (
        .clk(clk), .rst(reset),
        .preload_data1(preload_weights_1),
        .read_data_01(weights_A0_A5),
        .done(weights_done),
		.start(start),
        .write_done(weights_write_done)
    );
	/*L_4_1_1_Biases m2 ( .clk(clk), .rst(reset), 
		// PRELOAD PORTS 
		.preload_en(preload_biases_en), 
		.preload_addr(preload_biases_addr), 
		.preload_data1(preload_biases_1), 
		.read_data_01(biases), 
		.done(bias_done), 
		.write_done(bias_write_done) );*/   
	
	always@(posedge clk)
	begin
		if(reset)
		begin
			i <= 0;
			j <= 0;
			k <= 0;
			dense_done <= 0;
			weights_write_done_q   <= 0;
			weights_write_done_qq  <= 0;
			weights_write_done_qqq <= 0;
			data_out_A0_A5[0] <= 0;
			data_out_A0_A5[1] <= 0;
			data_out_A0_A5[2] <= 0;
			data_out_A0_A5[3] <= 0;
			data_out_A0_A5[4] <= 0;
			data_out_A0_A5[5] <= 0;
		end
		else
		begin
			weights_write_done_q <= weights_write_done;
			weights_write_done_qq <= weights_write_done_q;
			weights_write_done_qqq <= weights_write_done_qq;
			weights_A0_A5_q <= weights_A0_A5;
			dense_done <= 0;
			if(weights_write_done_qqq & start)
			begin
				if(i<384)
				begin
					data_out_A0_A5[j] <= data_out_A0_A5[j] + (data_in[k] * weights_A0_A5_q);
					i <= i + 1;
					if(k == 63)
					begin
						k <= 0;
						if(i != 384)
						begin
							j <= j + 1;
						end
					end
					else
					begin
						k <= k + 1;
					end
				end
				else
				begin
					//i <= 0;
					//j <= 0;
					//k <= 0;
					dense_done <= 1;
				end
			end	
		end
	end
	
	always@(posedge clk)
	begin
		biases_q <= biases;
		bias_write_done_q <= bias_write_done;
		bias_write_done_qq <= bias_write_done_q;
		bias_write_done_qqq <= bias_write_done_qq;			
		if(reset)
		begin
			b <= 0;
			bias_data[0] <= 0;
			bias_data[1] <= 0;
			bias_data[2] <= 0;
			bias_data[3] <= 0;
			bias_data[4] <= 0;
			bias_data[5] <= 0;
		end
		else if(preload_biases_en)
		begin
			if(b < 6)
			begin
				bias_data[b] <= preload_biases_1;
				b <= b + 1;
			end
		end		
	end	
	
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			data_out_0 <= 0;
			data_out_1 <= 0;
			data_out_2 <= 0;
			data_out_3 <= 0;
			data_out_4 <= 0;
			data_out_5 <= 0;
		end
		else
		begin			
			data_out_0 <= data_out_A0_A5[0] + bias_data[0];
			data_out_1 <= data_out_A0_A5[1] + bias_data[1];
			data_out_2 <= data_out_A0_A5[2] + bias_data[2];
			data_out_3 <= data_out_A0_A5[3] + bias_data[3];
			data_out_4 <= data_out_A0_A5[4] + bias_data[4];
			data_out_5 <= data_out_A0_A5[5] + bias_data[5];			
		end
	end
endmodule

