module seq_dete_method1 (
    input rst,clk,datain,
    output reg dataout );

localparam [2:0] A = 0,
           B = 1,
           C = 2,
           D = 3,
           E = 4,
           F = 5,
           G = 6,
           H = 7;

reg [2:0] curr_state ; reg [2:0] nxt_state;

always @ (posedge clk)
begin
    if (rst)
        curr_state <= A;
    else
        curr_state<=nxt_state;
end

always @ (curr_state,datain)
begin
    case (curr_state)

        A:dataout <= 0;
        B:dataout <= 0;
        C:dataout <= 0;
        D:dataout <= 0;
        E:dataout <= 0;
        F:dataout <= 0;
        G:dataout <= 0;
        H: if (datain == 1'b0)
           dataout <= 0;
           else if (datain == 1'b1)
           dataout <= 1;
           else 
           dataout <= 0;
    endcase
end

always @ (*)
begin
    case (curr_state)
        A:begin if (datain == 0)
           nxt_state = A;
           else 
           nxt_state = B; end
           
        B:begin if (datain == 0)
           nxt_state = C;
           else
           nxt_state = B; end
          
        C:begin if (datain)
           nxt_state = D;
           else 
           nxt_state = A; end
          
        D:begin if (datain)
           nxt_state = E;
           else 
           nxt_state = C; end
           
        E:begin if (datain == 0)
           nxt_state = F;
           else 
           nxt_state = B; end
           
        F:begin if (datain == 0)
           nxt_state = A;
           else 
           nxt_state = G; end
          
        G:begin if (datain == 0)
           nxt_state = H;
           else 
           nxt_state = E; end
           
        H:begin if (datain == 0)
           nxt_state = A;
           else 
           nxt_state = D; end
           default : nxt_state = A;
          
    endcase
    
end

endmodule