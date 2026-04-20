/*Build a 4-bit priority encoder. For this problem, if none of the input bits are high (i.e., input is zero), output zero. 
Note that a 4-bit number has 16 possible combinations. */

// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    
    always @(*) begin
        case (in)
            4'd00: pos = 2'd0;
            4'd01: pos = 2'd0;
            4'd02: pos = 2'd1;
            4'd03: pos = 2'b0;
            4'd04: pos = 2'd2;
            4'd05: pos = 2'b0;
            4'd06: pos = 2'd1;
            4'd07: pos = 2'd0;
            4'd08: pos = 2'd3;
            4'd09: pos = 2'd0;
            4'd10: pos = 2'd1;
            4'd11: pos = 2'd0;
            4'd12: pos = 2'd2;
            4'd13: pos = 2'd0;
            4'd14: pos = 2'd1;
            4'd15: pos = 2'd0;
        endcase
    end

endmodule
