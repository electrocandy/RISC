module ALUControl(input [1:0]ALUOp,input [3:0]funct3,input funct7,output reg [3:0]control);

always@(*)
begin
case(ALUOp)
2'b00: control<=4'b0010;
2'b01: control<=4'b0110;
2'b10: case({funct7,funct3})
       4'b0000: control<=4'b0010;
       4'b1000: control<=4'b0110;
       4'b0111: control<=4'b0000;
       4'b0110: control<=4'b0001;

default: control<=4'bxxxx;
endcase
endcase
end
endmodule