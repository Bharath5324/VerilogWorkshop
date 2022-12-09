module redGreenBlue (output reg[2:0] light, input clk);
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;
    parameter red = 3'b001, yellow = 3'b010, green = 3'b100;
    reg [1:0] state;
    always @(posedge clk) begin
        case(state)
            S0:state <= S1;
            S1:state <= S2;
            S2:state <= S0;
            default:state <= S0;
        endcase
    end
    always @(state) begin
        case(state)
            S0:light <= green;
            S1:light <= yellow;
            S2:light <= red;
            default:light <= green;
        endcase
    end
endmodule