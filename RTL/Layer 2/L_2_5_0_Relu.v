`timescale 1ns / 1ps



module L_2_5_0_Relu(
    input reset,
    input signed [31:0] data_in_01, data_in_02, data_in_03, data_in_04,
    input signed [31:0] data_in_05, data_in_06, data_in_07, data_in_08,
    input signed [31:0] data_in_09, data_in_10, data_in_11, data_in_12,
    input signed [31:0] data_in_13, data_in_14, data_in_15, data_in_16,
    output reg signed [31:0] data_out_01, data_out_02, data_out_03, data_out_04,
    output reg signed [31:0] data_out_05, data_out_06, data_out_07, data_out_08,
    output reg signed [31:0] data_out_09, data_out_10, data_out_11, data_out_12,
    output reg signed [31:0] data_out_13, data_out_14, data_out_15, data_out_16
   
);

    always @(*) begin
        if (reset) begin
            data_out_01 = 0; 
			data_out_02 = 0; 
			data_out_03 = 0; 
			data_out_04 = 0;
            data_out_05 = 0; 
			data_out_06 = 0; 
			data_out_07 = 0; 
			data_out_08 = 0;
            data_out_09 = 0; 
			data_out_10 = 0; 
			data_out_11 = 0; 
			data_out_12 = 0;
            data_out_13 = 0; 
			data_out_14 = 0; 
			data_out_15 = 0; 
			data_out_16 = 0;
            
        end else begin
            data_out_01 = (data_in_01[31] == 0) ? data_in_01 : 0;
            data_out_02 = (data_in_02[31] == 0) ? data_in_02 : 0;
            data_out_03 = (data_in_03[31] == 0) ? data_in_03 : 0;
            data_out_04 = (data_in_04[31] == 0) ? data_in_04 : 0;
            data_out_05 = (data_in_05[31] == 0) ? data_in_05 : 0;
            data_out_06 = (data_in_06[31] == 0) ? data_in_06 : 0;
            data_out_07 = (data_in_07[31] == 0) ? data_in_07 : 0;
            data_out_08 = (data_in_08[31] == 0) ? data_in_08 : 0;
            data_out_09 = (data_in_09[31] == 0) ? data_in_09 : 0;
            data_out_10 = (data_in_10[31] == 0) ? data_in_10 : 0;
            data_out_11 = (data_in_11[31] == 0) ? data_in_11 : 0;
            data_out_12 = (data_in_12[31] == 0) ? data_in_12 : 0;
            data_out_13 = (data_in_13[31] == 0) ? data_in_13 : 0;
            data_out_14 = (data_in_14[31] == 0) ? data_in_14 : 0;
            data_out_15 = (data_in_15[31] == 0) ? data_in_15 : 0;
            data_out_16 = (data_in_16[31] == 0) ? data_in_16 : 0;
            
        end
    end

endmodule