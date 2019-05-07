`timescale 1ns/1ns
module Shifters( dataA, dataB, Signal, dataOut );

    input [31:0] dataA;
    input [31:0] dataB;
    input [5:0] Signal;
    output [31:0] dataOut;

    parameter SLL = 6'b000000;

    wire [31:0] wires [5:0];

    assign wires[0] = dataA; // 第一層讀入A
    assign dataOut = (Signal == SLL && (dataB[31:5]) == 27'b0 ) ? wires[5] : 32'b0 ; // 檢查訊號以及移位值是否正確

    assign wires[1][0] = dataB[0] ? 1'0 : dataA[0];
	
	/*
    for (level = 0; level < 5; level = level + 1)
    begin
        for (mux = 0; mux < 32; mux = mux + 1)
        begin
            localparam preMux = mux - 2 ** level;
            if (preMux >= 0)
                assign wires[level + 1][mux] = dataB[level] ? wires[level][preMux] : wires[level][mux];
            else
                assign wires[level + 1][mux] = dataB[level] ? 1'b0 : wires[level][mux];
        end
    end
	*/
endmodule
