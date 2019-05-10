`timescale 1ns/1ns
module Multiplier( clk, dataA, dataB, Signal, dataOut, reset );

    input clk, reset;
    input [31:0] dataA, dataB;
    input [5:0] Signal;
    output [63:0] dataOut;
    
    reg [31:0] mpy;
    reg [63:0] prod, mcnd;
    reg [6:0] counter = 6'b0;
    
    parameter MUL = 6'b011001;
    parameter OUT = 6'b111111;
	
	always@( Signal )
    begin
      if ( Signal == MUL )
      begin
        prod = 64'b0;
        mcnd = dataA;
        mpy = dataB;
      end

    end
    
    always@( posedge clk or reset )
    begin
        
        if ( reset ) 
            prod = 64'b0;
        
        else begin
            case ( Signal ) 
            MUL:
            begin
                if ( mpy[0] )            // MPY0
                    prod <= prod + mcnd; // Add MCND to PROD
                
                mcnd <= mcnd << 1;       // MCND left 1 bit
                mpy <= mpy >> 1;         // MPY right 1 bit
            end                          // end MUL
            OUT:
            begin
			    
            end                    // end OUT
            endcase                // endcase( Signal )
            
        end                        // else end
    end                            // always
    
    assign dataOut = prod ;
endmodule