/* Assume that you have two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 
These numbers are added to produce s[7:0]. Also compute whether a (signed) overflow has occurred. */

module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
    wire c1,c2;
    wire [6:0] s1;
    assign {c1,s1} = a[6:0] + b[6:0];
    assign {c2,s} = a + b;
    assign overflow = c1^c2;

endmodule
