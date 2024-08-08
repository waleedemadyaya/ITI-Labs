module WE_ (W_En , Full , W_En_);

//input output declaration
input wire W_En , Full;
output wire W_En_;

//struc desc
assign W_En_ = (W_En) & (~(Full));

endmodule