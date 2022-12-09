module bit_adder (output reg [7:0] out, input [7:0] a, b);
    always @(a, b) begin
        out = a + b;
    end
endmodule