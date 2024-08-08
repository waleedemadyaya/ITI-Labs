
module ALU (
            input wire [2:0] OprandA , OprandB,
            input wire [3:0] opcode,
            input wire clk,
            output reg [5:0] Result
);
always @(posedge clk)
begin
    case (Result)
        4'h0:  Result <= OprandA + OprandB;
        4'h1:  Result <= OprandA - OprandB;
        4'h2:  Result <= OprandA * OprandB;
        4'h3:  Result <= OprandA & OprandB;
        4'h4:  Result <= OprandA ^ OprandB;
        4'h5:  Result <= OprandA &~ OprandB;
        4'h6:  Result <= OprandA |~ OprandB;
        4'h7:  Result <= OprandA ~^ OprandB;
        4'h8:  Result <= OprandA << OprandB;
        4'h9:  Result <= OprandA >> OprandB;
        4'h10: Result <= {OprandA,OprandB};
        4'h11: Result <= OprandA | OprandB;
        default: Result <= 6'h0;

    endcase
end


endmodule


module ALU_TB ();

    reg [2:0] OprandA , OprandB;
    reg [3:0] opcode;
    reg clk;
    wire [5:0] Result;

    ALU ALU_TB (.OprandA(OprandA) , .OprandB(OprandB),
            .opcode(opcode),
            .clk(clk),
            .Result(Result) );

    initial 
    begin
        clk = 0;
        forever clk = ~clk;
    end

    initial 
    begin
        OprandA = 3;
        OprandB = 4;
        opcode = 0;
        #15
        OprandA = 0;
        OprandB = 4;
        opcode = 1;
        #15
        OprandA = 5;
        OprandB = 4;
        opcode = 2;
        #15
        OprandA = 7;
        OprandB = 4;
        opcode = 5;
        #15
        OprandA = 3;
        OprandB = 6;
        opcode = 7;
        #15
        OprandA = 3;
        OprandB = 4;
        opcode = 11;
        #15
        OprandA = 3;
        OprandB = 3;
        opcode = 9;
        #15
        OprandA = 3;
        OprandB = 7;
        opcode = 6;
        #15;
        $monitor ("OpA=%d    OpB=%d    Opcod=%d    Res=%d",OprandA , OprandB ,opcode , Result);

    end



endmodule