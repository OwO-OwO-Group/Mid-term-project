`timescale 1ns/1ns
module TM_Shift;

reg [31:0] dataA, dataB;
reg [5:0] signal;
wire [31:0] dout;

Shifters sh (.dataA(dataA), .dataB(dataB), .Signal(signal), .dataOut(dout)); 

    parameter t = 200; 
	initial begin 
	
	#200
    dataA = 32'b00000000000000000000000000000001;
	dataB = 32'b00000000000000000000000000000001;
	signal = 6'b000000;
	
	#600
    $stop;

	end
	
endmodule
