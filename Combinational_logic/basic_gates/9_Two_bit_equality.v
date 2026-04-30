/*Create a circuit that has two 2-bit inputs A[1:0] and B[1:0], and produces an output z. The value of z should be 1 if A = B, otherwise z should be 0. */

module top_module ( input [1:0] A, input [1:0] B, output z ); 
    always @(*)
        if (A==B)
            z = 1'b1;
    else
        z=1'b0;
endmodule
