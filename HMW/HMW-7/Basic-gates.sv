module inv
(
    input  A,
    output Y
);
    
    assign Y = ~A;

endmodule

module and2 
(
input  A, B,
output Y
);
    
    assign Y = A & B;

endmodule

module or2
(
    input  A, B,
    output Y
);

    assign Y = A | B;

endmodule