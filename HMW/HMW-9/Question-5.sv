module mux8 (
    input  logic [2:0] s,
    input  logic d0,
    input  logic d1,
    input  logic d2,
    input  logic d3,
    input  logic d4,
    input  logic d5,
    input  logic d6,
    input  logic d7,
    output logic y
);

always_comb
begin
    case (s)
        3'b000: y = d0;
        3'b001: y = d1;
        3'b010: y = d2;
        3'b011: y = d3;
        3'b100: y = d4;
        3'b101: y = d5;
        3'b110: y = d6;
        3'b111: y = d7;
        default: y = 1'b0;
    endcase
end

endmodule