module getval 
(
    input  A[2:0],
    output Y[11:0]
);
    
    assign Y = { {7 {a[2] } } }, a, 2'b00;

endmodule