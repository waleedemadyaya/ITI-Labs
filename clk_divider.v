module clk_divider (clkin , clk_2 , clk_4 , clk_8 , clk_16);

input clkin;
output reg clk_2 , clk_4 , clk_8 , clk_16;

initial 
begin
    clk_2 = 0;
    clk_4 = 0;
    clk_8 = 0;
    clk_16 = 0;
end

always @ (posedge clkin)
clk_2 <= ~clk_2;

always @ (posedge clk_2)
clk_4 <= ~clk_4;

always @ (posedge clk_4)
clk_8 <= ~clk_8;

always @ (posedge clk_8)
clk_16 <= ~clk_16;


endmodule