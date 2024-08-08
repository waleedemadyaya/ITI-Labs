module combinational (A,B,C,D,F);

input A , B , C ;
output D , F;

wire a_,d,e,f,y;

assign d = A ^ B;
assign a_ = ~A;
assign e = ~d;
assign y = e & A;
assign f = a_ & C;
assign D = A ^ d;
assign F = y | f;

endmodule





module sequential (A,B,C,D,F,clk);
input A , B , C ,clk ;
output  D , F;

wire a_,d,e,f,y,D_,d_,F_,f_;
wire D1,D2,D3,D4;
reg Q1,Q2,Q3,Q4;

assign d = A ^ B;
assign a_ = ~A;
assign e = ~d;
assign y = e & A;
assign f = a_ & C;
assign D_ = A ^ d_;
assign F_ = y | f_;
assign D1 = d;
assign d_ = Q1;
assign D2 = f;
assign f_ = Q2;
assign D3 = D_;
assign D = Q3;
assign D4 = F_;
assign F = Q4;

always @(posedge clk)
begin
    Q1<=D1;
    Q2<=D2;
    Q3<=D3;
    Q4<=D4;
end

endmodule