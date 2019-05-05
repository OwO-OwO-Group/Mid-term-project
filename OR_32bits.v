`timescale 1ns/1ns
module OR_32bits(a, b, cout);

    input [31:0] a, b;
    output [31:0] cout;
    
    OR tor0 (.a(a[0]), .b(b[0]), .cout(cout[0]));
    OR tor1 (.a(a[1]), .b(b[1]), .cout(cout[1]));
    OR tor2 (.a(a[2]), .b(b[2]), .cout(cout[2]));
    OR tor3 (.a(a[3]), .b(b[3]), .cout(cout[3]));
    OR tor4 (.a(a[4]), .b(b[4]), .cout(cout[4]));
    OR tor5 (.a(a[5]), .b(b[5]), .cout(cout[5]));
    OR tor6 (.a(a[6]), .b(b[6]), .cout(cout[6]));
    OR tor7 (.a(a[7]), .b(b[7]), .cout(cout[7]));
    OR tor8 (.a(a[8]), .b(b[8]), .cout(cout[8]));
    OR tor9 (.a(a[9]), .b(b[9]), .cout(cout[9]));
    OR tor10 (.a(a[10]), .b(b[10]), .cout(cout[10]));
    OR tor11 (.a(a[11]), .b(b[11]), .cout(cout[11]));
    OR tor12 (.a(a[12]), .b(b[12]), .cout(cout[12]));
    OR tor13 (.a(a[13]), .b(b[13]), .cout(cout[13]));
    OR tor14 (.a(a[14]), .b(b[14]), .cout(cout[14]));
    OR tor15 (.a(a[15]), .b(b[15]), .cout(cout[15]));
    OR tor16 (.a(a[16]), .b(b[16]), .cout(cout[16]));
    OR tor17 (.a(a[17]), .b(b[17]), .cout(cout[17]));
    OR tor18 (.a(a[18]), .b(b[18]), .cout(cout[18]));
    OR tor19 (.a(a[19]), .b(b[19]), .cout(cout[19]));
    OR tor20 (.a(a[20]), .b(b[20]), .cout(cout[20]));
    OR tor21 (.a(a[21]), .b(b[21]), .cout(cout[21]));
    OR tor22 (.a(a[22]), .b(b[22]), .cout(cout[22]));
    OR tor23 (.a(a[23]), .b(b[23]), .cout(cout[23]));
    OR tor24 (.a(a[24]), .b(b[24]), .cout(cout[24]));
    OR tor25 (.a(a[25]), .b(b[25]), .cout(cout[25]));
    OR tor26 (.a(a[26]), .b(b[26]), .cout(cout[26]));
    OR tor27 (.a(a[27]), .b(b[27]), .cout(cout[27]));
    OR tor28 (.a(a[28]), .b(b[28]), .cout(cout[28]));
    OR tor29 (.a(a[29]), .b(b[29]), .cout(cout[29]));
    OR tor30 (.a(a[30]), .b(b[30]), .cout(cout[30]));
    OR tor31 (.a(a[31]), .b(b[31]), .cout(cout[31]));
    
endmodule