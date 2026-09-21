// Implement a circuit that reverses the bits of input a[3:0] and outputs the result to
// y[3:0]

module reverse 
(
    input  A[3:0],
    output Y[3:0]
);
    
    assign Y = {A[0:0], A[3:0]}, {A[1:0], A[2:0]}, {A[2:0], A[1:0]}, {A[3:0], A[0:0]}

endmodule
