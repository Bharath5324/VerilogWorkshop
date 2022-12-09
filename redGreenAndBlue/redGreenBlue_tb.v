module redGreenBlue_tb;
    reg clk;
    wire[2:0] light;
    redGreenBlue G1(light, clk);
    initial begin
        $display("Starting simulation....");
        $dumpfile("redGreenBlue.vcd");
        $dumpvars(0, redGreenBlue_tb);
        $monitor($time, "Color: %b", light);
    end
    always begin
        #5 clk = ~clk;
    end
    initial begin
        clk = 1'b0;
        #100 $finish;
    end
endmodule