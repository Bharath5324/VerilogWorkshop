module RingCounter (input clk, init, output reg [7:0] counter);
    always @(posedge clk)begin
        if(init)
            counter <= 8'b00000001;
        else
        begin
            counter <= counter << 1;
            counter[0] <= counter[7];
        end
    end
endmodule