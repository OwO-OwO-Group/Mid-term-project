`timescale 1ns/1ns
module ALU( dataA, dataB, Signal, binvert, carryIn, dataOut, carryOut );

    input   dataA, dataB, carryIn, binvert;
    input [5:0]   Signal;
    output  dataOut, carryOut;
    wire    rcaB;
    wire    andOut, orOut, FAout; // 答案

	parameter AND = 6'b100100;
    parameter OR  = 6'b100101;
    parameter ADD = 6'b100000;
    parameter SUB = 6'b100010;
    parameter SLT = 6'b101010;

    
    and tand (andOut, dataA, dataB); // and
    or tor (orOut, dataA, dataB);    // or

    xor invert (rcaB, dataB, binvert);
	
    FA tFA ( .a(dataA), .b(rcaB), .c(carryIn), .cout(carryOut), .sum(FAout) );   // add or sub

    assign dataOut = (Signal == AND) ? andOut :
                     (Signal == OR) ? orOut :
                     (Signal == ADD || Signal == SUB || Signal == SLT) ? FAout : 1'b0;
                     
endmodule
