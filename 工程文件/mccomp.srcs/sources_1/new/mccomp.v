`timescale 1ns / 1ps
module mccomp (clock,resetn,q,a,b,alu,adr,tom,fromm,pc,ir,mem_clk);
input clock, resetn, mem_clk;
output [31:0] a,b,alu, adr, tom, fromm,pc, ir;
output [2:0] q;
wire wmem;
mccpu mccpu (clock, resetn, fromm,pc, ir,a,b, alu, wmem, adr, tom,q) ;
mcmem memory (clock, fromm, tom, adr , wmem, mem_clk, mem_clk) ;
endmodule