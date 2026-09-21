module detectNums 
(
    input  A[3:0], 
    output Y
);
    
    assign Y = A[2] & A[0];

endmodule