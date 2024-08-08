module mem_buff (
    data_in , address , en_w , en_r , rest , clk ,
    full_flag , empty_flag , data_out
);

input wire [7:0] data_in;
input wire [3:0] address;
input en_w , en_r , rest , clk;

output wand full_flag , empty_flag;
output reg [7:0] data_out;

reg [8:0] mem_buff [0:7];
integer i,j;

assign full_flag = mem_buff[0][8];
assign full_flag = mem_buff[1][8];
assign full_flag = mem_buff[2][8];
assign full_flag = mem_buff[3][8];
assign full_flag = mem_buff[4][8];
assign full_flag = mem_buff[5][8];
assign full_flag = mem_buff[6][8];
assign full_flag = mem_buff[7][8];

assign empty_flag = ~mem_buff[0][8];
assign empty_flag = ~mem_buff[1][8];
assign empty_flag = ~mem_buff[2][8];
assign empty_flag = ~mem_buff[3][8];
assign empty_flag = ~mem_buff[4][8];
assign empty_flag = ~mem_buff[5][8];
assign empty_flag = ~mem_buff[6][8];
assign empty_flag = ~mem_buff[7][8];



always @(posedge clk , rest)
begin
    if (!rest)
    begin 
        for (i=0;i<8;i=i+1)
        begin
         mem_buff[i] <= 8'b0000_0000;   
        end
    end
    else
        if (en_r)
            begin
                data_out = mem_buff [address][7:0];
            end
        else if(en_w)
            begin
                mem_buff[address][8:0] = {1'b1,data_in[7:0]};
            end
    
end

endmodule



module mem_buff_TB ( );

reg [7:0] data_in_TB;
reg [3:0] address_TB; 
reg en_w_TB , en_r_TB , rest_TB;
reg clk_TB;

wire full_flag_TB , empty_flag_TB;
wire [7:0] data_out_TB;

integer i ;

 mem_buff mem_buff_instanc(
    .data_in(data_in_TB) , .address(address_TB) , .en_w(en_w_TB) , .en_r(en_r_TB) ,
     .rest(rest_TB) , .clk(clk_TB) ,
    .full_flag(full_flag_TB) , .empty_flag(empty_flag_TB) , .data_out(data_out_TB)
);

/*initial begin
clk_TB = 1;
forever #5 clk_TB=~clk_TB;
end*/

always #5 clk_TB=~clk_TB;

initial
begin
    $monitor ("datain %h ,address %h ,we %b ,re %b ,rest %b ,clk %b ,full %b ,emp %b ,out %h "
,data_in_TB , address_TB , en_w_TB, en_r_TB ,rest_TB , clk_TB,
                               full_flag_TB , empty_flag_TB , data_out_TB);
#20 rest_TB = 1;
#20 rest_TB = 0;
#20 rest_TB = 1;
#20 en_r_TB = 0;
#20 en_w_TB = 0;

en_w_TB = 1;
for (i=0;i<8;i=i+1)
begin
    data_in_TB = i+1;
    address_TB = i;
    #20;
end
en_w_TB = 0;
en_r_TB = 1;
for (i=0;i<8;i=i+1)
begin
    //data_in_TB = 8'h00;
    address_TB = i;
    #20;

end
en_r_TB = 0;

end








endmodule