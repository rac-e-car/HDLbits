/* A waveform is provided ofr xnor gate, implemented it below*/

module top_module ( input x, input y, output z );

  assign z = ~(x^y);

endmodule
