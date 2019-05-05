`timescale 1ns/1ns
module RCA(a, b, s, cout, binvert);

    input [31:0] a, b;
	input        binvert;
    output       cout;
    output [31:0] s;
    wire [32:0] c;
	
	assign c[0] = binvert; // if (binvert == 1) sub
    
    FA tfa0 (.a(a[0]), .b(b[0]), .c(c[0]), .cout(c[1]), .sum(s[0]));
    FA tfa1 (.a(a[1]), .b(b[1]), .c(c[1]), .cout(c[2]), .sum(s[1]));
    FA tfa2 (.a(a[2]), .b(b[2]), .c(c[2]), .cout(c[3]), .sum(s[2]));
    FA tfa3 (.a(a[3]), .b(b[3]), .c(c[3]), .cout(c[4]), .sum(s[3]));
    FA tfa4 (.a(a[4]), .b(b[4]), .c(c[4]), .cout(c[5]), .sum(s[4]));
    FA tfa5 (.a(a[5]), .b(b[5]), .c(c[5]), .cout(c[6]), .sum(s[5]));
    FA tfa6 (.a(a[6]), .b(b[6]), .c(c[6]), .cout(c[7]), .sum(s[6]));
    FA tfa7 (.a(a[7]), .b(b[7]), .c(c[7]), .cout(c[8]), .sum(s[7]));
    FA tfa8 (.a(a[8]), .b(b[8]), .c(c[8]), .cout(c[9]), .sum(s[8]));
    FA tfa9 (.a(a[9]), .b(b[9]), .c(c[9]), .cout(c[10]), .sum(s[9]));
    FA tfa10 (.a(a[10]), .b(b[10]), .c(c[10]), .cout(c[11]), .sum(s[10]));
    FA tfa11 (.a(a[11]), .b(b[11]), .c(c[11]), .cout(c[12]), .sum(s[11]));
    FA tfa12 (.a(a[12]), .b(b[12]), .c(c[12]), .cout(c[13]), .sum(s[12]));
    FA tfa13 (.a(a[13]), .b(b[13]), .c(c[13]), .cout(c[14]), .sum(s[13]));
    FA tfa14 (.a(a[14]), .b(b[14]), .c(c[14]), .cout(c[15]), .sum(s[14]));
    FA tfa15 (.a(a[15]), .b(b[15]), .c(c[15]), .cout(c[16]), .sum(s[15]));
    FA tfa16 (.a(a[16]), .b(b[16]), .c(c[16]), .cout(c[17]), .sum(s[16]));
    FA tfa17 (.a(a[17]), .b(b[17]), .c(c[17]), .cout(c[18]), .sum(s[17]));
    FA tfa18 (.a(a[18]), .b(b[18]), .c(c[18]), .cout(c[19]), .sum(s[18]));
    FA tfa19 (.a(a[19]), .b(b[19]), .c(c[19]), .cout(c[20]), .sum(s[19]));
    FA tfa20 (.a(a[20]), .b(b[20]), .c(c[20]), .cout(c[21]), .sum(s[20]));
    FA tfa21 (.a(a[21]), .b(b[21]), .c(c[21]), .cout(c[22]), .sum(s[21]));
    FA tfa22 (.a(a[22]), .b(b[22]), .c(c[22]), .cout(c[23]), .sum(s[22]));
    FA tfa23 (.a(a[23]), .b(b[23]), .c(c[23]), .cout(c[24]), .sum(s[23]));
    FA tfa24 (.a(a[24]), .b(b[24]), .c(c[24]), .cout(c[25]), .sum(s[24]));
    FA tfa25 (.a(a[25]), .b(b[25]), .c(c[25]), .cout(c[26]), .sum(s[25]));
    FA tfa26 (.a(a[26]), .b(b[26]), .c(c[26]), .cout(c[27]), .sum(s[26]));
    FA tfa27 (.a(a[27]), .b(b[27]), .c(c[27]), .cout(c[28]), .sum(s[27]));
    FA tfa28 (.a(a[28]), .b(b[28]), .c(c[28]), .cout(c[29]), .sum(s[28]));
    FA tfa29 (.a(a[29]), .b(b[29]), .c(c[29]), .cout(c[30]), .sum(s[29]));
    FA tfa30 (.a(a[30]), .b(b[30]), .c(c[30]), .cout(c[31]), .sum(s[30]));
    FA tfa31 (.a(a[31]), .b(b[31]), .c(c[31]), .cout(c[32]), .sum(s[31]));
    assign cout = c[32];
endmodule
