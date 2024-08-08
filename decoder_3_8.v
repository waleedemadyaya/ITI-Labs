module decoder_3_8 (S,E,D);

input wire [2:0] S;
input E;
output reg [7:0] D;

always @(*) 
begin
 if (E)
 begin
    D[7:0] = 8'h00;
    case (S)
    3'b000 : D[0] = 1'b1;
    3'b001 : D[1] = 1'b1;
    3'b010 : D[2] = 1'b1;
    3'b011 : D[3] = 1'b1;
    3'b100 : D[4] = 1'b1;
    3'b101 : D[5] = 1'b1;
    3'b110 : D[6] = 1'b1;
    3'b111 : D[7] = 1'b1;
    endcase
 end
 else 
    D[7:0] = 8'h00;
end

endmodule