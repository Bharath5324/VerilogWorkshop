

module TwistedRing (output reg [3:0]out, input clk, prst, clr);
    always @(posedge clk or posedge prst or posedge clr )
    begin
        if(prst == 1)
            out <= 4'b1111;
        else if(clr == 1)
            out <= 4'b0000;
        else
            begin
                #1 out <= out<<1;
                out[0] <= ~out[3];
            end
    end
endmodule


module ticker();
    reg clk, preset, clr;
    wire [3:0] out; 
    
    initial begin
        clk <= 0;
        preset = 0;
        clr = 1;
        #2 clr = 0;
    end
    always begin
        #5 clk <= ~clk;
    end
    initial begin
        $dumpfile("./twisted.vcd");
        $dumpvars(1, ticker);
        $monitor($time, ": %b", out);
        #100 $finish;
    end
    TwistedRing M1(out, clk, preset, clr);
endmodule