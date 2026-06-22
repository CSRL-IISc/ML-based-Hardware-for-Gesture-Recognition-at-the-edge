`timescale 1ns/1ps

module tb_L_2_0_0_Main;

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

    reg signed [17:0] data_in_00;
    reg signed [17:0] data_in_01;
    reg signed [17:0] data_in_02;
    reg signed [17:0] data_in_03;
    reg signed [17:0] data_in_04;
    reg signed [17:0] data_in_05;
    reg signed [17:0] data_in_06;
    reg signed [17:0] data_in_07;
    reg signed [17:0] data_in_08;
    reg signed [17:0] data_in_09;
    reg signed [17:0] data_in_10;
    reg signed [17:0] data_in_11;
    reg signed [17:0] data_in_12;
    reg signed [17:0] data_in_13;
    reg signed [17:0] data_in_14;
    reg signed [17:0] data_in_15;
    reg signed [17:0] data_in_16;
    reg signed [17:0] data_in_17;
    reg signed [17:0] data_in_18;
    reg signed [17:0] data_in_19;
    reg signed [17:0] data_in_20;
    reg signed [17:0] data_in_21;
    reg signed [17:0] data_in_22;
    reg signed [17:0] data_in_23;
    reg signed [17:0] data_in_24;
    reg signed [17:0] data_in_25;
    reg signed [17:0] data_in_26;
    reg signed [17:0] data_in_27;
    reg signed [17:0] data_in_28;
    reg signed [17:0] data_in_29;
    reg signed [17:0] data_in_30;
    reg signed [17:0] data_in_31;
	wire signed [31:0] data_out_00; 
	wire signed [31:0] data_out_01; 
	wire signed [31:0] data_out_02; 
	wire signed [31:0] data_out_03; 
	wire signed [31:0] data_out_04; 
	wire signed [31:0] data_out_05; 
	wire signed [31:0] data_out_06; 
	wire signed [31:0] data_out_07; 
	wire signed [31:0] data_out_08; 
	wire signed [31:0] data_out_09; 
	wire signed [31:0] data_out_10; 
	wire signed [31:0] data_out_11; 
	wire signed [31:0] data_out_12; 
	wire signed [31:0] data_out_13; 
	wire signed [31:0] data_out_14; 
	wire signed [31:0] data_out_15; 
	wire signed [31:0] data_out_16; 
	wire signed [31:0] data_out_17; 
	wire signed [31:0] data_out_18; 
	wire signed [31:0] data_out_19; 
	wire signed [31:0] data_out_20; 
	wire signed [31:0] data_out_21; 
	wire signed [31:0] data_out_22; 
	wire signed [31:0] data_out_23; 
	wire signed [31:0] data_out_24; 
	wire signed [31:0] data_out_25; 
	wire signed [31:0] data_out_26; 
	wire signed [31:0] data_out_27; 
	wire signed [31:0] data_out_28; 
	wire signed [31:0] data_out_29; 
	wire signed [31:0] data_out_30; 
	wire signed [31:0] data_out_31; 
	wire signed [31:0] data_out_32; 
	wire signed [31:0] data_out_33; 
	wire signed [31:0] data_out_34; 
	wire signed [31:0] data_out_35; 
	wire signed [31:0] data_out_36; 
	wire signed [31:0] data_out_37; 
	wire signed [31:0] data_out_38; 
	wire signed [31:0] data_out_39; 
	wire signed [31:0] data_out_40; 
	wire signed [31:0] data_out_41; 
	wire signed [31:0] data_out_42; 
	wire signed [31:0] data_out_43; 
	wire signed [31:0] data_out_44; 
	wire signed [31:0] data_out_45; 
	wire signed [31:0] data_out_46; 
	wire signed [31:0] data_out_47; 
	wire signed [31:0] data_out_48; 
	wire signed [31:0] data_out_49; 
	wire signed [31:0] data_out_50; 
	wire signed [31:0] data_out_51; 
	wire signed [31:0] data_out_52; 
	wire signed [31:0] data_out_53; 
	wire signed [31:0] data_out_54; 
	wire signed [31:0] data_out_55; 
	wire signed [31:0] data_out_56; 
	wire signed [31:0] data_out_57; 
	wire signed [31:0] data_out_58; 
	wire signed [31:0] data_out_59; 
	wire signed [31:0] data_out_60; 
	wire signed [31:0] data_out_61; 
	wire signed [31:0] data_out_62; 
	wire signed [31:0] data_out_63;

    // ------------------------------------------------------------
    // Preload Weights (ACTIVE LOW)
    // ------------------------------------------------------------
    //reg        preload_weights_en;
    //reg [9:0]  preload_weights_addr;
    reg [7:0]  preload_weights_1;
    reg [7:0]  preload_weights_2;
    reg [7:0]  preload_weights_3;
    reg [7:0]  preload_weights_4;

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
    reg [7:0] w2_mem [0:W_DEPTH-1];
    reg [7:0] w3_mem [0:W_DEPTH-1];
    reg [7:0] w4_mem [0:W_DEPTH-1];

    reg [7:0] b_mem  [0:B_DEPTH-1];

    integer i;

    // ------------------------------------------------------------
    // DUT Instance
    // ------------------------------------------------------------
    L_2_0_0_Main dut (
        .clk(clk),
        .reset(reset),

        //.sel_wire(sel_wire),

        .data_in_00(data_in_00),
        .data_in_01(data_in_01),
        .data_in_02(data_in_02),
        .data_in_03(data_in_03),
        .data_in_04(data_in_04),
        .data_in_05(data_in_05),
        .data_in_06(data_in_06),
        .data_in_07(data_in_07),
        .data_in_08(data_in_08),
        .data_in_09(data_in_09),
        .data_in_10(data_in_10),
        .data_in_11(data_in_11),
        .data_in_12(data_in_12),
        .data_in_13(data_in_13),
        .data_in_14(data_in_14),
        .data_in_15(data_in_15),
        .data_in_16(data_in_16),
        .data_in_17(data_in_17),
        .data_in_18(data_in_18),
        .data_in_19(data_in_19),
        .data_in_20(data_in_20),
        .data_in_21(data_in_21),
        .data_in_22(data_in_22),
        .data_in_23(data_in_23),
        .data_in_24(data_in_24),
        .data_in_25(data_in_25),
        .data_in_26(data_in_26),
        .data_in_27(data_in_27),
        .data_in_28(data_in_28),
        .data_in_29(data_in_29),
        .data_in_30(data_in_30),
        .data_in_31(data_in_31),

        //.preload_weights_en(preload_weights_en),
        //.preload_weights_addr(preload_weights_addr),
        .preload_weights_1(preload_weights_1),
        .preload_weights_2(preload_weights_2),
        .preload_weights_3(preload_weights_3),
        .preload_weights_4(preload_weights_4),

        .preload_biases_en(preload_biases_en),
        .preload_biases_addr(preload_biases_addr),
        .preload_biases_1(preload_biases_1),
		
		.data_out_00(data_out_00), 
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
		.data_out_32(data_out_32), 
		.data_out_33(data_out_33), 
		.data_out_34(data_out_34), 
		.data_out_35(data_out_35), 
		.data_out_36(data_out_36), 
		.data_out_37(data_out_37), 
		.data_out_38(data_out_38), 
		.data_out_39(data_out_39), 
		.data_out_40(data_out_40), 
		.data_out_41(data_out_41), 
		.data_out_42(data_out_42), 
		.data_out_43(data_out_43), 
		.data_out_44(data_out_44), 
		.data_out_45(data_out_45), 
		.data_out_46(data_out_46), 
		.data_out_47(data_out_47), 
		.data_out_48(data_out_48), 
		.data_out_49(data_out_49), 
		.data_out_50(data_out_50), 
		.data_out_51(data_out_51), 
		.data_out_52(data_out_52), 
		.data_out_53(data_out_53), 
		.data_out_54(data_out_54), 
		.data_out_55(data_out_55), 
		.data_out_56(data_out_56), 
		.data_out_57(data_out_57), 
		.data_out_58(data_out_58), 
		.data_out_59(data_out_59), 
		.data_out_60(data_out_60), 
		.data_out_61(data_out_61), 
		.data_out_62(data_out_62), 
		.data_out_63(data_out_63)
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
        $readmemh("weights2.hex",      w2_mem);
        $readmemh("weights3.hex",      w3_mem);
        $readmemh("weights4.hex",      w4_mem);
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
        data_in_04 = 0; data_in_05 = 0; data_in_06 = 0; data_in_07 = 0;
        data_in_08 = 0; data_in_09 = 0; data_in_10 = 0; data_in_11 = 0;
        data_in_12 = 0; data_in_13 = 0; data_in_14 = 0; data_in_15 = 0;
        data_in_16 = 0; data_in_17 = 0; data_in_18 = 0; data_in_19 = 0;
        data_in_20 = 0; data_in_21 = 0; data_in_22 = 0; data_in_23 = 0;
        data_in_24 = 0; data_in_25 = 0; data_in_26 = 0; data_in_27 = 0;
        data_in_28 = 0; data_in_29 = 0; data_in_30 = 0; data_in_31 = 0;

        // ACTIVE LOW enables -> default disabled = 1
        //preload_weights_en   = 1'b1;
        //preload_weights_addr = 10'd0;
        preload_weights_1    = 8'd0;
        preload_weights_2    = 8'd0;
        preload_weights_3    = 8'd0;
        preload_weights_4    = 8'd0;

        preload_biases_en    = 1'b1;
        preload_biases_addr  = 6'd0;
        preload_biases_1     = 8'd0;

        // --------------------------------------------------------
        // Start preload at t=0
        // --------------------------------------------------------
        #10;
		reset = 1'b0;
        sel_wire = 2'b00;

        data_in_00 = 0; data_in_01 = 1; data_in_02 = 2; data_in_03 = 3;
        data_in_04 = 4; data_in_05 = 5; data_in_06 = 6; data_in_07 = 7;
        data_in_08 = 8; data_in_09 = 9; data_in_10 = 10; data_in_11 = 11;
        data_in_12 = 12; data_in_13 = 13; data_in_14 = 14; data_in_15 = 15;
        data_in_16 = 16; data_in_17 = 17; data_in_18 = 18; data_in_19 = 19;
        data_in_20 = 20; data_in_21 = 21; data_in_22 = 22; data_in_23 = 23;
        data_in_24 = 24; data_in_25 = 25; data_in_26 = 26; data_in_27 = 27;
        data_in_28 = 28; data_in_29 = 29; data_in_30 = 30; data_in_31 = 31;

        // ACTIVE LOW enables -> default disabled = 1
        for (i = 0; i < W_DEPTH; i = i + 1) begin
            @(posedge clk);
            preload_biases_en    <= 1'b1;
            preload_biases_addr  <= i[5:0];
            preload_biases_1 <= b_mem[i];
			//preload_weights_en    <= 1'b1;
            //preload_weights_addr  <= i[10:0];
            preload_weights_1 <= w1_mem[i];
			preload_weights_2 <= w2_mem[i];
			preload_weights_3 <= w3_mem[i];
			preload_weights_4 <= w4_mem[i];
        end
        #2000;
		
		#15000000
        $display("🎉 TEST COMPLETED");
        $finish;
    end

endmodule
