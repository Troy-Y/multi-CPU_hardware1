`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/24 19:48:27
// Design Name: 
// Module Name: mccomp_tb
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


module mccomp_tb(

    );
    reg clock, resetn, mem_clk;
    wire [31:0] a,b,alu,adr,tom,fromm,pc,ir;
    wire [2:0] state;
    
    mccomp uut(clock,resetn,state,a,b,alu,adr,tom,fromm,pc,ir,mem_clk);
    
    //ϵͳʱ���ź�
    always begin
       clock = 1;
       #2;
       clock = 0;
       #2;
    end
    //�洢����ʱ���ź�
    always begin
       mem_clk = 0;
       #1;
       mem_clk = 1;
       #1;
    end
    //��λ�ź�ʱ��
    initial begin
       resetn = 0;
       #1;
       resetn = 1;
    end
endmodule
