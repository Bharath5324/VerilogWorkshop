module sequncChecker_tb;
    reg clk, x, reset;
    wire out;
    sequenceChecker G1 (out, clk, x, reset);
    integer i;
    initial begin
        clk = 1'b0;
        always clk = #5 ~clk;
    end
    initial begin
        reset = 0;
        x = 1'b0;
        #10x = 1'b1;
        #10x = 1'b1;
        #10x = 1'b0;
        for (i = 0;i<12 ; i =i+1 ) begin
            #10 x = $random;
        end
    end
    initial begin
        $dumpfile("parity.vcd");
        $dumpvars(0, sequncChecker_tb);
        $monitor($time, " X: %b, Parity: %b, Next State: %b", G1.x, out, G1.nextState);
        #500 $finish;
    end
endmodule