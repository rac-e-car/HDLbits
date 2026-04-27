/*Create a 100-bit binary ripple-carry adder by instantiating 100 full adders. 
The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum and carry out. 
To encourage you to actually instantiate full adders, also output the carry-out from each full adder in the ripple-carry adder. 
cout[99] is the final carry-out from the last full adder, and is the carry-out you usually see. */

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    wire [100:0] cinn;
    assign cinn[0] = cin;
genvar i;
    generate
        
        for(i=0; i<100; i=i+1) begin: rca_block
            adder inst ( .a(a[i]), .b(b[i]), .cin(cinn[i]), .cout(cinn[i+1]), .sum(sum[i]) );
                end
    endgenerate
    assign cout[99:0] = cinn[100:1];
endmodule

module adder (input a,b,cin,output sum,cout);
    assign  {cout,sum} = a+b+cin;
endmodule
