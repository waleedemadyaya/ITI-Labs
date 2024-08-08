module direction (
    G_R_address , G_W_address , w_rst,
    direction
    );


//parameters definesion for generic code 
parameter DATADEPTH = 45;

//input output declaration
input wire [($clog2(DATADEPTH)) - 1 : 0] G_R_address , G_W_address;
input wire w_rst;
output reg direction;

//internall signals and regs
wire wire1,wire2,wire3,wire4,wire5,set,clr;
wire high = 1'b1;

//representation
assign wire1 = G_R_address[($clog2(DATADEPTH)) - 2] ^ G_W_address[($clog2(DATADEPTH)) - 1];
assign wire2 = G_R_address[($clog2(DATADEPTH)) - 1] ^ G_W_address[($clog2(DATADEPTH)) - 2];
assign wire3 = wire1 & ~(wire2);
assign wire4 = ~(wire1) & wire2;
assign wire5 = wire4 | (~(w_rst));
assign set = wire3 && !(wire5);
assign clr =wire5 && !(wire3);

always @( high , set , clr ) begin
    if(set) direction= 1'b1;
    else if (clr) direction=0;
    else direction = high;
end

endmodule