module bit_adder_tb;
        wire [7:0]  sum;
        reg[7:0] a, b; 
        bit_adder A1(sum, a, b);
        initial begin
            $monitor($time, " a: %d, b: %d, sum: %d", a, b, sum);
            #2 a = 8'h21; b =8'h22;
            #5 a = 8'hA3; b =8'h44;
            #40 $finish;
        end
endmodule
