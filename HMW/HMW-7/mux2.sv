module mux2 (
    input  [3:0] D0, D1
    input         S,
    output [3:0]  Y
);

    assign Y = S ? D1 : D0;
    
endmodule