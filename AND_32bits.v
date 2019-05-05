`timescale 1ns/1ns
module AND_32bits(a, b, cout);

    input [31:0] a, b;
    output [31:0] cout;
    
    AND tand0 (.a(a[0]), .b(b[0]), .cout(cout[0]));
    AND tand1 (.a(a[1]), .b(b[1]), .cout(cout[1]));
    AND tand2 (.a(a[2]), .b(b[2]), .cout(cout[2]));
    AND tand3 (.a(a[3]), .b(b[3]), .cout(cout[3]));
    AND tand4 (.a(a[4]), .b(b[4]), .cout(cout[4]));
    AND tand5 (.a(a[5]), .b(b[5]), .cout(cout[5]));
    AND tand6 (.a(a[6]), .b(b[6]), .cout(cout[6]));
    AND tand7 (.a(a[7]), .b(b[7]), .cout(cout[7]));
    AND tand8 (.a(a[8]), .b(b[8]), .cout(cout[8]));
    AND tand9 (.a(a[9]), .b(b[9]), .cout(cout[9]));
    AND tand10 (.a(a[10]), .b(b[10]), .cout(cout[10]));
    AND tand11 (.a(a[11]), .b(b[11]), .cout(cout[11]));
    AND tand12 (.a(a[12]), .b(b[12]), .cout(cout[12]));
    AND tand13 (.a(a[13]), .b(b[13]), .cout(cout[13]));
    AND tand14 (.a(a[14]), .b(b[14]), .cout(cout[14]));
    AND tand15 (.a(a[15]), .b(b[15]), .cout(cout[15]));
    AND tand16 (.a(a[16]), .b(b[16]), .cout(cout[16]));
    AND tand17 (.a(a[17]), .b(b[17]), .cout(cout[17]));
    AND tand18 (.a(a[18]), .b(b[18]), .cout(cout[18]));
    AND tand19 (.a(a[19]), .b(b[19]), .cout(cout[19]));
    AND tand20 (.a(a[20]), .b(b[20]), .cout(cout[20]));
    AND tand21 (.a(a[21]), .b(b[21]), .cout(cout[21]));
    AND tand22 (.a(a[22]), .b(b[22]), .cout(cout[22]));
    AND tand23 (.a(a[23]), .b(b[23]), .cout(cout[23]));
    AND tand24 (.a(a[24]), .b(b[24]), .cout(cout[24]));
    AND tand25 (.a(a[25]), .b(b[25]), .cout(cout[25]));
    AND tand26 (.a(a[26]), .b(b[26]), .cout(cout[26]));
    AND tand27 (.a(a[27]), .b(b[27]), .cout(cout[27]));
    AND tand28 (.a(a[28]), .b(b[28]), .cout(cout[28]));
    AND tand29 (.a(a[29]), .b(b[29]), .cout(cout[29]));
    AND tand30 (.a(a[30]), .b(b[30]), .cout(cout[30]));
    AND tand31 (.a(a[31]), .b(b[31]), .cout(cout[31]));
    
endmodule