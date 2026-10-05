module detectNums_v2 (
    input  logic [3:0] a,
    output logic       y
);

always_comb
begin
    case (a)
        4'd5  : y = 1'b1;
        4'd7  : y = 1'b1;
        4'd9  : y = 1'b1;
        4'd11 : y = 1'b1;
        default: y = 1'b0;
    endcase
end

endmodule






module fsm1 (
    input  logic clk,
    input  logic reset,
    input  logic w,
    output logic a,
    output logic b
);

typedef enum logic [2:0]
{
    S0,
    S1,
    S2,
    S3,
    S4
} statetype;

statetype state, nextstate;

always_ff @(posedge clk)
begin
    if (reset)
        state <= S0;
    else
        state <= nextstate;
end

always_comb
begin
    case (state)

        S0:
            if (w)
                nextstate = S3;
            else
                nextstate = S1;

        S1:
            nextstate = S2;

        S2:
            nextstate = S3;

        S3:
            nextstate = S4;

        S4:
            if (w)
                nextstate = S3;
            else
                nextstate = S0;

        default:
            nextstate = S0;

    endcase
end

always_comb
begin
    case (state)

        S0: begin
            a = 1'b1;
            b = 1'b1;
        end

        S1: begin
            a = 1'b0;
            b = 1'b1;
        end

        S2: begin
            a = 1'b0;
            b = 1'b0;
        end

        S3: begin
            a = 1'b0;
            b = 1'b1;
        end

        S4: begin
            a = 1'b1;
            b = 1'b1;
        end

        default: begin
            a = 1'b0;
            b = 1'b0;
        end

    endcase
end

endmodule
