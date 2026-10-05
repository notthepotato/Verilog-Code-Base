module priorityEncoder (
    input  logic [7:0] A,
    output logic [2:0] Y,
    output logic NONE
);

always_comb
begin
    NONE = 1'b0;

    casex (A)
        8'b1xxxxxxx: Y = 3'b111;
        8'b01xxxxxx: Y = 3'b110;
        8'b001xxxxx: Y = 3'b101;
        8'b0001xxxx: Y = 3'b100;
        8'b00001xxx: Y = 3'b011;
        8'b000001xx: Y = 3'b010;
        8'b0000001x: Y = 3'b001;
        8'b00000001: Y = 3'b000;

        default:
        begin
            Y    = 3'b000;
            NONE = 1'b1;
        end
    endcase
end

endmodule