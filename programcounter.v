module program_counter #(parameter N=32)(input branch, input zero,input [N-1:0]imm,input clk,output [N-1:0]pcout);

reg [N-1:0]pcoutbuff;
initial 
$display("Simulation started");

initial begin
pcoutbuff=0;
end

always@(posedge clk)begin
if(branch==1'b1 && zero==1'b1) begin
   pcoutbuff<=pcoutbuff+imm;
   //SB Type instructions not implemented in terms of byte offset but directly in terms of instruction 
   end
else begin
   pcoutbuff<=pcoutbuff+1;
   end
end
assign pcout=pcoutbuff;

endmodule