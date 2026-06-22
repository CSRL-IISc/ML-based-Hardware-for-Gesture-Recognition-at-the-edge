`timescale 1ns / 1ps
/*This module contains 32 max modules which are used on 32 inputs.*/
module L_1_5_0_Max_pooling(
    input clk,
	input reset,
    input [17:0] data_in_01, data_in_02, data_in_03, data_in_04,
	input [17:0] data_in_05, data_in_06, data_in_07, data_in_08,
	input [17:0] data_in_09, data_in_10, data_in_11, data_in_12,
	input [17:0] data_in_13, data_in_14, data_in_15, data_in_16,
	input [17:0] data_in_17, data_in_18, data_in_19, data_in_20,
	input [17:0] data_in_21, data_in_22, data_in_23, data_in_24,
	input [17:0] data_in_25, data_in_26, data_in_27, data_in_28,
	input [17:0] data_in_29, data_in_30, data_in_31, data_in_32,
	input weights_ready,
	input input_start_Layer_1,
    (* dont_touch = "true" *) output wire [17:0] data_out_01, data_out_02, data_out_03, data_out_04,
    (* dont_touch = "true" *) output wire [17:0] data_out_05, data_out_06, data_out_07, data_out_08,
    (* dont_touch = "true" *) output wire [17:0] data_out_09, data_out_10, data_out_11, data_out_12,
    (* dont_touch = "true" *) output wire [17:0] data_out_13, data_out_14, data_out_15, data_out_16,
	(* dont_touch = "true" *) output wire [17:0] data_out_17, data_out_18, data_out_19, data_out_20,
	(* dont_touch = "true" *) output wire [17:0] data_out_21, data_out_22, data_out_23, data_out_24,
	(* dont_touch = "true" *) output wire [17:0] data_out_25, data_out_26, data_out_27, data_out_28,
	(* dont_touch = "true" *) output wire [17:0] data_out_29, data_out_30, data_out_31, data_out_32
    );
	L_1_5_1_Max m01 (.clk(clk) , .reset(reset) , .data_in(data_in_01) ,.weights_ready(weights_ready) ,.data_out(data_out_01) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m02 (.clk(clk) , .reset(reset) , .data_in(data_in_02) ,.weights_ready(weights_ready) ,.data_out(data_out_02) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m03 (.clk(clk) , .reset(reset) , .data_in(data_in_03) ,.weights_ready(weights_ready) ,.data_out(data_out_03) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m04 (.clk(clk) , .reset(reset) , .data_in(data_in_04) ,.weights_ready(weights_ready) ,.data_out(data_out_04) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m05 (.clk(clk) , .reset(reset) , .data_in(data_in_05) ,.weights_ready(weights_ready) ,.data_out(data_out_05) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m06 (.clk(clk) , .reset(reset) , .data_in(data_in_06) ,.weights_ready(weights_ready) ,.data_out(data_out_06) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m07 (.clk(clk) , .reset(reset) , .data_in(data_in_07) ,.weights_ready(weights_ready) ,.data_out(data_out_07) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m08 (.clk(clk) , .reset(reset) , .data_in(data_in_08) ,.weights_ready(weights_ready) ,.data_out(data_out_08) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m09 (.clk(clk) , .reset(reset) , .data_in(data_in_09) ,.weights_ready(weights_ready) ,.data_out(data_out_09) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m10 (.clk(clk) , .reset(reset) , .data_in(data_in_10) ,.weights_ready(weights_ready) ,.data_out(data_out_10) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m11 (.clk(clk) , .reset(reset) , .data_in(data_in_11) ,.weights_ready(weights_ready) ,.data_out(data_out_11) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m12 (.clk(clk) , .reset(reset) , .data_in(data_in_12) ,.weights_ready(weights_ready) ,.data_out(data_out_12) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m13 (.clk(clk) , .reset(reset) , .data_in(data_in_13) ,.weights_ready(weights_ready) ,.data_out(data_out_13) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m14 (.clk(clk) , .reset(reset) , .data_in(data_in_14) ,.weights_ready(weights_ready) ,.data_out(data_out_14) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m15 (.clk(clk) , .reset(reset) , .data_in(data_in_15) ,.weights_ready(weights_ready) ,.data_out(data_out_15) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m16 (.clk(clk) , .reset(reset) , .data_in(data_in_16) ,.weights_ready(weights_ready) ,.data_out(data_out_16) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m17 (.clk(clk) , .reset(reset) , .data_in(data_in_17) ,.weights_ready(weights_ready) ,.data_out(data_out_17) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m18 (.clk(clk) , .reset(reset) , .data_in(data_in_18) ,.weights_ready(weights_ready) ,.data_out(data_out_18) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m19 (.clk(clk) , .reset(reset) , .data_in(data_in_19) ,.weights_ready(weights_ready) ,.data_out(data_out_19) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m20 (.clk(clk) , .reset(reset) , .data_in(data_in_20) ,.weights_ready(weights_ready) ,.data_out(data_out_20) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m21 (.clk(clk) , .reset(reset) , .data_in(data_in_21) ,.weights_ready(weights_ready) ,.data_out(data_out_21) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m22 (.clk(clk) , .reset(reset) , .data_in(data_in_22) ,.weights_ready(weights_ready) ,.data_out(data_out_22) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m23 (.clk(clk) , .reset(reset) , .data_in(data_in_23) ,.weights_ready(weights_ready) ,.data_out(data_out_23) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m24 (.clk(clk) , .reset(reset) , .data_in(data_in_24) ,.weights_ready(weights_ready) ,.data_out(data_out_24) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m25 (.clk(clk) , .reset(reset) , .data_in(data_in_25) ,.weights_ready(weights_ready) ,.data_out(data_out_25) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m26 (.clk(clk) , .reset(reset) , .data_in(data_in_26) ,.weights_ready(weights_ready) ,.data_out(data_out_26) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m27 (.clk(clk) , .reset(reset) , .data_in(data_in_27) ,.weights_ready(weights_ready) ,.data_out(data_out_27) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m28 (.clk(clk) , .reset(reset) , .data_in(data_in_28) ,.weights_ready(weights_ready) ,.data_out(data_out_28) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m29 (.clk(clk) , .reset(reset) , .data_in(data_in_29) ,.weights_ready(weights_ready) ,.data_out(data_out_29) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m30 (.clk(clk) , .reset(reset) , .data_in(data_in_30) ,.weights_ready(weights_ready) ,.data_out(data_out_30) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m31 (.clk(clk) , .reset(reset) , .data_in(data_in_31) ,.weights_ready(weights_ready) ,.data_out(data_out_31) ,.input_start_Layer_1(input_start_Layer_1));
	L_1_5_1_Max m32 (.clk(clk) , .reset(reset) , .data_in(data_in_32) ,.weights_ready(weights_ready) ,.data_out(data_out_32) ,.input_start_Layer_1(input_start_Layer_1));
endmodule
