module comparator (
    B_R_address , B_W_address , direction ,
    aempty , afull
    );


//parameters definesion for generic code 
parameter DATADEPTH = 45;

//input output declaration
input wire [($clog2(DATADEPTH)) - 1 : 0] B_R_address , B_W_address;
input wire direction;
output wire aempty , afull;

//representation

assign aempty = ((B_W_address == B_R_address) && !direction);
assign afull = ((B_W_address == B_R_address) && direction);

/*always @(*) begin
    if(B_R_address == B_W_address)
    begin
        if (direction == 0) 
        begin
            aempty = 1;
            afull = 0;
        end
        else
        begin
            aempty = 0;
            afull = 1;
        end
    end
end*/

endmodule