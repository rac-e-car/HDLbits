/* You are given a module add16 that performs a 16-bit addition. Instantiate two of them to create a 32-bit adder. 
One add16 module computes the lower 16 bits of the addition result, while the second add16 module computes the upper 16 bits of the result, 
after receiving the carry-out from the first adder. Your 32-bit adder does not need to handle carry-in (assume 0) or carry-out (ignored) */

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    //wire [15:0];
    //assign s1 = sum [15:0];
    wire cout;
    add16 a1 ( .a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(cout) );
    add16 a2 ( .a(a[31:16]), .b(b[31:16]), .cin(cout), .sum(sum[31:16]) ); 
endmodule
