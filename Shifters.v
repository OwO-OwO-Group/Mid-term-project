`timescale 1ns/1ns
module Shifters_2( dataA, dataB, Signal, dataOut );

    input [31:0] dataA;
    input [31:0] dataB;
    input [5:0] Signal;
    output [31:0] dataOut;

    parameter SLL = 6'b000000;

    wire [31:0] wires [5:0];

    assign wires[0] = dataA; // 第一層讀入A
    assign dataOut = (Signal == SLL && (dataB[31:5]) == 27'b0 ) ? wires[5] : 32'b0 ; // 檢查訊號以及移位值是否正確

	// 第一層 左移1bit
    assign wires[1][0] = dataB[0] ? 1'b0     : dataA[0];
	assign wires[1][1] = dataB[0] ? dataA[0] : dataA[1];
	assign wires[1][2] = dataB[0] ? dataA[1] : dataA[2];
	assign wires[1][3] = dataB[0] ? dataA[2] : dataA[3];
	assign wires[1][4] = dataB[0] ? dataA[3] : dataA[4];
	assign wires[1][5] = dataB[0] ? dataA[4] : dataA[5];
	assign wires[1][6] = dataB[0] ? dataA[5] : dataA[6];
	assign wires[1][7] = dataB[0] ? dataA[6] : dataA[7];
    assign wires[1][8] = dataB[0] ? dataA[7] : dataA[8];
	assign wires[1][9] = dataB[0] ? dataA[8] : dataA[9];
	assign wires[1][10] = dataB[0] ? dataA[9] : dataA[10];
	assign wires[1][11] = dataB[0] ? dataA[10] : dataA[11];
	assign wires[1][12] = dataB[0] ? dataA[11] : dataA[12];
	assign wires[1][13] = dataB[0] ? dataA[12] : dataA[13];
	assign wires[1][14] = dataB[0] ? dataA[13] : dataA[14];
	assign wires[1][15] = dataB[0] ? dataA[14] : dataA[15];
    assign wires[1][16] = dataB[0] ? dataA[15] : dataA[16];
	assign wires[1][17] = dataB[0] ? dataA[16] : dataA[17];
	assign wires[1][18] = dataB[0] ? dataA[17] : dataA[18];
	assign wires[1][19] = dataB[0] ? dataA[18] : dataA[19];
	assign wires[1][20] = dataB[0] ? dataA[19] : dataA[20];
	assign wires[1][21] = dataB[0] ? dataA[20] : dataA[21];
	assign wires[1][22] = dataB[0] ? dataA[21] : dataA[22];
	assign wires[1][23] = dataB[0] ? dataA[22] : dataA[23];
    assign wires[1][24] = dataB[0] ? dataA[23] : dataA[24];
	assign wires[1][25] = dataB[0] ? dataA[24] : dataA[25];
	assign wires[1][26] = dataB[0] ? dataA[25] : dataA[26];
	assign wires[1][27] = dataB[0] ? dataA[26] : dataA[27];
	assign wires[1][28] = dataB[0] ? dataA[27] : dataA[28];
	assign wires[1][29] = dataB[0] ? dataA[28] : dataA[29];
	assign wires[1][30] = dataB[0] ? dataA[29] : dataA[30];
	assign wires[1][31] = dataB[0] ? dataA[30] : dataA[31];
	
	
	// 第二層 左移2bits
	assign wires[2][0] = dataB[1] ? 1'b0        : wires[1][0];
	assign wires[2][1] = dataB[1] ? 1'b0        : wires[1][1];
	assign wires[2][2] = dataB[1] ? wires[1][0] : wires[1][2];
	assign wires[2][3] = dataB[1] ? wires[1][1] : wires[1][3];
	assign wires[2][4] = dataB[1] ? wires[1][2] : wires[1][4];
	assign wires[2][5] = dataB[1] ? wires[1][3] : wires[1][5];
	assign wires[2][6] = dataB[1] ? wires[1][4] : wires[1][6];
	assign wires[2][7] = dataB[1] ? wires[1][5] : wires[1][7];
	assign wires[2][8] = dataB[1] ? wires[1][6] : wires[1][8];
	assign wires[2][9] = dataB[1] ? wires[1][7] : wires[1][9];
	assign wires[2][10] = dataB[1] ? wires[1][8] : wires[1][10];
	assign wires[2][11] = dataB[1] ? wires[1][9] : wires[1][11];
	assign wires[2][12] = dataB[1] ? wires[1][10] : wires[1][12];
	assign wires[2][13] = dataB[1] ? wires[1][11] : wires[1][13];
	assign wires[2][14] = dataB[1] ? wires[1][12] : wires[1][14];
	assign wires[2][15] = dataB[1] ? wires[1][13] : wires[1][15];
	assign wires[2][16] = dataB[1] ? wires[1][14] : wires[1][16];
	assign wires[2][17] = dataB[1] ? wires[1][15] : wires[1][17];
	assign wires[2][18] = dataB[1] ? wires[1][16] : wires[1][18];
	assign wires[2][19] = dataB[1] ? wires[1][17] : wires[1][19];
	assign wires[2][20] = dataB[1] ? wires[1][18] : wires[1][20];
	assign wires[2][21] = dataB[1] ? wires[1][19] : wires[1][21];
	assign wires[2][22] = dataB[1] ? wires[1][20] : wires[1][22];
	assign wires[2][23] = dataB[1] ? wires[1][21] : wires[1][23];
	assign wires[2][24] = dataB[1] ? wires[1][22] : wires[1][24];
	assign wires[2][25] = dataB[1] ? wires[1][23] : wires[1][25];
	assign wires[2][26] = dataB[1] ? wires[1][24] : wires[1][26];
	assign wires[2][27] = dataB[1] ? wires[1][25] : wires[1][27];
	assign wires[2][28] = dataB[1] ? wires[1][26] : wires[1][28];
	assign wires[2][29] = dataB[1] ? wires[1][27] : wires[1][29];
	assign wires[2][30] = dataB[1] ? wires[1][28] : wires[1][30];
	assign wires[2][31] = dataB[1] ? wires[1][29] : wires[1][31];
	
	
	// 第三層 左移4bits
	assign wires[3][0] = dataB[2] ? 1'b0        : wires[2][0];
	assign wires[3][1] = dataB[2] ? 1'b0        : wires[2][1];
	assign wires[3][2] = dataB[2] ? 1'b0        : wires[2][2];
	assign wires[3][3] = dataB[2] ? 1'b0        : wires[2][3];
	assign wires[3][4] = dataB[2] ? wires[2][0] : wires[2][4];
	assign wires[3][5] = dataB[2] ? wires[2][1] : wires[2][5];
	assign wires[3][6] = dataB[2] ? wires[2][2] : wires[2][6];
	assign wires[3][7] = dataB[2] ? wires[2][3] : wires[2][7];
	assign wires[3][8] = dataB[2] ? wires[2][4] : wires[2][8];
	assign wires[3][9] = dataB[2] ? wires[2][5] : wires[2][9];
	assign wires[3][10] = dataB[2] ? wires[2][6] : wires[2][10];
	assign wires[3][11] = dataB[2] ? wires[2][7] : wires[2][11];
	assign wires[3][12] = dataB[2] ? wires[2][8] : wires[2][12];
	assign wires[3][13] = dataB[2] ? wires[2][9] : wires[2][13];
	assign wires[3][14] = dataB[2] ? wires[2][10] : wires[2][14];
	assign wires[3][15] = dataB[2] ? wires[2][11] : wires[2][15];
	assign wires[3][16] = dataB[2] ? wires[2][12] : wires[2][16];
	assign wires[3][17] = dataB[2] ? wires[2][13] : wires[2][17];
	assign wires[3][18] = dataB[2] ? wires[2][14] : wires[2][18];
	assign wires[3][19] = dataB[2] ? wires[2][15] : wires[2][19];
	assign wires[3][20] = dataB[2] ? wires[2][16] : wires[2][20];
	assign wires[3][21] = dataB[2] ? wires[2][17] : wires[2][21];
	assign wires[3][22] = dataB[2] ? wires[2][18] : wires[2][22];
	assign wires[3][23] = dataB[2] ? wires[2][19] : wires[2][23];
	assign wires[3][24] = dataB[2] ? wires[2][20] : wires[2][24];
	assign wires[3][25] = dataB[2] ? wires[2][21] : wires[2][25];
	assign wires[3][26] = dataB[2] ? wires[2][22] : wires[2][26];
	assign wires[3][27] = dataB[2] ? wires[2][23] : wires[2][27];
	assign wires[3][28] = dataB[2] ? wires[2][24] : wires[2][28];
	assign wires[3][29] = dataB[2] ? wires[2][25] : wires[2][29];
	assign wires[3][30] = dataB[2] ? wires[2][26] : wires[2][30];
	assign wires[3][31] = dataB[2] ? wires[2][27] : wires[2][31];
	
	
	// 第四層 左移8bits
	assign wires[4][0] = dataB[3] ? 1'b0        : wires[3][0];
	assign wires[4][1] = dataB[3] ? 1'b0        : wires[3][1];
	assign wires[4][2] = dataB[3] ? 1'b0        : wires[3][2];
	assign wires[4][3] = dataB[3] ? 1'b0        : wires[3][3];
	assign wires[4][4] = dataB[3] ? 1'b0        : wires[3][4];
	assign wires[4][5] = dataB[3] ? 1'b0        : wires[3][5];
	assign wires[4][6] = dataB[3] ? 1'b0        : wires[3][6];
	assign wires[4][7] = dataB[3] ? 1'b0        : wires[3][7];
	assign wires[4][8] = dataB[3] ? wires[3][0] : wires[3][8];
	assign wires[4][9] = dataB[3] ? wires[3][1] : wires[3][9];
	assign wires[4][10] = dataB[3] ? wires[3][2] : wires[3][10];
	assign wires[4][11] = dataB[3] ? wires[3][3] : wires[3][11];
	assign wires[4][12] = dataB[3] ? wires[3][4] : wires[3][12];
	assign wires[4][13] = dataB[3] ? wires[3][5] : wires[3][13];
	assign wires[4][14] = dataB[3] ? wires[3][6] : wires[3][14];
	assign wires[4][15] = dataB[3] ? wires[3][7] : wires[3][15];
	assign wires[4][16] = dataB[3] ? wires[3][8] : wires[3][16];
	assign wires[4][17] = dataB[3] ? wires[3][9] : wires[3][17];
	assign wires[4][18] = dataB[3] ? wires[3][10] : wires[3][18];
	assign wires[4][19] = dataB[3] ? wires[3][11] : wires[3][19];
	assign wires[4][20] = dataB[3] ? wires[3][12] : wires[3][20];
	assign wires[4][21] = dataB[3] ? wires[3][13] : wires[3][21];
	assign wires[4][22] = dataB[3] ? wires[3][14] : wires[3][22];
	assign wires[4][23] = dataB[3] ? wires[3][15] : wires[3][23];
	assign wires[4][24] = dataB[3] ? wires[3][16] : wires[3][24];
	assign wires[4][25] = dataB[3] ? wires[3][17] : wires[3][25];
	assign wires[4][26] = dataB[3] ? wires[3][18] : wires[3][26];
	assign wires[4][27] = dataB[3] ? wires[3][19] : wires[3][27];
	assign wires[4][28] = dataB[3] ? wires[3][20] : wires[3][28];
	assign wires[4][29] = dataB[3] ? wires[3][21] : wires[3][29];
	assign wires[4][30] = dataB[3] ? wires[3][22] : wires[3][30];
	assign wires[4][31] = dataB[3] ? wires[3][23] : wires[3][31];

	
	// 第五層 左移16bits
	assign wires[5][0] = dataB[4] ? 1'b0        : wires[4][0];
	assign wires[5][1] = dataB[4] ? 1'b0        : wires[4][1];
	assign wires[5][2] = dataB[4] ? 1'b0        : wires[4][2];
	assign wires[5][3] = dataB[4] ? 1'b0        : wires[4][3];
	assign wires[5][4] = dataB[4] ? 1'b0        : wires[4][4];
	assign wires[5][5] = dataB[4] ? 1'b0        : wires[4][5];
	assign wires[5][6] = dataB[4] ? 1'b0        : wires[4][6];
	assign wires[5][7] = dataB[4] ? 1'b0        : wires[4][7];
	assign wires[5][8] = dataB[4] ? 1'b0        : wires[4][8];
	assign wires[5][9] = dataB[4] ? 1'b0        : wires[4][9];
	assign wires[5][10] = dataB[4] ? 1'b0        : wires[4][10];
	assign wires[5][11] = dataB[4] ? 1'b0        : wires[4][11];
	assign wires[5][12] = dataB[4] ? 1'b0        : wires[4][12];
	assign wires[5][13] = dataB[4] ? 1'b0        : wires[4][13];
	assign wires[5][14] = dataB[4] ? 1'b0        : wires[4][14];
	assign wires[5][15] = dataB[4] ? 1'b0        : wires[4][15];
	assign wires[5][16] = dataB[4] ? wires[4][0] : wires[4][16];
	assign wires[5][17] = dataB[4] ? wires[4][1] : wires[4][17];
	assign wires[5][18] = dataB[4] ? wires[4][2] : wires[4][18];
	assign wires[5][19] = dataB[4] ? wires[4][3] : wires[4][19];
	assign wires[5][20] = dataB[4] ? wires[4][4] : wires[4][20];
	assign wires[5][21] = dataB[4] ? wires[4][5] : wires[4][21];
	assign wires[5][22] = dataB[4] ? wires[4][6] : wires[4][22];
	assign wires[5][23] = dataB[4] ? wires[4][7] : wires[4][23];
	assign wires[5][24] = dataB[4] ? wires[4][8] : wires[4][24];
	assign wires[5][25] = dataB[4] ? wires[4][9] : wires[4][25];
	assign wires[5][26] = dataB[4] ? wires[4][10] : wires[4][26];
	assign wires[5][27] = dataB[4] ? wires[4][11] : wires[4][27];
	assign wires[5][28] = dataB[4] ? wires[4][12] : wires[4][28];
	assign wires[5][29] = dataB[4] ? wires[4][13] : wires[4][29];
	assign wires[5][30] = dataB[4] ? wires[4][14] : wires[4][30];
	assign wires[5][31] = dataB[4] ? wires[4][15] : wires[4][31];


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
