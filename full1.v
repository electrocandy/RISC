module full_adder(input a,input b,input c,output reg sum,output reg cout);
always@(a or b or c) begin
sum=a^b^c;
cout=(a&b)|((a^b)&c);
end
endmodule