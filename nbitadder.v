module nbitadder #(parameter N=32)(input [N-1:0]a,input [N-1:0]b,output [N-1:0]s);
genvar i;
wire carry[N-1:0];
generate
for(i=0;i<32;i=i+1) begin
   if(i==0)
      half_adder ins(a[0],b[0],s[0],carry[0]);
   else
      full_adder inst1(a[i],b[i],carry[i-1],s[i],carry[i]);
end
endgenerate

endmodule

module full_adder(input a,input b,input c,output reg sum,output reg cout);
always@(a or b or c) begin
sum=a^b^c;
cout=(a&b)|((a^b)&c);
end
endmodule

module half_adder(input a,input b,output reg s,output reg c);
always@(a or b)begin
s=a^b;
c=a&b;
end
endmodule

