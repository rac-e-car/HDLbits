/*In this exercise, you are provided with the same module add16 as the previous exercise, 
which adds two 16-bit numbers with carry-in and produces a carry-out and 16-bit sum. 
You must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 multiplexer.
The provided module add16 has the following declaration:

module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );*/

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel;
    wire [15:0] sum0, sum1,summ;
    add16 a1 ( .a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(summ),.cout(sel) );
    
    add16 a2 ( .a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(sum0) );
    add16 a3 ( .a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(sum1) );
    
    always @(*) begin
        if(!sel)
            sum = {sum0, summ};
        else
            sum = {sum1, summ};
    end
endmodule


