`timescale 1ns/1ns

module TM_ALU_32bits;

	reg[31:0]		A, B;
	reg[5:0]		Sig;
	wire[31:0]		out;

	ALU_32bits	U_ALU32 (.dataA(A), .dataB(B), .Signal(Sig), .dataOut(out));

	parameter	t = 200;

	parameter AND = 6'b100100;
	parameter OR  = 6'b100101;
	parameter ADD = 6'b100000;
	parameter SUB = 6'b100010;
	parameter SLT = 6'b101010;

	initial 
	begin
		#(2*t) // and 
		
		Sig = AND;
		A = 32'b00000000000000000000000000001111;
		B = 32'b00000000000000000000000000000101;
		
		#t // or 
		Sig = OR;
		A = 32'b00000000000000000000000000001010;
		B = 32'b00000000000000000000000000000101;
		
		
		#t // add 
		Sig = ADD;
		A = 32'b00000000000000000000000000001010;
		B = 32'b00000000000000000000000000000101;
		#600
	
		#t // sub
		Sig = SUB;
		A = 32'b00000000000000000000000000001111;
		B = 32'b00000000000000000000000000000101;
		#600
	
		#t // slt 
		Sig = SLT;
		A = 32'b00000000000000000000000000000011;
		B = 32'b00000000000000000000000000000001;
		#600
        
		#t
		$stop;
	end
 

endmodule




