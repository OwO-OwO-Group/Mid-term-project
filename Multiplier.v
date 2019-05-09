`timescale 1ns/1ns
module Multiplier( clk, dataA, dataB, Signal, dataOut, reset );

    input clk, reset;
    input [31:0] dataA, dataB;
    input [5:0] Signal;
    output [63:0] dataOut;
    
	reg [31:0] A, B;
    reg [63:0] tmp;
	reg [6:0] counter;
	
    parameter MUL = 6'b011001;
    parameter OUT = 6'b111111;
    
    always@( posedge clk or reset )
    begin
	    A = dataA;
		B = dataB;
		
        if ( reset )
            tmp = 64'b0;
        
        else begin
			if ( B[0] )        // MPY0
				tmp = tmp + A; // Add MCND to PROD
				
		    A = A << 1;        // MCND left 1 bit
			B = B >> 1;        // MPY right 1 bit

        end     // else end
    end         // always
	
    assign dataOut = tmp ;
    
endmodule