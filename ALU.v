// Test
`timescale 1ns/1ns
module ALU( dataA, dataB, Signal, dataOut, reset );

    input         reset;
    input [31:0]  dataA ;
    input [31:0]  dataB ;
    input [5:0]   Signal ;
    output [31:0] dataOut ;
    wire [31:0]   rcaB ;
    wire [31:0]   andOut, orOut, rcaOut, sltOut;
	wire          binvert, carryOut;

	parameter AND = 6'b100100;
    parameter OR  = 6'b100101;
    parameter ADD = 6'b100000;
    parameter SUB = 6'b100010;
    parameter SLT = 6'b101010;

    and and32[31:0] (andOut, dataA, dataB);
    or or32[31:0] (orOut, dataA, dataB);
    assign sltOut = dataA < dataB;

    assign binvert = (Signal == SUB) ? 1'b1 : 1'b0;
    xor invert[31:0] (rcaB, dataB, binvert);
    RCA RCA1(dataA, rcaB, rcaOut, carryOut, binvert);

    assign dataOut = (Signal == AND) ? andOut :
                     (Signal == OR) ? orOut :
                     (Signal == ADD || Signal == SUB) ? rcaOut :
                     (Signal == SLT) ? sltOut :
                     32'b0;
endmodule
