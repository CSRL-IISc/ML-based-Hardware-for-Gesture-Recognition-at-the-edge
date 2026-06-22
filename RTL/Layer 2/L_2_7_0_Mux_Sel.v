`timescale 1ns/1ps
module L_2_7_0_Mux_Sel(
	input clk,
	input reset,
	input [31:0] data_in_00, 
	input [31:0] data_in_01, 
	input [31:0] data_in_02, 
	input [31:0] data_in_03, 
	input [31:0] data_in_04, 
	input [31:0] data_in_05, 
	input [31:0] data_in_06, 
	input [31:0] data_in_07, 
	input [31:0] data_in_08, 
	input [31:0] data_in_09, 
	input [31:0] data_in_10, 
	input [31:0] data_in_11, 
	input [31:0] data_in_12, 
	input [31:0] data_in_13, 
	input [31:0] data_in_14, 
	input [31:0] data_in_15,
	input input_start,
	input process_en,
	input [8:0] counter,
	output [2:0] out,
	output reg stop,
	output reg done,
	output signed [31:0] data_out_00, 
	output signed [31:0] data_out_01, 
	output signed [31:0] data_out_02, 
	output signed [31:0] data_out_03, 
	output signed [31:0] data_out_04, 
	output signed [31:0] data_out_05, 
	output signed [31:0] data_out_06, 
	output signed [31:0] data_out_07, 
	output signed [31:0] data_out_08, 
	output signed [31:0] data_out_09, 
	output signed [31:0] data_out_10, 
	output signed [31:0] data_out_11, 
	output signed [31:0] data_out_12, 
	output signed [31:0] data_out_13, 
	output signed [31:0] data_out_14, 
	output signed [31:0] data_out_15, 
	output signed [31:0] data_out_16, 
	output signed [31:0] data_out_17, 
	output signed [31:0] data_out_18, 
	output signed [31:0] data_out_19, 
	output signed [31:0] data_out_20, 
	output signed [31:0] data_out_21, 
	output signed [31:0] data_out_22, 
	output signed [31:0] data_out_23, 
	output signed [31:0] data_out_24, 
	output signed [31:0] data_out_25, 
	output signed [31:0] data_out_26, 
	output signed [31:0] data_out_27, 
	output signed [31:0] data_out_28, 
	output signed [31:0] data_out_29, 
	output signed [31:0] data_out_30, 
	output signed [31:0] data_out_31, 
	output signed [31:0] data_out_32, 
	output signed [31:0] data_out_33, 
	output signed [31:0] data_out_34, 
	output signed [31:0] data_out_35, 
	output signed [31:0] data_out_36, 
	output signed [31:0] data_out_37, 
	output signed [31:0] data_out_38, 
	output signed [31:0] data_out_39, 
	output signed [31:0] data_out_40, 
	output signed [31:0] data_out_41, 
	output signed [31:0] data_out_42, 
	output signed [31:0] data_out_43, 
	output signed [31:0] data_out_44, 
	output signed [31:0] data_out_45, 
	output signed [31:0] data_out_46, 
	output signed [31:0] data_out_47, 
	output signed [31:0] data_out_48, 
	output signed [31:0] data_out_49, 
	output signed [31:0] data_out_50, 
	output signed [31:0] data_out_51, 
	output signed [31:0] data_out_52, 
	output signed [31:0] data_out_53, 
	output signed [31:0] data_out_54, 
	output signed [31:0] data_out_55, 
	output signed [31:0] data_out_56, 
	output signed [31:0] data_out_57, 
	output signed [31:0] data_out_58, 
	output signed [31:0] data_out_59, 
	output signed [31:0] data_out_60, 
	output signed [31:0] data_out_61, 
	output signed [31:0] data_out_62, 
	output signed [31:0] data_out_63
);
	wire q1;
	wire signed [31:0] data_in_wire [0:15];
	wire signed [31:0] w1 [0:15];
	wire signed [31:0] w2 [0:15];
	wire signed [31:0] w3 [0:15];
	wire signed [31:0] w4 [0:15];
	reg done_d,done_dd,done_ddd;
	genvar i;
	generate 
	for(i = 0 ; i < 16 ; i = i + 1)begin
		L_2_6_0_Global_average_pooling q (.clk(clk),.reset(reset),.data_in(data_in_wire[i]),.pulse(q1),.data_out_1(w1[i]),.data_out_2(w2[i]),.data_out_3(w3[i]),.data_out_4(w4[i]),.process_en(process_en), .input_start(input_start), .counter(counter));
		
	end
	L_2_6_4_Counter_508 a1 (.clk(clk),.rst(reset),.pulse(q1),.out(out),.input_start(input_start), .process_en(process_en), .counter(counter));

	assign data_in_wire[0] = data_in_00;
	assign data_in_wire[1] = data_in_01; 
	assign data_in_wire[2] = data_in_02; 
	assign data_in_wire[3] = data_in_03; 
	assign data_in_wire[4] = data_in_04; 
	assign data_in_wire[5] = data_in_05; 
	assign data_in_wire[6] = data_in_06; 
	assign data_in_wire[7] = data_in_07; 
	assign data_in_wire[8] = data_in_08; 
	assign data_in_wire[9] = data_in_09; 
	assign data_in_wire[10] = data_in_10; 
	assign data_in_wire[11] = data_in_11; 
	assign data_in_wire[12] = data_in_12; 
	assign data_in_wire[13] = data_in_13; 
	assign data_in_wire[14] = data_in_14; 
	assign data_in_wire[15] = data_in_15; 


	assign data_out_00 = w1[0]; 
	assign data_out_16 = w2[0]; 
	assign data_out_32 = w3[0]; 
	assign data_out_48 = w4[0]; 
	assign data_out_01 = w1[1]; 
	assign data_out_17 = w2[1]; 
	assign data_out_33 = w3[1]; 
	assign data_out_49 = w4[1]; 
	assign data_out_02 = w1[2]; 
	assign data_out_18 = w2[2]; 
	assign data_out_34 = w3[2]; 
	assign data_out_50 = w4[2]; 
	assign data_out_03 = w1[3]; 
	assign data_out_19 = w2[3]; 
	assign data_out_35 = w3[3]; 
	assign data_out_51 = w4[3]; 
	assign data_out_04 = w1[4]; 
	assign data_out_20 = w2[4]; 
	assign data_out_36 = w3[4]; 
	assign data_out_52 = w4[4]; 
	assign data_out_05 = w1[5]; 
	assign data_out_21 = w2[5]; 
	assign data_out_37 = w3[5]; 
	assign data_out_53 = w4[5]; 
	assign data_out_06 = w1[6]; 
	assign data_out_22 = w2[6]; 
	assign data_out_38 = w3[6]; 
	assign data_out_54 = w4[6]; 
	assign data_out_07 = w1[7]; 
	assign data_out_23 = w2[7]; 
	assign data_out_39 = w3[7]; 
	assign data_out_55 = w4[7]; 
	assign data_out_08 = w1[8]; 
	assign data_out_24 = w2[8]; 
	assign data_out_40 = w3[8]; 
	assign data_out_56 = w4[8]; 
	assign data_out_09 = w1[9]; 
	assign data_out_25 = w2[9]; 
	assign data_out_41 = w3[9]; 
	assign data_out_57 = w4[9]; 
	assign data_out_10 = w1[10]; 
	assign data_out_26 = w2[10]; 
	assign data_out_42 = w3[10]; 
	assign data_out_58 = w4[10]; 
	assign data_out_11 = w1[11]; 
	assign data_out_27 = w2[11]; 
	assign data_out_43 = w3[11]; 
	assign data_out_59 = w4[11]; 
	assign data_out_12 = w1[12]; 
	assign data_out_28 = w2[12]; 
	assign data_out_44 = w3[12]; 
	assign data_out_60 = w4[12]; 
	assign data_out_13 = w1[13]; 
	assign data_out_29 = w2[13]; 
	assign data_out_45 = w3[13]; 
	assign data_out_61 = w4[13]; 
	assign data_out_14 = w1[14]; 
	assign data_out_30 = w2[14]; 
	assign data_out_46 = w3[14]; 
	assign data_out_62 = w4[14]; 
	assign data_out_15 = w1[15]; 
	assign data_out_31 = w2[15]; 
	assign data_out_47 = w3[15]; 
	assign data_out_63 = w4[15]; 

	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			stop <= 0;
			done_d <= 0;
			done_dd <= 0;
			done_ddd <= 0;
			done <= 0;
		end
		else
		begin
			done <= done_d;
			done_d <= done_dd;
			done_dd <= done_ddd;
			done_ddd <= stop;
			if((out == 3'b100) && (counter == 509))
			begin
				stop <= 1;
			end
		end
	end



	endgenerate
endmodule