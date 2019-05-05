`timescale 1ns/1ns
module Shifters( A, S, L );

    input  [31:0] A;
    input  [4:0]  S;
    output [31:0] L;

    genvar mux, level;

    wire [31:0] wires [5:0];

    assign wires[0] = A;
    assign L = wires[5];

    for (level = 0; level < 5; level = level + 1)
    begin
        for (mux = 0; mux < 32; mux = mux + 1)
        begin
            localparam preMux = mux - 2 ** level;
            if (preMux >= 0)
                assign wires[level + 1][mux] = S[level] ? wires[level][preMux] : wires[level][mux];
            else
                assign wires[level + 1][mux] = S[level] ? 1'b0 : wires[level][mux];
        end
    end

endmodule
