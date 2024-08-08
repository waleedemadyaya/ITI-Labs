module clk_div_3 (clkin , clkout);

input clkin;
output reg clkout;

reg[1:0] edges_counts ;

initial 
begin
    edges_counts = 0;
    clkout =0;
end

always @(clkin)
    edges_counts <= edges_counts+1;

always @(*)
    begin
        if(edges_counts == 2'b11)
        begin
        clkout <= ~clkout;
        edges_counts = 0;
        end
    end




endmodule