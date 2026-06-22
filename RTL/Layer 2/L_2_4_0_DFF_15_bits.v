`timescale 1ns/1ps
module L_2_4_0_DFF_15_bits(
	input clk,
	input reset,
	input signed [31:0] D,
	output reg signed [31:0] Q
);
always@(posedge clk)
begin
	if(reset)
	begin
		Q <= 0;
	end
	else
	begin
		Q<= D;
	end
end
endmodule
