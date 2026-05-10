module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
	
    assign out = (b&c &(a^d)) | (~a&~b &(c^d)) | (a&~b &(c ~^ d)) | (b&~c &(a ~^ d) );
    
endmodule
