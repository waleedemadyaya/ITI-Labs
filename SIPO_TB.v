module sipo_TB ( );

reg clk_TB , rst_TB , inbit_TB;
wire [3:0] outdata_TB;

integer i = 0;

sipo sipo_TB_instance (clk_TB,rst_TB,inbit_TB,outdata_TB);

initial
begin
    clk_TB = 0;
    forever #5 clk_TB = ~clk_TB;
end

initial begin
    $monitor ("time = %0t _________ datain = %b ________ dataout = %b",$time,inbit_TB,outdata_TB);
    rst_TB = 0;
    #20 rst_TB = 1;
    #20 rst_TB = 0;
    inbit_TB = 0;
    for (i=0;i<8;i=i+1)
        #20 inbit_TB = ~inbit_TB;
end

endmodule