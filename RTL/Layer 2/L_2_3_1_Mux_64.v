`timescale 1ns/1ps
module L_2_3_1_Mux_64
(
	input [2:0] sel,
	input weights_ready,
	input bias_ready,
	input signed [7:0] data_input_0000,
	input signed [7:0] data_input_0001,
	input signed [7:0] data_input_0002,
    input signed [7:0] data_input_0003,
    input signed [7:0] data_input_0004,
    input signed [7:0] data_input_0005,
    input signed [7:0] data_input_0006,
    input signed [7:0] data_input_0007,
    input signed [7:0] data_input_0008,
    input signed [7:0] data_input_0009,
    input signed [7:0] data_input_0010,
    input signed [7:0] data_input_0011,
    input signed [7:0] data_input_0012,
    input signed [7:0] data_input_0013,
    input signed [7:0] data_input_0014,
    input signed [7:0] data_input_0015,
    input signed [7:0] data_input_0016,
    input signed [7:0] data_input_0017,
    input signed [7:0] data_input_0018,
    input signed [7:0] data_input_0019,
    input signed [7:0] data_input_0020,
    input signed [7:0] data_input_0021,
    input signed [7:0] data_input_0022,
    input signed [7:0] data_input_0023,
    input signed [7:0] data_input_0024,
    input signed [7:0] data_input_0025,
    input signed [7:0] data_input_0026,
    input signed [7:0] data_input_0027,
    input signed [7:0] data_input_0028,
    input signed [7:0] data_input_0029,
    input signed [7:0] data_input_0030,
    input signed [7:0] data_input_0031,
    input signed [7:0] data_input_0032,
    input signed [7:0] data_input_0033,
    input signed [7:0] data_input_0034,
    input signed [7:0] data_input_0035,
    input signed [7:0] data_input_0036,
    input signed [7:0] data_input_0037,
    input signed [7:0] data_input_0038,
    input signed [7:0] data_input_0039,
    input signed [7:0] data_input_0040,
    input signed [7:0] data_input_0041,
    input signed [7:0] data_input_0042,
    input signed [7:0] data_input_0043,
    input signed [7:0] data_input_0044,
    input signed [7:0] data_input_0045,
    input signed [7:0] data_input_0046,
    input signed [7:0] data_input_0047,
    input signed [7:0] data_input_0048,
    input signed [7:0] data_input_0049,
    input signed [7:0] data_input_0050,
    input signed [7:0] data_input_0051,
    input signed [7:0] data_input_0052,
    input signed [7:0] data_input_0053,
    input signed [7:0] data_input_0054,
    input signed [7:0] data_input_0055,
    input signed [7:0] data_input_0056,
    input signed [7:0] data_input_0057,
    input signed [7:0] data_input_0058,
    input signed [7:0] data_input_0059,
    input signed [7:0] data_input_0060,
    input signed [7:0] data_input_0061,
    input signed [7:0] data_input_0062,
    input signed [7:0] data_input_0063,
	output reg signed [7:0] data_output_0000,
    output reg signed [7:0] data_output_0001,
    output reg signed [7:0] data_output_0002,
    output reg signed [7:0] data_output_0003,
    output reg signed [7:0] data_output_0004,
    output reg signed [7:0] data_output_0005,
    output reg signed [7:0] data_output_0006,
    output reg signed [7:0] data_output_0007,
    output reg signed [7:0] data_output_0008,
    output reg signed [7:0] data_output_0009,
    output reg signed [7:0] data_output_0010,
    output reg signed [7:0] data_output_0011,
    output reg signed [7:0] data_output_0012,
    output reg signed [7:0] data_output_0013,
    output reg signed [7:0] data_output_0014,
    output reg signed [7:0] data_output_0015
);
	always@(*)
	begin
		if(weights_ready && bias_ready)
		begin
			case(sel)
			
				3'b000:	begin
							data_output_0000 = data_input_0000;
							data_output_0001 = data_input_0001;
							data_output_0002 = data_input_0002;
							data_output_0003 = data_input_0003;
							data_output_0004 = data_input_0004;
							data_output_0005 = data_input_0005;
							data_output_0006 = data_input_0006;
							data_output_0007 = data_input_0007;
							data_output_0008 = data_input_0008;
							data_output_0009 = data_input_0009;
							data_output_0010 = data_input_0010;
							data_output_0011 = data_input_0011;
							data_output_0012 = data_input_0012;
							data_output_0013 = data_input_0013;
							data_output_0014 = data_input_0014;
							data_output_0015 = data_input_0015;
						end
				3'b001:	begin
							data_output_0000 = data_input_0016;
							data_output_0001 = data_input_0017;
							data_output_0002 = data_input_0018;
							data_output_0003 = data_input_0019;
							data_output_0004 = data_input_0020;
							data_output_0005 = data_input_0021;
							data_output_0006 = data_input_0022;
							data_output_0007 = data_input_0023;
							data_output_0008 = data_input_0024;
							data_output_0009 = data_input_0025;
							data_output_0010 = data_input_0026;
							data_output_0011 = data_input_0027;
							data_output_0012 = data_input_0028;
							data_output_0013 = data_input_0029;
							data_output_0014 = data_input_0030;
							data_output_0015 = data_input_0031;
						end
				3'b010:	begin
							data_output_0000 = data_input_0032;
							data_output_0001 = data_input_0033;
							data_output_0002 = data_input_0034;
							data_output_0003 = data_input_0035;
							data_output_0004 = data_input_0036;
							data_output_0005 = data_input_0037;
							data_output_0006 = data_input_0038;
							data_output_0007 = data_input_0039;
							data_output_0008 = data_input_0040;
							data_output_0009 = data_input_0041;
							data_output_0010 = data_input_0042;
							data_output_0011 = data_input_0043;
							data_output_0012 = data_input_0044;
							data_output_0013 = data_input_0045;
							data_output_0014 = data_input_0046;
							data_output_0015 = data_input_0047;
						end
				3'b011:	begin
							data_output_0000 = data_input_0048;
							data_output_0001 = data_input_0049;
							data_output_0002 = data_input_0050;
							data_output_0003 = data_input_0051;
							data_output_0004 = data_input_0052;
							data_output_0005 = data_input_0053;
							data_output_0006 = data_input_0054;
							data_output_0007 = data_input_0055;
							data_output_0008 = data_input_0056;
							data_output_0009 = data_input_0057;
							data_output_0010 = data_input_0058;
							data_output_0011 = data_input_0059;
							data_output_0012 = data_input_0060;
							data_output_0013 = data_input_0061;
							data_output_0014 = data_input_0062;
							data_output_0015 = data_input_0063;
						end
			endcase
		end
		else
		begin
			data_output_0000 = 0;
            data_output_0001 = 0;
            data_output_0002 = 0;
            data_output_0003 = 0;
            data_output_0004 = 0;
            data_output_0005 = 0;
            data_output_0006 = 0;
            data_output_0007 = 0;
            data_output_0008 = 0;
            data_output_0009 = 0;
            data_output_0010 = 0;
            data_output_0011 = 0;
            data_output_0012 = 0;
            data_output_0013 = 0;
            data_output_0014 = 0;
            data_output_0015 = 0;
		end
	end
endmodule

