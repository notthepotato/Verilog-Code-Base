// Implement the bit-wise and of a[3:0] and b[3:0]. The output should be: y[3:0]

module and4bit 
(
    input  A[3:0], B[3:0],
    output Y[3:0]
);
    
    assign Y = A & B;

endmodule