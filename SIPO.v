module sipo (clk,rst,inbit,outdata);

parameter N = 4; 

input wire clk , rst , inbit;
output reg [N-1:0] outdata;

integer i;

always @(negedge clk)
begin
    if (rst)
        begin
            outdata <= 0;
        end
    else 
        begin
                outdata <= {inbit,{outdata[N-1:1]}}; 
        end
    
end


endmodule