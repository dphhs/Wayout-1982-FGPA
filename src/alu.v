module alu (
    input [7:0] a, b,
    input [2:0] op,
    output reg [7:0] y
);
    always @(*) begin
        case (op)
            3'b000: y = a + b;
            3'b001: y = a - b;
            3'b010: y = a & b;
            3'b011: y = a | b;
            default: y = 8'h00;
        endcase
    end
endmodule