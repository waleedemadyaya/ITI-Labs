module binary_gray_behavioral (binary,gray);

/*input output declaration of port list*/
input wire [2:0] binary;
output reg [2:0] gray;

/*behavioral code for describing the binary to gray code using case*/
always @(*) begin
    case (binary)
    3'b000: gray = 3'b000;
    3'b001: gray = 3'b001;
    3'b010: gray = 3'b011;
    3'b011: gray = 3'b010;
    3'b100: gray = 3'b110;
    3'b101: gray = 3'b111;
    3'b110: gray = 3'b101;
    3'b111: gray = 3'b100;
    endcase
end

endmodule