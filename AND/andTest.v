module testbench;
    reg A, B;
    wire  Y;
    simpleand DUT(.x(A), .y(B), .f(Y));
    initial begin
        $dumpfile ("andTest.vcd");
        $dumpvars (0, testbench);
        $monitor ($time, "A=%b, B=%b, Y=%b", A, B, Y);
        #5 A=0; B=0;
        #5 A=0; B=1;
        #5 A=1; B=0;
        #5 A=1; B=1;
        #5 $finish;
    end
endmodule