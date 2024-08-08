module clk_div_6 (rst , clkin , clkout);

input clkin,rst;
output reg clkout;

reg[2:0] edges_counts ;

always @(rst)
begin
    clkout = 0;
    edges_counts = 0;
end
always @(clkin)
    if(~rst)
    edges_counts <= edges_counts+1;

always @(*)
    begin
        if(edges_counts == 3'b110)
        begin
        clkout = ~clkout;
        edges_counts = 0;
        end
    end




endmodule