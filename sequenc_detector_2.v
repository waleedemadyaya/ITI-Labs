module seq_dete_method2 (
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


always @ (*)
begin
    case (curr_state)
        A:begin 
            if (datain == 0)
                    nxt_state = A;
            else
                    nxt_state = B;
            dataout = 0;
           end
           
        B:begin if (datain == 0)
           nxt_state = C;
           else
           nxt_state = B;
           dataout = 0;
           end
          
        C:begin if (datain)
           nxt_state = D;
           else 
           nxt_state = A;
           dataout = 0;
            end
          
        D:begin if (datain)
           nxt_state = E;
           else 
           nxt_state = C;
           dataout = 0;
            end
           
        E:begin if (datain == 0)
           nxt_state = F;
           else 
           nxt_state = B;
           dataout = 0;
            end
           
        F:begin if (datain == 0)
           nxt_state = A;
           else 
           nxt_state = G;
           dataout = 0;
            end
          
        G:begin if (datain == 0)
           nxt_state = H;
           else 
           nxt_state = E;
           dataout = 0;
            end
           
        H:begin if (datain == 0)
           begin 
           nxt_state = A;
           dataout = 0;
           end
           else 
           begin
           nxt_state = D;
           dataout = 1;
           end
           end
           default : nxt_state = A;
          
    endcase
    
end

endmodule