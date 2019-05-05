`timescale 1ns/1ns
module AND(a, b, cout);

    input a, b;
	output cout;
	
	and(cout, a, b);
	
endmodule