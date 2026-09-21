//Implement the function: y = a & b | c & d & ~e

module func1 
(
    input  A, B, C, D, E, 
    output Y
);

assign Y = ( (A & B) | (C & D & ~E) );
    
endmodule