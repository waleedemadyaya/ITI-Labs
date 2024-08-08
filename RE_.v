module RE_ (R_En , Empty , R_En_);

//input output declaration

input wire R_En , Empty;
output wire R_En_;

//struc desc
assign R_En_ = (R_En) & (~(Empty));

endmodule