`timescale 1ns/1ps
module L_1_2_1_Bias_Loader
	(
		input clk,
		input reset,
		input signed [7:0] data_in,
		input write_done,
		output reg signed [7:0] bias00,
		output reg signed [7:0] bias01,
		output reg signed [7:0] bias02,
		output reg signed [7:0] bias03,
		output reg signed [7:0] bias04,
		output reg signed [7:0] bias05,
		output reg signed [7:0] bias06,
		output reg signed [7:0] bias07,
		output reg signed [7:0] bias08,
		output reg signed [7:0] bias09,
		output reg signed [7:0] bias10,
		output reg signed [7:0] bias11,
		output reg signed [7:0] bias12,
		output reg signed [7:0] bias13,
		output reg signed [7:0] bias14,
		output reg signed [7:0] bias15,
		output reg signed [7:0] bias16,
		output reg signed [7:0] bias17,
		output reg signed [7:0] bias18,
		output reg signed [7:0] bias19,
		output reg signed [7:0] bias20,
		output reg signed [7:0] bias21,
		output reg signed [7:0] bias22,
		output reg signed [7:0] bias23,
		output reg signed [7:0] bias24,
		output reg signed [7:0] bias25,
		output reg signed [7:0] bias26,
		output reg signed [7:0] bias27,
		output reg signed [7:0] bias28,
		output reg signed [7:0] bias29,
		output reg signed [7:0] bias30,
		output reg signed [7:0] bias31,		
		output reg done	
	);
	localparam width = 8192;
	reg signed [7 : 0 ] shift_reg [31 : 0];
	reg [6:0] counter = 0;
	reg [6:0] flag = 0;
	reg ena_reg = 0;
	reg done_q;
	integer i;
	always@(posedge clk)
		begin
			if(reset)
				begin
					counter <= 0;
					flag <= 0;
					ena_reg <= 0;
				end
			else
				begin
					if(write_done)
						begin
							if(counter < 34)
								begin
									flag <= flag + 1;
									ena_reg <= 1;
									if(flag>1)
										begin
											shift_reg [counter] <= data_in;
											counter <= counter + 1;
										end
								end
							else
								begin
									ena_reg <= 0;
								end
						end
				end
		end
	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			bias00 <= 0;
			bias01 <= 0;
			bias02 <= 0;
			bias03 <= 0;
			bias04 <= 0;
			bias05 <= 0;
			bias06 <= 0;
			bias07 <= 0;
			bias08 <= 0;
			bias09 <= 0;
			bias10 <= 0;
			bias11 <= 0;
			bias12 <= 0;
			bias13 <= 0;
			bias14 <= 0;
			bias15 <= 0;
			bias16 <= 0;
			bias17 <= 0;
			bias18 <= 0;
			bias19 <= 0;
			bias20 <= 0;
			bias21 <= 0;
			bias22 <= 0;
			bias23 <= 0;
			bias24 <= 0;
			bias25 <= 0;
			bias26 <= 0;
			bias27 <= 0;
			bias28 <= 0;
			bias29 <= 0;
			bias30 <= 0;
			bias31 <= 0;
			done_q <= 0;
			done <= 0;
		end
		else
		begin
			done_q <= done;
			if(counter == 34)
			begin
				bias00 <= shift_reg[0];
				bias01 <= shift_reg[1];
				bias02 <= shift_reg[2];
				bias03 <= shift_reg[3];
				bias04 <= shift_reg[4];
				bias05 <= shift_reg[5];
				bias06 <= shift_reg[6];
				bias07 <= shift_reg[7];
				bias08 <= shift_reg[8];
				bias09 <= shift_reg[9];
				bias10 <= shift_reg[10];
				bias11 <= shift_reg[11];
				bias12 <= shift_reg[12];
				bias13 <= shift_reg[13];
				bias14 <= shift_reg[14];
				bias15 <= shift_reg[15];
				bias16 <= shift_reg[16];
				bias17 <= shift_reg[17];
				bias18 <= shift_reg[18];
				bias19 <= shift_reg[19];
				bias20 <= shift_reg[20];
				bias21 <= shift_reg[21];
				bias22 <= shift_reg[22];
				bias23 <= shift_reg[23];
				bias24 <= shift_reg[24];
				bias25 <= shift_reg[25];
				bias26 <= shift_reg[26];
				bias27 <= shift_reg[27];
				bias28 <= shift_reg[28];
				bias29 <= shift_reg[29];
				bias30 <= shift_reg[30];
				bias31 <= shift_reg[31];					
				done_q <= 1;
			end
			else
			begin
				bias00 <= 0;
				bias01 <= 0;
				bias02 <= 0;
				bias03 <= 0;
				bias04 <= 0;
				bias05 <= 0;
				bias06 <= 0;
				bias07 <= 0;
				bias08 <= 0;
				bias09 <= 0;
				bias10 <= 0;
				bias11 <= 0;
				bias12 <= 0;
				bias13 <= 0;
				bias14 <= 0;
				bias15 <= 0;
				bias16 <= 0;
				bias17 <= 0;
				bias18 <= 0;
				bias19 <= 0;
				bias20 <= 0;
				bias21 <= 0;
				bias22 <= 0;
				bias23 <= 0;
				bias24 <= 0;
				bias25 <= 0;
				bias26 <= 0;
				bias27 <= 0;
				bias28 <= 0;
				bias29 <= 0;
				bias30 <= 0;
				bias31 <= 0;
				done_q <= 0;	
			end
		end	
	end
endmodule	
