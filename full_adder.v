module full_adder (
    input wire A , B , Cin ,
    output wire S , Cout
);

wire CARRY1 , CARRY2;
wire SUM1;

half_adder h_a_1 (.A(A) , .B(B) , .SUM(SUM1) , .CARRY(CARRY1) );
half_adder h_a_2 (.A(SUM1) , .B(Cin) , .SUM(S) , .CARRY(CARRY2));

assign Cout = CARRY1 | CARRY2;

endmodule