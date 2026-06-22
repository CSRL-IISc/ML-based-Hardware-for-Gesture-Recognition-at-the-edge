`timescale 1ns/1ps

module tb_L_3_0_0_Dense1;

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
    reg signed [31:0] data_in_00;
    reg signed [31:0] data_in_01;
    reg signed [31:0] data_in_02;
    reg signed [31:0] data_in_03;
    reg signed [31:0] data_in_04;
    reg signed [31:0] data_in_05;
    reg signed [31:0] data_in_06;
    reg signed [31:0] data_in_07;
    reg signed [31:0] data_in_08;
    reg signed [31:0] data_in_09;
    reg signed [31:0] data_in_10;
    reg signed [31:0] data_in_11;
    reg signed [31:0] data_in_12;
    reg signed [31:0] data_in_13;
    reg signed [31:0] data_in_14;
    reg signed [31:0] data_in_15;
    reg signed [31:0] data_in_16;
    reg signed [31:0] data_in_17;
    reg signed [31:0] data_in_18;
    reg signed [31:0] data_in_19;
    reg signed [31:0] data_in_20;
    reg signed [31:0] data_in_21;
    reg signed [31:0] data_in_22;
    reg signed [31:0] data_in_23;
    reg signed [31:0] data_in_24;
    reg signed [31:0] data_in_25;
    reg signed [31:0] data_in_26;
    reg signed [31:0] data_in_27;
    reg signed [31:0] data_in_28;
    reg signed [31:0] data_in_29;
    reg signed [31:0] data_in_30;
    reg signed [31:0] data_in_31;
	reg signed [31:0] data_in_32;
	reg signed [31:0] data_in_33;
	reg signed [31:0] data_in_34;
	reg signed [31:0] data_in_35;
	reg signed [31:0] data_in_36;
	reg signed [31:0] data_in_37;
	reg signed [31:0] data_in_38;
	reg signed [31:0] data_in_39;
	reg signed [31:0] data_in_40;
	reg signed [31:0] data_in_41;
	reg signed [31:0] data_in_42;
	reg signed [31:0] data_in_43;
	reg signed [31:0] data_in_44;
	reg signed [31:0] data_in_45;
	reg signed [31:0] data_in_46;
	reg signed [31:0] data_in_47;
	reg signed [31:0] data_in_48;
	reg signed [31:0] data_in_49;
	reg signed [31:0] data_in_50;
	reg signed [31:0] data_in_51;
	reg signed [31:0] data_in_52;
	reg signed [31:0] data_in_53;
	reg signed [31:0] data_in_54;
	reg signed [31:0] data_in_55;
	reg signed [31:0] data_in_56;
	reg signed [31:0] data_in_57;
	reg signed [31:0] data_in_58;
	reg signed [31:0] data_in_59;
	reg signed [31:0] data_in_60;
	reg signed [31:0] data_in_61;
	reg signed [31:0] data_in_62;
	reg signed [31:0] data_in_63;
	
	wire signed [31:0] product_00;
	wire signed [31:0] product_01;
	wire signed [31:0] product_02;
	wire signed [31:0] product_03;
	wire signed [31:0] product_04;
	wire signed [31:0] product_05;
	wire signed [31:0] product_06;
	wire signed [31:0] product_07;
	wire signed [31:0] product_08;
	wire signed [31:0] product_09;
	wire signed [31:0] product_10;
	wire signed [31:0] product_11;
	wire signed [31:0] product_12;
	wire signed [31:0] product_13;
	wire signed [31:0] product_14;
	wire signed [31:0] product_15;
	wire signed [31:0] product_16;
	wire signed [31:0] product_17;
	wire signed [31:0] product_18;
	wire signed [31:0] product_19;
	wire signed [31:0] product_20;
	wire signed [31:0] product_21;
	wire signed [31:0] product_22;
	wire signed [31:0] product_23;
	wire signed [31:0] product_24;
	wire signed [31:0] product_25;
	wire signed [31:0] product_26;
	wire signed [31:0] product_27;
	wire signed [31:0] product_28;
	wire signed [31:0] product_29;
	wire signed [31:0] product_30;
	wire signed [31:0] product_31;
	wire signed [31:0] product_32;
	wire signed [31:0] product_33;
	wire signed [31:0] product_34;
	wire signed [31:0] product_35;
	wire signed [31:0] product_36;
	wire signed [31:0] product_37;
	wire signed [31:0] product_38;
	wire signed [31:0] product_39;
	wire signed [31:0] product_40;
	wire signed [31:0] product_41;
	wire signed [31:0] product_42;
	wire signed [31:0] product_43;
	wire signed [31:0] product_44;
	wire signed [31:0] product_45;
	wire signed [31:0] product_46;
	wire signed [31:0] product_47;
	wire signed [31:0] product_48;
	wire signed [31:0] product_49;
	wire signed [31:0] product_50;
	wire signed [31:0] product_51;
	wire signed [31:0] product_52;
	wire signed [31:0] product_53;
	wire signed [31:0] product_54;
	wire signed [31:0] product_55;
	wire signed [31:0] product_56;
	wire signed [31:0] product_57;
	wire signed [31:0] product_58;
	wire signed [31:0] product_59;
	wire signed [31:0] product_60;
	wire signed [31:0] product_61;
	wire signed [31:0] product_62;
	wire signed [31:0] product_63;


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
    L_3_0_0_Dense1_test dut (
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
		.data_in_32(data_in_32),
		.data_in_33(data_in_33),
		.data_in_34(data_in_34),
		.data_in_35(data_in_35),
		.data_in_36(data_in_36),
		.data_in_37(data_in_37),
		.data_in_38(data_in_38),
		.data_in_39(data_in_39),
		.data_in_40(data_in_40),
		.data_in_41(data_in_41),
		.data_in_42(data_in_42),
		.data_in_43(data_in_43),
		.data_in_44(data_in_44),
		.data_in_45(data_in_45),
		.data_in_46(data_in_46),
		.data_in_47(data_in_47),
		.data_in_48(data_in_48),
		.data_in_49(data_in_49),
		.data_in_50(data_in_50),
		.data_in_51(data_in_51),
		.data_in_52(data_in_52),
		.data_in_53(data_in_53),
		.data_in_54(data_in_54),
		.data_in_55(data_in_55),
		.data_in_56(data_in_56),
		.data_in_57(data_in_57),
		.data_in_58(data_in_58),
		.data_in_59(data_in_59),
		.data_in_60(data_in_60),
		.data_in_61(data_in_61),
		.data_in_62(data_in_62),
		.data_in_63(data_in_63),

        //.preload_weights_en(preload_weights_en),
        //.preload_weights_addr(preload_weights_addr),
        .preload_weights_1(preload_weights_1),
        .preload_weights_2(preload_weights_2),
        .preload_weights_3(preload_weights_3),
        .preload_weights_4(preload_weights_4),

        .preload_biases_en(preload_biases_en),
        .preload_biases_addr(preload_biases_addr),
        .preload_biases_1(preload_biases_1),
		
		.product_00(product_00),
		.product_01(product_01),
		.product_02(product_02),
		.product_03(product_03),
		.product_04(product_04),
		.product_05(product_05),
		.product_06(product_06),
		.product_07(product_07),
		.product_08(product_08),
		.product_09(product_09),
		.product_10(product_10),
		.product_11(product_11),
		.product_12(product_12),
		.product_13(product_13),
		.product_14(product_14),
		.product_15(product_15),
		.product_16(product_16),
		.product_17(product_17),
		.product_18(product_18),
		.product_19(product_19),
		.product_20(product_20),
		.product_21(product_21),
		.product_22(product_22),
		.product_23(product_23),
		.product_24(product_24),
		.product_25(product_25),
		.product_26(product_26),
		.product_27(product_27),
		.product_28(product_28),
		.product_29(product_29),
		.product_30(product_30),
		.product_31(product_31),
		.product_32(product_32),
		.product_33(product_33),
		.product_34(product_34),
		.product_35(product_35),
		.product_36(product_36),
		.product_37(product_37),
		.product_38(product_38),
		.product_39(product_39),
		.product_40(product_40),
		.product_41(product_41),
		.product_42(product_42),
		.product_43(product_43),
		.product_44(product_44),
		.product_45(product_45),
		.product_46(product_46),
		.product_47(product_47),
		.product_48(product_48),
		.product_49(product_49),
		.product_50(product_50),
		.product_51(product_51),
		.product_52(product_52),
		.product_53(product_53),
		.product_54(product_54),
		.product_55(product_55),
		.product_56(product_56),
		.product_57(product_57),
		.product_58(product_58),
		.product_59(product_59),
		.product_60(product_60),
		.product_61(product_61),
		.product_62(product_62),
		.product_63(product_63)
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
        $readmemh("rom1_dense1_00.hex",      w1_mem);
        $readmemh("rom1_dense1_01.hex",      w2_mem);
        $readmemh("rom1_dense1_02.hex",      w3_mem);
        $readmemh("rom1_dense1_03.hex",      w4_mem);
        $readmemh("rom1_dense1_bias.hex", b_mem);
        $display("✅ HEX loaded at t=%0t", $time);
    end

    // ------------------------------------------------------------
    // Main test using ONLY # delays
    // ------------------------------------------------------------
    initial begin
        // init
        reset = 1'b1;

        data_in_00 = 0;
		data_in_01 = 0;
		data_in_02 = 0;
		data_in_03 = 0;
		data_in_04 = 0;
		data_in_05 = 0;
		data_in_06 = 0;
		data_in_07 = 0;
		data_in_08 = 0;
		data_in_09 = 0;
		data_in_10 = 0;
		data_in_11 = 0;
		data_in_12 = 0;
		data_in_13 = 0;
		data_in_14 = 0;
		data_in_15 = 0;
		data_in_16 = 0;
		data_in_17 = 0;
		data_in_18 = 0;
		data_in_19 = 0;
		data_in_20 = 0;
		data_in_21 = 0;
		data_in_22 = 0;
		data_in_23 = 0;
		data_in_24 = 0;
		data_in_25 = 0;
		data_in_26 = 0;
		data_in_27 = 0;
		data_in_28 = 0;
		data_in_29 = 0;
		data_in_30 = 0;
		data_in_31 = 0;
		data_in_32 = 0;
		data_in_33 = 0;
		data_in_34 = 0;
		data_in_35 = 0;
		data_in_36 = 0;
		data_in_37 = 0;
		data_in_38 = 0;
		data_in_39 = 0;
		data_in_40 = 0;
		data_in_41 = 0;
		data_in_42 = 0;
		data_in_43 = 0;
		data_in_44 = 0;
		data_in_45 = 0;
		data_in_46 = 0;
		data_in_47 = 0;
		data_in_48 = 0;
		data_in_49 = 0;
		data_in_50 = 0;
		data_in_51 = 0;
		data_in_52 = 0;
		data_in_53 = 0;
		data_in_54 = 0;
		data_in_55 = 0;
		data_in_56 = 0;
		data_in_57 = 0;
		data_in_58 = 0;
		data_in_59 = 0;
		data_in_60 = 0;
		data_in_61 = 0;
		data_in_62 = 0;
		data_in_63 = 0;

        // ACTIVE LOW enables -> default disabled = 1
        //preload_weights_en   = 1'b1;
        //preload_weights_addr = 10'd0;
        preload_weights_1    = 32'd0;
        preload_weights_2    = 32'd0;
        preload_weights_3    = 32'd0;
        preload_weights_4    = 32'd0;

        preload_biases_en    = 1'b1;
        preload_biases_addr  = 6'd0;
        preload_biases_1     = 32'd0;

        // --------------------------------------------------------
        // Start preload at t=0
        // --------------------------------------------------------
        #15;
		reset = 1'b0;

        data_in_00 = 32'd0;
		data_in_01 = 32'd1;
		data_in_02 = 32'd2;
		data_in_03 = 32'd3;
		data_in_04 = 32'd4;
		data_in_05 = 32'd5;
		data_in_06 = 32'd6;
		data_in_07 = 32'd7;
		data_in_08 = 32'd8;
		data_in_09 = 32'd9;
		data_in_10 = 32'd10;
		data_in_11 = 32'd11;
		data_in_12 = 32'd12;
		data_in_13 = 32'd13;
		data_in_14 = 32'd14;
		data_in_15 = 32'd15;
		data_in_16 = 32'd16;
		data_in_17 = 32'd17;
		data_in_18 = 32'd18;
		data_in_19 = 32'd19;
		data_in_20 = 32'd20;
		data_in_21 = 32'd21;
		data_in_22 = 32'd22;
		data_in_23 = 32'd23;
		data_in_24 = 32'd24;
		data_in_25 = 32'd25;
		data_in_26 = 32'd26;
		data_in_27 = 32'd27;
		data_in_28 = 32'd28;
		data_in_29 = 32'd29;
		data_in_30 = 32'd30;
		data_in_31 = 32'd31;
		data_in_32 = 32'd32;
		data_in_33 = 32'd33;
		data_in_34 = 32'd34;
		data_in_35 = 32'd35;
		data_in_36 = 32'd36;
		data_in_37 = 32'd37;
		data_in_38 = 32'd38;
		data_in_39 = 32'd39;
		data_in_40 = 32'd40;
		data_in_41 = 32'd41;
		data_in_42 = 32'd42;
		data_in_43 = 32'd43;
		data_in_44 = 32'd44;
		data_in_45 = 32'd45;
		data_in_46 = 32'd46;
		data_in_47 = 32'd47;
		data_in_48 = 32'd48;
		data_in_49 = 32'd49;
		data_in_50 = 32'd50;
		data_in_51 = 32'd51;
		data_in_52 = 32'd52;
		data_in_53 = 32'd53;
		data_in_54 = 32'd54;
		data_in_55 = 32'd55;
		data_in_56 = 32'd56;
		data_in_57 = 32'd57;
		data_in_58 = 32'd58;
		data_in_59 = 32'd59;
		data_in_60 = 32'd60;
		data_in_61 = 32'd61;
		data_in_62 = 32'd62;
		data_in_63 = 32'd63;

        // ACTIVE LOW enables -> default disabled = 1
        for (i = 0; i < W_DEPTH; i = i + 1) begin
            #10;
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
		
		#15000;
        $display("🎉 TEST COMPLETED");
        $finish;
    end

endmodule
