// Test
`timescale 1ns/1ns
module ALU( dataA, dataB, Signal, dataOut, reset );

    input         reset;
    input [31:0]  dataA ;
    input [31:0]  dataB ;
    input [5:0]   Signal ;
    output [31:0] dataOut ;
    wire [31:0]   tmp ;
	wire          binvert;

	parameter AND = 6'b100100;
    parameter OR  = 6'b100101;
    parameter ADD = 6'b100000;
    parameter SUB = 6'b100010;
    parameter SLT = 6'b101010;

    assign tmp = 32'b1; // sub

    xor invert[31:0] (tmp, dataB, tmp);

endmodule
