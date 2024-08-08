module raddr_emptycheck (
    r_rst , rclk , aempty , RE_ ,
    rptr , Empty
    );

//parameters definesion for generic code 
parameter DATADEPTH = 45;

//input output declaration
input wire r_rst , rclk , aempty , RE_;
output reg [($clog2(DATADEPTH)) - 1 : 0] rptr;
output reg Empty;

//internall signals and regs


//representation
always @(posedge rclk)
begin
    if(r_rst)
    begin
        rptr <= 1'b0;
        Empty <= 1'b1;
    end
    else if (aempty)
    begin
        Empty <= 1'b1;
    end
    else if ((RE_) && !(aempty))
    begin
        Empty <= 1'b0;
        if(rptr == (DATADEPTH-1)) rptr<=0;
        else rptr<=rptr+1;
    end
end

endmodule