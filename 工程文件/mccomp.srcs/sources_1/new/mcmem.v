`timescale 1ns / 1ps
module mcmem(clk,dataout,datain,addr,we,inclk,outclk);
	input [31:0] datain;
	input [31:0] addr;
	input clk,we,inclk,outclk;
	output [31:0] dataout;
    reg [31:0] ram [0:63];

    initial begin
        $readmemh("test.mem",ram);
    end
    assign dataout = ram[addr[8:2]];
    always @ (posedge clk) begin
        if (we) ram[addr] = datain;
    end
endmodule