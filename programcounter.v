module program_counter #(parameter N=32)(input [N-1:0] pcin,input clk,output reg [N-1:0]pcout);

always@(posedge clk) begin
pcout<=pcin;
end

endmodule