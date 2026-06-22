`timescale 1ns/1ps
module L_1_5_1_Max(
	input clk,
	input reset,
	input [17:0] data_in,
	input weights_ready,
	input input_start_Layer_1,
	output reg [17:0] data_out
	);
	reg [17:0] q1, q2 = 0;
	reg [1:0] flag =1;
	reg [1:0] flag_q;
	reg max_check;
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			data_out <= 0;
			q1 <= 0;
			q2 <= 0;
			flag <= 0;
			flag_q <= 0;
			max_check <= 0;
		end
		else
		begin
			flag <= flag_q;			
			if(weights_ready & input_start_Layer_1)
			begin
				max_check <= ~max_check;
				q1 <= data_in;
				//q2 <= q1;
				flag_q <= flag_q + 1;
				if(!max_check)
				begin
					data_out <= (data_in > q1) ? data_in : q1;
					flag_q <= 1;
				end
			end
			else
			begin
				data_out <= 0;
				q1 <= 0;
				q2 <= 0;
				flag_q <= 0;
				max_check <= 0;
			end	
		end
	end
endmodule
