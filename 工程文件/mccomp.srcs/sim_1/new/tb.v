`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/24 15:07:43
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module tb();
    reg clock, resetn, mem_clk;
    wire [31:0] a,b,alu,adr,tom,fromm,pc,ir;
    wire [2:0] q;
    
    initial begin clock=1;resetn=0;mem_clk=0;
    #1 resetn=1;
    end
    
    always #2 clock = ~clock;
    always #2 mem_clk=~mem_clk;
    
    mccomp uut(clock,resetn,q,a,b,alu,adr,tom,fromm,pc,ir,mem_clk);
    
endmodule
