`timescale 1ns/1ps
module L_1_0_0_Main(
	input clk,
	input reset,
	input signed [7:0] data_in_00, 
	input signed [7:0] data_in_01, 
    input signed [7:0] data_in_02, 
    input signed [7:0] data_in_03, 
    input signed [7:0] data_in_04, 
    input signed [7:0] data_in_05,
	input input_start_Layer_1,
	
	input [7:0] preload_weights_1,
	
	input [7:0] preload_biases_1,
	
	(* dont_touch = "true" *) output [17:0] data_out_01, 
	(* dont_touch = "true" *) output [17:0] data_out_02, 
	(* dont_touch = "true" *) output [17:0] data_out_03, 
	(* dont_touch = "true" *) output [17:0] data_out_04, 
	(* dont_touch = "true" *) output [17:0] data_out_05, 
	(* dont_touch = "true" *) output [17:0] data_out_06, 
	(* dont_touch = "true" *) output [17:0] data_out_07, 
	(* dont_touch = "true" *) output [17:0] data_out_08, 
	(* dont_touch = "true" *) output [17:0] data_out_09, 
	(* dont_touch = "true" *) output [17:0] data_out_10, 
	(* dont_touch = "true" *) output [17:0] data_out_11, 
	(* dont_touch = "true" *) output [17:0] data_out_12, 
	(* dont_touch = "true" *) output [17:0] data_out_13, 
	(* dont_touch = "true" *) output [17:0] data_out_14, 
	(* dont_touch = "true" *) output [17:0] data_out_15, 
	(* dont_touch = "true" *) output [17:0] data_out_16, 
	(* dont_touch = "true" *) output [17:0] data_out_17, 
	(* dont_touch = "true" *) output [17:0] data_out_18, 
	(* dont_touch = "true" *) output [17:0] data_out_19, 
	(* dont_touch = "true" *) output [17:0] data_out_20, 
	(* dont_touch = "true" *) output [17:0] data_out_21, 
	(* dont_touch = "true" *) output [17:0] data_out_22, 
	(* dont_touch = "true" *) output [17:0] data_out_23, 
	(* dont_touch = "true" *) output [17:0] data_out_24, 
	(* dont_touch = "true" *) output [17:0] data_out_25, 
	(* dont_touch = "true" *) output [17:0] data_out_26, 
	(* dont_touch = "true" *) output [17:0] data_out_27, 
	(* dont_touch = "true" *) output [17:0] data_out_28, 
	(* dont_touch = "true" *) output [17:0] data_out_29, 
	(* dont_touch = "true" *) output [17:0] data_out_30, 
	(* dont_touch = "true" *) output [17:0] data_out_31, 
	(* dont_touch = "true" *) output [17:0] data_out_32,
	(* dont_touch = "true" *) output wire weights_ready
	);
	
	wire [1:0] sel_wire;//Just For Testing//0
	wire signed [7:0] sram_data_out_wire;
	wire signed [7:0] sram_bias_out_wire;
	(* dont_touch = "true" *) wire signed [7:0] w00 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w01 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w02 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w03 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w04 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w05 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w06 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w07 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w08 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w09 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w10 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] w11 [31:0];
	(* dont_touch = "true" *) wire signed [7:0] wa [1023:0];
	(* dont_touch = "true" *) wire signed [7:0] ba [15:0];
	(* dont_touch = "true" *) wire signed [7:0] b [31:0];
	wire weights_done, weights_write_done, bias_done, bias_write_done, bias_ready; 
	reg weights_ready_q, weights_ready_qq, weights_ready_qqq;
	reg input_start_Layer_1_q, input_start_Layer_1_qq, input_start_Layer_1_qqq, input_start_Layer_1_qqqq;
	wire signed [17:0] dout_wire [31:0];
	wire signed [17:0] dout_wire_p [31:0];
	reg signed [17:0] dout_wire_q [31:0];
	(* dont_touch = "true" *) wire [17:0]  wxa [31:0];
	(* dont_touch = "true" *) wire [17:0]  wxa_p [31:0];
	(* dont_touch = "true" *) wire [17:0]  wxa_q [31:0];
	(* dont_touch = "true" *) reg [17:0]  wxa_qq [31:0];
	wire signed [17:0] data_out [32:1];
	wire signed [17:0] data_out1 [32:1];
	reg [10:0] counter;
	
	(* dont_touch = "true" *) L_1_1_0_SRAM m0 (
		.clk(clk),
		.rst(reset),
		// PRELOAD PORTS
		.preload_data1(preload_weights_1),
		.read_data_01(sram_data_out_wire),
		.done(weights_done),
		.write_done(weights_write_done)
	);
	
	(* dont_touch = "true" *) L_1_1_1_Weight_Loader m1 (
		.clk(clk),
		.reset(reset),
		.write_done(weights_write_done),
		.data_in(sram_data_out_wire),
		.w00_00(w00[0]), .w00_01(w01[0]), .w00_02(w02[0]), .w00_03(w03[0]),
		.w00_04(w04[0]), .w00_05(w05[0]), .w00_06(w06[0]), .w00_07(w07[0]),
		.w00_08(w08[0]), .w00_09(w09[0]), .w00_10(w10[0]), .w00_11(w11[0]),
		.w01_00(w00[1]), .w01_01(w01[1]), .w01_02(w02[1]), .w01_03(w03[1]),
		.w01_04(w04[1]), .w01_05(w05[1]), .w01_06(w06[1]), .w01_07(w07[1]),
		.w01_08(w08[1]), .w01_09(w09[1]), .w01_10(w10[1]), .w01_11(w11[1]),
		.w02_00(w00[2]), .w02_01(w01[2]), .w02_02(w02[2]), .w02_03(w03[2]),
		.w02_04(w04[2]), .w02_05(w05[2]), .w02_06(w06[2]), .w02_07(w07[2]),
		.w02_08(w08[2]), .w02_09(w09[2]), .w02_10(w10[2]), .w02_11(w11[2]),
		.w03_00(w00[3]), .w03_01(w01[3]), .w03_02(w02[3]), .w03_03(w03[3]),
		.w03_04(w04[3]), .w03_05(w05[3]), .w03_06(w06[3]), .w03_07(w07[3]),
		.w03_08(w08[3]), .w03_09(w09[3]), .w03_10(w10[3]), .w03_11(w11[3]),
		.w04_00(w00[4]), .w04_01(w01[4]), .w04_02(w02[4]), .w04_03(w03[4]),
		.w04_04(w04[4]), .w04_05(w05[4]), .w04_06(w06[4]), .w04_07(w07[4]),
		.w04_08(w08[4]), .w04_09(w09[4]), .w04_10(w10[4]), .w04_11(w11[4]),
		.w05_00(w00[5]), .w05_01(w01[5]), .w05_02(w02[5]), .w05_03(w03[5]),
		.w05_04(w04[5]), .w05_05(w05[5]), .w05_06(w06[5]), .w05_07(w07[5]),
		.w05_08(w08[5]), .w05_09(w09[5]), .w05_10(w10[5]), .w05_11(w11[5]),
		.w06_00(w00[6]), .w06_01(w01[6]), .w06_02(w02[6]), .w06_03(w03[6]),
		.w06_04(w04[6]), .w06_05(w05[6]), .w06_06(w06[6]), .w06_07(w07[6]),
		.w06_08(w08[6]), .w06_09(w09[6]), .w06_10(w10[6]), .w06_11(w11[6]),
		.w07_00(w00[7]), .w07_01(w01[7]), .w07_02(w02[7]), .w07_03(w03[7]),
		.w07_04(w04[7]), .w07_05(w05[7]), .w07_06(w06[7]), .w07_07(w07[7]),
		.w07_08(w08[7]), .w07_09(w09[7]), .w07_10(w10[7]), .w07_11(w11[7]),
		.w08_00(w00[8]), .w08_01(w01[8]), .w08_02(w02[8]), .w08_03(w03[8]),
		.w08_04(w04[8]), .w08_05(w05[8]), .w08_06(w06[8]), .w08_07(w07[8]),
		.w08_08(w08[8]), .w08_09(w09[8]), .w08_10(w10[8]), .w08_11(w11[8]),
		.w09_00(w00[9]), .w09_01(w01[9]), .w09_02(w02[9]), .w09_03(w03[9]),
		.w09_04(w04[9]), .w09_05(w05[9]), .w09_06(w06[9]), .w09_07(w07[9]),
		.w09_08(w08[9]), .w09_09(w09[9]), .w09_10(w10[9]), .w09_11(w11[9]),
		.w10_00(w00[10]), .w10_01(w01[10]), .w10_02(w02[10]), .w10_03(w03[10]),
		.w10_04(w04[10]), .w10_05(w05[10]), .w10_06(w06[10]), .w10_07(w07[10]),
		.w10_08(w08[10]), .w10_09(w09[10]), .w10_10(w10[10]), .w10_11(w11[10]),
		.w11_00(w00[11]), .w11_01(w01[11]), .w11_02(w02[11]), .w11_03(w03[11]),
		.w11_04(w04[11]), .w11_05(w05[11]), .w11_06(w06[11]), .w11_07(w07[11]),
		.w11_08(w08[11]), .w11_09(w09[11]), .w11_10(w10[11]), .w11_11(w11[11]),
		.w12_00(w00[12]), .w12_01(w01[12]), .w12_02(w02[12]), .w12_03(w03[12]),
		.w12_04(w04[12]), .w12_05(w05[12]), .w12_06(w06[12]), .w12_07(w07[12]),
		.w12_08(w08[12]), .w12_09(w09[12]), .w12_10(w10[12]), .w12_11(w11[12]),
		.w13_00(w00[13]), .w13_01(w01[13]), .w13_02(w02[13]), .w13_03(w03[13]),
		.w13_04(w04[13]), .w13_05(w05[13]), .w13_06(w06[13]), .w13_07(w07[13]),
		.w13_08(w08[13]), .w13_09(w09[13]), .w13_10(w10[13]), .w13_11(w11[13]),
		.w14_00(w00[14]), .w14_01(w01[14]), .w14_02(w02[14]), .w14_03(w03[14]),
		.w14_04(w04[14]), .w14_05(w05[14]), .w14_06(w06[14]), .w14_07(w07[14]),
		.w14_08(w08[14]), .w14_09(w09[14]), .w14_10(w10[14]), .w14_11(w11[14]),
		.w15_00(w00[15]), .w15_01(w01[15]), .w15_02(w02[15]), .w15_03(w03[15]),
		.w15_04(w04[15]), .w15_05(w05[15]), .w15_06(w06[15]), .w15_07(w07[15]),
		.w15_08(w08[15]), .w15_09(w09[15]), .w15_10(w10[15]), .w15_11(w11[15]),
		.w16_00(w00[16]), .w16_01(w01[16]), .w16_02(w02[16]), .w16_03(w03[16]),
		.w16_04(w04[16]), .w16_05(w05[16]), .w16_06(w06[16]), .w16_07(w07[16]),
		.w16_08(w08[16]), .w16_09(w09[16]), .w16_10(w10[16]), .w16_11(w11[16]),
		.w17_00(w00[17]), .w17_01(w01[17]), .w17_02(w02[17]), .w17_03(w03[17]),
		.w17_04(w04[17]), .w17_05(w05[17]), .w17_06(w06[17]), .w17_07(w07[17]),
		.w17_08(w08[17]), .w17_09(w09[17]), .w17_10(w10[17]), .w17_11(w11[17]),
		.w18_00(w00[18]), .w18_01(w01[18]), .w18_02(w02[18]), .w18_03(w03[18]),
		.w18_04(w04[18]), .w18_05(w05[18]), .w18_06(w06[18]), .w18_07(w07[18]),
		.w18_08(w08[18]), .w18_09(w09[18]), .w18_10(w10[18]), .w18_11(w11[18]),
		.w19_00(w00[19]), .w19_01(w01[19]), .w19_02(w02[19]), .w19_03(w03[19]),
		.w19_04(w04[19]), .w19_05(w05[19]), .w19_06(w06[19]), .w19_07(w07[19]),
		.w19_08(w08[19]), .w19_09(w09[19]), .w19_10(w10[19]), .w19_11(w11[19]),
		.w20_00(w00[20]), .w20_01(w01[20]), .w20_02(w02[20]), .w20_03(w03[20]),
		.w20_04(w04[20]), .w20_05(w05[20]), .w20_06(w06[20]), .w20_07(w07[20]),
		.w20_08(w08[20]), .w20_09(w09[20]), .w20_10(w10[20]), .w20_11(w11[20]),
		.w21_00(w00[21]), .w21_01(w01[21]), .w21_02(w02[21]), .w21_03(w03[21]),
		.w21_04(w04[21]), .w21_05(w05[21]), .w21_06(w06[21]), .w21_07(w07[21]),
		.w21_08(w08[21]), .w21_09(w09[21]), .w21_10(w10[21]), .w21_11(w11[21]),
		.w22_00(w00[22]), .w22_01(w01[22]), .w22_02(w02[22]), .w22_03(w03[22]),
		.w22_04(w04[22]), .w22_05(w05[22]), .w22_06(w06[22]), .w22_07(w07[22]),
		.w22_08(w08[22]), .w22_09(w09[22]), .w22_10(w10[22]), .w22_11(w11[22]),
		.w23_00(w00[23]), .w23_01(w01[23]), .w23_02(w02[23]), .w23_03(w03[23]),
		.w23_04(w04[23]), .w23_05(w05[23]), .w23_06(w06[23]), .w23_07(w07[23]),
		.w23_08(w08[23]), .w23_09(w09[23]), .w23_10(w10[23]), .w23_11(w11[23]),
		.w24_00(w00[24]), .w24_01(w01[24]), .w24_02(w02[24]), .w24_03(w03[24]),
		.w24_04(w04[24]), .w24_05(w05[24]), .w24_06(w06[24]), .w24_07(w07[24]),
		.w24_08(w08[24]), .w24_09(w09[24]), .w24_10(w10[24]), .w24_11(w11[24]),
		.w25_00(w00[25]), .w25_01(w01[25]), .w25_02(w02[25]), .w25_03(w03[25]),
		.w25_04(w04[25]), .w25_05(w05[25]), .w25_06(w06[25]), .w25_07(w07[25]),
		.w25_08(w08[25]), .w25_09(w09[25]), .w25_10(w10[25]), .w25_11(w11[25]),
		.w26_00(w00[26]), .w26_01(w01[26]), .w26_02(w02[26]), .w26_03(w03[26]),
		.w26_04(w04[26]), .w26_05(w05[26]), .w26_06(w06[26]), .w26_07(w07[26]),
		.w26_08(w08[26]), .w26_09(w09[26]), .w26_10(w10[26]), .w26_11(w11[26]),
		.w27_00(w00[27]), .w27_01(w01[27]), .w27_02(w02[27]), .w27_03(w03[27]),
		.w27_04(w04[27]), .w27_05(w05[27]), .w27_06(w06[27]), .w27_07(w07[27]),
		.w27_08(w08[27]), .w27_09(w09[27]), .w27_10(w10[27]), .w27_11(w11[27]),
		.w28_00(w00[28]), .w28_01(w01[28]), .w28_02(w02[28]), .w28_03(w03[28]),
		.w28_04(w04[28]), .w28_05(w05[28]), .w28_06(w06[28]), .w28_07(w07[28]),
		.w28_08(w08[28]), .w28_09(w09[28]), .w28_10(w10[28]), .w28_11(w11[28]),
		.w29_00(w00[29]), .w29_01(w01[29]), .w29_02(w02[29]), .w29_03(w03[29]),
		.w29_04(w04[29]), .w29_05(w05[29]), .w29_06(w06[29]), .w29_07(w07[29]),
		.w29_08(w08[29]), .w29_09(w09[29]), .w29_10(w10[29]), .w29_11(w11[29]),
		.w30_00(w00[30]), .w30_01(w01[30]), .w30_02(w02[30]), .w30_03(w03[30]),
		.w30_04(w04[30]), .w30_05(w05[30]), .w30_06(w06[30]), .w30_07(w07[30]),
		.w30_08(w08[30]), .w30_09(w09[30]), .w30_10(w10[30]), .w30_11(w11[30]),
		.w31_00(w00[31]), .w31_01(w01[31]), .w31_02(w02[31]), .w31_03(w03[31]),
		.w31_04(w04[31]), .w31_05(w05[31]), .w31_06(w06[31]), .w31_07(w07[31]),
		.w31_08(w08[31]), .w31_09(w09[31]), .w31_10(w10[31]), .w31_11(w11[31]),
		.done(weights_ready)
	);
	
	(* dont_touch = "true" *) L_1_2_0_SRAM_Biases m2 (
		.clk(clk),
		.rst(reset),
		// PRELOAD PORTS
		.preload_data1(preload_biases_1),
		.read_data_01(sram_bias_out_wire),
		.done(bias_done),
		.write_done(bias_write_done)
	);
	
	(* dont_touch = "true" *) L_1_2_1_Bias_Loader	m3 (.clk(clk), .reset(reset), .write_done(bias_write_done), .data_in(sram_bias_out_wire),
		.bias00(b[0]), .bias01(b[1]), .bias02(b[2]), .bias03(b[3]), 
		.bias04(b[4]), .bias05(b[5]), .bias06(b[6]), .bias07(b[7]), 
		.bias08(b[8]), .bias09(b[9]), .bias10(b[10]), .bias11(b[11]), 
		.bias12(b[12]), .bias13(b[13]), .bias14(b[14]), .bias15(b[15]), 
		.bias16(b[16]), .bias17(b[17]), .bias18(b[18]), .bias19(b[19]), 
		.bias20(b[20]), .bias21(b[21]), .bias22(b[22]), .bias23(b[23]), 
		.bias24(b[24]), .bias25(b[25]), .bias26(b[26]), .bias27(b[27]), 
		.bias28(b[28]), .bias29(b[29]), .bias30(b[30]), .bias31(b[31]), 
		.done(bias_ready)
	);
	
	genvar i;	 
	generate
		for(i = 0; i < 32; i = i + 1)
		begin
			(* dont_touch = "true" *) L_1_3_1_Filter m4 (.clk(clk), .reset(reset), .bias(b[i]),
				.ch00(data_in_00), .ch01(data_in_01), .ch02(data_in_02), .ch03(data_in_03), 
				.ch04(data_in_04), .ch05(data_in_05), .weights_ready(weights_ready),
				.w00(w00[i]), .w01(w01[i]), .w02(w02[i]), .w03(w03[i]),
				.w04(w04[i]), .w05(w05[i]), .w06(w06[i]), .w07(w07[i]),
				.w08(w08[i]), .w09(w09[i]), .w10(w10[i]), .w11(w11[i]),
				.result_p(dout_wire[i])
			);
		end
	endgenerate
	
	//pipeline
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			dout_wire_q[00] <= 0;
			dout_wire_q[01] <= 0;
			dout_wire_q[02] <= 0;
			dout_wire_q[03] <= 0;
			dout_wire_q[04] <= 0;
			dout_wire_q[05] <= 0;
			dout_wire_q[06] <= 0;
			dout_wire_q[07] <= 0;
			dout_wire_q[08] <= 0;
			dout_wire_q[09] <= 0;
			dout_wire_q[10] <= 0;
			dout_wire_q[11] <= 0;
			dout_wire_q[12] <= 0;
			dout_wire_q[13] <= 0;
			dout_wire_q[14] <= 0;
			dout_wire_q[15] <= 0;
			dout_wire_q[16] <= 0;
			dout_wire_q[17] <= 0;
			dout_wire_q[18] <= 0;
			dout_wire_q[19] <= 0;
			dout_wire_q[20] <= 0;
			dout_wire_q[21] <= 0;
			dout_wire_q[22] <= 0;
			dout_wire_q[23] <= 0;
			dout_wire_q[24] <= 0;
			dout_wire_q[25] <= 0;
			dout_wire_q[26] <= 0;
			dout_wire_q[27] <= 0;
			dout_wire_q[28] <= 0;
			dout_wire_q[29] <= 0;
			dout_wire_q[30] <= 0;
			dout_wire_q[31] <= 0;
		end
		else
		begin
			dout_wire_q[00] <= dout_wire[00];
			dout_wire_q[01] <= dout_wire[01];
			dout_wire_q[02] <= dout_wire[02];
			dout_wire_q[03] <= dout_wire[03];
			dout_wire_q[04] <= dout_wire[04];
			dout_wire_q[05] <= dout_wire[05];
			dout_wire_q[06] <= dout_wire[06];
			dout_wire_q[07] <= dout_wire[07];
			dout_wire_q[08] <= dout_wire[08];
			dout_wire_q[09] <= dout_wire[09];
			dout_wire_q[10] <= dout_wire[10];
			dout_wire_q[11] <= dout_wire[11];
			dout_wire_q[12] <= dout_wire[12];
			dout_wire_q[13] <= dout_wire[13];
			dout_wire_q[14] <= dout_wire[14];
			dout_wire_q[15] <= dout_wire[15];
			dout_wire_q[16] <= dout_wire[16];
			dout_wire_q[17] <= dout_wire[17];
			dout_wire_q[18] <= dout_wire[18];
			dout_wire_q[19] <= dout_wire[19];
			dout_wire_q[20] <= dout_wire[20];
			dout_wire_q[21] <= dout_wire[21];
			dout_wire_q[22] <= dout_wire[22];
			dout_wire_q[23] <= dout_wire[23];
			dout_wire_q[24] <= dout_wire[24];
			dout_wire_q[25] <= dout_wire[25];
			dout_wire_q[26] <= dout_wire[26];
			dout_wire_q[27] <= dout_wire[27];
			dout_wire_q[28] <= dout_wire[28];
			dout_wire_q[29] <= dout_wire[29];
			dout_wire_q[30] <= dout_wire[30];
			dout_wire_q[31] <= dout_wire[31];
		end
	end

	(* dont_touch = "true" *) L_1_4_0_Relu m5_q (.reset(reset), .clk(clk),
		.data_in_01(dout_wire_q[0]), .data_in_02(dout_wire_q[1]), .data_in_03(dout_wire_q[2]), .data_in_04(dout_wire_q[3]), 
		.data_in_05(dout_wire_q[4]), .data_in_06(dout_wire_q[5]), .data_in_07(dout_wire_q[6]), .data_in_08(dout_wire_q[7]), 
		.data_in_09(dout_wire_q[8]), .data_in_10(dout_wire_q[9]), .data_in_11(dout_wire_q[10]), .data_in_12(dout_wire_q[11]), 
		.data_in_13(dout_wire_q[12]), .data_in_14(dout_wire_q[13]), .data_in_15(dout_wire_q[14]), .data_in_16(dout_wire_q[15]),
		.data_in_17(dout_wire_q[16]), .data_in_18(dout_wire_q[17]), .data_in_19(dout_wire_q[18]), .data_in_20(dout_wire_q[19]),
		.data_in_21(dout_wire_q[20]), .data_in_22(dout_wire_q[21]), .data_in_23(dout_wire_q[22]), .data_in_24(dout_wire_q[23]),
		.data_in_25(dout_wire_q[24]), .data_in_26(dout_wire_q[25]), .data_in_27(dout_wire_q[26]), .data_in_28(dout_wire_q[27]),
		.data_in_29(dout_wire_q[28]), .data_in_30(dout_wire_q[29]), .data_in_31(dout_wire_q[30]), .data_in_32(dout_wire_q[31]),
		.data_out_01(wxa_q[0]), .data_out_02(wxa_q[1]), .data_out_03(wxa_q[2]), .data_out_04(wxa_q[3]), 
		.data_out_05(wxa_q[4]), .data_out_06(wxa_q[5]), .data_out_07(wxa_q[6]), .data_out_08(wxa_q[7]), 
		.data_out_09(wxa_q[8]), .data_out_10(wxa_q[9]), .data_out_11(wxa_q[10]), .data_out_12(wxa_q[11]), 
		.data_out_13(wxa_q[12]), .data_out_14(wxa_q[13]), .data_out_15(wxa_q[14]), .data_out_16(wxa_q[15]),
		.data_out_17(wxa_q[16]), .data_out_18(wxa_q[17]), .data_out_19(wxa_q[18]), .data_out_20(wxa_q[19]),
		.data_out_21(wxa_q[20]), .data_out_22(wxa_q[21]), .data_out_23(wxa_q[22]), .data_out_24(wxa_q[23]),
		.data_out_25(wxa_q[24]), .data_out_26(wxa_q[25]), .data_out_27(wxa_q[26]), .data_out_28(wxa_q[27]),
		.data_out_29(wxa_q[28]), .data_out_30(wxa_q[29]), .data_out_31(wxa_q[30]), .data_out_32(wxa_q[31])
	);	
	
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			weights_ready_q <= 0;
			weights_ready_qq <= 0;
			weights_ready_qqq <= 0;
			input_start_Layer_1_q <= 0;
			input_start_Layer_1_qq <= 0;
			input_start_Layer_1_qqq <= 0;
			input_start_Layer_1_qqqq <= 0;
		end
		else
		begin
			(* dont_touch = "true" *) weights_ready_q <= weights_ready;
			(* dont_touch = "true" *) weights_ready_qq <= weights_ready_q;
			weights_ready_qqq <= weights_ready_qq;
			input_start_Layer_1_q <= input_start_Layer_1;
			input_start_Layer_1_qq <= input_start_Layer_1_q;
			input_start_Layer_1_qqq <= input_start_Layer_1_qq;
			input_start_Layer_1_qqqq <= input_start_Layer_1_qqq;
		end
	end
		
	(* dont_touch = "true" *) L_1_5_0_Max_pooling m6_q (
		.clk(clk), .reset(reset),
		.data_in_01(wxa_qq[0]), .data_in_02(wxa_qq[1]), .data_in_03(wxa_qq[2]), .data_in_04(wxa_qq[3]),
		.data_in_05(wxa_qq[4]), .data_in_06(wxa_qq[5]), .data_in_07(wxa_qq[6]), .data_in_08(wxa_qq[7]),
		.data_in_09(wxa_qq[8]), .data_in_10(wxa_qq[9]), .data_in_11(wxa_qq[10]), .data_in_12(wxa_qq[11]),
		.data_in_13(wxa_qq[12]), .data_in_14(wxa_qq[13]), .data_in_15(wxa_qq[14]), .data_in_16(wxa_qq[15]),
		.data_in_17(wxa_qq[16]), .data_in_18(wxa_qq[17]), .data_in_19(wxa_qq[18]), .data_in_20(wxa_qq[19]),
		.data_in_21(wxa_qq[20]), .data_in_22(wxa_qq[21]), .data_in_23(wxa_qq[22]), .data_in_24(wxa_qq[23]),
		.data_in_25(wxa_qq[24]), .data_in_26(wxa_qq[25]), .data_in_27(wxa_qq[26]), .data_in_28(wxa_qq[27]),
		.data_in_29(wxa_qq[28]), .data_in_30(wxa_qq[29]), .data_in_31(wxa_qq[30]), .data_in_32(wxa_qq[31]),
		.weights_ready(weights_ready_qqq), .input_start_Layer_1(input_start_Layer_1_qqqq),
		.data_out_01(data_out_01), .data_out_02(data_out_02), .data_out_03(data_out_03), .data_out_04(data_out_04),
		.data_out_05(data_out_05), .data_out_06(data_out_06), .data_out_07(data_out_07), .data_out_08(data_out_08),
		.data_out_09(data_out_09), .data_out_10(data_out_10), .data_out_11(data_out_11), .data_out_12(data_out_12),
		.data_out_13(data_out_13), .data_out_14(data_out_14), .data_out_15(data_out_15), .data_out_16(data_out_16),
		.data_out_17(data_out_17), .data_out_18(data_out_18), .data_out_19(data_out_19), .data_out_20(data_out_20),
		.data_out_21(data_out_21), .data_out_22(data_out_22), .data_out_23(data_out_23), .data_out_24(data_out_24),
		.data_out_25(data_out_25), .data_out_26(data_out_26), .data_out_27(data_out_27), .data_out_28(data_out_28),
		.data_out_29(data_out_29), .data_out_30(data_out_30), .data_out_31(data_out_31), .data_out_32(data_out_32)
	);
	
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin			
			wxa_qq[00] <= 0;
			wxa_qq[01] <= 0;
			wxa_qq[02] <= 0;
			wxa_qq[03] <= 0;
			wxa_qq[04] <= 0;
			wxa_qq[05] <= 0;
			wxa_qq[06] <= 0;
			wxa_qq[07] <= 0;
			wxa_qq[08] <= 0;
			wxa_qq[09] <= 0;
			wxa_qq[10] <= 0;
			wxa_qq[11] <= 0;
			wxa_qq[12] <= 0;
			wxa_qq[13] <= 0;
			wxa_qq[14] <= 0;
			wxa_qq[15] <= 0;
			wxa_qq[16] <= 0;
			wxa_qq[17] <= 0;
			wxa_qq[18] <= 0;
			wxa_qq[19] <= 0;
			wxa_qq[20] <= 0;
			wxa_qq[21] <= 0;
			wxa_qq[22] <= 0;
			wxa_qq[23] <= 0;
			wxa_qq[24] <= 0;
			wxa_qq[25] <= 0;
			wxa_qq[26] <= 0;
			wxa_qq[27] <= 0;
			wxa_qq[28] <= 0;
			wxa_qq[29] <= 0;
			wxa_qq[30] <= 0;
			wxa_qq[31] <= 0;
		end
		else
		begin
			wxa_qq[00] <= wxa_q[00];
			wxa_qq[01] <= wxa_q[01];
			wxa_qq[02] <= wxa_q[02];
			wxa_qq[03] <= wxa_q[03];
			wxa_qq[04] <= wxa_q[04];
			wxa_qq[05] <= wxa_q[05];
			wxa_qq[06] <= wxa_q[06];
			wxa_qq[07] <= wxa_q[07];
			wxa_qq[08] <= wxa_q[08];
			wxa_qq[09] <= wxa_q[09];
			wxa_qq[10] <= wxa_q[10];
			wxa_qq[11] <= wxa_q[11];
			wxa_qq[12] <= wxa_q[12];
			wxa_qq[13] <= wxa_q[13];
			wxa_qq[14] <= wxa_q[14];
			wxa_qq[15] <= wxa_q[15];
			wxa_qq[16] <= wxa_q[16];
			wxa_qq[17] <= wxa_q[17];
			wxa_qq[18] <= wxa_q[18];
			wxa_qq[19] <= wxa_q[19];
			wxa_qq[20] <= wxa_q[20];
			wxa_qq[21] <= wxa_q[21];
			wxa_qq[22] <= wxa_q[22];
			wxa_qq[23] <= wxa_q[23];
			wxa_qq[24] <= wxa_q[24];
			wxa_qq[25] <= wxa_q[25];
			wxa_qq[26] <= wxa_q[26];
			wxa_qq[27] <= wxa_q[27];
			wxa_qq[28] <= wxa_q[28];
			wxa_qq[29] <= wxa_q[29];
			wxa_qq[30] <= wxa_q[30];
			wxa_qq[31] <= wxa_q[31];
		end
	end
	
	endmodule
