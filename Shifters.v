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

	// 第一層 8bits test 左移1bit
    assign wires[1][0] = dataB[0] ? 1'b0     : dataA[0];
	assign wires[1][1] = dataB[0] ? dataA[0] : dataA[1];
	assign wires[1][2] = dataB[0] ? dataA[1] : dataA[2];
	assign wires[1][3] = dataB[0] ? dataA[2] : dataA[3];
	assign wires[1][4] = dataB[0] ? dataA[3] : dataA[4];
	assign wires[1][5] = dataB[0] ? dataA[4] : dataA[5];
	assign wires[1][6] = dataB[0] ? dataA[5] : dataA[6];
	assign wires[1][7] = dataB[0] ? dataA[6] : dataA[7];
	
	// 第二層 8bits test 左移2bits
	assign wires[2][0] = dataB[1] ? 1'b0        : wires[1][0];
	assign wires[2][1] = dataB[1] ? 1'b0        : wires[1][1];
	assign wires[2][2] = dataB[1] ? wires[1][0] : wires[1][2];
	assign wires[2][3] = dataB[1] ? wires[1][1] : wires[1][3];
	assign wires[2][4] = dataB[1] ? wires[1][2] : wires[1][4];
	assign wires[2][5] = dataB[1] ? wires[1][3] : wires[1][5];
	assign wires[2][6] = dataB[1] ? wires[1][4] : wires[1][6];
	assign wires[2][7] = dataB[1] ? wires[1][5] : wires[1][7];
	
	
	// 第三層
	assign wires[3][0] = dataB[2] ? 1'b0        : wires[2][0];
	assign wires[3][1] = dataB[2] ? 1'b0        : wires[2][1];
	assign wires[3][2] = dataB[2] ? 1'b0        : wires[2][2];
	assign wires[3][3] = dataB[2] ? 1'b0        : wires[2][3];
	assign wires[3][4] = dataB[2] ? wires[2][0] : wires[2][4];
	assign wires[3][5] = dataB[2] ? wires[2][1] : wires[2][5];
	assign wires[3][6] = dataB[2] ? wires[2][2] : wires[2][6];
	assign wires[3][7] = dataB[2] ? wires[2][3] : wires[2][7];
	
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
