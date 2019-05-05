`timescale 1ns/1ns
module Shifters( dataA, dataB, Signal, dataOut );

    input [31:0] dataA;
    input [31:0] dataB;
    input [5:0] Signal;
    output [31:0] dataOut;

    parameter SRL = 6'b000010;

    genvar mux, level;

    wire [31:0] wires [5:0];

    assign wires[0] = dataA;
    assign dataOut = (Signal == SRL && (dataB[31:5]) == 25'b0  ) ?  wires[5] : 32'b0 ;

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

endmodule
