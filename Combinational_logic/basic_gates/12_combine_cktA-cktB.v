/* See mt2015_q4a and mt2015_q4b for the submodules used here. The top-level design consists of two instantiations each of subcircuits A and B, as shown below. */

module top_module (input x, input y, output z);
wire z1,z2,z3,z4, z11,z12;
    moduleA inst1 (x,y,z1);
    moduleA inst2 (x,y,z2);
    assign z11 = z1 | z2;
    
    moduleB inst11 (x,y,z3);
    moduleB inst22 (x,y,z4);
    assign z12 = z3 | z4;
    
    assign z = z11 ^ z12;
    
    
    
endmodule

/* A waveform is provided ofr xnor gate, implemented it below*/

module moduleA ( input x, input y, output z );
  assign z = ~(x^y);
endmodule

module moduleB (input x, input y, output z);
    assign z = (x^y) & x;
endmodule
