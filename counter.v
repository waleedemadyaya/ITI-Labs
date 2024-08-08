module up_dowen_counter (clk,mode,reset,q);

parameter N = 4;

input clk , mode , reset;
output reg [N-1:0] q;

always @(posedge clk) begin

    if (!(reset))
        q <= 4'b0000;
        else if (!(mode))
        q <= q+1;
        else if (mode)
        q <= q-1;
    
end

endmodule

module up_dowen_counter_TB ();

reg clk_TB , mode_TB , reset_TB;
wire [7:0] q_TB;

up_dowen_counter #(8) mycounter  (.clk(clk_TB),.mode(mode_TB),.reset(reset_TB),.q(q_TB));

initial 
begin
    clk_TB = 0;
    forever begin
        #20 clk_TB = ~clk_TB;
    end
end
initial begin
    reset_TB = 1'b1;
    #50 reset_TB = 1'b0;
    #50 reset_TB = 1'b1;
    mode_TB = 0;
    #500 mode_TB = 1;
    #600 reset_TB = 0;
    $monitor ("%b , %b , %b , %b ",clk_TB , mode_TB , reset_TB,q_TB);
end

endmodule