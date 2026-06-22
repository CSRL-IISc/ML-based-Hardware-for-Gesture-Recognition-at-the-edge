`timescale 1ns/1ps

module tb_L_1_0_0_Main;

    // ------------------------------------------------------------
    // Parameters
    // ------------------------------------------------------------
    localparam W_DEPTH = 1024;   // weights depth
    localparam B_DEPTH = 64;     // biases depth
    localparam Tclk    = 10;     // clock period in ns

    // ------------------------------------------------------------
    // Clock & Reset
    // ------------------------------------------------------------
    reg clk;
    reg reset;

    // ------------------------------------------------------------
    // DUT Inputs
    // ------------------------------------------------------------
    reg [1:0] sel_wire;

    reg signed [7:0] data_in_00;
    reg signed [7:0] data_in_01;
    reg signed [7:0] data_in_02;
    reg signed [7:0] data_in_03;
    reg signed [7:0] data_in_04;
    reg signed [7:0] data_in_05;

	wire signed [17:0] data_out_01; 
	wire signed [17:0] data_out_02; 
	wire signed [17:0] data_out_03; 
	wire signed [17:0] data_out_04; 
	wire signed [17:0] data_out_05; 
	wire signed [17:0] data_out_06; 
	wire signed [17:0] data_out_07; 
	wire signed [17:0] data_out_08; 
	wire signed [17:0] data_out_09; 
	wire signed [17:0] data_out_10; 
	wire signed [17:0] data_out_11; 
	wire signed [17:0] data_out_12; 
	wire signed [17:0] data_out_13; 
	wire signed [17:0] data_out_14; 
	wire signed [17:0] data_out_15; 
	wire signed [17:0] data_out_16; 
	wire signed [17:0] data_out_17; 
	wire signed [17:0] data_out_18; 
	wire signed [17:0] data_out_19; 
	wire signed [17:0] data_out_20; 
	wire signed [17:0] data_out_21; 
	wire signed [17:0] data_out_22; 
	wire signed [17:0] data_out_23; 
	wire signed [17:0] data_out_24; 
	wire signed [17:0] data_out_25; 
	wire signed [17:0] data_out_26; 
	wire signed [17:0] data_out_27; 
	wire signed [17:0] data_out_28; 
	wire signed [17:0] data_out_29; 
	wire signed [17:0] data_out_30; 
	wire signed [17:0] data_out_31;
	wire signed [17:0] data_out_32;	


    // ------------------------------------------------------------
    // Preload Weights (ACTIVE LOW)
    // ------------------------------------------------------------
    //reg        preload_weights_en;
    //reg [9:0]  preload_weights_addr;
    reg [7:0]  preload_weights_1;

    // ------------------------------------------------------------
    // Preload Biases (ACTIVE LOW)
    // ------------------------------------------------------------
    reg        preload_biases_en;
    reg [5:0]  preload_biases_addr;
    reg [7:0]  preload_biases_1;

    // ------------------------------------------------------------
    // Golden memories (HEX loaded at t=0)
    // ------------------------------------------------------------
    reg [7:0] w1_mem [0:W_DEPTH-1];

    reg [7:0] b_mem  [0:B_DEPTH-1];

    integer i;

    // ------------------------------------------------------------
    // DUT Instance
    // ------------------------------------------------------------
    L_1_0_0_Main dut (
        .clk(clk),
        .reset(reset),

        //.sel_wire(sel_wire),

        .data_in_00(data_in_00),
        .data_in_01(data_in_01),
        .data_in_02(data_in_02),
        .data_in_03(data_in_03),
        .data_in_04(data_in_04),
        .data_in_05(data_in_05),


        //.preload_weights_en(preload_weights_en),
        //.preload_weights_addr(preload_weights_addr),
        .preload_weights_1(preload_weights_1),

        .preload_biases_1(preload_biases_1),
		
		.data_out_01(data_out_01), 
		.data_out_02(data_out_02), 
		.data_out_03(data_out_03), 
		.data_out_04(data_out_04), 
		.data_out_05(data_out_05), 
		.data_out_06(data_out_06), 
		.data_out_07(data_out_07), 
		.data_out_08(data_out_08), 
		.data_out_09(data_out_09), 
		.data_out_10(data_out_10), 
		.data_out_11(data_out_11), 
		.data_out_12(data_out_12), 
		.data_out_13(data_out_13), 
		.data_out_14(data_out_14), 
		.data_out_15(data_out_15), 
		.data_out_16(data_out_16), 
		.data_out_17(data_out_17), 
		.data_out_18(data_out_18), 
		.data_out_19(data_out_19), 
		.data_out_20(data_out_20), 
		.data_out_21(data_out_21), 
		.data_out_22(data_out_22), 
		.data_out_23(data_out_23), 
		.data_out_24(data_out_24), 
		.data_out_25(data_out_25), 
		.data_out_26(data_out_26), 
		.data_out_27(data_out_27), 
		.data_out_28(data_out_28), 
		.data_out_29(data_out_29), 
		.data_out_30(data_out_30), 
		.data_out_31(data_out_31), 
		.data_out_32(data_out_32)
    );

    // ------------------------------------------------------------
    // Clock generator
    // ------------------------------------------------------------
    initial begin
        clk = 1'b0;
        forever #(Tclk/2) clk = ~clk;
    end

    // ------------------------------------------------------------
    // Load HEX at t=0
    // ------------------------------------------------------------
    initial begin
        $display("📥 Loading HEX files at t=%0t", $time);
        $readmemh("weights1.hex",      w1_mem);        
        $readmemh("biases_Layer2.hex", b_mem);
        $display("✅ HEX loaded at t=%0t", $time);
    end

    // ------------------------------------------------------------
    // Main test using ONLY # delays
    // ------------------------------------------------------------
    initial begin
        // init
        reset = 1'b1;
        sel_wire = 2'b00;

        data_in_00 = 0; data_in_01 = 0; data_in_02 = 0; data_in_03 = 0;
        data_in_04 = 0; data_in_05 = 0;

        // ACTIVE LOW enables -> default disabled = 1
        //preload_weights_en   = 1'b1;
        //preload_weights_addr = 10'd0;
        preload_weights_1    = 8'd0;

        preload_biases_1     = 8'd0;

        // --------------------------------------------------------
        // Start preload at t=0
        // --------------------------------------------------------
        #10;
		reset = 1'b0;
        sel_wire = 2'b00;

        data_in_00 = 0; data_in_01 = 1; data_in_02 = 2; data_in_03 = 3;
        data_in_04 = 4; data_in_05 = 5;

        // ACTIVE LOW enables -> default disabled = 1
        for (i = 0; i < W_DEPTH; i = i + 1) begin
            @(posedge clk);
            preload_biases_1 <= b_mem[i];
			//preload_weights_en    <= 1'b1;
            //preload_weights_addr  <= i[10:0];
            preload_weights_1 <= w1_mem[i];
        end
        #2000;
		
		#15000000
        $display("🎉 TEST COMPLETED");
        $finish;
    end

endmodule

