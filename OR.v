`timescale 1ns/1ns
module OR(a, b, cout);

    input a, b;
	output cout;
	
	or(cout, a, b);
	
endmodule