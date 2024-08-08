module B2G (clk_in , rst , bin_data_in , gray_data_out);

//parameter declaration for data size
parameter N = 6;

//input output declaration
input wire [N-1:0] bin_data_in ;
input wire clk_in , rst;
output reg [N-1:0] gray_data_out;

//internal wire
reg [N-1:0] shifted_bin_data_in;

//structural desc
always @(posedge clk_in)
begin

if (rst) gray_data_out <= 'b0;
else 
begin

shifted_bin_data_in = bin_data_in >> 1;
gray_data_out <= bin_data_in ^ shifted_bin_data_in;

end

end

endmodule