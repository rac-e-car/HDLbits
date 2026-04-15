/*In this exercise, you will create a circuit with two levels of hierarchy. Your top_module will instantiate two copies of add16 (provided), 
each of which will instantiate 16 copies of add1 (which you must write). Thus, you must write two modules: top_module and add1.
In summary, there are three modules in this design:

    top_module — Your top-level module that contains two of...
    add16, provided — A 16-bit adder module that is composed of 16 of...
    add1 — A 1-bit full adder module.*/

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire [32:0] cin;
    //assign cin[0] = 0;
    wire cout;
    
    
    add16 a1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(cout));        
    add16 a2(.a(a[31:16]), .b(b[31:16]), .cin(cout), .sum(sum[31:16]));                

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
	assign {cout, sum} = a+b+cin;

endmodule
                     
