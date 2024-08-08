module G2B (gray_data_in , bin_data_out);

//parameter declaration for data size
parameter N = 6;

//input output declaration
input wire [N-1:0] gray_data_in ;
output wire [N-1:0] bin_data_out;

//internal wire
wire [N-1:0] Tmp_bin_data;
genvar  i ;

//structural desc
assign Tmp_bin_data[N-1] = gray_data_in[N-1];
assign bin_data_out = Tmp_bin_data;
generate
  for (i = N-2; i >= 0; i = i - 1) begin
    xor(Tmp_bin_data
[i],gray_data_in[i],Tmp_bin_data
[i+1]);
  end
endgenerate

endmodule