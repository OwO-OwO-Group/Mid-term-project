`timescale 1ns/1ns
module ALU( dataA, dataB, Signal, dataOut, binvert );

    input   dataA ;
    input   dataB ;
    input [5:0]   Signal ;
    output  dataOut ;
	input   binvert;
    wire    rcaB ;
    wire    andOut, orOut, FAout, sltOut;
	wire    carryOut;

	parameter AND = 6'b100100;
    parameter OR  = 6'b100101;
    parameter ADD = 6'b100000;
    parameter SUB = 6'b100010;
    parameter SLT = 6'b101010;

    and tand (andOut, dataA, dataB);
    or tor (orOut, dataA, dataB);
    // slt

    assign binvert = (Signal == SUB) ? 1'b1 : 1'b0;
    xor invert (rcaB, dataB, binvert);
    FA tFA (dataA, rcaB, c, carryOut, FAout);

    assign dataOut = (Signal == AND) ? andOut :
                     (Signal == OR) ? orOut :
                     (Signal == ADD || Signal == SUB) ? FAout :
                     (Signal == SLT) ? sltOut : 1'b0;
endmodule
