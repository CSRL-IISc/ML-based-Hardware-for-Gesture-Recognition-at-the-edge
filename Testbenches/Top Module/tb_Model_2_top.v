`timescale 1ns/1ps
module tb_Model_2_top;

// ============================================================
// Clock / Reset
// ============================================================

reg clk;
reg reset;

initial begin
    clk = 0;
    forever #5 clk = ~clk; // 100 MHz clock
end

// ============================================================
// DUT Inputs
// ============================================================

reg signed [7:0] data_in_00;
reg signed [7:0] data_in_01;
reg signed [7:0] data_in_02;
reg signed [7:0] data_in_03;
reg signed [7:0] data_in_04;
reg signed [7:0] data_in_05;
reg input_start_Layer_1;

reg preload_biases_en_Layer_2;
reg [5:0] preload_biases_addr_Layer_2;

reg preload_biases_en_Layer_3;
reg [5:0] preload_biases_addr_Layer_3;

reg preload_biases_en_Layer_4;
reg [5:0] preload_biases_addr_Layer_4;

reg [7:0] preload_weights_1_Layer_1;
reg [7:0] preload_biases_1_Layer_1;
reg [7:0] preload_weights_1_Layer_2;
reg [7:0] preload_weights_2_Layer_2;
reg [7:0] preload_weights_3_Layer_2;
reg [7:0] preload_weights_4_Layer_2;
reg [7:0] preload_biases_1_Layer_2;

reg [7:0] preload_weights_1_Layer_3;
reg [7:0] preload_weights_2_Layer_3;
reg [7:0] preload_weights_3_Layer_3;
reg [7:0] preload_weights_4_Layer_3;
reg [7:0] preload_biases_1_Layer_3;

reg [7:0] preload_weights_1_Layer_4;
reg [7:0] preload_weights_2_Layer_4;
reg [7:0] preload_weights_3_Layer_4;
reg [7:0] preload_weights_4_Layer_4;
reg [7:0] preload_biases_1_Layer_4;

wire [10:0] counter_1_to_2;
wire weights_ready_Layer_1,weights_ready_Layer_2;
wire [31:0] final_output;
wire [2:0] final_index;

// ============================================================
// Instantiate DUT
// ============================================================

Model_2_top DUT (
    .clk(clk),
    .reset(reset),
    .data_in_00(data_in_00),
    .data_in_01(data_in_01),
    .data_in_02(data_in_02),
    .data_in_03(data_in_03),
    .data_in_04(data_in_04),
    .data_in_05(data_in_05),
	.input_start_Layer_1(input_start_Layer_1),
    .preload_weights_1_Layer_1(preload_weights_1_Layer_1),
    .preload_biases_1_Layer_1(preload_biases_1_Layer_1),
    .preload_weights_1_Layer_2(preload_weights_1_Layer_2),
	.preload_weights_2_Layer_2(preload_weights_2_Layer_2),
	.preload_weights_3_Layer_2(preload_weights_3_Layer_2),
	.preload_weights_4_Layer_2(preload_weights_4_Layer_2),
	.preload_biases_1_Layer_2(preload_biases_1_Layer_2),
	.preload_biases_en_Layer_2(preload_biases_en_Layer_2),
	.preload_biases_addr_Layer_2(preload_biases_addr_Layer_2),
	
    .preload_weights_1_Layer_3(preload_weights_1_Layer_3),
	.preload_weights_2_Layer_3(preload_weights_2_Layer_3),
	.preload_weights_3_Layer_3(preload_weights_3_Layer_3),
	.preload_weights_4_Layer_3(preload_weights_4_Layer_3),
	.preload_biases_1_Layer_3(preload_biases_1_Layer_3),
	.preload_biases_en_Layer_3(preload_biases_en_Layer_3),
	.preload_biases_addr_Layer_3(preload_biases_addr_Layer_3),
	
	.preload_weights_1_Layer_4(preload_weights_1_Layer_4),
	.preload_biases_1_Layer_4(preload_biases_1_Layer_4),
	.preload_biases_en_Layer_4(preload_biases_en_Layer_4),
	.preload_biases_addr_Layer_4(preload_biases_addr_Layer_4),
	
	.weights_ready_L_1(weights_ready_Layer_1),
	.weights_ready_L_2(weights_ready_Layer_2),
    .counter_1_to_2(counter_1_to_2),
	.final_output(final_output),
	.final_index(final_index)
);

// ============================================================
// Memories
// ============================================================

reg [7:0] input_mem_0 [0:1018];
reg [7:0] input_mem_1 [0:1018];
reg [7:0] input_mem_2 [0:1018];
reg [7:0] input_mem_3 [0:1018];
reg [7:0] input_mem_4 [0:1018];
reg [7:0] input_mem_5 [0:1018];

reg [7:0] weight_mem_Layer_1 [0:383];
reg [7:0] weight_1_mem_Layer_2 [0:1023];
reg [7:0] weight_2_mem_Layer_2 [0:1023];
reg [7:0] weight_3_mem_Layer_2 [0:1023];
reg [7:0] weight_4_mem_Layer_2 [0:1023];
reg [7:0] bias_mem_Layer_1   [0:31];
reg [7:0] bias_mem_Layer_2   [0:63];

reg [7:0] weight_1_mem_Layer_3 [0:1023];
reg [7:0] weight_2_mem_Layer_3 [0:1023];
reg [7:0] weight_3_mem_Layer_3 [0:1023];
reg [7:0] weight_4_mem_Layer_3 [0:1023];
reg [7:0] bias_mem_Layer_3   [0:63];

reg [7:0] weight_1_mem_Layer_4 [0:1023];
reg [7:0] weight_2_mem_Layer_4 [0:1023];
reg [7:0] weight_3_mem_Layer_4 [0:1023];
reg [7:0] weight_4_mem_Layer_4 [0:1023];
reg [7:0] bias_mem_Layer_4   [0:63];

integer i;
integer output_counter;

// ============================================================
// Test Sequence
// ============================================================

initial begin

    // Load HEX files
    $readmemh("Input_1_Layer_1_1019.hex", input_mem_0);
    $readmemh("Input_2_Layer_1_1019.hex", input_mem_1);
    $readmemh("Input_3_Layer_1_1019.hex", input_mem_2);
    $readmemh("Input_4_Layer_1_1019.hex", input_mem_3);
    $readmemh("Input_5_Layer_1_1019.hex", input_mem_4);
    $readmemh("Input_6_Layer_1_1019.hex", input_mem_5);

    $readmemh("Weights_Layer_1_384.hex", weight_mem_Layer_1);
    $readmemh("Biases_Layer_1_32.hex", bias_mem_Layer_1);
	$readmemh("Weights_1_Layer_2_1024.hex", weight_1_mem_Layer_2);
	$readmemh("Weights_2_Layer_2_1024.hex", weight_2_mem_Layer_2);
	$readmemh("Weights_3_Layer_2_1024.hex", weight_3_mem_Layer_2);
	$readmemh("Weights_4_Layer_2_1024.hex", weight_4_mem_Layer_2);
    $readmemh("Biases_Layer_2_64.hex", bias_mem_Layer_2);
	
	$readmemh("Weights_1_Layer_3_1024.hex", weight_1_mem_Layer_3);
	$readmemh("Weights_2_Layer_3_1024.hex", weight_2_mem_Layer_3);
	$readmemh("Weights_3_Layer_3_1024.hex", weight_3_mem_Layer_3);
	$readmemh("Weights_4_Layer_3_1024.hex", weight_4_mem_Layer_3);
    $readmemh("Biases_Layer_3_64.hex", bias_mem_Layer_3);
	
	$readmemh("Weights_1_Layer_4_384.hex", weight_1_mem_Layer_4);
    $readmemh("Biases_Layer_4_6.hex", bias_mem_Layer_4);

    // Reset
    reset = 1;
    preload_weights_1_Layer_1 <= 0;
    preload_biases_1_Layer_1  <= 0;
	preload_weights_1_Layer_2 <= 0;
	preload_weights_2_Layer_2 <= 0;
	preload_weights_3_Layer_2 <= 0;
	preload_weights_4_Layer_2 <= 0;
	preload_biases_1_Layer_2 <= 0;
	preload_biases_en_Layer_2 <= 1;
	preload_biases_addr_Layer_2 <= 0;
	input_start_Layer_1 <= 0;

    data_in_00 <= 0;
    data_in_01 <= 0;
    data_in_02 <= 0;
    data_in_03 <= 0;
    data_in_04 <= 0;
    data_in_05 <= 0;

    output_counter <= 0;

    #20;
    reset = 0;

    // ============================================================
    // Load Weights (384 cycles)
    // ============================================================


	for (i = 0; i < 1024; i = i + 1) begin
        @(posedge clk);
		preload_biases_en_Layer_2    <= 1'b1;
        preload_biases_addr_Layer_2  <= i[5:0];
        preload_weights_1_Layer_2 <= weight_1_mem_Layer_2[i];
		preload_weights_2_Layer_2 <= weight_2_mem_Layer_2[i];
		preload_weights_3_Layer_2 <= weight_3_mem_Layer_2[i];
		preload_weights_4_Layer_2 <= weight_4_mem_Layer_2[i];
		preload_biases_en_Layer_3    <= 1'b1;
        preload_biases_addr_Layer_3  <= i[5:0];
        preload_weights_1_Layer_3 <= weight_1_mem_Layer_3[i];
		preload_weights_2_Layer_3 <= weight_2_mem_Layer_3[i];
		preload_weights_3_Layer_3 <= weight_3_mem_Layer_3[i];
		preload_weights_4_Layer_3 <= weight_4_mem_Layer_3[i];
		preload_biases_en_Layer_4    <= 1'b1;
        preload_biases_addr_Layer_4  <= i[5:0];        
		preload_weights_2_Layer_4 <= weight_2_mem_Layer_4[i];
		preload_weights_3_Layer_4 <= weight_3_mem_Layer_4[i];
		preload_weights_4_Layer_4 <= weight_4_mem_Layer_4[i];
		if(i < 384)
		begin
			preload_weights_1_Layer_1 <= weight_mem_Layer_1[i];
			preload_weights_1_Layer_4 <= weight_1_mem_Layer_4[i];
		end
		if(i<32)
		begin
			preload_biases_1_Layer_1 <= bias_mem_Layer_1[i];
		end
		if(i < 64)
		begin
			preload_biases_1_Layer_2 <= bias_mem_Layer_2[i];
			preload_biases_1_Layer_3 <= bias_mem_Layer_3[i];
		end
		if(i < 6)
		begin
			preload_biases_1_Layer_4 <= bias_mem_Layer_4[i];
		end
    end


    // ============================================================
    // Wait until weights_ready_Layer_1 == 1
    // ============================================================

    wait(weights_ready_Layer_1 == 1);
    @(posedge clk);

    $display("Weights Ready detected. Starting input streaming...");

    // ============================================================
    // Stream Inputs ONLY after weights_ready_Layer_1
    // ============================================================

    for (i = 0; i < 1019; i = i + 1) begin
        @(posedge clk);
		input_start_Layer_1 <= 1;	
        data_in_00 <= input_mem_0[i];
        data_in_01 <= input_mem_1[i];
        data_in_02 <= input_mem_2[i];
        data_in_03 <= input_mem_3[i];
        data_in_04 <= input_mem_4[i];
        data_in_05 <= input_mem_5[i];
    end

    // Wait pipeline flush
    repeat (200) @(posedge clk);

    $display("=======================================");
    $display("Total Output Cycles Counted = %0d", output_counter);
    $display("=======================================");

    #100000;
    $stop;
end

// ============================================================
// Output Counter
// Counts cycles after weights_ready_Layer_1
// ============================================================

always @(posedge clk) begin
    if (!reset && weights_ready_Layer_1) begin
        output_counter = output_counter + 1;
    end
end

endmodule
