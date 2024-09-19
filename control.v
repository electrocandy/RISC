module control #(parameter N=32)
(input [6:0]instr,output branch,output memread,output memtoreg,output [1:0]ALUop,output memwrite,output ALUsrc,output regwrite);

reg [7:0] out;
always@(*)begin
7'b0110011: out=8'b;