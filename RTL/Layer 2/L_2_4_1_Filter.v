`timescale 1ns/1ps

module L_2_4_1_Filter (
    input clk,
    input reset,
	input input_start,
	input stop,
    input signed [7:0] bias,  
    input signed [17:0] ch00,
    input signed [17:0] ch01,
    input signed [17:0] ch02,
    input signed [17:0] ch03,
    input signed [17:0] ch04,
    input signed [17:0] ch05,
    input signed [17:0] ch06,
    input signed [17:0] ch07,
    input signed [17:0] ch08,
    input signed [17:0] ch09,
    input signed [17:0] ch10,
    input signed [17:0] ch11,
    input signed [17:0] ch12,
    input signed [17:0] ch13,
    input signed [17:0] ch14,
    input signed [17:0] ch15,
    input signed [17:0] ch16,
    input signed [17:0] ch17,
    input signed [17:0] ch18,
    input signed [17:0] ch19,
    input signed [17:0] ch20,
    input signed [17:0] ch21,
    input signed [17:0] ch22,
    input signed [17:0] ch23,
    input signed [17:0] ch24,
    input signed [17:0] ch25,
    input signed [17:0] ch26,
    input signed [17:0] ch27,
    input signed [17:0] ch28,
    input signed [17:0] ch29,
    input signed [17:0] ch30,
    input signed [17:0] ch31,
    input signed [7:0] w00,
    input signed [7:0] w01,
    input signed [7:0] w02,
    input signed [7:0] w03,
    input signed [7:0] w04,
    input signed [7:0] w05,
    input signed [7:0] w06,
    input signed [7:0] w07,
    input signed [7:0] w08,
    input signed [7:0] w09,
    input signed [7:0] w10,
    input signed [7:0] w11,
    input signed [7:0] w12,
    input signed [7:0] w13,
    input signed [7:0] w14,
    input signed [7:0] w15,
    input signed [7:0] w16,
    input signed [7:0] w17,
    input signed [7:0] w18,
    input signed [7:0] w19,
    input signed [7:0] w20,
    input signed [7:0] w21,
    input signed [7:0] w22,
    input signed [7:0] w23,
    input signed [7:0] w24,
    input signed [7:0] w25,
    input signed [7:0] w26,
    input signed [7:0] w27,
    input signed [7:0] w28,
    input signed [7:0] w29,
    input signed [7:0] w30,
    input signed [7:0] w31,
    input signed [7:0] w32,
    input signed [7:0] w33,
    input signed [7:0] w34,
    input signed [7:0] w35,
    input signed [7:0] w36,
    input signed [7:0] w37,
    input signed [7:0] w38,
    input signed [7:0] w39,
    input signed [7:0] w40,
    input signed [7:0] w41,
    input signed [7:0] w42,
    input signed [7:0] w43,
    input signed [7:0] w44,
    input signed [7:0] w45,
    input signed [7:0] w46,
    input signed [7:0] w47,
    input signed [7:0] w48,
    input signed [7:0] w49,
    input signed [7:0] w50,
    input signed [7:0] w51,
    input signed [7:0] w52,
    input signed [7:0] w53,
    input signed [7:0] w54,
    input signed [7:0] w55,
    input signed [7:0] w56,
    input signed [7:0] w57,
    input signed [7:0] w58,
    input signed [7:0] w59,
    input signed [7:0] w60,
    input signed [7:0] w61,
    input signed [7:0] w62,
    input signed [7:0] w63,
	output reg [8:0] counter,
    output signed [31:0] result
);
    reg signed [31:0] products_phase1 [0:31];
    reg signed [31:0] products_phase2 [0:31];
	reg [8:0] counter_q,counter_qq;
   
    wire signed [31:0] temp [0:31];
    wire signed [31:0] aa[31:0];
    wire signed [31:0] ab[15:0];
    wire signed [31:0] ac[7:0];
    wire signed [31:0] ad[3:0];
    wire signed [31:0] ae[1:0];
    always @(posedge clk or posedge reset) begin
        if (reset) 
		begin
            products_phase1[0]  <= 0;
            products_phase1[1]  <= 0;
            products_phase1[2]  <= 0;
            products_phase1[3]  <= 0;
            products_phase1[4]  <= 0;
            products_phase1[5]  <= 0;
            products_phase1[6]  <= 0;
            products_phase1[7]  <= 0;
            products_phase1[8]  <= 0;
            products_phase1[9]  <= 0;
            products_phase1[10] <= 0;
            products_phase1[11] <= 0;
            products_phase1[12] <= 0;
            products_phase1[13] <= 0;
            products_phase1[14] <= 0;
            products_phase1[15] <= 0;
            products_phase1[16] <= 0;
            products_phase1[17] <= 0;
            products_phase1[18] <= 0;
            products_phase1[19] <= 0;
            products_phase1[20] <= 0;
            products_phase1[21] <= 0;
            products_phase1[22] <= 0;
            products_phase1[23] <= 0;
            products_phase1[24] <= 0;
            products_phase1[25] <= 0;
            products_phase1[26] <= 0;
            products_phase1[27] <= 0;
            products_phase1[28] <= 0;
            products_phase1[29] <= 0;
            products_phase1[30] <= 0;
            products_phase1[31] <= 0;
			products_phase2[0]  <= 0;
            products_phase2[1]  <= 0;
            products_phase2[2]  <= 0;
            products_phase2[3]  <= 0;
            products_phase2[4]  <= 0;
            products_phase2[5]  <= 0;
            products_phase2[6]  <= 0;
            products_phase2[7]  <= 0;
            products_phase2[8]  <= 0;
            products_phase2[9]  <= 0;
            products_phase2[10] <= 0;
            products_phase2[11] <= 0;
            products_phase2[12] <= 0;
            products_phase2[13] <= 0;
            products_phase2[14] <= 0;
            products_phase2[15] <= 0;
            products_phase2[16] <= 0;
            products_phase2[17] <= 0;
            products_phase2[18] <= 0;
            products_phase2[19] <= 0;
            products_phase2[20] <= 0;
            products_phase2[21] <= 0;
            products_phase2[22] <= 0;
            products_phase2[23] <= 0;
            products_phase2[24] <= 0;
            products_phase2[25] <= 0;
            products_phase2[26] <= 0;
            products_phase2[27] <= 0;
            products_phase2[28] <= 0;
            products_phase2[29] <= 0;
            products_phase2[30] <= 0;
            products_phase2[31] <= 0;
			counter <= 0;
			counter_q <= 1;
			counter_qq <= 1;
		end 
		else 
		begin
			if((input_start) && (counter < 509) && ~stop)
			begin
				products_phase1[0]  <= ch00  * w00;
				products_phase1[1]  <= ch01  * w01;
				products_phase1[2]  <= ch02  * w02;
				products_phase1[3]  <= ch03  * w03;
				products_phase1[4]  <= ch04  * w04;
				products_phase1[5]  <= ch05  * w05;
				products_phase1[6]  <= ch06  * w06;
				products_phase1[7]  <= ch07  * w07;
				products_phase1[8]  <= ch08  * w08;
				products_phase1[9]  <= ch09  * w09;
				products_phase1[10] <= ch10 * w10;
				products_phase1[11] <= ch11 * w11;
				products_phase1[12] <= ch12 * w12;
				products_phase1[13] <= ch13 * w13;
				products_phase1[14] <= ch14 * w14;
				products_phase1[15] <= ch15 * w15;
				products_phase1[16] <= ch16 * w16;
				products_phase1[17] <= ch17 * w17;
				products_phase1[18] <= ch18 * w18;
				products_phase1[19] <= ch19 * w19;
				products_phase1[20] <= ch20 * w20;
				products_phase1[21] <= ch21 * w21;
				products_phase1[22] <= ch22 * w22;
				products_phase1[23] <= ch23 * w23;
				products_phase1[24] <= ch24 * w24;
				products_phase1[25] <= ch25 * w25;
				products_phase1[26] <= ch26 * w26;
				products_phase1[27] <= ch27 * w27;
				products_phase1[28] <= ch28 * w28;
				products_phase1[29] <= ch29 * w29;
				products_phase1[30] <= ch30 * w30;
				products_phase1[31] <= ch31 * w31;
			
				products_phase2[0]  <= ch00  * w32;
				products_phase2[1]  <= ch01  * w33;
				products_phase2[2]  <= ch02  * w34;
				products_phase2[3]  <= ch03  * w35;
				products_phase2[4]  <= ch04  * w36;
				products_phase2[5]  <= ch05  * w37;
				products_phase2[6]  <= ch06  * w38;
				products_phase2[7]  <= ch07  * w39;
				products_phase2[8]  <= ch08  * w40;
				products_phase2[9]  <= ch09  * w41;
				products_phase2[10]  <= ch10  * w42;
				products_phase2[11]  <= ch11  * w43;
				products_phase2[12]  <= ch12  * w44;
				products_phase2[13]  <= ch13  * w45;
				products_phase2[14]  <= ch14  * w46;
				products_phase2[15]  <= ch15  * w47;
				products_phase2[16]  <= ch16  * w48;
				products_phase2[17]  <= ch17  * w49;
				products_phase2[18]  <= ch18  * w50;
				products_phase2[19]  <= ch19  * w51;
				products_phase2[20]  <= ch20  * w52;
				products_phase2[21]  <= ch21  * w53;
				products_phase2[22]  <= ch22  * w54;
				products_phase2[23]  <= ch23  * w55;
				products_phase2[24]  <= ch24  * w56;
				products_phase2[25]  <= ch25  * w57;
				products_phase2[26]  <= ch26  * w58;
				products_phase2[27]  <= ch27  * w59;
				products_phase2[28]  <= ch28  * w60;
				products_phase2[29]  <= ch29  * w61;
				products_phase2[30]  <= ch30  * w62;
				products_phase2[31]  <= ch31  * w63;
				counter <= counter + 1;
				counter_q <= 509;
				counter_qq <= 509;
			end
			else if(stop)
			begin
				products_phase1[0] <= products_phase1[0];
				products_phase1[1] <= products_phase1[1];
				products_phase1[2] <= products_phase1[2];
				products_phase1[3] <= products_phase1[3];
				products_phase1[4] <= products_phase1[4];
				products_phase1[5] <= products_phase1[5];
				products_phase1[6] <= products_phase1[6];
				products_phase1[7] <= products_phase1[7];
				products_phase1[8] <= products_phase1[8];
				products_phase1[9] <= products_phase1[9];
				products_phase1[10] <= products_phase1[10];
				products_phase1[11] <= products_phase1[11];
				products_phase1[12] <= products_phase1[12];
				products_phase1[13] <= products_phase1[13];
				products_phase1[14] <= products_phase1[14];
				products_phase1[15] <= products_phase1[15];
				products_phase1[16] <= products_phase1[16];
				products_phase1[17] <= products_phase1[17];
				products_phase1[18] <= products_phase1[18];
				products_phase1[19] <= products_phase1[19];
				products_phase1[20] <= products_phase1[20];
				products_phase1[21] <= products_phase1[21];
				products_phase1[22] <= products_phase1[22];
				products_phase1[23] <= products_phase1[23];
				products_phase1[24] <= products_phase1[24];
				products_phase1[25] <= products_phase1[25];
				products_phase1[26] <= products_phase1[26];
				products_phase1[27] <= products_phase1[27];
				products_phase1[28] <= products_phase1[28];
				products_phase1[29] <= products_phase1[29];
				products_phase1[30] <= products_phase1[30];
				products_phase1[31] <= products_phase1[31];
				products_phase2[0] <= products_phase2[0];
				products_phase2[1] <= products_phase2[1];
				products_phase2[2] <= products_phase2[2];
				products_phase2[3] <= products_phase2[3];
				products_phase2[4] <= products_phase2[4];
				products_phase2[5] <= products_phase2[5];
				products_phase2[6] <= products_phase2[6];
				products_phase2[7] <= products_phase2[7];
				products_phase2[8] <= products_phase2[8];
				products_phase2[9] <= products_phase2[9];
				products_phase2[10] <= products_phase2[10];
				products_phase2[11] <= products_phase2[11];
				products_phase2[12] <= products_phase2[12];
				products_phase2[13] <= products_phase2[13];
				products_phase2[14] <= products_phase2[14];
				products_phase2[15] <= products_phase2[15];
				products_phase2[16] <= products_phase2[16];
				products_phase2[17] <= products_phase2[17];
				products_phase2[18] <= products_phase2[18];
				products_phase2[19] <= products_phase2[19];
				products_phase2[20] <= products_phase2[20];
				products_phase2[21] <= products_phase2[21];
				products_phase2[22] <= products_phase2[22];
				products_phase2[23] <= products_phase2[23];
				products_phase2[24] <= products_phase2[24];
				products_phase2[25] <= products_phase2[25];
				products_phase2[26] <= products_phase2[26];
				products_phase2[27] <= products_phase2[27];
				products_phase2[28] <= products_phase2[28];
				products_phase2[29] <= products_phase2[29];
				products_phase2[30] <= products_phase2[30];
				products_phase2[31] <= products_phase2[31];
			end
			else
			begin
				products_phase1[0]  <= 0;
				products_phase1[1]  <= 0;
				products_phase1[2]  <= 0;
				products_phase1[3]  <= 0;
				products_phase1[4]  <= 0;
				products_phase1[5]  <= 0;
				products_phase1[6]  <= 0;
				products_phase1[7]  <= 0;
				products_phase1[8]  <= 0;
				products_phase1[9]  <= 0;
				products_phase1[10] <= 0;
				products_phase1[11] <= 0;
				products_phase1[12] <= 0;
				products_phase1[13] <= 0;
				products_phase1[14] <= 0;
				products_phase1[15] <= 0;
				products_phase1[16] <= 0;
				products_phase1[17] <= 0;
				products_phase1[18] <= 0;
				products_phase1[19] <= 0;
				products_phase1[20] <= 0;
				products_phase1[21] <= 0;
				products_phase1[22] <= 0;
				products_phase1[23] <= 0;
				products_phase1[24] <= 0;
				products_phase1[25] <= 0;
				products_phase1[26] <= 0;
				products_phase1[27] <= 0;
				products_phase1[28] <= 0;
				products_phase1[29] <= 0;
				products_phase1[30] <= 0;
				products_phase1[31] <= 0;
			
				products_phase2[0]  <= 0;
				products_phase2[1]  <= 0;
				products_phase2[2]  <= 0;
				products_phase2[3]  <= 0;
				products_phase2[4]  <= 0;
				products_phase2[5]  <= 0;
				products_phase2[6]  <= 0;
				products_phase2[7]  <= 0;
				products_phase2[8]  <= 0;
				products_phase2[9]  <= 0;
				products_phase2[10]  <= 0;
				products_phase2[11]  <= 0;
				products_phase2[12]  <= 0;
				products_phase2[13]  <= 0;
				products_phase2[14]  <= 0;
				products_phase2[15]  <= 0;
				products_phase2[16]  <= 0;
				products_phase2[17]  <= 0;
				products_phase2[18]  <= 0;
				products_phase2[19]  <= 0;
				products_phase2[20]  <= 0;
				products_phase2[21]  <= 0;
				products_phase2[22]  <= 0;
				products_phase2[23]  <= 0;
				products_phase2[24]  <= 0;
				products_phase2[25]  <= 0;
				products_phase2[26]  <= 0;
				products_phase2[27]  <= 0;
				products_phase2[28]  <= 0;
				products_phase2[29]  <= 0;
				products_phase2[30]  <= 0;
				products_phase2[31]  <= 0;
				counter <= counter_q;
				//counter_q <= counter_qq;
				counter_q <= 0;
			end
		end
	end

    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin
            L_2_4_0_DFF_15_bits D (.Q(temp[i]), .D(products_phase1[i]), .clk(clk), .reset(reset));
        end
    endgenerate
    
    assign aa[0] = temp[0] + products_phase2[0];
    assign aa[1] = temp[1] + products_phase2[1];
    assign aa[2] = temp[2] + products_phase2[2];
    assign aa[3] = temp[3] + products_phase2[3];
    assign aa[4] = temp[4] + products_phase2[4];
    assign aa[5] = temp[5] + products_phase2[5];
    assign aa[6] = temp[6] + products_phase2[6];
    assign aa[7] = temp[7] + products_phase2[7];
    assign aa[8] = temp[8] + products_phase2[8];
    assign aa[9] = temp[9] + products_phase2[9];
    assign aa[10] = temp[10] + products_phase2[10];
    assign aa[11] = temp[11] + products_phase2[11];
    assign aa[12] = temp[12] + products_phase2[12];
    assign aa[13] = temp[13] + products_phase2[13];
    assign aa[14] = temp[14] + products_phase2[14];
    assign aa[15] = temp[15] + products_phase2[15];
    assign aa[16] = temp[16] + products_phase2[16];
    assign aa[17] = temp[17] + products_phase2[17];
    assign aa[18] = temp[18] + products_phase2[18];
    assign aa[19] = temp[19] + products_phase2[19];
    assign aa[20] = temp[20] + products_phase2[20];
    assign aa[21] = temp[21] + products_phase2[21];
    assign aa[22] = temp[22] + products_phase2[22];
    assign aa[23] = temp[23] + products_phase2[23];
    assign aa[24] = temp[24] + products_phase2[24];
    assign aa[25] = temp[25] + products_phase2[25];
    assign aa[26] = temp[26] + products_phase2[26];
    assign aa[27] = temp[27] + products_phase2[27];
    assign aa[28] = temp[28] + products_phase2[28];
    assign aa[29] = temp[29] + products_phase2[29];
    assign aa[30] = temp[30] + products_phase2[30];
    assign aa[31] = temp[31] + products_phase2[31];
    
    assign ab[0] = aa[0] + aa[1];
    assign ab[1] = aa[2] + aa[3];
    assign ab[2] = aa[4] + aa[5];
    assign ab[3] = aa[6] + aa[7];
    assign ab[4] = aa[8] + aa[9];
    assign ab[5] = aa[10] + aa[11];
    assign ab[6] = aa[12] + aa[13];
    assign ab[7] = aa[14] + aa[15];
    assign ab[8] = aa[16] + aa[17];
    assign ab[9] = aa[18] + aa[19];
    assign ab[10] = aa[20] + aa[21];
    assign ab[11] = aa[22] + aa[23];
    assign ab[12] = aa[24] + aa[25];
    assign ab[13] = aa[26] + aa[27];
    assign ab[14] = aa[28] + aa[29];
    assign ab[15] = aa[30] + aa[31];
    
    assign ac[0] = ab[0] + ab[1];
    assign ac[1] = ab[2] + ab[3];
    assign ac[2] = ab[4] + ab[5];
    assign ac[3] = ab[6] + ab[7];
    assign ac[4] = ab[8] + ab[9];
    assign ac[5] = ab[10] + ab[11];
    assign ac[6] = ab[12] + ab[13];
    assign ac[7] = ab[14] + ab[15];
    
    assign ad[0] = ac[0] + ac[1];
    assign ad[1] = ac[2] + ac[3];
    assign ad[2] = ac[4] + ac[5];
    assign ad[3] = ac[6] + ac[7];
    
    assign ae[0] = ad[0] + ad[1];
    assign ae[1] = ad[2] + ad[3];
    
    assign result = ae[0] + ae[1] + bias ; 
endmodule
