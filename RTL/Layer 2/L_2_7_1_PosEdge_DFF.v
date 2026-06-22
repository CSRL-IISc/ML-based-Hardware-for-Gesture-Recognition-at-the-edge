`timescale 1ns / 1ps
module L_2_6_1_PosEdge_DFF(
    input D,
    input clk,
    output reg Q
    );
    always@(posedge clk)begin
        Q <= D;
    end
endmodule
