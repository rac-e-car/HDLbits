// inttantiate a module mod_a in top_module

module top_module ( input a, input b, output out );
    mod_a inst_1 (.in1(a), .in2(b), .out(out));
endmodule
