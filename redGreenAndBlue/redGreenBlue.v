module redGreenBlue (output reg[2:0] light, input clk);
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;
    parameter red = 3'b001, yellow = 3'b010, green = 3'b100;
    reg [1:0] state;
    always @(posedge clk) begin
        case(state)
            S0:begin
                state <= S1;
                light <= red;
            end
            S1:begin
                state <= S2;
                light <= yellow;
            end
            S2:begin
                state <= S0;
                light <= green;
            end
            default:begin
                state <= S0;
                light <= red;
            end
        endcase
    end
endmodule