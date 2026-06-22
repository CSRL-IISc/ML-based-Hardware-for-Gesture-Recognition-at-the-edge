`timescale 1ns / 1ps
module L_2_7_0_NegEdge_DFF(
    input  D,
    input clk,
    output reg Q

    );
    
    always@(negedge  clk)begin
        Q <= D;
    end
endmodule
