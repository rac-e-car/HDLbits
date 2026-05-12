/*You're familiar with flip-flops that are triggered on the positive edge of the clock, or negative edge of the clock. 
A dual-edge triggered flip-flop is triggered on both edges of the clock. 
However, FPGAs don't have dual-edge triggered flip-flops, and always @(posedge clk or negedge clk) 
is not accepted as a legal sensitivity list.*/

module top_module (
    input clk,
    input d,
    output q
);
    reg qp;
    reg qn;
    
    always @(posedge clk)
            qp<=d;
   
    always @(negedge clk)
        	qn<=d;
   
    assign q = clk? qp : qn;
endmodule
