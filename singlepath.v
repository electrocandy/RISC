module singlepath #(parameter N=32)(input clk);
wire [N-1:0]instruction,data1,data2,imm,ALUin,ALUout,datamem,mux_toreg,pcout;
wire rw,branch,ALUsrc,memread,memwrite,memtoreg,zero;
wire [3:0]ALUcont;
wire [1:0]ALUop;

program_counter ins13(branch,zero,imm,clk,pcout);
instruction_memory ins1(pcout,clk,instruction);
register ins2(instruction[19:15],instruction[24:20],mux_toreg,clk,instruction[11:7],rw,data1,data2);
immediategenerate ins4(instruction,imm);
mux ins3(imm,data2,ALUsrc,ALUin);
ALU ins5(data1,ALUin,ALUcont,ALUout,zero);
data_memory ins6(ALUout,data2,clk,memread,memwrite,datamem);
mux ins7(datamem,ALUout,memtoreg,mux_toreg);
control ins8(instruction[6:0],clk,branch,memread,memtoreg,ALUop,memwrite,ALUsrc,rw);
ALUControl ins9(ALUop[1:0],instruction[14:12],instruction[30],ALUcont[3:0]);


endmodule



