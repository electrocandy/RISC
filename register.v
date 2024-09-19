module register #(parameter N=32)
(input [4:0]readreg1,input [4:0]readreg2,input [N-1:0]data,input clk,input [4:0]writereg,input rw,output reg [N-1:0]regdata1,output reg [N-1:0]regdata2);

reg [N-1:0] r[N-1:0];
initial begin
r[0]<=32'b0;
r[1]<=32'b0;
r[2]<=32'b0;
r[3]<=32'b0;
r[4]<=32'b0;
r[5]<=32'b0;
r[6]<=32'b0;
r[7]<=32'b0;
r[8]<=32'b0;
r[9]<=32'b0;
r[10]<=32'b0;
r[11]<=32'b0;
r[12]<=32'b0;
r[13]<=32'b0;
r[14]<=32'b0;
r[15]<=32'b0;
r[16]<=32'b0;
r[17]<=32'b0;
r[18]<=32'b0;
r[19]<=32'b0;
r[20]<=32'b0;
r[21]<=32'b0;
r[22]<=32'b0;
r[23]<=32'b0;
r[24]<=32'b0;
r[25]<=32'b0;
r[26]<=32'b0;
r[27]<=32'b0;
r[28]<=32'b0;
r[29]<=32'b0;
r[30]<=32'b0;
r[31]<=32'b0;
end

always@(*)begin
if(rw==1'b1)
   r[writereg]<=data;

regdata1<=r[readreg1];
regdata2<=r[readreg2];
end

endmodule
