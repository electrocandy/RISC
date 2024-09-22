module mux #(parameter N=32)(input [N-1:0]a,input [N-1:0]b,input sel,output [N-1:0]y);
assign y=(sel==1'b1)?a:b;
endmodule
