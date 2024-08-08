module half_adder (
    input wire A , B,
    output wire SUM , CARRY

);

and (CARRY , A , B);
xor (SUM , A , B);


endmodule


