`timescale 1ns/1ps
module L_2_6_5_Reset_Next_stage (
    input clk,
    input in,
    output reg out
);

    // State encoding
    parameter A = 1'b0;
    parameter B = 1'b1;

    reg state, next_state;
    reg [11:0] counter;  // 12-bit counter to count up to 2034

    // Initial conditions
    initial begin
        state = A;
        counter = 12'd0;
    end

    // State and counter registers
    always @(posedge clk) begin
        state <= next_state;

        // Counter active only in state B and below 2034
        if (state == B && counter < 12'd2235)
            counter <= counter + 1;
    end

    // Next-state logic
    always @(*) begin
        case (state)
            A: begin
                if (in == 1'b1)
                    next_state = A;
                else
                    next_state = B;
            end
            B: begin
                next_state = B;  // Stay in B forever
            end
            default: next_state = A;
        endcase
    end

    // Output logic
    always @(*) begin
        case (state)
            A: out = 1'b1;
            B: out = (counter < 12'd2235) ? 1'b1 : 1'b0;
            default: out = 1'b0;
        endcase
    end

endmodule