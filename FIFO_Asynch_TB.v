module FIFO_TB ( );

//parameters definesion for generic code 
parameter DATADEPTH = 45;
parameter DATAWIDTH = 32;
integer i;

/*signal declaration*/
reg [DATAWIDTH-1 : 0] W_Data;
reg W_En , R_En , wclk , wrst , rclk , rrst;
wire [DATAWIDTH-1 : 0] R_Data;
wire Full , Empty;

/*instantiation*/
TOPLEVELMODULE instanceofFIFO ( .W_Data(W_Data) , .W_En(W_En) , .R_En(R_En) , .wclk(wclk) , .wrst(wrst) , .rclk(rclk) , .rrst(rrst),
                 .R_Data(R_Data) , .Full(Full) , .Empty(Empty) );

/*clk generation*/
initial begin
    wclk = 0;
    rclk = 0;
end

always #12.5 wclk = ~wclk;
always #20.0 rclk = ~rclk;

/*applying stimulas*/
initial begin
#40 W_En = 0; R_En = 0; wrst=1; rrst=1;
#40 W_En = 1; R_En = 1; wrst=0; rrst=0;

for (i=0 ; i<= 44 ; i = i + 1)
begin
    #15 W_Data = i+1;
end

$monitor ("time = %t ,W_Data= %d ,R_Data = %d, Full = %d, Empty = %d,W_En = %d , R_En = %d , wclk = %d , wrst = %d , rclk = %d , rrst = %d  ",
            $time , W_Data , R_Data , Full, Empty, W_En , R_En , wclk , wrst , rclk , rrst );
end
endmodule