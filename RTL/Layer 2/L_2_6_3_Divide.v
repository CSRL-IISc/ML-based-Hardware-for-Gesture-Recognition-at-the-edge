`timescale 1ns/1ps
module L_2_6_3_Divide(
	input signed [31:0] data_in,
	output reg signed [31:0] data_out
);
	always@(*)
	begin
		data_out = data_in >>> 9;
	end
endmodule
