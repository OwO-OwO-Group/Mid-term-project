`timescale 1ns/1ns
module FA(a, b, c, cout, sum);

   input a, b, c; 
   output cout, sum;
   wire w1, w2, w3; 

   and(w1, a, b); 
   and(w2, a, c); 
   and(w3, b, c); 

   or(cout, w1, w2, w3); 
   xor(sum, a, b, c); 
 
endmodule