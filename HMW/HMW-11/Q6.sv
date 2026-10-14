module clkChrunchyer (
    input logic clk_50MHz, input logic rst_n,
    output logic clk_1Hz
);
    
    logic [32:0]phase_acc;
    always_ff @( posedge clk_50MHz or negedge rst_n) begin

        if (!rst_n) begin
            phase_acc <= 33'b0;
        end else begin 
            phase_acc <= phase_acc +35'd172
            
        end
        
    end
    assign clk_1Hz = phase_acc[32]

endmodule