`timescale 1ns/1ps
module Model_2_top (
	input clk,
	input reset,
	input signed [7:0] data_in_00, 
	input signed [7:0] data_in_01, 
    input signed [7:0] data_in_02, 
    input signed [7:0] data_in_03, 
    input signed [7:0] data_in_04, 
    input signed [7:0] data_in_05,
	input input_start_Layer_1,
	
	input [7:0] preload_weights_1_Layer_1,
	input [7:0] preload_weights_1_Layer_2,
	input [7:0] preload_weights_2_Layer_2,
	input [7:0] preload_weights_3_Layer_2,
	input [7:0] preload_weights_4_Layer_2,
	
	input [7:0] preload_weights_1_Layer_3,
	input [7:0] preload_weights_2_Layer_3,
	input [7:0] preload_weights_3_Layer_3,
	input [7:0] preload_weights_4_Layer_3,
	
	input [7:0] preload_weights_1_Layer_4,
	
	input [5:0] preload_biases_addr_Layer_2,
	input preload_biases_en_Layer_2,
	input [7:0] preload_biases_1_Layer_1,
	input [7:0] preload_biases_1_Layer_2,
	
	input [5:0] preload_biases_addr_Layer_3,
	input preload_biases_en_Layer_3,
	input [7:0] preload_biases_1_Layer_3,
	
	input [5:0] preload_biases_addr_Layer_4,
	input preload_biases_en_Layer_4,
	input [7:0] preload_biases_1_Layer_4,
	
	output weights_ready_L_1,weights_ready_L_2,
	output reg [10:0] counter_1_to_2,
	output [2:0] final_index,
	output [31:0] final_output 
	);
	reg weights_ready_L_1_q, weights_ready_L_1_qq, weights_ready_L_1_qqq;
	wire signed [17:0] L1_data_out [31:0];
	wire signed [17:0] L2_data_in [31:0];
	wire signed [31:0] L3_data_in [63:0];
	wire signed [31:0] L4_data_in [63:0];
	wire signed [31:0] L5_data_in [5:0];
	reg signed [31:0] L4_data_in_q [63:0];
	reg signed [31:0] L5_data_in_q [5:0];
	wire L_2_input_start;
	wire process_en;
	wire L_2_done,L_3_done,L_4_done;
	reg L_3_done_q, L_4_done_q;
	reg L_2_input_start_q, L_2_input_start_qq;
	reg [8:0] L_1_out_count, L_1_out_count_q, L_1_out_count_qq, L_1_out_count_qqq;
	
	L_1_0_0_Main L1 (.clk(clk), .reset(reset), 
		.data_in_00(data_in_00), .data_in_01(data_in_01), .data_in_02(data_in_02), .data_in_03(data_in_03),
		.data_in_04(data_in_04), .data_in_05(data_in_05), 
		.preload_weights_1(preload_weights_1_Layer_1), .preload_biases_1(preload_biases_1_Layer_1),
		.data_out_01(L1_data_out[0]), .data_out_02(L1_data_out[1]), .data_out_03(L1_data_out[2]), .data_out_04(L1_data_out[3]),
		.data_out_05(L1_data_out[4]), .data_out_06(L1_data_out[5]), .data_out_07(L1_data_out[6]), .data_out_08(L1_data_out[7]),
		.data_out_09(L1_data_out[8]), .data_out_10(L1_data_out[9]), .data_out_11(L1_data_out[10]), .data_out_12(L1_data_out[11]),
		.data_out_13(L1_data_out[12]), .data_out_14(L1_data_out[13]), .data_out_15(L1_data_out[14]), .data_out_16(L1_data_out[15]),
		.data_out_17(L1_data_out[16]), .data_out_18(L1_data_out[17]), .data_out_19(L1_data_out[18]), .data_out_20(L1_data_out[19]),
		.data_out_21(L1_data_out[20]), .data_out_22(L1_data_out[21]), .data_out_23(L1_data_out[22]), .data_out_24(L1_data_out[23]),
		.data_out_25(L1_data_out[24]), .data_out_26(L1_data_out[25]), .data_out_27(L1_data_out[26]), .data_out_28(L1_data_out[27]),
		.data_out_29(L1_data_out[28]), .data_out_30(L1_data_out[29]), .data_out_31(L1_data_out[30]), .data_out_32(L1_data_out[31]),
		.weights_ready(weights_ready_L_1), .input_start_Layer_1(input_start_Layer_1));
	
	
	always@(posedge clk)
	begin
		if(reset)
		begin
			counter_1_to_2 <= 0;
			L_1_out_count <= 0;
			L_1_out_count_q <= 0;
			L_1_out_count_qq <= 0;
			L_1_out_count_qqq <= 0;
		end
		else
		begin
			weights_ready_L_1_q <= weights_ready_L_1;
			weights_ready_L_1_qq <= weights_ready_L_1_q;
			weights_ready_L_1_qqq <= weights_ready_L_1_qq;
			L_1_out_count <= L_1_out_count_q;
			L_1_out_count_q <= L_1_out_count_qq;
			L_1_out_count_qq <= L_1_out_count_qqq;
			if(weights_ready_L_1_q & input_start_Layer_1)
			begin
				if(counter_1_to_2 > 1025)
				begin
					L_1_out_count <= 0;					
				end
				else
				begin
					counter_1_to_2 <= counter_1_to_2 + 1'b1;
					if(counter_1_to_2 > 7)
					begin
						if(L_1_out_count < 509)
						begin
							if(counter_1_to_2%2 == 0)
							begin
								L_1_out_count_qqq <= L_1_out_count_qqq + 1;								
							end
						end
					end
				end
			end
			else
			begin
				counter_1_to_2 <= 0;
			end
		end
	end
	
	L_1_6_L_2_0_Interface L0 (.clk(clk), .reset(reset),
							.addr_write(L_1_out_count),
							.L_1_data_out_00(L1_data_out[0]), .L_1_data_out_01(L1_data_out[1]),
							.L_1_data_out_02(L1_data_out[2]), .L_1_data_out_03(L1_data_out[3]),
							.L_1_data_out_04(L1_data_out[4]), .L_1_data_out_05(L1_data_out[5]),
							.L_1_data_out_06(L1_data_out[6]), .L_1_data_out_07(L1_data_out[7]),
							.L_1_data_out_08(L1_data_out[8]), .L_1_data_out_09(L1_data_out[9]),
							.L_1_data_out_10(L1_data_out[10]), .L_1_data_out_11(L1_data_out[11]),
							.L_1_data_out_12(L1_data_out[12]), .L_1_data_out_13(L1_data_out[13]),
							.L_1_data_out_14(L1_data_out[14]), .L_1_data_out_15(L1_data_out[15]),
							.L_1_data_out_16(L1_data_out[16]), .L_1_data_out_17(L1_data_out[17]),
							.L_1_data_out_18(L1_data_out[18]), .L_1_data_out_19(L1_data_out[19]),
							.L_1_data_out_20(L1_data_out[20]), .L_1_data_out_21(L1_data_out[21]),
							.L_1_data_out_22(L1_data_out[22]), .L_1_data_out_23(L1_data_out[23]),
							.L_1_data_out_24(L1_data_out[24]), .L_1_data_out_25(L1_data_out[25]),
							.L_1_data_out_26(L1_data_out[26]), .L_1_data_out_27(L1_data_out[27]),
							.L_1_data_out_28(L1_data_out[28]), .L_1_data_out_29(L1_data_out[29]),
							.L_1_data_out_30(L1_data_out[30]), .L_1_data_out_31(L1_data_out[31]),
							.weights_ready_L_2(weights_ready_L_2),
							.L_2_input_start(L_2_input_start),
							.process_en(process_en),
							.L_2_data_in_00(L2_data_in[0]), .L_2_data_in_01(L2_data_in[1]),
							.L_2_data_in_02(L2_data_in[2]), .L_2_data_in_03(L2_data_in[3]),
							.L_2_data_in_04(L2_data_in[4]), .L_2_data_in_05(L2_data_in[5]),
							.L_2_data_in_06(L2_data_in[6]), .L_2_data_in_07(L2_data_in[7]),
							.L_2_data_in_08(L2_data_in[8]), .L_2_data_in_09(L2_data_in[9]),
							.L_2_data_in_10(L2_data_in[10]), .L_2_data_in_11(L2_data_in[11]),
							.L_2_data_in_12(L2_data_in[12]), .L_2_data_in_13(L2_data_in[13]),
							.L_2_data_in_14(L2_data_in[14]), .L_2_data_in_15(L2_data_in[15]),
							.L_2_data_in_16(L2_data_in[16]), .L_2_data_in_17(L2_data_in[17]),
							.L_2_data_in_18(L2_data_in[18]), .L_2_data_in_19(L2_data_in[19]),
							.L_2_data_in_20(L2_data_in[20]), .L_2_data_in_21(L2_data_in[21]),
							.L_2_data_in_22(L2_data_in[22]), .L_2_data_in_23(L2_data_in[23]),
							.L_2_data_in_24(L2_data_in[24]), .L_2_data_in_25(L2_data_in[25]),
							.L_2_data_in_26(L2_data_in[26]), .L_2_data_in_27(L2_data_in[27]),
							.L_2_data_in_28(L2_data_in[28]), .L_2_data_in_29(L2_data_in[29]),
							.L_2_data_in_30(L2_data_in[30]), .L_2_data_in_31(L2_data_in[31])		
							);
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			L_2_input_start_q <= 0;
			L_2_input_start_qq <= 0;
		end
		else
		begin
			L_2_input_start_q <= L_2_input_start;
			L_2_input_start_qq <= L_2_input_start_q;
		end
	end
	
	L_2_0_0_Main L2 (.clk(clk), .reset(reset),
					.data_in_00(L2_data_in[0]), .data_in_01(L2_data_in[1]),
					.data_in_02(L2_data_in[2]), .data_in_03(L2_data_in[3]),
					.data_in_04(L2_data_in[4]), .data_in_05(L2_data_in[5]),
					.data_in_06(L2_data_in[6]), .data_in_07(L2_data_in[7]),
					.data_in_08(L2_data_in[8]), .data_in_09(L2_data_in[9]),
					.data_in_10(L2_data_in[10]), .data_in_11(L2_data_in[11]),
					.data_in_12(L2_data_in[12]), .data_in_13(L2_data_in[13]),
					.data_in_14(L2_data_in[14]), .data_in_15(L2_data_in[15]),
					.data_in_16(L2_data_in[16]), .data_in_17(L2_data_in[17]),
					.data_in_18(L2_data_in[18]), .data_in_19(L2_data_in[19]),
					.data_in_20(L2_data_in[20]), .data_in_21(L2_data_in[21]),
					.data_in_22(L2_data_in[22]), .data_in_23(L2_data_in[23]),
					.data_in_24(L2_data_in[24]), .data_in_25(L2_data_in[25]),
					.data_in_26(L2_data_in[26]), .data_in_27(L2_data_in[27]),
					.data_in_28(L2_data_in[28]), .data_in_29(L2_data_in[29]),
					.data_in_30(L2_data_in[30]), .data_in_31(L2_data_in[31]),
					.input_start(L_2_input_start_qq),
					.process_en(process_en),
					.done(L_2_done),
					.preload_weights_1(preload_weights_1_Layer_2), .preload_weights_2(preload_weights_2_Layer_2), 
					.preload_weights_3(preload_weights_3_Layer_2), .preload_weights_4(preload_weights_4_Layer_2),
					.preload_biases_addr(preload_biases_addr_Layer_2), .preload_biases_en(preload_biases_en_Layer_2), 
					.preload_biases_1(preload_biases_1_Layer_2),
					.data_out_00(L3_data_in[0]), .data_out_01(L3_data_in[1]),
					.data_out_02(L3_data_in[2]), .data_out_03(L3_data_in[3]),
					.data_out_04(L3_data_in[4]), .data_out_05(L3_data_in[5]),
					.data_out_06(L3_data_in[6]), .data_out_07(L3_data_in[7]),
					.data_out_08(L3_data_in[8]), .data_out_09(L3_data_in[9]),
					.data_out_10(L3_data_in[10]), .data_out_11(L3_data_in[11]),
					.data_out_12(L3_data_in[12]), .data_out_13(L3_data_in[13]),
					.data_out_14(L3_data_in[14]), .data_out_15(L3_data_in[15]),
					.data_out_16(L3_data_in[16]), .data_out_17(L3_data_in[17]),
					.data_out_18(L3_data_in[18]), .data_out_19(L3_data_in[19]),
					.data_out_20(L3_data_in[20]), .data_out_21(L3_data_in[21]),
					.data_out_22(L3_data_in[22]), .data_out_23(L3_data_in[23]),
					.data_out_24(L3_data_in[24]), .data_out_25(L3_data_in[25]),
					.data_out_26(L3_data_in[26]), .data_out_27(L3_data_in[27]),
					.data_out_28(L3_data_in[28]), .data_out_29(L3_data_in[29]),
					.data_out_30(L3_data_in[30]), .data_out_31(L3_data_in[31]),
					.data_out_32(L3_data_in[32]), .data_out_33(L3_data_in[33]),
					.data_out_34(L3_data_in[34]), .data_out_35(L3_data_in[35]),
					.data_out_36(L3_data_in[36]), .data_out_37(L3_data_in[37]),
					.data_out_38(L3_data_in[38]), .data_out_39(L3_data_in[39]),
					.data_out_40(L3_data_in[40]), .data_out_41(L3_data_in[41]),
					.data_out_42(L3_data_in[42]), .data_out_43(L3_data_in[43]),
					.data_out_44(L3_data_in[44]), .data_out_45(L3_data_in[45]),
					.data_out_46(L3_data_in[46]), .data_out_47(L3_data_in[47]),
					.data_out_48(L3_data_in[48]), .data_out_49(L3_data_in[49]),
					.data_out_50(L3_data_in[50]), .data_out_51(L3_data_in[51]),
					.data_out_52(L3_data_in[52]), .data_out_53(L3_data_in[53]),
					.data_out_54(L3_data_in[54]), .data_out_55(L3_data_in[55]),
					.data_out_56(L3_data_in[56]), .data_out_57(L3_data_in[57]),
					.data_out_58(L3_data_in[58]), .data_out_59(L3_data_in[59]),
					.data_out_60(L3_data_in[60]), .data_out_61(L3_data_in[61]),
					.data_out_62(L3_data_in[62]), .data_out_63(L3_data_in[63]),
					.weights_ready(weights_ready_L_2)
					);
	
	(* dont_touch = "true" *) L_3_0_0_Dense1_test L3 (.clk(clk), .reset(reset), .start(L_2_done),
					.data_in_00(L3_data_in[0]), .data_in_01(L3_data_in[1]), 
					.data_in_02(L3_data_in[2]), .data_in_03(L3_data_in[3]),
					.data_in_04(L3_data_in[4]), .data_in_05(L3_data_in[5]),
					.data_in_06(L3_data_in[6]), .data_in_07(L3_data_in[7]),
					.data_in_08(L3_data_in[8]), .data_in_09(L3_data_in[9]),
					.data_in_10(L3_data_in[10]), .data_in_11(L3_data_in[11]),
					.data_in_12(L3_data_in[12]), .data_in_13(L3_data_in[13]),
					.data_in_14(L3_data_in[14]), .data_in_15(L3_data_in[15]),
					.data_in_16(L3_data_in[16]), .data_in_17(L3_data_in[17]),
					.data_in_18(L3_data_in[18]), .data_in_19(L3_data_in[19]),
					.data_in_20(L3_data_in[20]), .data_in_21(L3_data_in[21]),
					.data_in_22(L3_data_in[22]), .data_in_23(L3_data_in[23]),
					.data_in_24(L3_data_in[24]), .data_in_25(L3_data_in[25]),
					.data_in_26(L3_data_in[26]), .data_in_27(L3_data_in[27]),
					.data_in_28(L3_data_in[28]), .data_in_29(L3_data_in[29]),
					.data_in_30(L3_data_in[30]), .data_in_31(L3_data_in[31]),
					.data_in_32(L3_data_in[32]), .data_in_33(L3_data_in[33]),
					.data_in_34(L3_data_in[34]), .data_in_35(L3_data_in[35]),
					.data_in_36(L3_data_in[36]), .data_in_37(L3_data_in[37]),
					.data_in_38(L3_data_in[38]), .data_in_39(L3_data_in[39]),
					.data_in_40(L3_data_in[40]), .data_in_41(L3_data_in[41]),
					.data_in_42(L3_data_in[42]), .data_in_43(L3_data_in[43]),
					.data_in_44(L3_data_in[44]), .data_in_45(L3_data_in[45]),
					.data_in_46(L3_data_in[46]), .data_in_47(L3_data_in[47]),
					.data_in_48(L3_data_in[48]), .data_in_49(L3_data_in[49]),
					.data_in_50(L3_data_in[50]), .data_in_51(L3_data_in[51]),
					.data_in_52(L3_data_in[52]), .data_in_53(L3_data_in[53]),
					.data_in_54(L3_data_in[54]), .data_in_55(L3_data_in[55]),
					.data_in_56(L3_data_in[56]), .data_in_57(L3_data_in[57]),
					.data_in_58(L3_data_in[58]), .data_in_59(L3_data_in[59]),
					.data_in_60(L3_data_in[60]), .data_in_61(L3_data_in[61]),
					.data_in_62(L3_data_in[62]), .data_in_63(L3_data_in[63]),
					.preload_weights_1(preload_weights_1_Layer_3), .preload_weights_2(preload_weights_2_Layer_3),
					.preload_weights_3(preload_weights_3_Layer_3), .preload_weights_4(preload_weights_4_Layer_3),
					.preload_biases_addr(preload_biases_addr_Layer_3),
					.preload_biases_en(preload_biases_en_Layer_3),
					.preload_biases_1(preload_biases_1_Layer_3),
					.product_00(L4_data_in[0]), .product_01(L4_data_in[1]),
					.product_02(L4_data_in[2]), .product_03(L4_data_in[3]),
					.product_04(L4_data_in[4]), .product_05(L4_data_in[5]),
					.product_06(L4_data_in[6]), .product_07(L4_data_in[7]),
					.product_08(L4_data_in[8]), .product_09(L4_data_in[9]),
					.product_10(L4_data_in[10]), .product_11(L4_data_in[11]),
					.product_12(L4_data_in[12]), .product_13(L4_data_in[13]),
					.product_14(L4_data_in[14]), .product_15(L4_data_in[15]),
					.product_16(L4_data_in[16]), .product_17(L4_data_in[17]),
					.product_18(L4_data_in[18]), .product_19(L4_data_in[19]),
					.product_20(L4_data_in[20]), .product_21(L4_data_in[21]),
					.product_22(L4_data_in[22]), .product_23(L4_data_in[23]),
					.product_24(L4_data_in[24]), .product_25(L4_data_in[25]),
					.product_26(L4_data_in[26]), .product_27(L4_data_in[27]),
					.product_28(L4_data_in[28]), .product_29(L4_data_in[29]),
					.product_30(L4_data_in[30]), .product_31(L4_data_in[31]),
					.product_32(L4_data_in[32]), .product_33(L4_data_in[33]),
					.product_34(L4_data_in[34]), .product_35(L4_data_in[35]),
					.product_36(L4_data_in[36]), .product_37(L4_data_in[37]),
					.product_38(L4_data_in[38]), .product_39(L4_data_in[39]),
					.product_40(L4_data_in[40]), .product_41(L4_data_in[41]),
					.product_42(L4_data_in[42]), .product_43(L4_data_in[43]),
					.product_44(L4_data_in[44]), .product_45(L4_data_in[45]),
					.product_46(L4_data_in[46]), .product_47(L4_data_in[47]),
					.product_48(L4_data_in[48]), .product_49(L4_data_in[49]),
					.product_50(L4_data_in[50]), .product_51(L4_data_in[51]),
					.product_52(L4_data_in[52]), .product_53(L4_data_in[53]),
					.product_54(L4_data_in[54]), .product_55(L4_data_in[55]),
					.product_56(L4_data_in[56]), .product_57(L4_data_in[57]),
					.product_58(L4_data_in[58]), .product_59(L4_data_in[59]),
					.product_60(L4_data_in[60]), .product_61(L4_data_in[61]),
					.product_62(L4_data_in[62]), .product_63(L4_data_in[63]),
					.dense_done(L_3_done)
					);
	
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			L4_data_in_q[00] <= 0;
			L4_data_in_q[01] <= 0;
			L4_data_in_q[02] <= 0;
			L4_data_in_q[03] <= 0;
			L4_data_in_q[04] <= 0;
			L4_data_in_q[05] <= 0;
			L4_data_in_q[06] <= 0;
			L4_data_in_q[07] <= 0;
			L4_data_in_q[08] <= 0;
			L4_data_in_q[09] <= 0;
			L4_data_in_q[10] <= 0;
			L4_data_in_q[11] <= 0;
			L4_data_in_q[12] <= 0;
			L4_data_in_q[13] <= 0;
			L4_data_in_q[14] <= 0;
			L4_data_in_q[15] <= 0;
			L4_data_in_q[16] <= 0;
			L4_data_in_q[17] <= 0;
			L4_data_in_q[18] <= 0;
			L4_data_in_q[19] <= 0;
			L4_data_in_q[20] <= 0;
			L4_data_in_q[21] <= 0;
			L4_data_in_q[22] <= 0;
			L4_data_in_q[23] <= 0;
			L4_data_in_q[24] <= 0;
			L4_data_in_q[25] <= 0;
			L4_data_in_q[26] <= 0;
			L4_data_in_q[27] <= 0;
			L4_data_in_q[28] <= 0;
			L4_data_in_q[29] <= 0;
			L4_data_in_q[30] <= 0;
			L4_data_in_q[31] <= 0;
			L4_data_in_q[32] <= 0;
			L4_data_in_q[33] <= 0;
			L4_data_in_q[34] <= 0;
			L4_data_in_q[35] <= 0;
			L4_data_in_q[36] <= 0;
			L4_data_in_q[37] <= 0;
			L4_data_in_q[38] <= 0;
			L4_data_in_q[39] <= 0;
			L4_data_in_q[40] <= 0;
			L4_data_in_q[41] <= 0;
			L4_data_in_q[42] <= 0;
			L4_data_in_q[43] <= 0;
			L4_data_in_q[44] <= 0;
			L4_data_in_q[45] <= 0;
			L4_data_in_q[46] <= 0;
			L4_data_in_q[47] <= 0;
			L4_data_in_q[48] <= 0;
			L4_data_in_q[49] <= 0;
			L4_data_in_q[50] <= 0;
			L4_data_in_q[51] <= 0;
			L4_data_in_q[52] <= 0;
			L4_data_in_q[53] <= 0;
			L4_data_in_q[54] <= 0;
			L4_data_in_q[55] <= 0;
			L4_data_in_q[56] <= 0;
			L4_data_in_q[57] <= 0;
			L4_data_in_q[58] <= 0;
			L4_data_in_q[59] <= 0;
			L4_data_in_q[60] <= 0;
			L4_data_in_q[61] <= 0;
			L4_data_in_q[62] <= 0;
			L4_data_in_q[63] <= 0;
			L_3_done_q <= 0;
		end
		else
		begin
			L4_data_in_q[00] <= L4_data_in[00];
			L4_data_in_q[01] <= L4_data_in[01];
			L4_data_in_q[02] <= L4_data_in[02];
			L4_data_in_q[03] <= L4_data_in[03];
			L4_data_in_q[04] <= L4_data_in[04];
			L4_data_in_q[05] <= L4_data_in[05];
			L4_data_in_q[06] <= L4_data_in[06];
			L4_data_in_q[07] <= L4_data_in[07];
			L4_data_in_q[08] <= L4_data_in[08];
			L4_data_in_q[09] <= L4_data_in[09];
			L4_data_in_q[10] <= L4_data_in[10];
			L4_data_in_q[11] <= L4_data_in[11];
			L4_data_in_q[12] <= L4_data_in[12];
			L4_data_in_q[13] <= L4_data_in[13];
			L4_data_in_q[14] <= L4_data_in[14];
			L4_data_in_q[15] <= L4_data_in[15];
			L4_data_in_q[16] <= L4_data_in[16];
			L4_data_in_q[17] <= L4_data_in[17];
			L4_data_in_q[18] <= L4_data_in[18];
			L4_data_in_q[19] <= L4_data_in[19];
			L4_data_in_q[20] <= L4_data_in[20];
			L4_data_in_q[21] <= L4_data_in[21];
			L4_data_in_q[22] <= L4_data_in[22];
			L4_data_in_q[23] <= L4_data_in[23];
			L4_data_in_q[24] <= L4_data_in[24];
			L4_data_in_q[25] <= L4_data_in[25];
			L4_data_in_q[26] <= L4_data_in[26];
			L4_data_in_q[27] <= L4_data_in[27];
			L4_data_in_q[28] <= L4_data_in[28];
			L4_data_in_q[29] <= L4_data_in[29];
			L4_data_in_q[30] <= L4_data_in[30];
			L4_data_in_q[31] <= L4_data_in[31];
			L4_data_in_q[32] <= L4_data_in[32];
			L4_data_in_q[33] <= L4_data_in[33];
			L4_data_in_q[34] <= L4_data_in[34];
			L4_data_in_q[35] <= L4_data_in[35];
			L4_data_in_q[36] <= L4_data_in[36];
			L4_data_in_q[37] <= L4_data_in[37];
			L4_data_in_q[38] <= L4_data_in[38];
			L4_data_in_q[39] <= L4_data_in[39];
			L4_data_in_q[40] <= L4_data_in[40];
			L4_data_in_q[41] <= L4_data_in[41];
			L4_data_in_q[42] <= L4_data_in[42];
			L4_data_in_q[43] <= L4_data_in[43];
			L4_data_in_q[44] <= L4_data_in[44];
			L4_data_in_q[45] <= L4_data_in[45];
			L4_data_in_q[46] <= L4_data_in[46];
			L4_data_in_q[47] <= L4_data_in[47];
			L4_data_in_q[48] <= L4_data_in[48];
			L4_data_in_q[49] <= L4_data_in[49];
			L4_data_in_q[50] <= L4_data_in[50];
			L4_data_in_q[51] <= L4_data_in[51];
			L4_data_in_q[52] <= L4_data_in[52];
			L4_data_in_q[53] <= L4_data_in[53];
			L4_data_in_q[54] <= L4_data_in[54];
			L4_data_in_q[55] <= L4_data_in[55];
			L4_data_in_q[56] <= L4_data_in[56];
			L4_data_in_q[57] <= L4_data_in[57];
			L4_data_in_q[58] <= L4_data_in[58];
			L4_data_in_q[59] <= L4_data_in[59];
			L4_data_in_q[60] <= L4_data_in[60];
			L4_data_in_q[61] <= L4_data_in[61];
			L4_data_in_q[62] <= L4_data_in[62];
			L4_data_in_q[63] <= L4_data_in[63];
			L_3_done_q <= L_3_done;
		end
	end
	
	(* dont_touch = "true" *) L_4_0_0_Dense2 L4 (.clk(clk), .reset(reset), .start(L_3_done_q),
					.data_in_00(L4_data_in_q[0]), .data_in_01(L4_data_in_q[1]), 
					.data_in_02(L4_data_in_q[2]), .data_in_03(L4_data_in_q[3]),
					.data_in_04(L4_data_in_q[4]), .data_in_05(L4_data_in_q[5]),
					.data_in_06(L4_data_in_q[6]), .data_in_07(L4_data_in_q[7]),
					.data_in_08(L4_data_in_q[8]), .data_in_09(L4_data_in_q[9]),
					.data_in_10(L4_data_in_q[10]), .data_in_11(L4_data_in_q[11]),
					.data_in_12(L4_data_in_q[12]), .data_in_13(L4_data_in_q[13]),
					.data_in_14(L4_data_in_q[14]), .data_in_15(L4_data_in_q[15]),
					.data_in_16(L4_data_in_q[16]), .data_in_17(L4_data_in_q[17]),
					.data_in_18(L4_data_in_q[18]), .data_in_19(L4_data_in_q[19]),
					.data_in_20(L4_data_in_q[20]), .data_in_21(L4_data_in_q[21]),
					.data_in_22(L4_data_in_q[22]), .data_in_23(L4_data_in_q[23]),
					.data_in_24(L4_data_in_q[24]), .data_in_25(L4_data_in_q[25]),
					.data_in_26(L4_data_in_q[26]), .data_in_27(L4_data_in_q[27]),
					.data_in_28(L4_data_in_q[28]), .data_in_29(L4_data_in_q[29]),
					.data_in_30(L4_data_in_q[30]), .data_in_31(L4_data_in_q[31]),
					.data_in_32(L4_data_in_q[32]), .data_in_33(L4_data_in_q[33]),
					.data_in_34(L4_data_in_q[34]), .data_in_35(L4_data_in_q[35]),
					.data_in_36(L4_data_in_q[36]), .data_in_37(L4_data_in_q[37]),
					.data_in_38(L4_data_in_q[38]), .data_in_39(L4_data_in_q[39]),
					.data_in_40(L4_data_in_q[40]), .data_in_41(L4_data_in_q[41]),
					.data_in_42(L4_data_in_q[42]), .data_in_43(L4_data_in_q[43]),
					.data_in_44(L4_data_in_q[44]), .data_in_45(L4_data_in_q[45]),
					.data_in_46(L4_data_in_q[46]), .data_in_47(L4_data_in_q[47]),
					.data_in_48(L4_data_in_q[48]), .data_in_49(L4_data_in_q[49]),
					.data_in_50(L4_data_in_q[50]), .data_in_51(L4_data_in_q[51]),
					.data_in_52(L4_data_in_q[52]), .data_in_53(L4_data_in_q[53]),
					.data_in_54(L4_data_in_q[54]), .data_in_55(L4_data_in_q[55]),
					.data_in_56(L4_data_in_q[56]), .data_in_57(L4_data_in_q[57]),
					.data_in_58(L4_data_in_q[58]), .data_in_59(L4_data_in_q[59]),
					.data_in_60(L4_data_in_q[60]), .data_in_61(L4_data_in_q[61]),
					.data_in_62(L4_data_in_q[62]), .data_in_63(L4_data_in_q[63]),
					.preload_weights_1(preload_weights_1_Layer_4),
					.preload_biases_addr(preload_biases_addr_Layer_4),
					.preload_biases_en(preload_biases_en_Layer_4),
					.preload_biases_1(preload_biases_1_Layer_4),
					.data_out_0(L5_data_in[0]), .data_out_1(L5_data_in[1]),
					.data_out_2(L5_data_in[2]), .data_out_3(L5_data_in[3]),
					.data_out_4(L5_data_in[4]), .data_out_5(L5_data_in[5]),
					.dense_done(L_4_done)
					);
	
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			L5_data_in_q[00] <= 0;
			L5_data_in_q[01] <= 0;
			L5_data_in_q[02] <= 0;
			L5_data_in_q[03] <= 0;
			L5_data_in_q[04] <= 0;
			L5_data_in_q[05] <= 0;
			L_4_done_q <= 0;
		end
		else
		begin
			L_4_done_q <= L_4_done;
			if(L_4_done)
			begin
				L5_data_in_q[00] <= L5_data_in[00];
				L5_data_in_q[01] <= L5_data_in[01];
				L5_data_in_q[02] <= L5_data_in[02];
				L5_data_in_q[03] <= L5_data_in[03];
				L5_data_in_q[04] <= L5_data_in[04];
				L5_data_in_q[05] <= L5_data_in[05];
			end
		end
	end
	
	(* dont_touch = "true" *) L_5_0_0_HardMax L5 (.clk(clk), .reset(reset),
					.data_in_0(L5_data_in_q[0]), .data_in_1(L5_data_in_q[1]),
					.data_in_2(L5_data_in_q[2]), .data_in_3(L5_data_in_q[3]),
					.data_in_4(L5_data_in_q[4]), .data_in_5(L5_data_in_q[5]),
					.max_out(final_output), .max_index(final_index), .start(L_4_done_q)
					);	
endmodule
