module singlepath_tb();
reg clk;

initial begin
clk=1'b0;
end

singlepath uut1(clk);

initial begin
#50 clk=1'b1;
#50 clk=1'b0;
#50 clk=1'b1;
#50 clk=1'b0;
#50 clk=1'b1;
#50 clk=1'b0;
#50 clk=1'b1;
#50 clk=1'b0;
#50 clk=1'b1;
#50 clk=1'b0;
#50 clk=1'b1;
#50 clk=1'b0;
#50 clk=1'b1;
#50 clk=1'b0;
#50 clk=1'b1;
end
endmodule
