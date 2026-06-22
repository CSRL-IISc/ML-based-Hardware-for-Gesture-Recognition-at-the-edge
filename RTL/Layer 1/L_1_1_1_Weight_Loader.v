`timescale 1ns/1ps
module L_1_1_1_Weight_Loader
	(
		input clk,
		input reset,
		input signed [7:0] data_in,
		input write_done,
		output reg [7:0] w00_00,
		output reg [7:0] w00_01,
		output reg [7:0] w00_02,
		output reg [7:0] w00_03,
		output reg [7:0] w00_04,
		output reg [7:0] w00_05,
		output reg [7:0] w00_06,
		output reg [7:0] w00_07,
		output reg [7:0] w00_08,
		output reg [7:0] w00_09,
		output reg [7:0] w00_10,
		output reg [7:0] w00_11,
		output reg [7:0] w01_00,
		output reg [7:0] w01_01,
		output reg [7:0] w01_02,
		output reg [7:0] w01_03,
		output reg [7:0] w01_04,
		output reg [7:0] w01_05,
		output reg [7:0] w01_06,
		output reg [7:0] w01_07,
		output reg [7:0] w01_08,
		output reg [7:0] w01_09,
		output reg [7:0] w01_10,
		output reg [7:0] w01_11,
		output reg [7:0] w02_00,
		output reg [7:0] w02_01,
		output reg [7:0] w02_02,
		output reg [7:0] w02_03,
		output reg [7:0] w02_04,
		output reg [7:0] w02_05,
		output reg [7:0] w02_06,
		output reg [7:0] w02_07,
		output reg [7:0] w02_08,
		output reg [7:0] w02_09,
		output reg [7:0] w02_10,
		output reg [7:0] w02_11,
		output reg [7:0] w03_00,
		output reg [7:0] w03_01,
		output reg [7:0] w03_02,
		output reg [7:0] w03_03,
		output reg [7:0] w03_04,
		output reg [7:0] w03_05,
		output reg [7:0] w03_06,
		output reg [7:0] w03_07,
		output reg [7:0] w03_08,
		output reg [7:0] w03_09,
		output reg [7:0] w03_10,
		output reg [7:0] w03_11,
		output reg [7:0] w04_00,
		output reg [7:0] w04_01,
		output reg [7:0] w04_02,
		output reg [7:0] w04_03,
		output reg [7:0] w04_04,
		output reg [7:0] w04_05,
		output reg [7:0] w04_06,
		output reg [7:0] w04_07,
		output reg [7:0] w04_08,
		output reg [7:0] w04_09,
		output reg [7:0] w04_10,
		output reg [7:0] w04_11,
		output reg [7:0] w05_00,
		output reg [7:0] w05_01,
		output reg [7:0] w05_02,
		output reg [7:0] w05_03,
		output reg [7:0] w05_04,
		output reg [7:0] w05_05,
		output reg [7:0] w05_06,
		output reg [7:0] w05_07,
		output reg [7:0] w05_08,
		output reg [7:0] w05_09,
		output reg [7:0] w05_10,
		output reg [7:0] w05_11,
		output reg [7:0] w06_00,
		output reg [7:0] w06_01,
		output reg [7:0] w06_02,
		output reg [7:0] w06_03,
		output reg [7:0] w06_04,
		output reg [7:0] w06_05,
		output reg [7:0] w06_06,
		output reg [7:0] w06_07,
		output reg [7:0] w06_08,
		output reg [7:0] w06_09,
		output reg [7:0] w06_10,
		output reg [7:0] w06_11,
		output reg [7:0] w07_00,
		output reg [7:0] w07_01,
		output reg [7:0] w07_02,
		output reg [7:0] w07_03,
		output reg [7:0] w07_04,
		output reg [7:0] w07_05,
		output reg [7:0] w07_06,
		output reg [7:0] w07_07,
		output reg [7:0] w07_08,
		output reg [7:0] w07_09,
		output reg [7:0] w07_10,
		output reg [7:0] w07_11,
		output reg [7:0] w08_00,
		output reg [7:0] w08_01,
		output reg [7:0] w08_02,
		output reg [7:0] w08_03,
		output reg [7:0] w08_04,
		output reg [7:0] w08_05,
		output reg [7:0] w08_06,
		output reg [7:0] w08_07,
		output reg [7:0] w08_08,
		output reg [7:0] w08_09,
		output reg [7:0] w08_10,
		output reg [7:0] w08_11,
		output reg [7:0] w09_00,
		output reg [7:0] w09_01,
		output reg [7:0] w09_02,
		output reg [7:0] w09_03,
		output reg [7:0] w09_04,
		output reg [7:0] w09_05,
		output reg [7:0] w09_06,
		output reg [7:0] w09_07,
		output reg [7:0] w09_08,
		output reg [7:0] w09_09,
		output reg [7:0] w09_10,
		output reg [7:0] w09_11,
		output reg [7:0] w10_00,
		output reg [7:0] w10_01,
		output reg [7:0] w10_02,
		output reg [7:0] w10_03,
		output reg [7:0] w10_04,
		output reg [7:0] w10_05,
		output reg [7:0] w10_06,
		output reg [7:0] w10_07,
		output reg [7:0] w10_08,
		output reg [7:0] w10_09,
		output reg [7:0] w10_10,
		output reg [7:0] w10_11,
		output reg [7:0] w11_00,
		output reg [7:0] w11_01,
		output reg [7:0] w11_02,
		output reg [7:0] w11_03,
		output reg [7:0] w11_04,
		output reg [7:0] w11_05,
		output reg [7:0] w11_06,
		output reg [7:0] w11_07,
		output reg [7:0] w11_08,
		output reg [7:0] w11_09,
		output reg [7:0] w11_10,
		output reg [7:0] w11_11,
		output reg [7:0] w12_00,
		output reg [7:0] w12_01,
		output reg [7:0] w12_02,
		output reg [7:0] w12_03,
		output reg [7:0] w12_04,
		output reg [7:0] w12_05,
		output reg [7:0] w12_06,
		output reg [7:0] w12_07,
		output reg [7:0] w12_08,
		output reg [7:0] w12_09,
		output reg [7:0] w12_10,
		output reg [7:0] w12_11,
		output reg [7:0] w13_00,
		output reg [7:0] w13_01,
		output reg [7:0] w13_02,
		output reg [7:0] w13_03,
		output reg [7:0] w13_04,
		output reg [7:0] w13_05,
		output reg [7:0] w13_06,
		output reg [7:0] w13_07,
		output reg [7:0] w13_08,
		output reg [7:0] w13_09,
		output reg [7:0] w13_10,
		output reg [7:0] w13_11,
		output reg [7:0] w14_00,
		output reg [7:0] w14_01,
		output reg [7:0] w14_02,
		output reg [7:0] w14_03,
		output reg [7:0] w14_04,
		output reg [7:0] w14_05,
		output reg [7:0] w14_06,
		output reg [7:0] w14_07,
		output reg [7:0] w14_08,
		output reg [7:0] w14_09,
		output reg [7:0] w14_10,
		output reg [7:0] w14_11,
		output reg [7:0] w15_00,
		output reg [7:0] w15_01,
		output reg [7:0] w15_02,
		output reg [7:0] w15_03,
		output reg [7:0] w15_04,
		output reg [7:0] w15_05,
		output reg [7:0] w15_06,
		output reg [7:0] w15_07,
		output reg [7:0] w15_08,
		output reg [7:0] w15_09,
		output reg [7:0] w15_10,
		output reg [7:0] w15_11,
		output reg [7:0] w16_00,
		output reg [7:0] w16_01,
		output reg [7:0] w16_02,
		output reg [7:0] w16_03,
		output reg [7:0] w16_04,
		output reg [7:0] w16_05,
		output reg [7:0] w16_06,
		output reg [7:0] w16_07,
		output reg [7:0] w16_08,
		output reg [7:0] w16_09,
		output reg [7:0] w16_10,
		output reg [7:0] w16_11,
		output reg [7:0] w17_00,
		output reg [7:0] w17_01,
		output reg [7:0] w17_02,
		output reg [7:0] w17_03,
		output reg [7:0] w17_04,
		output reg [7:0] w17_05,
		output reg [7:0] w17_06,
		output reg [7:0] w17_07,
		output reg [7:0] w17_08,
		output reg [7:0] w17_09,
		output reg [7:0] w17_10,
		output reg [7:0] w17_11,
		output reg [7:0] w18_00,
		output reg [7:0] w18_01,
		output reg [7:0] w18_02,
		output reg [7:0] w18_03,
		output reg [7:0] w18_04,
		output reg [7:0] w18_05,
		output reg [7:0] w18_06,
		output reg [7:0] w18_07,
		output reg [7:0] w18_08,
		output reg [7:0] w18_09,
		output reg [7:0] w18_10,
		output reg [7:0] w18_11,
		output reg [7:0] w19_00,
		output reg [7:0] w19_01,
		output reg [7:0] w19_02,
		output reg [7:0] w19_03,
		output reg [7:0] w19_04,
		output reg [7:0] w19_05,
		output reg [7:0] w19_06,
		output reg [7:0] w19_07,
		output reg [7:0] w19_08,
		output reg [7:0] w19_09,
		output reg [7:0] w19_10,
		output reg [7:0] w19_11,
		output reg [7:0] w20_00,
		output reg [7:0] w20_01,
		output reg [7:0] w20_02,
		output reg [7:0] w20_03,
		output reg [7:0] w20_04,
		output reg [7:0] w20_05,
		output reg [7:0] w20_06,
		output reg [7:0] w20_07,
		output reg [7:0] w20_08,
		output reg [7:0] w20_09,
		output reg [7:0] w20_10,
		output reg [7:0] w20_11,
		output reg [7:0] w21_00,
		output reg [7:0] w21_01,
		output reg [7:0] w21_02,
		output reg [7:0] w21_03,
		output reg [7:0] w21_04,
		output reg [7:0] w21_05,
		output reg [7:0] w21_06,
		output reg [7:0] w21_07,
		output reg [7:0] w21_08,
		output reg [7:0] w21_09,
		output reg [7:0] w21_10,
		output reg [7:0] w21_11,
		output reg [7:0] w22_00,
		output reg [7:0] w22_01,
		output reg [7:0] w22_02,
		output reg [7:0] w22_03,
		output reg [7:0] w22_04,
		output reg [7:0] w22_05,
		output reg [7:0] w22_06,
		output reg [7:0] w22_07,
		output reg [7:0] w22_08,
		output reg [7:0] w22_09,
		output reg [7:0] w22_10,
		output reg [7:0] w22_11,
		output reg [7:0] w23_00,
		output reg [7:0] w23_01,
		output reg [7:0] w23_02,
		output reg [7:0] w23_03,
		output reg [7:0] w23_04,
		output reg [7:0] w23_05,
		output reg [7:0] w23_06,
		output reg [7:0] w23_07,
		output reg [7:0] w23_08,
		output reg [7:0] w23_09,
		output reg [7:0] w23_10,
		output reg [7:0] w23_11,
		output reg [7:0] w24_00,
		output reg [7:0] w24_01,
		output reg [7:0] w24_02,
		output reg [7:0] w24_03,
		output reg [7:0] w24_04,
		output reg [7:0] w24_05,
		output reg [7:0] w24_06,
		output reg [7:0] w24_07,
		output reg [7:0] w24_08,
		output reg [7:0] w24_09,
		output reg [7:0] w24_10,
		output reg [7:0] w24_11,
		output reg [7:0] w25_00,
		output reg [7:0] w25_01,
		output reg [7:0] w25_02,
		output reg [7:0] w25_03,
		output reg [7:0] w25_04,
		output reg [7:0] w25_05,
		output reg [7:0] w25_06,
		output reg [7:0] w25_07,
		output reg [7:0] w25_08,
		output reg [7:0] w25_09,
		output reg [7:0] w25_10,
		output reg [7:0] w25_11,
		output reg [7:0] w26_00,
		output reg [7:0] w26_01,
		output reg [7:0] w26_02,
		output reg [7:0] w26_03,
		output reg [7:0] w26_04,
		output reg [7:0] w26_05,
		output reg [7:0] w26_06,
		output reg [7:0] w26_07,
		output reg [7:0] w26_08,
		output reg [7:0] w26_09,
		output reg [7:0] w26_10,
		output reg [7:0] w26_11,
		output reg [7:0] w27_00,
		output reg [7:0] w27_01,
		output reg [7:0] w27_02,
		output reg [7:0] w27_03,
		output reg [7:0] w27_04,
		output reg [7:0] w27_05,
		output reg [7:0] w27_06,
		output reg [7:0] w27_07,
		output reg [7:0] w27_08,
		output reg [7:0] w27_09,
		output reg [7:0] w27_10,
		output reg [7:0] w27_11,
		output reg [7:0] w28_00,
		output reg [7:0] w28_01,
		output reg [7:0] w28_02,
		output reg [7:0] w28_03,
		output reg [7:0] w28_04,
		output reg [7:0] w28_05,
		output reg [7:0] w28_06,
		output reg [7:0] w28_07,
		output reg [7:0] w28_08,
		output reg [7:0] w28_09,
		output reg [7:0] w28_10,
		output reg [7:0] w28_11,
		output reg [7:0] w29_00,
		output reg [7:0] w29_01,
		output reg [7:0] w29_02,
		output reg [7:0] w29_03,
		output reg [7:0] w29_04,
		output reg [7:0] w29_05,
		output reg [7:0] w29_06,
		output reg [7:0] w29_07,
		output reg [7:0] w29_08,
		output reg [7:0] w29_09,
		output reg [7:0] w29_10,
		output reg [7:0] w29_11,
		(* dont_touch = "true" *)output reg [7:0] w30_00,
		(* dont_touch = "true" *)output reg [7:0] w30_01,
		(* dont_touch = "true" *)output reg [7:0] w30_02,
		(* dont_touch = "true" *)output reg [7:0] w30_03,
		(* dont_touch = "true" *)output reg [7:0] w30_04,
		(* dont_touch = "true" *)output reg [7:0] w30_05,
		(* dont_touch = "true" *)output reg [7:0] w30_06,
		(* dont_touch = "true" *)output reg [7:0] w30_07,
		(* dont_touch = "true" *)output reg [7:0] w30_08,
		(* dont_touch = "true" *)output reg [7:0] w30_09,
		(* dont_touch = "true" *)output reg [7:0] w30_10,
		(* dont_touch = "true" *)output reg [7:0] w30_11,
		(* dont_touch = "true" *)output reg [7:0] w31_00,
		(* dont_touch = "true" *)output reg [7:0] w31_01,
		(* dont_touch = "true" *)output reg [7:0] w31_02,
		(* dont_touch = "true" *)output reg [7:0] w31_03,
		(* dont_touch = "true" *)output reg [7:0] w31_04,
		(* dont_touch = "true" *)output reg [7:0] w31_05,
		(* dont_touch = "true" *)output reg [7:0] w31_06,
		(* dont_touch = "true" *)output reg [7:0] w31_07,
		(* dont_touch = "true" *)output reg [7:0] w31_08,
		(* dont_touch = "true" *)output reg [7:0] w31_09,
		(* dont_touch = "true" *)output reg [7:0] w31_10,
		(* dont_touch = "true" *)output reg [7:0] w31_11,
		output reg done	
	);
	reg signed [7 : 0 ] shift_reg [383 : 0];
	reg done_q;
	reg [10:0] counter = 0;
	reg [10:0] flag = 0;
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
					done <= done_q;
					if(write_done)
						begin
							if(counter < 384)
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
	always@(posedge clk)
		begin
			if(reset)
			begin
				w00_00 <= 0;
				w00_01 <= 0;
				w00_02 <= 0;
				w00_03 <= 0;
				w00_04 <= 0;
				w00_05 <= 0;
				w00_06 <= 0;
				w00_07 <= 0;
				w00_08 <= 0;
				w00_09 <= 0;
				w00_10 <= 0;
				w00_11 <= 0;
				w01_00 <= 0;
				w01_01 <= 0;
				w01_02 <= 0;
				w01_03 <= 0;
				w01_04 <= 0;
				w01_05 <= 0;
				w01_06 <= 0;
				w01_07 <= 0;
				w01_08 <= 0;
				w01_09 <= 0;
				w01_10 <= 0;
				w01_11 <= 0;
				w02_00 <= 0;
				w02_01 <= 0;
				w02_02 <= 0;
				w02_03 <= 0;
				w02_04 <= 0;
				w02_05 <= 0;
				w02_06 <= 0;
				w02_07 <= 0;
				w02_08 <= 0;
				w02_09 <= 0;
				w02_10 <= 0;
				w02_11 <= 0;
				w03_00 <= 0;
				w03_01 <= 0;
				w03_02 <= 0;
				w03_03 <= 0;
				w03_04 <= 0;
				w03_05 <= 0;
				w03_06 <= 0;
				w03_07 <= 0;
				w03_08 <= 0;
				w03_09 <= 0;
				w03_10 <= 0;
				w03_11 <= 0;
				w04_00 <= 0;
				w04_01 <= 0;
				w04_02 <= 0;
				w04_03 <= 0;
				w04_04 <= 0;
				w04_05 <= 0;
				w04_06 <= 0;
				w04_07 <= 0;
				w04_08 <= 0;
				w04_09 <= 0;
				w04_10 <= 0;
				w04_11 <= 0;
				w05_00 <= 0;
				w05_01 <= 0;
				w05_02 <= 0;
				w05_03 <= 0;
				w05_04 <= 0;
				w05_05 <= 0;
				w05_06 <= 0;
				w05_07 <= 0;
				w05_08 <= 0;
				w05_09 <= 0;
				w05_10 <= 0;
				w05_11 <= 0;
				w06_00 <= 0;
				w06_01 <= 0;
				w06_02 <= 0;
				w06_03 <= 0;
				w06_04 <= 0;
				w06_05 <= 0;
				w06_06 <= 0;
				w06_07 <= 0;
				w06_08 <= 0;
				w06_09 <= 0;
				w06_10 <= 0;
				w06_11 <= 0;
				w07_00 <= 0;
				w07_01 <= 0;
				w07_02 <= 0;
				w07_03 <= 0;
				w07_04 <= 0;
				w07_05 <= 0;
				w07_06 <= 0;
				w07_07 <= 0;
				w07_08 <= 0;
				w07_09 <= 0;
				w07_10 <= 0;
				w07_11 <= 0;
				w08_00 <= 0;
				w08_01 <= 0;
				w08_02 <= 0;
				w08_03 <= 0;
				w08_04 <= 0;
				w08_05 <= 0;
				w08_06 <= 0;
				w08_07 <= 0;
				w08_08 <= 0;
				w08_09 <= 0;
				w08_10 <= 0;
				w08_11 <= 0;
				w09_00 <= 0;
				w09_01 <= 0;
				w09_02 <= 0;
				w09_03 <= 0;
				w09_04 <= 0;
				w09_05 <= 0;
				w09_06 <= 0;
				w09_07 <= 0;
				w09_08 <= 0;
				w09_09 <= 0;
				w09_10 <= 0;
				w09_11 <= 0;
				w10_00 <= 0;
				w10_01 <= 0;
				w10_02 <= 0;
				w10_03 <= 0;
				w10_04 <= 0;
				w10_05 <= 0;
				w10_06 <= 0;
				w10_07 <= 0;
				w10_08 <= 0;
				w10_09 <= 0;
				w10_10 <= 0;
				w10_11 <= 0;
				w11_00 <= 0;
				w11_01 <= 0;
				w11_02 <= 0;
				w11_03 <= 0;
				w11_04 <= 0;
				w11_05 <= 0;
				w11_06 <= 0;
				w11_07 <= 0;
				w11_08 <= 0;
				w11_09 <= 0;
				w11_10 <= 0;
				w11_11 <= 0;
				w12_00 <= 0;
				w12_01 <= 0;
				w12_02 <= 0;
				w12_03 <= 0;
				w12_04 <= 0;
				w12_05 <= 0;
				w12_06 <= 0;
				w12_07 <= 0;
				w12_08 <= 0;
				w12_09 <= 0;
				w12_10 <= 0;
				w12_11 <= 0;
				w13_00 <= 0;
				w13_01 <= 0;
				w13_02 <= 0;
				w13_03 <= 0;
				w13_04 <= 0;
				w13_05 <= 0;
				w13_06 <= 0;
				w13_07 <= 0;
				w13_08 <= 0;
				w13_09 <= 0;
				w13_10 <= 0;
				w13_11 <= 0;
				w14_00 <= 0;
				w14_01 <= 0;
				w14_02 <= 0;
				w14_03 <= 0;
				w14_04 <= 0;
				w14_05 <= 0;
				w14_06 <= 0;
				w14_07 <= 0;
				w14_08 <= 0;
				w14_09 <= 0;
				w14_10 <= 0;
				w14_11 <= 0;
				w15_00 <= 0;
				w15_01 <= 0;
				w15_02 <= 0;
				w15_03 <= 0;
				w15_04 <= 0;
				w15_05 <= 0;
				w15_06 <= 0;
				w15_07 <= 0;
				w15_08 <= 0;
				w15_09 <= 0;
				w15_10 <= 0;
				w15_11 <= 0;
				w16_00 <= 0;
				w16_01 <= 0;
				w16_02 <= 0;
				w16_03 <= 0;
				w16_04 <= 0;
				w16_05 <= 0;
				w16_06 <= 0;
				w16_07 <= 0;
				w16_08 <= 0;
				w16_09 <= 0;
				w16_10 <= 0;
				w16_11 <= 0;
				w17_00 <= 0;
				w17_01 <= 0;
				w17_02 <= 0;
				w17_03 <= 0;
				w17_04 <= 0;
				w17_05 <= 0;
				w17_06 <= 0;
				w17_07 <= 0;
				w17_08 <= 0;
				w17_09 <= 0;
				w17_10 <= 0;
				w17_11 <= 0;
				w18_00 <= 0;
				w18_01 <= 0;
				w18_02 <= 0;
				w18_03 <= 0;
				w18_04 <= 0;
				w18_05 <= 0;
				w18_06 <= 0;
				w18_07 <= 0;
				w18_08 <= 0;
				w18_09 <= 0;
				w18_10 <= 0;
				w18_11 <= 0;
				w19_00 <= 0;
				w19_01 <= 0;
				w19_02 <= 0;
				w19_03 <= 0;
				w19_04 <= 0;
				w19_05 <= 0;
				w19_06 <= 0;
				w19_07 <= 0;
				w19_08 <= 0;
				w19_09 <= 0;
				w19_10 <= 0;
				w19_11 <= 0;
				w20_00 <= 0;
				w20_01 <= 0;
				w20_02 <= 0;
				w20_03 <= 0;
				w20_04 <= 0;
				w20_05 <= 0;
				w20_06 <= 0;
				w20_07 <= 0;
				w20_08 <= 0;
				w20_09 <= 0;
				w20_10 <= 0;
				w20_11 <= 0;
				w21_00 <= 0;
				w21_01 <= 0;
				w21_02 <= 0;
				w21_03 <= 0;
				w21_04 <= 0;
				w21_05 <= 0;
				w21_06 <= 0;
				w21_07 <= 0;
				w21_08 <= 0;
				w21_09 <= 0;
				w21_10 <= 0;
				w21_11 <= 0;
				w22_00 <= 0;
				w22_01 <= 0;
				w22_02 <= 0;
				w22_03 <= 0;
				w22_04 <= 0;
				w22_05 <= 0;
				w22_06 <= 0;
				w22_07 <= 0;
				w22_08 <= 0;
				w22_09 <= 0;
				w22_10 <= 0;
				w22_11 <= 0;
				w23_00 <= 0;
				w23_01 <= 0;
				w23_02 <= 0;
				w23_03 <= 0;
				w23_04 <= 0;
				w23_05 <= 0;
				w23_06 <= 0;
				w23_07 <= 0;
				w23_08 <= 0;
				w23_09 <= 0;
				w23_10 <= 0;
				w23_11 <= 0;
				w24_00 <= 0;
				w24_01 <= 0;
				w24_02 <= 0;
				w24_03 <= 0;
				w24_04 <= 0;
				w24_05 <= 0;
				w24_06 <= 0;
				w24_07 <= 0;
				w24_08 <= 0;
				w24_09 <= 0;
				w24_10 <= 0;
				w24_11 <= 0;
				w25_00 <= 0;
				w25_01 <= 0;
				w25_02 <= 0;
				w25_03 <= 0;
				w25_04 <= 0;
				w25_05 <= 0;
				w25_06 <= 0;
				w25_07 <= 0;
				w25_08 <= 0;
				w25_09 <= 0;
				w25_10 <= 0;
				w25_11 <= 0;
				w26_00 <= 0;
				w26_01 <= 0;
				w26_02 <= 0;
				w26_03 <= 0;
				w26_04 <= 0;
				w26_05 <= 0;
				w26_06 <= 0;
				w26_07 <= 0;
				w26_08 <= 0;
				w26_09 <= 0;
				w26_10 <= 0;
				w26_11 <= 0;
				w27_00 <= 0;
				w27_01 <= 0;
				w27_02 <= 0;
				w27_03 <= 0;
				w27_04 <= 0;
				w27_05 <= 0;
				w27_06 <= 0;
				w27_07 <= 0;
				w27_08 <= 0;
				w27_09 <= 0;
				w27_10 <= 0;
				w27_11 <= 0;
				w28_00 <= 0;
				w28_01 <= 0;
				w28_02 <= 0;
				w28_03 <= 0;
				w28_04 <= 0;
				w28_05 <= 0;
				w28_06 <= 0;
				w28_07 <= 0;
				w28_08 <= 0;
				w28_09 <= 0;
				w28_10 <= 0;
				w28_11 <= 0;
				w29_00 <= 0;
				w29_01 <= 0;
				w29_02 <= 0;
				w29_03 <= 0;
				w29_04 <= 0;
				w29_05 <= 0;
				w29_06 <= 0;
				w29_07 <= 0;
				w29_08 <= 0;
				w29_09 <= 0;
				w29_10 <= 0;
				w29_11 <= 0;
				w30_00 <= 0;
				w30_01 <= 0;
				w30_02 <= 0;
				w30_03 <= 0;
				w30_04 <= 0;
				w30_05 <= 0;
				w30_06 <= 0;
				w30_07 <= 0;
				w30_08 <= 0;
				w30_09 <= 0;
				w30_10 <= 0;
				w30_11 <= 0;
				w31_00 <= 0;
				w31_01 <= 0;
				w31_02 <= 0;
				w31_03 <= 0;
				w31_04 <= 0;
				w31_05 <= 0;
				w31_06 <= 0;
				w31_07 <= 0;
				w31_08 <= 0;
				w31_09 <= 0;
				w31_10 <= 0;
				w31_11 <= 0;
				done_q <= 0;
				done <= 0;
			end
			else
			begin
				done <= done_q;
				if(counter == 384)
				begin
					w00_00 <= shift_reg[0];
					w00_01 <= shift_reg[1];
					w00_02 <= shift_reg[2];
					w00_03 <= shift_reg[3];
					w00_04 <= shift_reg[4];
					w00_05 <= shift_reg[5];
					w00_06 <= shift_reg[6];
					w00_07 <= shift_reg[7];
					w00_08 <= shift_reg[8];
					w00_09 <= shift_reg[9];
					w00_10 <= shift_reg[10];
					w00_11 <= shift_reg[11];
					w01_00 <= shift_reg[12];
					w01_01 <= shift_reg[13];
					w01_02 <= shift_reg[14];
					w01_03 <= shift_reg[15];
					w01_04 <= shift_reg[16];
					w01_05 <= shift_reg[17];
					w01_06 <= shift_reg[18];
					w01_07 <= shift_reg[19];
					w01_08 <= shift_reg[20];
					w01_09 <= shift_reg[21];
					w01_10 <= shift_reg[22];
					w01_11 <= shift_reg[23];
					w02_00 <= shift_reg[24];
					w02_01 <= shift_reg[25];
					w02_02 <= shift_reg[26];
					w02_03 <= shift_reg[27];
					w02_04 <= shift_reg[28];
					w02_05 <= shift_reg[29];
					w02_06 <= shift_reg[30];
					w02_07 <= shift_reg[31];
					w02_08 <= shift_reg[32];
					w02_09 <= shift_reg[33];
					w02_10 <= shift_reg[34];
					w02_11 <= shift_reg[35];
					w03_00 <= shift_reg[36];
					w03_01 <= shift_reg[37];
					w03_02 <= shift_reg[38];
					w03_03 <= shift_reg[39];
					w03_04 <= shift_reg[40];
					w03_05 <= shift_reg[41];
					w03_06 <= shift_reg[42];
					w03_07 <= shift_reg[43];
					w03_08 <= shift_reg[44];
					w03_09 <= shift_reg[45];
					w03_10 <= shift_reg[46];
					w03_11 <= shift_reg[47];
					w04_00 <= shift_reg[48];
					w04_01 <= shift_reg[49];
					w04_02 <= shift_reg[50];
					w04_03 <= shift_reg[51];
					w04_04 <= shift_reg[52];
					w04_05 <= shift_reg[53];
					w04_06 <= shift_reg[54];
					w04_07 <= shift_reg[55];
					w04_08 <= shift_reg[56];
					w04_09 <= shift_reg[57];
					w04_10 <= shift_reg[58];
					w04_11 <= shift_reg[59];
					w05_00 <= shift_reg[60];
					w05_01 <= shift_reg[61];
					w05_02 <= shift_reg[62];
					w05_03 <= shift_reg[63];
					w05_04 <= shift_reg[64];
					w05_05 <= shift_reg[65];
					w05_06 <= shift_reg[66];
					w05_07 <= shift_reg[67];
					w05_08 <= shift_reg[68];
					w05_09 <= shift_reg[69];
					w05_10 <= shift_reg[70];
					w05_11 <= shift_reg[71];
					w06_00 <= shift_reg[72];
					w06_01 <= shift_reg[73];
					w06_02 <= shift_reg[74];
					w06_03 <= shift_reg[75];
					w06_04 <= shift_reg[76];
					w06_05 <= shift_reg[77];
					w06_06 <= shift_reg[78];
					w06_07 <= shift_reg[79];
					w06_08 <= shift_reg[80];
					w06_09 <= shift_reg[81];
					w06_10 <= shift_reg[82];
					w06_11 <= shift_reg[83];
					w07_00 <= shift_reg[84];
					w07_01 <= shift_reg[85];
					w07_02 <= shift_reg[86];
					w07_03 <= shift_reg[87];
					w07_04 <= shift_reg[88];
					w07_05 <= shift_reg[89];
					w07_06 <= shift_reg[90];
					w07_07 <= shift_reg[91];
					w07_08 <= shift_reg[92];
					w07_09 <= shift_reg[93];
					w07_10 <= shift_reg[94];
					w07_11 <= shift_reg[95];
					w08_00 <= shift_reg[96];
					w08_01 <= shift_reg[97];
					w08_02 <= shift_reg[98];
					w08_03 <= shift_reg[99];
					w08_04 <= shift_reg[100];
					w08_05 <= shift_reg[101];
					w08_06 <= shift_reg[102];
					w08_07 <= shift_reg[103];
					w08_08 <= shift_reg[104];
					w08_09 <= shift_reg[105];
					w08_10 <= shift_reg[106];
					w08_11 <= shift_reg[107];
					w09_00 <= shift_reg[108];
					w09_01 <= shift_reg[109];
					w09_02 <= shift_reg[110];
					w09_03 <= shift_reg[111];
					w09_04 <= shift_reg[112];
					w09_05 <= shift_reg[113];
					w09_06 <= shift_reg[114];
					w09_07 <= shift_reg[115];
					w09_08 <= shift_reg[116];
					w09_09 <= shift_reg[117];
					w09_10 <= shift_reg[118];
					w09_11 <= shift_reg[119];
					w10_00 <= shift_reg[120];
					w10_01 <= shift_reg[121];
					w10_02 <= shift_reg[122];
					w10_03 <= shift_reg[123];
					w10_04 <= shift_reg[124];
					w10_05 <= shift_reg[125];
					w10_06 <= shift_reg[126];
					w10_07 <= shift_reg[127];
					w10_08 <= shift_reg[128];
					w10_09 <= shift_reg[129];
					w10_10 <= shift_reg[130];
					w10_11 <= shift_reg[131];
					w11_00 <= shift_reg[132];
					w11_01 <= shift_reg[133];
					w11_02 <= shift_reg[134];
					w11_03 <= shift_reg[135];
					w11_04 <= shift_reg[136];
					w11_05 <= shift_reg[137];
					w11_06 <= shift_reg[138];
					w11_07 <= shift_reg[139];
					w11_08 <= shift_reg[140];
					w11_09 <= shift_reg[141];
					w11_10 <= shift_reg[142];
					w11_11 <= shift_reg[143];
					w12_00 <= shift_reg[144];
					w12_01 <= shift_reg[145];
					w12_02 <= shift_reg[146];
					w12_03 <= shift_reg[147];
					w12_04 <= shift_reg[148];
					w12_05 <= shift_reg[149];
					w12_06 <= shift_reg[150];
					w12_07 <= shift_reg[151];
					w12_08 <= shift_reg[152];
					w12_09 <= shift_reg[153];
					w12_10 <= shift_reg[154];
					w12_11 <= shift_reg[155];
					w13_00 <= shift_reg[156];
					w13_01 <= shift_reg[157];
					w13_02 <= shift_reg[158];
					w13_03 <= shift_reg[159];
					w13_04 <= shift_reg[160];
					w13_05 <= shift_reg[161];
					w13_06 <= shift_reg[162];
					w13_07 <= shift_reg[163];
					w13_08 <= shift_reg[164];
					w13_09 <= shift_reg[165];
					w13_10 <= shift_reg[166];
					w13_11 <= shift_reg[167];
					w14_00 <= shift_reg[168];
					w14_01 <= shift_reg[169];
					w14_02 <= shift_reg[170];
					w14_03 <= shift_reg[171];
					w14_04 <= shift_reg[172];
					w14_05 <= shift_reg[173];
					w14_06 <= shift_reg[174];
					w14_07 <= shift_reg[175];
					w14_08 <= shift_reg[176];
					w14_09 <= shift_reg[177];
					w14_10 <= shift_reg[178];
					w14_11 <= shift_reg[179];
					w15_00 <= shift_reg[180];
					w15_01 <= shift_reg[181];
					w15_02 <= shift_reg[182];
					w15_03 <= shift_reg[183];
					w15_04 <= shift_reg[184];
					w15_05 <= shift_reg[185];
					w15_06 <= shift_reg[186];
					w15_07 <= shift_reg[187];
					w15_08 <= shift_reg[188];
					w15_09 <= shift_reg[189];
					w15_10 <= shift_reg[190];
					w15_11 <= shift_reg[191];
					w16_00 <= shift_reg[192];
					w16_01 <= shift_reg[193];
					w16_02 <= shift_reg[194];
					w16_03 <= shift_reg[195];
					w16_04 <= shift_reg[196];
					w16_05 <= shift_reg[197];
					w16_06 <= shift_reg[198];
					w16_07 <= shift_reg[199];
					w16_08 <= shift_reg[200];
					w16_09 <= shift_reg[201];
					w16_10 <= shift_reg[202];
					w16_11 <= shift_reg[203];
					w17_00 <= shift_reg[204];
					w17_01 <= shift_reg[205];
					w17_02 <= shift_reg[206];
					w17_03 <= shift_reg[207];
					w17_04 <= shift_reg[208];
					w17_05 <= shift_reg[209];
					w17_06 <= shift_reg[210];
					w17_07 <= shift_reg[211];
					w17_08 <= shift_reg[212];
					w17_09 <= shift_reg[213];
					w17_10 <= shift_reg[214];
					w17_11 <= shift_reg[215];
					w18_00 <= shift_reg[216];
					w18_01 <= shift_reg[217];
					w18_02 <= shift_reg[218];
					w18_03 <= shift_reg[219];
					w18_04 <= shift_reg[220];
					w18_05 <= shift_reg[221];
					w18_06 <= shift_reg[222];
					w18_07 <= shift_reg[223];
					w18_08 <= shift_reg[224];
					w18_09 <= shift_reg[225];
					w18_10 <= shift_reg[226];
					w18_11 <= shift_reg[227];
					w19_00 <= shift_reg[228];
					w19_01 <= shift_reg[229];
					w19_02 <= shift_reg[230];
					w19_03 <= shift_reg[231];
					w19_04 <= shift_reg[232];
					w19_05 <= shift_reg[233];
					w19_06 <= shift_reg[234];
					w19_07 <= shift_reg[235];
					w19_08 <= shift_reg[236];
					w19_09 <= shift_reg[237];
					w19_10 <= shift_reg[238];
					w19_11 <= shift_reg[239];
					w20_00 <= shift_reg[240];
					w20_01 <= shift_reg[241];
					w20_02 <= shift_reg[242];
					w20_03 <= shift_reg[243];
					w20_04 <= shift_reg[244];
					w20_05 <= shift_reg[245];
					w20_06 <= shift_reg[246];
					w20_07 <= shift_reg[247];
					w20_08 <= shift_reg[248];
					w20_09 <= shift_reg[249];
					w20_10 <= shift_reg[250];
					w20_11 <= shift_reg[251];
					w21_00 <= shift_reg[252];
					w21_01 <= shift_reg[253];
					w21_02 <= shift_reg[254];
					w21_03 <= shift_reg[255];
					w21_04 <= shift_reg[256];
					w21_05 <= shift_reg[257];
					w21_06 <= shift_reg[258];
					w21_07 <= shift_reg[259];
					w21_08 <= shift_reg[260];
					w21_09 <= shift_reg[261];
					w21_10 <= shift_reg[262];
					w21_11 <= shift_reg[263];
					w22_00 <= shift_reg[264];
					w22_01 <= shift_reg[265];
					w22_02 <= shift_reg[266];
					w22_03 <= shift_reg[267];
					w22_04 <= shift_reg[268];
					w22_05 <= shift_reg[269];
					w22_06 <= shift_reg[270];
					w22_07 <= shift_reg[271];
					w22_08 <= shift_reg[272];
					w22_09 <= shift_reg[273];
					w22_10 <= shift_reg[274];
					w22_11 <= shift_reg[275];
					w23_00 <= shift_reg[276];
					w23_01 <= shift_reg[277];
					w23_02 <= shift_reg[278];
					w23_03 <= shift_reg[279];
					w23_04 <= shift_reg[280];
					w23_05 <= shift_reg[281];
					w23_06 <= shift_reg[282];
					w23_07 <= shift_reg[283];
					w23_08 <= shift_reg[284];
					w23_09 <= shift_reg[285];
					w23_10 <= shift_reg[286];
					w23_11 <= shift_reg[287];
					w24_00 <= shift_reg[288];
					w24_01 <= shift_reg[289];
					w24_02 <= shift_reg[290];
					w24_03 <= shift_reg[291];
					w24_04 <= shift_reg[292];
					w24_05 <= shift_reg[293];
					w24_06 <= shift_reg[294];
					w24_07 <= shift_reg[295];
					w24_08 <= shift_reg[296];
					w24_09 <= shift_reg[297];
					w24_10 <= shift_reg[298];
					w24_11 <= shift_reg[299];
					w25_00 <= shift_reg[300];
					w25_01 <= shift_reg[301];
					w25_02 <= shift_reg[302];
					w25_03 <= shift_reg[303];
					w25_04 <= shift_reg[304];
					w25_05 <= shift_reg[305];
					w25_06 <= shift_reg[306];
					w25_07 <= shift_reg[307];
					w25_08 <= shift_reg[308];
					w25_09 <= shift_reg[309];
					w25_10 <= shift_reg[310];
					w25_11 <= shift_reg[311];
					w26_00 <= shift_reg[312];
					w26_01 <= shift_reg[313];
					w26_02 <= shift_reg[314];
					w26_03 <= shift_reg[315];
					w26_04 <= shift_reg[316];
					w26_05 <= shift_reg[317];
					w26_06 <= shift_reg[318];
					w26_07 <= shift_reg[319];
					w26_08 <= shift_reg[320];
					w26_09 <= shift_reg[321];
					w26_10 <= shift_reg[322];
					w26_11 <= shift_reg[323];
					w27_00 <= shift_reg[324];
					w27_01 <= shift_reg[325];
					w27_02 <= shift_reg[326];
					w27_03 <= shift_reg[327];
					w27_04 <= shift_reg[328];
					w27_05 <= shift_reg[329];
					w27_06 <= shift_reg[330];
					w27_07 <= shift_reg[331];
					w27_08 <= shift_reg[332];
					w27_09 <= shift_reg[333];
					w27_10 <= shift_reg[334];
					w27_11 <= shift_reg[335];
					w28_00 <= shift_reg[336];
					w28_01 <= shift_reg[337];
					w28_02 <= shift_reg[338];
					w28_03 <= shift_reg[339];
					w28_04 <= shift_reg[340];
					w28_05 <= shift_reg[341];
					w28_06 <= shift_reg[342];
					w28_07 <= shift_reg[343];
					w28_08 <= shift_reg[344];
					w28_09 <= shift_reg[345];
					w28_10 <= shift_reg[346];
					w28_11 <= shift_reg[347];
					w29_00 <= shift_reg[348];
					w29_01 <= shift_reg[349];
					w29_02 <= shift_reg[350];
					w29_03 <= shift_reg[351];
					w29_04 <= shift_reg[352];
					w29_05 <= shift_reg[353];
					w29_06 <= shift_reg[354];
					w29_07 <= shift_reg[355];
					w29_08 <= shift_reg[356];
					w29_09 <= shift_reg[357];
					w29_10 <= shift_reg[358];
					w29_11 <= shift_reg[359];
					w30_00 <= shift_reg[360];
					w30_01 <= shift_reg[361];
					w30_02 <= shift_reg[362];
					w30_03 <= shift_reg[363];
					w30_04 <= shift_reg[364];
					w30_05 <= shift_reg[365];
					w30_06 <= shift_reg[366];
					w30_07 <= shift_reg[367];
					w30_08 <= shift_reg[368];
					w30_09 <= shift_reg[369];
					w30_10 <= shift_reg[370];
					w30_11 <= shift_reg[371];
					w31_00 <= shift_reg[372];
					w31_01 <= shift_reg[373];
					w31_02 <= shift_reg[374];
					w31_03 <= shift_reg[375];
					w31_04 <= shift_reg[376];
					w31_05 <= shift_reg[377];
					w31_06 <= shift_reg[378];
					w31_07 <= shift_reg[379];
					w31_08 <= shift_reg[380];
					w31_09 <= shift_reg[381];
					w31_10 <= shift_reg[382];
					w31_11 <= shift_reg[383];
					done_q <= 1;
				end
			else
				begin
					w00_00 <= 0;
					w00_01 <= 0;
					w00_02 <= 0;
					w00_03 <= 0;
					w00_04 <= 0;
					w00_05 <= 0;
					w00_06 <= 0;
					w00_07 <= 0;
					w00_08 <= 0;
					w00_09 <= 0;
					w00_10 <= 0;
					w00_11 <= 0;
					w01_00 <= 0;
					w01_01 <= 0;
					w01_02 <= 0;
					w01_03 <= 0;
					w01_04 <= 0;
					w01_05 <= 0;
					w01_06 <= 0;
					w01_07 <= 0;
					w01_08 <= 0;
					w01_09 <= 0;
					w01_10 <= 0;
					w01_11 <= 0;
					w02_00 <= 0;
					w02_01 <= 0;
					w02_02 <= 0;
					w02_03 <= 0;
					w02_04 <= 0;
					w02_05 <= 0;
					w02_06 <= 0;
					w02_07 <= 0;
					w02_08 <= 0;
					w02_09 <= 0;
					w02_10 <= 0;
					w02_11 <= 0;
					w03_00 <= 0;
					w03_01 <= 0;
					w03_02 <= 0;
					w03_03 <= 0;
					w03_04 <= 0;
					w03_05 <= 0;
					w03_06 <= 0;
					w03_07 <= 0;
					w03_08 <= 0;
					w03_09 <= 0;
					w03_10 <= 0;
					w03_11 <= 0;
					w04_00 <= 0;
					w04_01 <= 0;
					w04_02 <= 0;
					w04_03 <= 0;
					w04_04 <= 0;
					w04_05 <= 0;
					w04_06 <= 0;
					w04_07 <= 0;
					w04_08 <= 0;
					w04_09 <= 0;
					w04_10 <= 0;
					w04_11 <= 0;
					w05_00 <= 0;
					w05_01 <= 0;
					w05_02 <= 0;
					w05_03 <= 0;
					w05_04 <= 0;
					w05_05 <= 0;
					w05_06 <= 0;
					w05_07 <= 0;
					w05_08 <= 0;
					w05_09 <= 0;
					w05_10 <= 0;
					w05_11 <= 0;
					w06_00 <= 0;
					w06_01 <= 0;
					w06_02 <= 0;
					w06_03 <= 0;
					w06_04 <= 0;
					w06_05 <= 0;
					w06_06 <= 0;
					w06_07 <= 0;
					w06_08 <= 0;
					w06_09 <= 0;
					w06_10 <= 0;
					w06_11 <= 0;
					w07_00 <= 0;
					w07_01 <= 0;
					w07_02 <= 0;
					w07_03 <= 0;
					w07_04 <= 0;
					w07_05 <= 0;
					w07_06 <= 0;
					w07_07 <= 0;
					w07_08 <= 0;
					w07_09 <= 0;
					w07_10 <= 0;
					w07_11 <= 0;
					w08_00 <= 0;
					w08_01 <= 0;
					w08_02 <= 0;
					w08_03 <= 0;
					w08_04 <= 0;
					w08_05 <= 0;
					w08_06 <= 0;
					w08_07 <= 0;
					w08_08 <= 0;
					w08_09 <= 0;
					w08_10 <= 0;
					w08_11 <= 0;
					w09_00 <= 0;
					w09_01 <= 0;
					w09_02 <= 0;
					w09_03 <= 0;
					w09_04 <= 0;
					w09_05 <= 0;
					w09_06 <= 0;
					w09_07 <= 0;
					w09_08 <= 0;
					w09_09 <= 0;
					w09_10 <= 0;
					w09_11 <= 0;
					w10_00 <= 0;
					w10_01 <= 0;
					w10_02 <= 0;
					w10_03 <= 0;
					w10_04 <= 0;
					w10_05 <= 0;
					w10_06 <= 0;
					w10_07 <= 0;
					w10_08 <= 0;
					w10_09 <= 0;
					w10_10 <= 0;
					w10_11 <= 0;
					w11_00 <= 0;
					w11_01 <= 0;
					w11_02 <= 0;
					w11_03 <= 0;
					w11_04 <= 0;
					w11_05 <= 0;
					w11_06 <= 0;
					w11_07 <= 0;
					w11_08 <= 0;
					w11_09 <= 0;
					w11_10 <= 0;
					w11_11 <= 0;
					w12_00 <= 0;
					w12_01 <= 0;
					w12_02 <= 0;
					w12_03 <= 0;
					w12_04 <= 0;
					w12_05 <= 0;
					w12_06 <= 0;
					w12_07 <= 0;
					w12_08 <= 0;
					w12_09 <= 0;
					w12_10 <= 0;
					w12_11 <= 0;
					w13_00 <= 0;
					w13_01 <= 0;
					w13_02 <= 0;
					w13_03 <= 0;
					w13_04 <= 0;
					w13_05 <= 0;
					w13_06 <= 0;
					w13_07 <= 0;
					w13_08 <= 0;
					w13_09 <= 0;
					w13_10 <= 0;
					w13_11 <= 0;
					w14_00 <= 0;
					w14_01 <= 0;
					w14_02 <= 0;
					w14_03 <= 0;
					w14_04 <= 0;
					w14_05 <= 0;
					w14_06 <= 0;
					w14_07 <= 0;
					w14_08 <= 0;
					w14_09 <= 0;
					w14_10 <= 0;
					w14_11 <= 0;
					w15_00 <= 0;
					w15_01 <= 0;
					w15_02 <= 0;
					w15_03 <= 0;
					w15_04 <= 0;
					w15_05 <= 0;
					w15_06 <= 0;
					w15_07 <= 0;
					w15_08 <= 0;
					w15_09 <= 0;
					w15_10 <= 0;
					w15_11 <= 0;
					w16_00 <= 0;
					w16_01 <= 0;
					w16_02 <= 0;
					w16_03 <= 0;
					w16_04 <= 0;
					w16_05 <= 0;
					w16_06 <= 0;
					w16_07 <= 0;
					w16_08 <= 0;
					w16_09 <= 0;
					w16_10 <= 0;
					w16_11 <= 0;
					w17_00 <= 0;
					w17_01 <= 0;
					w17_02 <= 0;
					w17_03 <= 0;
					w17_04 <= 0;
					w17_05 <= 0;
					w17_06 <= 0;
					w17_07 <= 0;
					w17_08 <= 0;
					w17_09 <= 0;
					w17_10 <= 0;
					w17_11 <= 0;
					w18_00 <= 0;
					w18_01 <= 0;
					w18_02 <= 0;
					w18_03 <= 0;
					w18_04 <= 0;
					w18_05 <= 0;
					w18_06 <= 0;
					w18_07 <= 0;
					w18_08 <= 0;
					w18_09 <= 0;
					w18_10 <= 0;
					w18_11 <= 0;
					w19_00 <= 0;
					w19_01 <= 0;
					w19_02 <= 0;
					w19_03 <= 0;
					w19_04 <= 0;
					w19_05 <= 0;
					w19_06 <= 0;
					w19_07 <= 0;
					w19_08 <= 0;
					w19_09 <= 0;
					w19_10 <= 0;
					w19_11 <= 0;
					w20_00 <= 0;
					w20_01 <= 0;
					w20_02 <= 0;
					w20_03 <= 0;
					w20_04 <= 0;
					w20_05 <= 0;
					w20_06 <= 0;
					w20_07 <= 0;
					w20_08 <= 0;
					w20_09 <= 0;
					w20_10 <= 0;
					w20_11 <= 0;
					w21_00 <= 0;
					w21_01 <= 0;
					w21_02 <= 0;
					w21_03 <= 0;
					w21_04 <= 0;
					w21_05 <= 0;
					w21_06 <= 0;
					w21_07 <= 0;
					w21_08 <= 0;
					w21_09 <= 0;
					w21_10 <= 0;
					w21_11 <= 0;
					w22_00 <= 0;
					w22_01 <= 0;
					w22_02 <= 0;
					w22_03 <= 0;
					w22_04 <= 0;
					w22_05 <= 0;
					w22_06 <= 0;
					w22_07 <= 0;
					w22_08 <= 0;
					w22_09 <= 0;
					w22_10 <= 0;
					w22_11 <= 0;
					w23_00 <= 0;
					w23_01 <= 0;
					w23_02 <= 0;
					w23_03 <= 0;
					w23_04 <= 0;
					w23_05 <= 0;
					w23_06 <= 0;
					w23_07 <= 0;
					w23_08 <= 0;
					w23_09 <= 0;
					w23_10 <= 0;
					w23_11 <= 0;
					w24_00 <= 0;
					w24_01 <= 0;
					w24_02 <= 0;
					w24_03 <= 0;
					w24_04 <= 0;
					w24_05 <= 0;
					w24_06 <= 0;
					w24_07 <= 0;
					w24_08 <= 0;
					w24_09 <= 0;
					w24_10 <= 0;
					w24_11 <= 0;
					w25_00 <= 0;
					w25_01 <= 0;
					w25_02 <= 0;
					w25_03 <= 0;
					w25_04 <= 0;
					w25_05 <= 0;
					w25_06 <= 0;
					w25_07 <= 0;
					w25_08 <= 0;
					w25_09 <= 0;
					w25_10 <= 0;
					w25_11 <= 0;
					w26_00 <= 0;
					w26_01 <= 0;
					w26_02 <= 0;
					w26_03 <= 0;
					w26_04 <= 0;
					w26_05 <= 0;
					w26_06 <= 0;
					w26_07 <= 0;
					w26_08 <= 0;
					w26_09 <= 0;
					w26_10 <= 0;
					w26_11 <= 0;
					w27_00 <= 0;
					w27_01 <= 0;
					w27_02 <= 0;
					w27_03 <= 0;
					w27_04 <= 0;
					w27_05 <= 0;
					w27_06 <= 0;
					w27_07 <= 0;
					w27_08 <= 0;
					w27_09 <= 0;
					w27_10 <= 0;
					w27_11 <= 0;
					w28_00 <= 0;
					w28_01 <= 0;
					w28_02 <= 0;
					w28_03 <= 0;
					w28_04 <= 0;
					w28_05 <= 0;
					w28_06 <= 0;
					w28_07 <= 0;
					w28_08 <= 0;
					w28_09 <= 0;
					w28_10 <= 0;
					w28_11 <= 0;
					w29_00 <= 0;
					w29_01 <= 0;
					w29_02 <= 0;
					w29_03 <= 0;
					w29_04 <= 0;
					w29_05 <= 0;
					w29_06 <= 0;
					w29_07 <= 0;
					w29_08 <= 0;
					w29_09 <= 0;
					w29_10 <= 0;
					w29_11 <= 0;
					w30_00 <= 0;
					w30_01 <= 0;
					w30_02 <= 0;
					w30_03 <= 0;
					w30_04 <= 0;
					w30_05 <= 0;
					w30_06 <= 0;
					w30_07 <= 0;
					w30_08 <= 0;
					w30_09 <= 0;
					w30_10 <= 0;
					w30_11 <= 0;
					w31_00 <= 0;
					w31_01 <= 0;
					w31_02 <= 0;
					w31_03 <= 0;
					w31_04 <= 0;
					w31_05 <= 0;
					w31_06 <= 0;
					w31_07 <= 0;
					w31_08 <= 0;
					w31_09 <= 0;
					w31_10 <= 0;
					w31_11 <= 0;
					done_q <= 0;
				end
			end	
		end
endmodule	

