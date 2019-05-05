`timescale 1ns/1ns
module XOR_32bits(a, b, cout);

    input [31:0] a, b;
    output [31:0] cout;
    
    XOR tXOR0 (.a(a[0]), .b(b[0]), .cout(cout[0]));
    XOR tXOR1 (.a(a[1]), .b(b[1]), .cout(cout[1]));
    XOR tXOR2 (.a(a[2]), .b(b[2]), .cout(cout[2]));
    XOR tXOR3 (.a(a[3]), .b(b[3]), .cout(cout[3]));
    XOR tXOR4 (.a(a[4]), .b(b[4]), .cout(cout[4]));
    XOR tXOR5 (.a(a[5]), .b(b[5]), .cout(cout[5]));
    XOR tXOR6 (.a(a[6]), .b(b[6]), .cout(cout[6]));
    XOR tXOR7 (.a(a[7]), .b(b[7]), .cout(cout[7]));
    XOR tXOR8 (.a(a[8]), .b(b[8]), .cout(cout[8]));
    XOR tXOR9 (.a(a[9]), .b(b[9]), .cout(cout[9]));
    XOR tXOR10 (.a(a[10]), .b(b[10]), .cout(cout[10]));
    XOR tXOR11 (.a(a[11]), .b(b[11]), .cout(cout[11]));
    XOR tXOR12 (.a(a[12]), .b(b[12]), .cout(cout[12]));
    XOR tXOR13 (.a(a[13]), .b(b[13]), .cout(cout[13]));
    XOR tXOR14 (.a(a[14]), .b(b[14]), .cout(cout[14]));
    XOR tXOR15 (.a(a[15]), .b(b[15]), .cout(cout[15]));
    XOR tXOR16 (.a(a[16]), .b(b[16]), .cout(cout[16]));
    XOR tXOR17 (.a(a[17]), .b(b[17]), .cout(cout[17]));
    XOR tXOR18 (.a(a[18]), .b(b[18]), .cout(cout[18]));
    XOR tXOR19 (.a(a[19]), .b(b[19]), .cout(cout[19]));
    XOR tXOR20 (.a(a[20]), .b(b[20]), .cout(cout[20]));
    XOR tXOR21 (.a(a[21]), .b(b[21]), .cout(cout[21]));
    XOR tXOR22 (.a(a[22]), .b(b[22]), .cout(cout[22]));
    XOR tXOR23 (.a(a[23]), .b(b[23]), .cout(cout[23]));
    XOR tXOR24 (.a(a[24]), .b(b[24]), .cout(cout[24]));
    XOR tXOR25 (.a(a[25]), .b(b[25]), .cout(cout[25]));
    XOR tXOR26 (.a(a[26]), .b(b[26]), .cout(cout[26]));
    XOR tXOR27 (.a(a[27]), .b(b[27]), .cout(cout[27]));
    XOR tXOR28 (.a(a[28]), .b(b[28]), .cout(cout[28]));
    XOR tXOR29 (.a(a[29]), .b(b[29]), .cout(cout[29]));
    XOR tXOR30 (.a(a[30]), .b(b[30]), .cout(cout[30]));
    XOR tXOR31 (.a(a[31]), .b(b[31]), .cout(cout[31]));
    
endmodule