module piso (clk,rst,sel,indata,outbit);

input wire clk , rst , sel;
input wire [3:0] indata;
output reg outbit;

reg [3:0] internalreg;

always @(posedge clk )
begin
    if (rst)
    begin
        internalreg <= 4'b000;
        outbit <=0;
    end
    else if (sel == 1'b0)
    begin
        internalreg <= indata;
    end
    else if (sel == 1'b1)
    begin
        outbit <= internalreg[0];
        internalreg[3:0] <= {1'b0,{internalreg[3:1]}};
    end
    else 
    begin
        outbit <= 1'b0;
    end
end

endmodule