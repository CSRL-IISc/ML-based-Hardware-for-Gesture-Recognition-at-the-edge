`timescale 1ns/1ps
module L_2_6_1_Accumaltor(
	input clk,
	input reset,
	input pulse,
	input process_en,
	input [8:0] counter,
	input signed [31:0] data_in,
	output reg signed [31:0] data_out
);
	reg signed [31:0] data_out_d;
	always @(posedge clk) 
	begin
        data_out <= data_out_d;
		if(reset)
            data_out_d <= 0;
		else 
		begin
			if((pulse) || (counter == 1))
				data_out_d <= data_in;
			else
				data_out_d <= data_out_d + data_in;
		end		
    end
    //assign data_out = q2;

endmodule