module dual_port_ram (
    wclken , wclk , waddr , raddr , wdata ,
    rdata
    );


//parameters definesion for generic code 
parameter DATAWIDTH = 32;
parameter DATADEPTH = 45;

//input output declaration
input wire wclken , wclk;
input wire [($clog2(DATADEPTH)) - 1 : 0] waddr , raddr;
input wire [DATAWIDTH-1:0] wdata;
output [DATAWIDTH-1:0] rdata;

//internall signals and regs
reg [DATAWIDTH-1 : 0] mem [0 : DATADEPTH-1];

//representation
assign rdata = mem[raddr];

always @(posedge wclk)
begin
    /*check the condition that the enable is set*/
    if(wclken)  mem[waddr]<=wdata;
end

endmodule