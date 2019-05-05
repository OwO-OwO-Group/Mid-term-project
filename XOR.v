`timescale 1ns/1ns
module XOR(a, b, cout);

    input a, b;
	output cout;
	
	xor(cout, a, b);
	
endmodule