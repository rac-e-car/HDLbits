/* A "population count" circuit counts the number of '1's in an input vector. Build a population count circuit for a 255-bit input vector. */

module top_module( 
    input [254:0] in,
    output reg [7:0] out );
    
    reg [7:0] count;
    integer i;
        
    always @(*) begin
        count =0;
        for (i=0; i<255; i=i+1) begin
            if ( (in[i]) == 1) 
                count = count + 1;
            else
                count = count;
        end
        out = count;
    end

endmodule
