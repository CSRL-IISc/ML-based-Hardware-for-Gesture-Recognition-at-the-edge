`timescale 1ns/1ps
module L_2_6_0_Global_average_pooling(
	input clk,
	input reset,
	input pulse,
	input process_en,
	input input_start,
	input [8:0] counter,
	input signed [31:0] data_in,
	output signed [31:0] data_out_1,
	output signed [31:0] data_out_2,
	output signed [31:0] data_out_3,
	output signed [31:0] data_out_4
);
	reg signed [31:0] q1;
	wire signed [31:0] q2,data_out;
	reg [8:0] out_counter;
	L_2_6_1_Accumaltor g1 (.clk(clk), .pulse(pulse), .reset(reset), .data_in(data_in), .data_out(data_out), .process_en(process_en), .counter(counter));
	L_2_6_3_Divide g2 (.data_in(q1), .data_out(q2));
	L_2_6_2_Shift_register g3 (.clk(clk), .reset_main(reset), .pulse(pulse), .data_in(q2), .process_en(process_en), .input_start(input_start),
		.data_out_1(data_out_1), .data_out_2(data_out_2), .data_out_3(data_out_3), .data_out_4(data_out_4), .done(done));
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			q1 <= 0;
		end
		else
		begin
			q1 <= data_out;	
		end		
	end	
endmodule
