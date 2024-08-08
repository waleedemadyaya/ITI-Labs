module predict (rst , clk , taken , predict);

input rst , clk , taken ;
output reg predict;

localparam A = 00,
           B = 01,
           C = 10,
           D = 11;

reg [1:0] curr_state , nxt_state;

always @(posedge clk)
begin
    if (rst)
    curr_state <= A;
end

always @(posedge clk)
begin
    case (curr_state)
    A: predict <= 1;
    B: predict <= 1;
    C: predict <= 0;
    D: predict <= 0;
    endcase
end

always @(posedge clk)
begin
    case (curr_state)
    A:
    begin
       if (taken == 0)
            nxt_state <= B;
       else if (taken == 1)
            nxt_state <= A;
       else
            nxt_state <= A;
    end
    B:
    begin
       if (taken == 0)
            nxt_state <= C;
       else if (taken == 1)
            nxt_state <= A;
       else
            nxt_state <= A;
    end
    C:
    begin
       if (taken == 0)
            nxt_state <= C;
       else if (taken == 1)
            nxt_state <= D;
       else
            nxt_state <= A;
    end
    D:
    begin
       if (taken == 0)
            nxt_state <= C;
       else if (taken == 1)
            nxt_state <= A;
       else
            nxt_state <= A;
    end
    endcase
end


endmodule