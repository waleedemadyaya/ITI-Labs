module binary_gray_behavioral_TB ( );

/*internal variables for using in test bench*/
reg [2:0] binaryTB;
wire [2:0] grayTB;
integer i = 0;

/*instantioation of main module*/
binary_gray_behavioral TBinstance(binaryTB,grayTB);

/*appling all possible stimulas*/
initial begin
    $monitor ("binary = %b ________ gray = %b",binaryTB,grayTB);
    for (i=0;i<8;i=i+1)
        #5 binaryTB = i;
end

endmodule