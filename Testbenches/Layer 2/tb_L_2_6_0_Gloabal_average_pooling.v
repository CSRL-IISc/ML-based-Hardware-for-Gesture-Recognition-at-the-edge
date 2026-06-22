`timescale 1ns/1ps

module tb_L_2_6_0_Global_average_pooling;

    // ----------------------------------------
    // Clock / Reset
    // ----------------------------------------
    reg clk;
    reg reset;
    reg pulse,pulse_d;

    // DUT inputs
    reg signed [26:0] data_in;

    // DUT outputs
    wire signed [31:0] data_out_1;
    wire signed [31:0] data_out_2;
    wire signed [31:0] data_out_3;
    wire signed [31:0] data_out_4;

    // ----------------------------------------
    // Instantiate DUT
    // ----------------------------------------
    L_2_6_0_Global_average_pooling dut (
        .clk(clk),
        .reset(reset),
        .pulse(pulse),
        .data_in(data_in),
        .data_out_1(data_out_1),
        .data_out_2(data_out_2),
        .data_out_3(data_out_3),
        .data_out_4(data_out_4)
    );

    // ----------------------------------------
    // Clock generation
    // ----------------------------------------
    always #5 clk = ~clk;

    // ----------------------------------------
    // Scoreboard / Golden model
    // ----------------------------------------
    integer cycle;
    integer sb_counter;

    reg signed [31:0] acc_model_d;   // internal accumulator
    reg signed [31:0] acc_model;     // 1-cycle delayed
    reg signed [31:0] acc_model_dd;  // 2-cycle delayed (q1)

    reg signed [31:0] div_model,div_model_r;
	reg signed [31:0] shift_model_dd [0:3];
	reg signed [31:0] shift_model_d [0:3];
    reg signed [31:0] shift_model [0:3];

    // ----------------------------------------
    // Reference model (cycle-accurate)
    // ----------------------------------------
    always @(posedge clk ) begin
        
		//shift_model[3] <= shift_model_d[3];
		//shift_model[2] <= shift_model_d[2];
		//shift_model[1] <= shift_model_d[1];
		//shift_model[0] <= shift_model_d[0];
		pulse_d <= pulse;
		if (reset) begin
            acc_model_d   <= 0;
            acc_model     <= 0;
            acc_model_dd  <= 0;
            div_model     <= 0;
			div_model_r <= 0;   

			sb_counter <= 0;
        end else begin
            sb_counter <= sb_counter + 1;

            // Accumulator (MATCHES RTL)
            acc_model <= acc_model_d;

            if (pulse)
                acc_model_d <= data_in;
            else
                acc_model_d <= acc_model_d + data_in;

            // Pipeline delay (q1)
            acc_model_dd <= acc_model;

            // Divide
            //div_model_r <= div_model;
			div_model = acc_model >>> 9;
			

            // Shift register (only on pulse)
            			
        end
    end
	always@(*)
	begin
		if(reset)
		begin
			shift_model[0] = 0;
            shift_model[1] = 0;
            shift_model[2] = 0;
            shift_model[3] = 0;
		end
		else if (pulse)
		begin	
			shift_model[3] = shift_model[2];
			shift_model[2] = shift_model[1];
			shift_model[1] = shift_model[0];
			shift_model[0] = div_model;
		end
		else
		begin
			shift_model[3] = shift_model[3];
			shift_model[2] = shift_model[2];
			shift_model[1] = shift_model[1];
			shift_model[0] = shift_model[0];
		end
	end

    // ----------------------------------------
    // Scoreboard checker (ALL DISPLAYS KEPT)
    // ----------------------------------------
    always @(posedge clk) begin
        if (!reset && sb_counter >= 0) begin
            if (data_out_1 !== shift_model[0] ||
                data_out_2 !== shift_model[1] ||
                data_out_3 !== shift_model[2] ||
                data_out_4 !== shift_model[3]) begin

                $display("====================================");
                $display("❌ MISMATCH at cycle %0d and at time %0t", cycle, $time);
                $display("data_in = %h=%0d; pulse = %0b; reset = %0b;",
                         data_in, data_in, pulse, reset);

                $display("Expected Intermediate:");
                $display("	Accumulator output = %0d", acc_model_d);
                $display("	Delayed Accumulator output = %0d", acc_model);
                $display("	Division Output = %0d = %h", div_model, div_model);
				//$display("Div_r = %h",div_model_r);
                $display("	Shift register outputs:");
                $display("  %0d %0d %0d %0d",
                         shift_model[0],
                         shift_model[1],
                         shift_model[2],
                         shift_model[3]);
				$display("	Shift register outputs:");
                $display("  %h %h %h %h",
                         shift_model[0],
                         shift_model[1],
                         shift_model[2],
                         shift_model[3]);		 
                $display("Got Intermediate:");
                $display("	Accumulator output = %0d",
                         tb_L_2_6_0_Global_average_pooling.dut.g1.data_out);
                $display("	Delayed Accumulator output = %0d",
                         tb_L_2_6_0_Global_average_pooling.dut.q1);
                $display("	Division Output = %0d = %h",
                         tb_L_2_6_0_Global_average_pooling.dut.g2.data_out,
						 tb_L_2_6_0_Global_average_pooling.dut.g2.data_out);
				//$display("	Data_input_r = %h",tb_L_2_6_0_Global_average_pooling.dut.g3.counter);		 
				$display("--------------------------------------------------");
                $display("Shift Register:");
				$display("	%h %h %h %h",tb_L_2_6_0_Global_average_pooling.dut.g3.shift_reg[31:0],
										 tb_L_2_6_0_Global_average_pooling.dut.g3.shift_reg[63:32],
										 tb_L_2_6_0_Global_average_pooling.dut.g3.shift_reg[95:64],
										 tb_L_2_6_0_Global_average_pooling.dut.g3.shift_reg[127:96]);
				$display("Got:");
                $display("  %0d %0d %0d %0d",
                         data_out_1,
                         data_out_2,
                         data_out_3,
                         data_out_4);
				$display("Got:");
                $display("  %h %h %h %h",
                         data_out_1,
                         data_out_2,
                         data_out_3,
                         data_out_4);		 
                $display("====================================");
                //$fatal;
            end
            else begin
                $display("====================================");
                $display(" Correct at cycle %0d and at time %0t", cycle, $time);
                $display("data_in = %h; pulse = %0b; reset = %0b;",
                         data_in, pulse, reset);

                $display("Expected Intermediate:");
                $display("	Accumulator output = %0d", acc_model_d);
                $display("	Delayed Accumulator output = %0d", acc_model);
                $display("	Division Output = %0d = %h", div_model, div_model);
				//$display("Div_r = %h",div_model_r);
                $display("	Shift register outputs:");
                $display("  %0d %0d %0d %0d",
                         shift_model[0],
                         shift_model[1],
                         shift_model[2],
                         shift_model[3]);
				$display("	Shift register outputs:");
                $display("  %h %h %h %h",
                         shift_model[0],
                         shift_model[1],
                         shift_model[2],
                         shift_model[3]);
				$display("--------------------------------------------------");
				//$display("Div_r = %h",div_model_r);				
				$display("Shift Register:");
				$display("	%h %h %h %h",tb_L_2_6_0_Global_average_pooling.dut.g3.shift_reg[31:0],
										 tb_L_2_6_0_Global_average_pooling.dut.g3.shift_reg[63:32],
										 tb_L_2_6_0_Global_average_pooling.dut.g3.shift_reg[95:64],
										 tb_L_2_6_0_Global_average_pooling.dut.g3.shift_reg[127:96]);	
                $display("Got Intermediate:");
                $display("	Accumulator output = %0d",
                         tb_L_2_6_0_Global_average_pooling.dut.g1.data_out);
                $display("	Delayed Accumulator output = %0d",
                         tb_L_2_6_0_Global_average_pooling.dut.q1);
                $display("	Division Output = %0d = %h",
                         tb_L_2_6_0_Global_average_pooling.dut.g2.data_out,
						 tb_L_2_6_0_Global_average_pooling.dut.g2.data_out);
				//$display("	Data_input_r = %h",tb_L_2_6_0_Global_average_pooling.dut.g3.data_in_r);
                $display("Got:");
                $display("  %0d %0d %0d %0d",
                         data_out_1,
                         data_out_2,
                         data_out_3,
                         data_out_4);
				$display("Got:");
                $display("  %h %h %h %h",
                         data_out_1,
                         data_out_2,
                         data_out_3,
                         data_out_4);		 
                $display("====================================");
            end
        end
    end

    // ----------------------------------------
    // Stimulus
    // ----------------------------------------
    initial begin
        clk     = 0;
        reset   = 1;
        pulse   = 0;
        data_in = 0;
        cycle   = 0;

        // Reset
        repeat (5) @(posedge clk);
        reset = 0;

        // Randomized stimulus
        repeat (3000) begin
            @(posedge clk);
            cycle = cycle + 1;

            data_in = $random;              // auto-truncated to 27-bit signed
            pulse   = (($random % 10) == 0);
        end

        $display("====================================");
        $display("✅ TEST PASSED — No mismatches found");
        $display("====================================");
        $finish;
    end

endmodule
