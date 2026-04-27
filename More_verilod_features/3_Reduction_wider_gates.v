/* Build a combinational circuit with 100 inputs, in[99:0]. For 100-input AND, OR, XOR gates */


module top_module( 
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor 
);
		assign out_and = &in;
    	assign out_or = |in;
    	assign out_xor = ^in;
endmodule
