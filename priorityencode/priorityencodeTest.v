module testbench;
reg [7:0]in;
wire [2:0]y;
priorityencode encode_dut(.in(in),.y(y));
initial
    begin
    $dumpfile ("priorityencodeTest.vcd");
    $dumpvars (0, testbench);
      // monitor is used to display the information. 
      $monitor($time,"in=%b y=%b",in,y);
      #5
        in=128;
        #5
        in=64;
        #5
        in=32;
        #5
        in=16;
        #5
        in=8;
        #5
        in=4;
        #5
        in=2;
        #5
        in=0;
        #5
        $finish;
    end
endmodule  