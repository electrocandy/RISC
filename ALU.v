module ALU #(parameter N=32)(input [N-1:0]A,input [N-1:0]B,input [3:0]control,output reg [N-1:0]out,output reg zero);

always@(*) begin
case(control)
4'b0000: out<=A&B;
4'b0001: out<=A|B;
4'b0010: out<=A+B;
4'b0110: out<=A-B;
endcase
zero=(out==0)? 1:0;
end


endmodule
