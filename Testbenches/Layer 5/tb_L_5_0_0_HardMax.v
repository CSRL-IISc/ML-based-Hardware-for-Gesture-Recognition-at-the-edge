`timescale 1ns/1ps
module tb_L_5_0_0_HardMax();
	reg clk;
	reg reset;
	reg signed [31:0] data_in;
	wire signed [2:0] max_index;
	wire signed [31:0] max_out;
	L_5_0_0_HardMax DUT (.clk(clk), .reset(reset), .max_index(max_index), .max_out(max_out), .data_in(data_in));
	initial
	begin
		clk = 0;
		forever #5 clk = ~clk;
	end
	initial
	begin
		reset = 1;
		data_in = 0;
		#15;
		reset = 0;
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		@(posedge clk);
		data_in = $random & 32'hFF;
		$finish;
	end
endmodule
