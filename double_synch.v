module double_synch (clk_in , rst , data_in , data_out);
//parameters definetion for datain length
parameter N = 6;

//input and output declaration
input wire clk_in , rst;
input wire [N-1:0] data_in;
output reg [N-1:0] data_out;

//internal wires and regs
reg [N-1:0] inter_data;

//first flipsynchronizer
always @(posedge clk_in) begin
    if(rst == 1'b1)
        inter_data[N-1:0] <= 'b0;
    else 
        inter_data <= data_in;
end

//second flipsynchronizer
always @(posedge clk_in) begin
    if(rst == 1'b1)
        data_out[N-1:0] <= 'b0;
    else 
        data_out <= inter_data;
end

endmodule