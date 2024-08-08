module concat ( );

reg [3:0] seq1 , seq2 , seq3;
reg [5:0] temp;
reg [7:0] out;

initial 
begin
    seq1 = 4'b1011;
    seq2 = 4'b0011;
    seq3 = 4'b1010;

    temp = {{seq1[3:2] & seq2[1:0]} , seq3};
    out = {{2{temp[5]}} , temp};
end

endmodule