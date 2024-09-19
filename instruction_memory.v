module instruction_memory #(parameter N=32,parameter M=256)
(input [N-1:0]address,input clk,output reg [N-1:0]instruction);

reg [N-1:0] mem[M-1:0];
initial begin
mem[0]=32'b00000000001000001000000110110011; //add r3,r1,r2
mem[4]=32'b01000000001000001000001000110011; //sub r4,r1,r2
mem[8]=32'b00000000001000001111001010110011; //and r5,r1,r2
mem[12]=32'b00000000001000001110001100110011; //or r6,r1,r2
mem[16]=32'b00000000001001010000000101100011; //beq r10,r2,4
mem[20]=32'b00000000010000000100010000000011; //lw r8,4(r0)
mem[24]=32'b00000000100100000000001000100011; //sw r9,4(r0)
end

always@(*)begin
instruction<=mem[address];
end
endmodule