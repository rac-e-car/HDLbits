/*You are provided with a 16-bit adder module, which you need to instantiate twice:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

Use a 32-bit wide XOR gate to invert the b input whenever sub is 1. (This can also be viewed as b[31:0] XORed with sub replicated 32 times.
Also connect the sub input to the carry-in of the adder. */

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cc;
    wire [31:0] b1;
    assign b1 = {32{sub}}^b;
    
    add16 a1 ( .a(a[15:0]),.b(b1[15:0]), .cin(sub), .sum(sum[15:0]), .cout(cc) ); 
    add16 a2 ( .a(a[31:16]), .b(b1[31:16]), .cin(cc), .sum(sum[31:16]) ); 

endmodule
