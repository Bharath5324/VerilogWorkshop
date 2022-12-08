module RingCounterTest;
    reg clock, init;
    wire[7:0] count; 
    RingCounter C1(.clk(clock), .init(init), .counter(count));
    initial
    begin
        forever
            clock <= #1 ~clock;
    end
    initial begin
        $monitor("Time: ", $time, "  ||count: %b ", init, count);
        $dumpfile("RingCounterTest.vcd");
        $dumpvars(0, RingCounterTest);
        #1 init = 1;
        #5 init = 0;
        #500 $finish;
    end
endmodule