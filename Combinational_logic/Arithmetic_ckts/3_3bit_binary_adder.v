/* build a full adder, make 3 instances of it to create a 3-bit binary ripple-carry adder. 
The adder adds two 3-bit numbers and a carry-in to produce a 3-bit sum and carry out. 
To encourage you to actually instantiate full adders, also output the carry-out from each full adder in the ripple-carry adder. 
cout[2] is the final carry-out from the last full adder, and is the carry-out you usually see. */

module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    wire [3:0] cinn;
    assign cinn[0] = cin;
    genvar i;
    
    generate
        for(i=0; i<3; i=i+1) begin: rca_block
            full_adder inst ( .a(a[i]), .b(b[i]), .cin(cinn[i]), .cout(cinn[i+1]), .sum(sum[i]) );
    end
            endgenerate
    assign cout = cinn [3:1];    
   
endmodule

        module full_adder (input a, b, cin, output cout, sum);
            assign {cout,sum} = a+b+cin;
        endmodule
