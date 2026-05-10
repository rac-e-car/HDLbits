/*module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );
Instantiate 4 copies of bcd_fadd to create a 4-digit BCD ripple-carry adder. 
Your adder should add two 4-digit BCD numbers (packed into 16-bit vectors) and a carry-in to produce a 4-digit sum and carry out.*/

module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [4:0] cinn;
    assign cinn[0] = cin;
    genvar i;
    
    generate
        for (i=0; i<4; i=i+1) begin: bcd_ripple
            bcd_fadd ( .a(a[i*4+3 : i*4]), .b(b[i*4+3 : i*4]), .cin(cinn[i]),.cout(cinn[i+1]), .sum(sum[i*4+3 : i*4]) );
    end
     endgenerate
      assign cout = cinn[4];
    
endmodule
