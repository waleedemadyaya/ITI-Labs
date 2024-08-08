module seq_detec (inbit,clk,rst,outbit);

localparam A = 3'b000 ,
           B = 3'b001 ,
           C = 3'b011 ,
           D = 3'b010 ,
           E = 3'b110;

input wire inbit , clk , rst ;
output reg outbit;

wire [2:0] curr_state , nex_state;

always @(!rst) 
begin
    outbit = 1b'0;
    curr_state = A;
end

always @ (posedge clk)
begin

    case (curr_state)
        A:  outbit<=0;
        B:  outbit<=0;
        C:  outbit<=0;
        D:  outbit<=0;
        E:  if (inbit == 1)
                outbit<=1;
            else
                outbit<=0;
    endcase
end

always @ (posedge clk)
begin
    case(curr_state)
        A:  if(inbit==0)
                nex_state <=A ;
            else if (inbit==1)
                nex_state <=B ;
            else
                nex_state <= A;
        B:  if(inbit==0)
                nex_state <=C ;
            else if (inbit==1)
                nex_state <=B ;
            else
                nex_state <= A;
        C:  if(inbit==0)
                nex_state <=A ;
            else if (inbit==1)
                nex_state <=D ;
            else
                nex_state <= A;
        D:  if(inbit==0)
                nex_state <=E ;
            else if (inbit==1)
                nex_state <=B;
            else
                nex_state <= A;
        E:  if(inbit==0)
                nex_state <= A;
            else if (inbit==1)
                nex_state <= A;
            else
                nex_state <= A;
    endcase
end

endmodule