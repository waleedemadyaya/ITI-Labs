module predict_TB ();

reg rst_TB , clk_TB = 1'b0 , taken_TB ;
wire predict_TB ;

predict predict_instance (rst_TB , clk_TB , taken_TB , predict_TB);

always #5 clk_TB = ~clk_TB;

initial begin

$monitor("rst_TB = %b , clk_TB = %b , taken_TB = %b , predict_TB = %b",rst_TB , clk_TB , taken_TB , predict_TB);

rst_TB=0; taken_TB=0;
#20 rst_TB = 1;
#20 rst_TB = 0;
#20 rst_TB = 1;

#2 taken_TB=1;
#10 taken_TB=1;
#10 taken_TB=0;
#10 taken_TB=1;
#10 taken_TB=0;
#10 taken_TB=0;
#10 taken_TB=1;
#10 taken_TB=1;
#10 taken_TB=1;
#10 taken_TB=0;
#10 taken_TB=0;
#10 taken_TB=1;
#10 taken_TB=1;

end




endmodule