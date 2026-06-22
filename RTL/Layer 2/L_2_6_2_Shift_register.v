`timescale 1ns/1ps
module L_2_6_2_Shift_register(
    input                clk,
    input                reset_main,
    input          		 pulse,
	input		   		 process_en,
	input				 input_start,
    input   signed [31:0] data_in,

    output reg signed [31:0] data_out_1,
    output reg signed [31:0] data_out_2,
    output reg signed [31:0] data_out_3,
    output reg signed [31:0] data_out_4,
	output reg done
);
	reg [16:0] counter = 0;
	reg [127:0] shift_reg = 0;
	reg input_start_q; 	
	always@(posedge clk)
	begin
		done <= 0;
		if(reset_main)
		begin
			counter <= 0;
			input_start_q <= 0;
		end
		else
		begin
			input_start_q <= input_start;
			if(process_en && input_start_q)
			begin
				counter <= counter + 1;
				if(pulse)
				begin
					shift_reg <= {shift_reg[95:0], data_in};
				end
				else
				begin
					if(counter >= 2033)
					begin
						data_out_1 <= shift_reg[127:96];
						data_out_2 <= shift_reg[95:64];
						data_out_3 <= shift_reg[63:32];
						data_out_4 <= shift_reg[31:0];
						done <= 1;
					end
					else
					begin
						data_out_1 <= 0;
						data_out_2 <= 0;
						data_out_3 <= 0;
						data_out_4 <= 0;
					end
				end
			end
			else
			begin
				counter <= counter;
				shift_reg <= shift_reg;
				data_out_1 <= data_out_1;
				data_out_2 <= data_out_2;
				data_out_3 <= data_out_3;
				data_out_4 <= data_out_4;
			end
		end
	end
endmodule
