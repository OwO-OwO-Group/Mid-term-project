`timescale 1ns/1ns
module RCA(a, b, s, cout, binvert);

    input [31:0] a, b;
	input        binvert;
    output       cout;
    output [31:0] s;
    wire [32:0] c;

	assign c[0] = binvert; // if (binvert == 1) sub

    genvar i;
    for (i = 0; i < 32; i = i + 1)
        FA tFA (a[i], b[i], c[i], c[i + 1], s[i]);

    assign cout = c[32];

endmodule
