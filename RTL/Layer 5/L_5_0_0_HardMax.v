`timescale 1ns/1ps
module L_5_0_0_HardMax(
    input clk,
    input reset,

    input signed [31:0] data_in_0,
    input signed [31:0] data_in_1,
    input signed [31:0] data_in_2,
    input signed [31:0] data_in_3,
    input signed [31:0] data_in_4,
    input signed [31:0] data_in_5,

    input start,   // can be LEVEL signal

    output reg signed [31:0] max_out,
    output reg [2:0] max_index
);

    // ============================
    // Internal storage
    // ============================
    reg signed [31:0] L5_data_in [5:0];
    reg [2:0] index;
    reg running;

    // ============================
    // Main sequential logic
    // ============================
    always @(posedge clk or posedge reset)
    begin
        if (reset)
        begin
            L5_data_in[0] <= 0;
            L5_data_in[1] <= 0;
            L5_data_in[2] <= 0;
            L5_data_in[3] <= 0;
            L5_data_in[4] <= 0;
            L5_data_in[5] <= 0;

            max_out   <= 0;
            max_index <= 0;

            index   <= 0;
            running <= 0;
        end
        else
        begin
            // Start accepted ONLY if not already running
            if (start && !running)
            begin
                // Capture inputs
                L5_data_in[0] <= data_in_0;
                L5_data_in[1] <= data_in_1;
                L5_data_in[2] <= data_in_2;
                L5_data_in[3] <= data_in_3;
                L5_data_in[4] <= data_in_4;
                L5_data_in[5] <= data_in_5;

                // Initialize search
                max_out   <= data_in_0;
                max_index <= 0;
                index     <= 1;
                running   <= 1;
            end

            //Multi-cycle comparison
            else if (running)
            begin
                if (index < 6)
                begin
                    if (L5_data_in[index] > max_out)
                    begin
                        max_out   <= L5_data_in[index];
                        max_index <= index;
                    end

                    index <= index + 1;
                end
                else
                begin
                    index <= index;  // DONE
                end
            end
        end
    end

endmodule