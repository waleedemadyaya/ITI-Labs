module piso_TB ( );

reg clk_TB=0 , rst_TB , sel_TB;
reg [3:0] indata_TB;
wire outbit_TB;

piso piso_instance (clk_TB,rst_TB,sel_TB,indata_TB,outbit_TB);

/*initial
begin
    clk_TB = 0;
    forever #5 clk_TB = ~clk_TB;
end*/
always #5  clk_TB<= ~clk_TB;


initial 
begin
    $monitor ("clk=%b    ,rst=%b ,sel=%b  ,indata=%b  ,outbit=%b",clk_TB,rst_TB,sel_TB,indata_TB,outbit_TB);
    rst_TB = 0;
    indata_TB =0;
    sel_TB = 1;
    #20 rst_TB = 1;
    #20 rst_TB = 0;
    #20 indata_TB = 4'b0101;
    #20 sel_TB = 0;
    #20 sel_TB = 1;
    
end

endmodule