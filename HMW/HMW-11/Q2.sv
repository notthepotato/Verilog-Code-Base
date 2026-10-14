module counter_add4(input logic clk, input logic reset, output logic [31:0] q)
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 32'd0;
        end else begin
            q <= q + 32'd4
        end 
    end 
endmodule 