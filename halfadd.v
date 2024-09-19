module half_adder(input a,input b,output reg s,output reg c);
always@(a or b)begin
s=a^b;
c=a&b;
end
endmodule