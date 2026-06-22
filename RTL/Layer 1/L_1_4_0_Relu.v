`timescale 1ns / 1ps



module L_1_4_0_Relu(
    input reset,
	input clk,
    input signed [17:0] data_in_01, data_in_02, data_in_03, data_in_04,
	input signed [17:0] data_in_05, data_in_06, data_in_07, data_in_08,
	input signed [17:0] data_in_09, data_in_10, data_in_11, data_in_12,
	input signed [17:0] data_in_13, data_in_14, data_in_15, data_in_16,
	input signed [17:0] data_in_17, data_in_18, data_in_19, data_in_20,
	input signed [17:0] data_in_21, data_in_22, data_in_23, data_in_24,
	input signed [17:0] data_in_25, data_in_26, data_in_27, data_in_28,
	input signed [17:0] data_in_29, data_in_30, data_in_31, data_in_32,
    (* dont_touch = "true" *) output reg [17:0] data_out_01, data_out_02, data_out_03, data_out_04,
    (* dont_touch = "true" *) output reg [17:0] data_out_05, data_out_06, data_out_07, data_out_08,
    (* dont_touch = "true" *) output reg [17:0] data_out_09, data_out_10, data_out_11, data_out_12,
    (* dont_touch = "true" *) output reg [17:0] data_out_13, data_out_14, data_out_15, data_out_16,
	(* dont_touch = "true" *) output reg [17:0] data_out_17, data_out_18, data_out_19, data_out_20,
	(* dont_touch = "true" *) output reg [17:0] data_out_21, data_out_22, data_out_23, data_out_24,
	(* dont_touch = "true" *) output reg [17:0] data_out_25, data_out_26, data_out_27, data_out_28,
	(* dont_touch = "true" *) output reg [17:0] data_out_29, data_out_30, data_out_31, data_out_32
   
);

    always @(posedge clk or posedge reset) 
	begin
		if(reset)
		begin
			data_out_01 <= 0;
			data_out_02 <= 0;
			data_out_03 <= 0;
			data_out_04 <= 0;
			data_out_05 <= 0;
			data_out_06 <= 0;
			data_out_07 <= 0;
			data_out_08 <= 0;
			data_out_09 <= 0;
			data_out_10 <= 0;
			data_out_11 <= 0;
			data_out_12 <= 0;
			data_out_13 <= 0;
			data_out_14 <= 0;
			data_out_15 <= 0;
			data_out_16 <= 0;
			data_out_17 <= 0;
			data_out_18 <= 0;
			data_out_19 <= 0;
			data_out_20 <= 0;
			data_out_21 <= 0;
			data_out_22 <= 0;
			data_out_23 <= 0;
			data_out_24 <= 0;
			data_out_25 <= 0;
			data_out_26 <= 0;
			data_out_27 <= 0;
			data_out_28 <= 0;
			data_out_29 <= 0;
			data_out_30 <= 0;
			data_out_31 <= 0;
			data_out_32 <= 0;
		end
		else
		begin
			data_out_01 <= (data_in_01 < 0) ? 0 : data_in_01;
			data_out_02 <= (data_in_02 < 0) ? 0 : data_in_02;
			data_out_03 <= (data_in_03 < 0) ? 0 : data_in_03;
			data_out_04 <= (data_in_04 < 0) ? 0 : data_in_04;
			data_out_05 <= (data_in_05 < 0) ? 0 : data_in_05;
			data_out_06 <= (data_in_06 < 0) ? 0 : data_in_06;
			data_out_07 <= (data_in_07 < 0) ? 0 : data_in_07;
			data_out_08 <= (data_in_08 < 0) ? 0 : data_in_08;
			data_out_09 <= (data_in_09 < 0) ? 0 : data_in_09;
			data_out_10 <= (data_in_10 < 0) ? 0 : data_in_10;
			data_out_11 <= (data_in_11 < 0) ? 0 : data_in_11;
			data_out_12 <= (data_in_12 < 0) ? 0 : data_in_12;
			data_out_13 <= (data_in_13 < 0) ? 0 : data_in_13;
			data_out_14 <= (data_in_14 < 0) ? 0 : data_in_14;
			data_out_15 <= (data_in_15 < 0) ? 0 : data_in_15;
			data_out_16 <= (data_in_16 < 0) ? 0 : data_in_16;
			data_out_17 <= (data_in_17 < 0) ? 0 : data_in_17;
			data_out_18 <= (data_in_18 < 0) ? 0 : data_in_18;
			data_out_19 <= (data_in_19 < 0) ? 0 : data_in_19;
			data_out_20 <= (data_in_20 < 0) ? 0 : data_in_20;
			data_out_21 <= (data_in_21 < 0) ? 0 : data_in_21;
			data_out_22 <= (data_in_22 < 0) ? 0 : data_in_22;
			data_out_23 <= (data_in_23 < 0) ? 0 : data_in_23;
			data_out_24 <= (data_in_24 < 0) ? 0 : data_in_24;
			data_out_25 <= (data_in_25 < 0) ? 0 : data_in_25;
			data_out_26 <= (data_in_26 < 0) ? 0 : data_in_26;
			data_out_27 <= (data_in_27 < 0) ? 0 : data_in_27;
			data_out_28 <= (data_in_28 < 0) ? 0 : data_in_28;
			data_out_29 <= (data_in_29 < 0) ? 0 : data_in_29;
			data_out_30 <= (data_in_30 < 0) ? 0 : data_in_30;
			data_out_31 <= (data_in_31 < 0) ? 0 : data_in_31;
			data_out_32 <= (data_in_32 < 0) ? 0 : data_in_32;
		end
    end

endmodule
