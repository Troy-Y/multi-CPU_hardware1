`timescale 1ns / 1ps
module dff32 (d,clk,clrn,q);
    input [31:0]d;
    input clk,clrn;
    output [31:0]q;
    reg  [31:0]q;
    always   @  (posedge clk or negedge clrn) begin
        if (clrn == 0)  q <= 0;
        else q <= d;
    end
endmodule