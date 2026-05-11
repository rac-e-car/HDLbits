/*A D flip-flop is a circuit that stores a bit and is updated periodically, 
at the (usually) positive edge of a clock signal. Create a single D flip-flop. */

module top_module (
    input clk,    // Clocks are used in sequential circuits
    input d,
    output reg q );//

    // Use a clocked always block
    //   copy d to q at every positive edge of clk
    //   Clocked always blocks should use non-blocking assignments
    
    always @(posedge clk) begin
        q <= d;
    end
endmodule

