`timescale 1ns/1ns
module ALU_32bits(dataA, dataB, Signal, dataOut);

	input [31:0] dataA, dataB;
	input [5:0] Signal;
	output [31:0] dataOut;
    wire [31:0] c, tmp;
	wire binvert;
	
	parameter AND = 6'b100100;
	parameter OR  = 6'b100101;
	parameter ADD = 6'b100000;
	parameter SUB = 6'b100010;
	parameter SLT = 6'b101010;

    // if (sub or slt) binvert = 1
    assign binvert = (Signal == SUB || Signal == SLT) ? 1'b1 : 1'b0;
	
	// 第一個carryIn先帶binvert 做2補數
	ALU talu1 ( dataA[0], dataB[0], Signal, binvert, binvert, tmp[0], c[0] );
	ALU talu2 ( dataA[1], dataB[1], Signal, binvert, c[0], tmp[1], c[1] );
	ALU talu3 ( dataA[2], dataB[2], Signal, binvert, c[1], tmp[2], c[2] );
	ALU talu4 ( dataA[3], dataB[3], Signal, binvert, c[2], tmp[3], c[3] );
	ALU talu5 ( dataA[4], dataB[4], Signal, binvert, c[3], tmp[4], c[4] );
	ALU talu6 ( dataA[5], dataB[5], Signal, binvert, c[4], tmp[5], c[5] );
	ALU talu7 ( dataA[6], dataB[6], Signal, binvert, c[5], tmp[6], c[6] );
	ALU talu8 ( dataA[7], dataB[7], Signal, binvert, c[6], tmp[7], c[7] );
	ALU talu9 ( dataA[8], dataB[8], Signal, binvert, c[7], tmp[8], c[8] );
	ALU talu10 ( dataA[9], dataB[9], Signal, binvert, c[8], tmp[9], c[9] );
	ALU talu11 ( dataA[10], dataB[10], Signal, binvert, c[9], tmp[10], c[10] );
	ALU talu12 ( dataA[11], dataB[11], Signal, binvert, c[10], tmp[11], c[11] );
	ALU talu13 ( dataA[12], dataB[12], Signal, binvert, c[11], tmp[12], c[12] );
	ALU talu14 ( dataA[13], dataB[13], Signal, binvert, c[12], tmp[13], c[13] );
	ALU talu15 ( dataA[14], dataB[14], Signal, binvert, c[13], tmp[14], c[14] );
	ALU talu16 ( dataA[15], dataB[15], Signal, binvert, c[14], tmp[15], c[15] );
	ALU talu17 ( dataA[16], dataB[16], Signal, binvert, c[15], tmp[16], c[16] ); 
	ALU talu18 ( dataA[17], dataB[17], Signal, binvert, c[16], tmp[17], c[17] );
	ALU talu19 ( dataA[18], dataB[18], Signal, binvert, c[17], tmp[18], c[18] );
	ALU talu20 ( dataA[19], dataB[19], Signal, binvert, c[18], tmp[19], c[19] );
	ALU talu21 ( dataA[20], dataB[20], Signal, binvert, c[19], tmp[20], c[20] );
	ALU talu22 ( dataA[21], dataB[21], Signal, binvert, c[20], tmp[21], c[21] );
	ALU talu23 ( dataA[22], dataB[22], Signal, binvert, c[21], tmp[22], c[22] );
	ALU talu24 ( dataA[23], dataB[23], Signal, binvert, c[22], tmp[23], c[23] );
	ALU talu25 ( dataA[24], dataB[24], Signal, binvert, c[23], tmp[24], c[24] );
	ALU talu26 ( dataA[25], dataB[25], Signal, binvert, c[24], tmp[25], c[25] );
	ALU talu27 ( dataA[26], dataB[26], Signal, binvert, c[25], tmp[26], c[26] );
	ALU talu28 ( dataA[27], dataB[27], Signal, binvert, c[26], tmp[27], c[27] );
	ALU talu29 ( dataA[28], dataB[28], Signal, binvert, c[27], tmp[28], c[28] );
	ALU talu30 ( dataA[29], dataB[29], Signal, binvert, c[28], tmp[29], c[29] );
	ALU talu31 ( dataA[30], dataB[30], Signal, binvert, c[29], tmp[30], c[30] );
	ALU talu32 ( dataA[31], dataB[31], Signal, binvert, c[30], tmp[31], c[31] );
	
	// if (SLT) 測定MSB 如果1那就是小於
	assign dataOut = (Signal != SLT) ? tmp : tmp[31] ? 32'b00000000000000000000000000000001 : 
	                                   32'b00000000000000000000000000000000;
	
endmodule