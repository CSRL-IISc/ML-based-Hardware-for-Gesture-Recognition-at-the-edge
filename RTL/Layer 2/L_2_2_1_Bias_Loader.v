`timescale 1ns/1ps
module L_2_2_1_Bias_Loader
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
		output reg signed [7:0] bias32,
		output reg signed [7:0] bias33,
		output reg signed [7:0] bias34,
		output reg signed [7:0] bias35,
		output reg signed [7:0] bias36,
		output reg signed [7:0] bias37,
		output reg signed [7:0] bias38,
		output reg signed [7:0] bias39,
		output reg signed [7:0] bias40,
		output reg signed [7:0] bias41,
		output reg signed [7:0] bias42,
		output reg signed [7:0] bias43,
		output reg signed [7:0] bias44,
		output reg signed [7:0] bias45,
		output reg signed [7:0] bias46,
		output reg signed [7:0] bias47,
		output reg signed [7:0] bias48,
		output reg signed [7:0] bias49,
		output reg signed [7:0] bias50,
		output reg signed [7:0] bias51,
		output reg signed [7:0] bias52,
		output reg signed [7:0] bias53,
		output reg signed [7:0] bias54,
		output reg signed [7:0] bias55,
		output reg signed [7:0] bias56,
		output reg signed [7:0] bias57,
		output reg signed [7:0] bias58,
		output reg signed [7:0] bias59,
		output reg signed [7:0] bias60,
		output reg signed [7:0] bias61,
		output reg signed [7:0] bias62,
		output reg signed [7:0] bias63,
		output reg done	
	);
	localparam width = 8192;
	reg signed [7 : 0 ] shift_reg [63 : 0];
	reg [6:0] counter = 0;
	reg [6:0] flag = 0;
	reg ena_reg = 0;
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
							if(counter < 65)
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
	always@(*)
		begin
			if(counter == 65)
				begin
					bias00 = shift_reg[0];
					bias01 = shift_reg[1];
					bias02 = shift_reg[2];
					bias03 = shift_reg[3];
					bias04 = shift_reg[4];
					bias05 = shift_reg[5];
					bias06 = shift_reg[6];
					bias07 = shift_reg[7];
					bias08 = shift_reg[8];
					bias09 = shift_reg[9];
					bias10 = shift_reg[10];
					bias11 = shift_reg[11];
					bias12 = shift_reg[12];
					bias13 = shift_reg[13];
					bias14 = shift_reg[14];
					bias15 = shift_reg[15];
					bias16 = shift_reg[16];
					bias17 = shift_reg[17];
					bias18 = shift_reg[18];
					bias19 = shift_reg[19];
					bias20 = shift_reg[20];
					bias21 = shift_reg[21];
					bias22 = shift_reg[22];
					bias23 = shift_reg[23];
					bias24 = shift_reg[24];
					bias25 = shift_reg[25];
					bias26 = shift_reg[26];
					bias27 = shift_reg[27];
					bias28 = shift_reg[28];
					bias29 = shift_reg[29];
					bias30 = shift_reg[30];
					bias31 = shift_reg[31];
					bias32 = shift_reg[32];
					bias33 = shift_reg[33];
					bias34 = shift_reg[34];
					bias35 = shift_reg[35];
					bias36 = shift_reg[36];
					bias37 = shift_reg[37];
					bias38 = shift_reg[38];
					bias39 = shift_reg[39];
					bias40 = shift_reg[40];
					bias41 = shift_reg[41];
					bias42 = shift_reg[42];
					bias43 = shift_reg[43];
					bias44 = shift_reg[44];
					bias45 = shift_reg[45];
					bias46 = shift_reg[46];
					bias47 = shift_reg[47];
					bias48 = shift_reg[48];
					bias49 = shift_reg[49];
					bias50 = shift_reg[50];
					bias51 = shift_reg[51];
					bias52 = shift_reg[52];
					bias53 = shift_reg[53];
					bias54 = shift_reg[54];
					bias55 = shift_reg[55];
					bias56 = shift_reg[56];
					bias57 = shift_reg[57];
					bias58 = shift_reg[58];
					bias59 = shift_reg[59];
					bias60 = shift_reg[60];
					bias61 = shift_reg[61];
					bias62 = shift_reg[62];
					bias63 = shift_reg[63];
					done = 1;
				end
			else
				begin
					bias00 = 0;
					bias01 = 0;
					bias02 = 0;
					bias03 = 0;
					bias04 = 0;
                    bias05 = 0;
                    bias06 = 0;
                    bias07 = 0;
                    bias08 = 0;
                    bias09 = 0;
                    bias10 = 0;
                    bias11 = 0;
                    bias12 = 0;
                    bias13 = 0;
                    bias14 = 0;
                    bias15 = 0;
                    bias16 = 0;
                    bias17 = 0;
                    bias18 = 0;
                    bias19 = 0;
                    bias20 = 0;
                    bias21 = 0;
                    bias22 = 0;
                    bias23 = 0;
                    bias24 = 0;
                    bias25 = 0;
                    bias26 = 0;
                    bias27 = 0;
                    bias28 = 0;
                    bias29 = 0;
                    bias30 = 0;
                    bias31 = 0;
                    bias32 = 0;
                    bias33 = 0;
                    bias34 = 0;
                    bias35 = 0;
                    bias36 = 0;
                    bias37 = 0;
                    bias38 = 0;
                    bias39 = 0;
                    bias40 = 0;
                    bias41 = 0;
                    bias42 = 0;
                    bias43 = 0;
                    bias44 = 0;
                    bias45 = 0;
                    bias46 = 0;
                    bias47 = 0;
                    bias48 = 0;
                    bias49 = 0;
                    bias50 = 0;
                    bias51 = 0;
                    bias52 = 0;
                    bias53 = 0;
                    bias54 = 0;
                    bias55 = 0;
                    bias56 = 0;
                    bias57 = 0;
                    bias58 = 0;
                    bias59 = 0;
                    bias60 = 0;
                    bias61 = 0;
                    bias62 = 0;
                    bias63 = 0;
				end
		end
endmodule	