`timescale 1ns/1ps
module L_3_0_0_Dense1(
    input clk,
    input reset,

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

    input preload_weights_en,
    input [9:0] preload_weights_addr,
    input [7:0] preload_weights_1,
    input [7:0] preload_weights_2,
    input [7:0] preload_weights_3,
    input [7:0] preload_weights_4,
	
	input [5:0] preload_biases_addr,
	input preload_biases_en,
	input [7:0] preload_biases_1,

    output wire signed [31:0] product_00,
    output wire signed [31:0] product_01,
    output wire signed [31:0] product_02,
    output wire signed [31:0] product_03,
    output wire signed [31:0] product_04,
    output wire signed [31:0] product_05,
    output wire signed [31:0] product_06,
    output wire signed [31:0] product_07,
    output wire signed [31:0] product_08,
    output wire signed [31:0] product_09,
    output wire signed [31:0] product_10,
    output wire signed [31:0] product_11,
    output wire signed [31:0] product_12,
    output wire signed [31:0] product_13,
    output wire signed [31:0] product_14,
    output wire signed [31:0] product_15,
    output wire signed [31:0] product_16,
    output wire signed [31:0] product_17,
    output wire signed [31:0] product_18,
    output wire signed [31:0] product_19,
    output wire signed [31:0] product_20,
    output wire signed [31:0] product_21,
    output wire signed [31:0] product_22,
    output wire signed [31:0] product_23,
    output wire signed [31:0] product_24,
    output wire signed [31:0] product_25,
    output wire signed [31:0] product_26,
    output wire signed [31:0] product_27,
    output wire signed [31:0] product_28,
    output wire signed [31:0] product_29,
    output wire signed [31:0] product_30,
    output wire signed [31:0] product_31,
    output wire signed [31:0] product_32,
    output wire signed [31:0] product_33,
    output wire signed [31:0] product_34,
    output wire signed [31:0] product_35,
    output wire signed [31:0] product_36,
    output wire signed [31:0] product_37,
    output wire signed [31:0] product_38,
    output wire signed [31:0] product_39,
    output wire signed [31:0] product_40,
    output wire signed [31:0] product_41,
    output wire signed [31:0] product_42,
    output wire signed [31:0] product_43,
    output wire signed [31:0] product_44,
    output wire signed [31:0] product_45,
    output wire signed [31:0] product_46,
    output wire signed [31:0] product_47,
    output wire signed [31:0] product_48,
    output wire signed [31:0] product_49,
    output wire signed [31:0] product_50,
    output wire signed [31:0] product_51,
    output wire signed [31:0] product_52,
    output wire signed [31:0] product_53,
    output wire signed [31:0] product_54,
    output wire signed [31:0] product_55,
    output wire signed [31:0] product_56,
    output wire signed [31:0] product_57,
    output wire signed [31:0] product_58,
    output wire signed [31:0] product_59,
    output wire signed [31:0] product_60,
    output wire signed [31:0] product_61,
    output wire signed [31:0] product_62,
    output wire signed [31:0] product_63,
	output reg dense_done	
);

    // ============================
    // Pack input vector data_in[0..63]
    // ============================
    wire signed [31:0] data_in [63:0];
	reg signed [31:0] data_out_A0_A15 [15:0];
	reg signed [31:0] data_out_A16_A31 [15:0];
	reg signed [31:0] data_out_A32_A47 [15:0];
	reg signed [31:0] data_out_A48_A63 [15:0];
	reg weights_write_done_q,weights_write_done_qq,weights_write_done_qqq;
	reg [10:0] i;
	reg [5:0] j;
	reg [5:0] k;
	reg [5:0] t = 0;
	reg [6:0] b = 0;
	
	reg signed [7:0] biases_q;
	reg bias_write_done_q,bias_write_done_qq,bias_write_done_qqq;
	reg signed [7:0] bias_data [63:0];
	
	wire signed [7:0] weights_A0_A15, weights_A16_A31, weights_A32_A47, weights_A48_A63, biases;
    reg signed [7:0] weights_A0_A15_q, weights_A16_A31_q, weights_A32_A47_q, weights_A48_A63_q;
	wire weights_write_done, weights_done, bias_write_done, bias_done;
	
	//reg [31:0] mult;

	
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
    
    (* dont_touch = "true" *) L_3_1_0_Weights m0 (
        .clk(clk), .rst(reset),
        .preload_en(preload_weights_en),
        .preload_addr(preload_weights_addr),
        .preload_data1(preload_weights_1),
        .preload_data2(preload_weights_2),
        .preload_data3(preload_weights_3),
        .preload_data4(preload_weights_4),
        .read_data_01(weights_A0_A15),
        .read_data_02(weights_A16_A31),
        .read_data_03(weights_A32_A47),
        .read_data_04(weights_A48_A63),
        .done(weights_done),
        .write_done(weights_write_done)
    );
	L_3_1_1_Biases m2 ( .clk(clk), .rst(reset), 
		// PRELOAD PORTS 
		.preload_en(preload_biases_en), 
		.preload_addr(preload_biases_addr), 
		.preload_data1(preload_biases_1), 
		.read_data_01(biases), 
		.done(bias_done), 
		.write_done(bias_write_done) );   
	
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
			data_out_A0_A15[0] <= 0;
			data_out_A0_A15[1] <= 0;
			data_out_A0_A15[2] <= 0;
			data_out_A0_A15[3] <= 0;
			data_out_A0_A15[4] <= 0;
			data_out_A0_A15[5] <= 0;
			data_out_A0_A15[6] <= 0;
			data_out_A0_A15[7] <= 0;
			data_out_A0_A15[8] <= 0;
			data_out_A0_A15[9] <= 0;
			data_out_A0_A15[10] <= 0;
			data_out_A0_A15[11] <= 0;
			data_out_A0_A15[12] <= 0;
			data_out_A0_A15[13] <= 0;
			data_out_A0_A15[14] <= 0;
			data_out_A0_A15[15] <= 0;
			data_out_A16_A31[0] <= 0;
			data_out_A16_A31[1] <= 0;
			data_out_A16_A31[2] <= 0;
			data_out_A16_A31[3] <= 0;
			data_out_A16_A31[4] <= 0;
			data_out_A16_A31[5] <= 0;
			data_out_A16_A31[6] <= 0;
			data_out_A16_A31[7] <= 0;
			data_out_A16_A31[8] <= 0;
			data_out_A16_A31[9] <= 0;
			data_out_A16_A31[10] <= 0;
			data_out_A16_A31[11] <= 0;
			data_out_A16_A31[12] <= 0;
			data_out_A16_A31[13] <= 0;
			data_out_A16_A31[14] <= 0;
			data_out_A16_A31[15] <= 0;
			data_out_A32_A47[0] <= 0;
			data_out_A32_A47[1] <= 0;
			data_out_A32_A47[2] <= 0;
			data_out_A32_A47[3] <= 0;
			data_out_A32_A47[4] <= 0;
			data_out_A32_A47[5] <= 0;
			data_out_A32_A47[6] <= 0;
			data_out_A32_A47[7] <= 0;
			data_out_A32_A47[8] <= 0;
			data_out_A32_A47[9] <= 0;
			data_out_A32_A47[10] <= 0;
			data_out_A32_A47[11] <= 0;
			data_out_A32_A47[12] <= 0;
			data_out_A32_A47[13] <= 0;
			data_out_A32_A47[14] <= 0;
			data_out_A32_A47[15] <= 0;
			data_out_A48_A63[0] <= 0;
			data_out_A48_A63[1] <= 0;
			data_out_A48_A63[2] <= 0;
			data_out_A48_A63[3] <= 0;
			data_out_A48_A63[4] <= 0;
			data_out_A48_A63[5] <= 0;
			data_out_A48_A63[6] <= 0;
			data_out_A48_A63[7] <= 0;
			data_out_A48_A63[8] <= 0;
			data_out_A48_A63[9] <= 0;
			data_out_A48_A63[10] <= 0;
			data_out_A48_A63[11] <= 0;
			data_out_A48_A63[12] <= 0;
			data_out_A48_A63[13] <= 0;
			data_out_A48_A63[14] <= 0;
			data_out_A48_A63[15] <= 0;					
		end
		else
		begin
			weights_write_done_q <= weights_write_done;
			weights_write_done_qq <= weights_write_done_q;
			weights_write_done_qqq <= weights_write_done_qq;
			weights_A0_A15_q <= weights_A0_A15;
			weights_A16_A31_q <= weights_A16_A31;
			weights_A32_A47_q <= weights_A32_A47;
			weights_A48_A63_q <= weights_A48_A63;
			dense_done <= 0;
			if(weights_write_done_qqq)
			begin
				if(i<1024)
				begin
					data_out_A0_A15[j] <= data_out_A0_A15[j] + (data_in[k] * weights_A0_A15_q);
					//mult <= data_in[k] * weights_A0_A15_q;
					data_out_A16_A31[j] <= data_out_A16_A31[j] + (data_in[k] * weights_A16_A31_q);
					data_out_A32_A47[j] <= data_out_A32_A47[j] + (data_in[k] * weights_A32_A47_q);
					data_out_A48_A63[j] <= data_out_A48_A63[j] + (data_in[k] * weights_A48_A63_q);
					i <= i + 1;
					if(k == 63)
					begin
						k <= 0;
						if(i != 1023)
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
			bias_data[6] <= 0;
			bias_data[7] <= 0;
			bias_data[8] <= 0;
			bias_data[9] <= 0;
			bias_data[10] <= 0;
			bias_data[11] <= 0;
			bias_data[12] <= 0;
			bias_data[13] <= 0;
			bias_data[14] <= 0;
			bias_data[15] <= 0;
			bias_data[16] <= 0;
			bias_data[17] <= 0;
			bias_data[18] <= 0;
			bias_data[19] <= 0;
			bias_data[20] <= 0;
			bias_data[21] <= 0;
			bias_data[22] <= 0;
			bias_data[23] <= 0;
			bias_data[24] <= 0;
			bias_data[25] <= 0;
			bias_data[26] <= 0;
			bias_data[27] <= 0;
			bias_data[28] <= 0;
			bias_data[29] <= 0;
			bias_data[30] <= 0;
			bias_data[31] <= 0;
			bias_data[32] <= 0;
			bias_data[33] <= 0;
			bias_data[34] <= 0;
			bias_data[35] <= 0;
			bias_data[36] <= 0;
			bias_data[37] <= 0;
			bias_data[38] <= 0;
			bias_data[39] <= 0;
			bias_data[40] <= 0;
			bias_data[41] <= 0;
			bias_data[42] <= 0;
			bias_data[43] <= 0;
			bias_data[44] <= 0;
			bias_data[45] <= 0;
			bias_data[46] <= 0;
			bias_data[47] <= 0;
			bias_data[48] <= 0;
			bias_data[49] <= 0;
			bias_data[50] <= 0;
			bias_data[51] <= 0;
			bias_data[52] <= 0;
			bias_data[53] <= 0;
			bias_data[54] <= 0;
			bias_data[55] <= 0;
			bias_data[56] <= 0;
			bias_data[57] <= 0;
			bias_data[58] <= 0;
			bias_data[59] <= 0;
			bias_data[60] <= 0;
			bias_data[61] <= 0;
			bias_data[62] <= 0;
			bias_data[63] <= 0;
		end
		else if(bias_write_done_qqq)
		begin
			if(b < 64)
			begin
				bias_data[b] <= biases_q;
				b <= b + 1;
			end
		end
		else
		begin			
			b <= 0;
			bias_data[0] <= bias_data[0];
			bias_data[1] <= bias_data[1];
			bias_data[2] <= bias_data[2];
			bias_data[3] <= bias_data[3];
			bias_data[4] <= bias_data[4];
			bias_data[5] <= bias_data[5];
			bias_data[6] <= bias_data[6];
			bias_data[7] <= bias_data[7];
			bias_data[8] <= bias_data[8];
			bias_data[9] <= bias_data[9];
			bias_data[10] <= bias_data[10];
			bias_data[11] <= bias_data[11];
			bias_data[12] <= bias_data[12];
			bias_data[13] <= bias_data[13];
			bias_data[14] <= bias_data[14];
			bias_data[15] <= bias_data[15];
			bias_data[16] <= bias_data[16];
			bias_data[17] <= bias_data[17];
			bias_data[18] <= bias_data[18];
			bias_data[19] <= bias_data[19];
			bias_data[20] <= bias_data[20];
			bias_data[21] <= bias_data[21];
			bias_data[22] <= bias_data[22];
			bias_data[23] <= bias_data[23];
			bias_data[24] <= bias_data[24];
			bias_data[25] <= bias_data[25];
			bias_data[26] <= bias_data[26];
			bias_data[27] <= bias_data[27];
			bias_data[28] <= bias_data[28];
			bias_data[29] <= bias_data[29];
			bias_data[30] <= bias_data[30];
			bias_data[31] <= bias_data[31];
			bias_data[32] <= bias_data[32];
			bias_data[33] <= bias_data[33];
			bias_data[34] <= bias_data[34];
			bias_data[35] <= bias_data[35];
			bias_data[36] <= bias_data[36];
			bias_data[37] <= bias_data[37];
			bias_data[38] <= bias_data[38];
			bias_data[39] <= bias_data[39];
			bias_data[40] <= bias_data[40];
			bias_data[41] <= bias_data[41];
			bias_data[42] <= bias_data[42];
			bias_data[43] <= bias_data[43];
			bias_data[44] <= bias_data[44];
			bias_data[45] <= bias_data[45];
			bias_data[46] <= bias_data[46];
			bias_data[47] <= bias_data[47];
			bias_data[48] <= bias_data[48];
			bias_data[49] <= bias_data[49];
			bias_data[50] <= bias_data[50];
			bias_data[51] <= bias_data[51];
			bias_data[52] <= bias_data[52];
			bias_data[53] <= bias_data[53];
			bias_data[54] <= bias_data[54];
			bias_data[55] <= bias_data[55];
			bias_data[56] <= bias_data[56];
			bias_data[57] <= bias_data[57];
			bias_data[58] <= bias_data[58];
			bias_data[59] <= bias_data[59];
			bias_data[60] <= bias_data[60];
			bias_data[61] <= bias_data[61];
			bias_data[62] <= bias_data[62];
			bias_data[63] <= bias_data[63];
		end
	end
	
	assign product_00 = data_out_A0_A15[0] + bias_data[0];
	assign product_01 = data_out_A0_A15[1] + bias_data[1];
	assign product_02 = data_out_A0_A15[2] + bias_data[2];
	assign product_03 = data_out_A0_A15[3] + bias_data[3];
	assign product_04 = data_out_A0_A15[4] + bias_data[4];
	assign product_05 = data_out_A0_A15[5] + bias_data[5];
	assign product_06 = data_out_A0_A15[6] + bias_data[6];
	assign product_07 = data_out_A0_A15[7] + bias_data[7];
	assign product_08 = data_out_A0_A15[8] + bias_data[8];
	assign product_09 = data_out_A0_A15[9] + bias_data[9];
	assign product_10 = data_out_A0_A15[10] + bias_data[10];
	assign product_11 = data_out_A0_A15[11] + bias_data[11];
	assign product_12 = data_out_A0_A15[12] + bias_data[12];
	assign product_13 = data_out_A0_A15[13] + bias_data[13];
	assign product_14 = data_out_A0_A15[14] + bias_data[14];
	assign product_15 = data_out_A0_A15[15] + bias_data[15];
	assign product_16 = data_out_A16_A31[0] + bias_data[16];
	assign product_17 = data_out_A16_A31[1] + bias_data[17];
	assign product_18 = data_out_A16_A31[2] + bias_data[18];
	assign product_19 = data_out_A16_A31[3] + bias_data[19];
	assign product_20 = data_out_A16_A31[4] + bias_data[20];
	assign product_21 = data_out_A16_A31[5] + bias_data[21];
	assign product_22 = data_out_A16_A31[6] + bias_data[22];
	assign product_23 = data_out_A16_A31[7] + bias_data[23];
	assign product_24 = data_out_A16_A31[8] + bias_data[24];
	assign product_25 = data_out_A16_A31[9] + bias_data[25];
	assign product_26 = data_out_A16_A31[10] + bias_data[26];
	assign product_27 = data_out_A16_A31[11] + bias_data[27];
	assign product_28 = data_out_A16_A31[12] + bias_data[28];
	assign product_29 = data_out_A16_A31[13] + bias_data[29];
	assign product_30 = data_out_A16_A31[14] + bias_data[30];
	assign product_31 = data_out_A16_A31[15] + bias_data[31];
	assign product_32 = data_out_A32_A47[0] + bias_data[32];
	assign product_33 = data_out_A32_A47[1] + bias_data[33];
	assign product_34 = data_out_A32_A47[2] + bias_data[34];
	assign product_35 = data_out_A32_A47[3] + bias_data[35];
	assign product_36 = data_out_A32_A47[4] + bias_data[36];
	assign product_37 = data_out_A32_A47[5] + bias_data[37];
	assign product_38 = data_out_A32_A47[6] + bias_data[38];
	assign product_39 = data_out_A32_A47[7] + bias_data[39];
	assign product_40 = data_out_A32_A47[8] + bias_data[40];
	assign product_41 = data_out_A32_A47[9] + bias_data[41];
	assign product_42 = data_out_A32_A47[10] + bias_data[42];
	assign product_43 = data_out_A32_A47[11] + bias_data[43];
	assign product_44 = data_out_A32_A47[12] + bias_data[44];
	assign product_45 = data_out_A32_A47[13] + bias_data[45];
	assign product_46 = data_out_A32_A47[14] + bias_data[46];
	assign product_47 = data_out_A32_A47[15] + bias_data[47];
	assign product_48 = data_out_A48_A63[0] + bias_data[48];
	assign product_49 = data_out_A48_A63[1] + bias_data[49];
	assign product_50 = data_out_A48_A63[2] + bias_data[50];
	assign product_51 = data_out_A48_A63[3] + bias_data[51];
	assign product_52 = data_out_A48_A63[4] + bias_data[52];
	assign product_53 = data_out_A48_A63[5] + bias_data[53];
	assign product_54 = data_out_A48_A63[6] + bias_data[54];
	assign product_55 = data_out_A48_A63[7] + bias_data[55];
	assign product_56 = data_out_A48_A63[8] + bias_data[56];
	assign product_57 = data_out_A48_A63[9] + bias_data[57];
	assign product_58 = data_out_A48_A63[10] + bias_data[58];
	assign product_59 = data_out_A48_A63[11] + bias_data[59];
	assign product_60 = data_out_A48_A63[12] + bias_data[60];
	assign product_61 = data_out_A48_A63[13] + bias_data[61];
	assign product_62 = data_out_A48_A63[14] + bias_data[62];
	assign product_63 = data_out_A48_A63[15] + bias_data[63];
endmodule
