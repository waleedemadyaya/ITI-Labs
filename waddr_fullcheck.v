module waddr_fullcheck (
    w_rst , wclk , afull , WE_ ,
    wptr , Full
    );

//parameters definesion for generic code 
parameter DATADEPTH = 45;

//input output declaration
input wire w_rst , wclk , afull , WE_;
output reg [($clog2(DATADEPTH)) - 1 : 0] wptr;
output reg Full;

//internall signals and regs


//representation
always @(posedge wclk)
begin
    if(w_rst)
    begin
        wptr <= 'b0;
        Full <= 1'b0;
    end
    else if (afull)
    begin
        Full <= 1;
    end
    else if ((WE_) && !(afull))
    begin
        Full <= 1'b0;
        if(wptr == (DATADEPTH-1)) wptr<=0;
        else wptr<=wptr+1;
    end
    else wptr <= wptr;
end

endmodule