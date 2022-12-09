module testbench;
reg [7:0]inp;
reg [2:0]select;
reg [2:0]count = 3'd0;
wire y;
mux_8_1 mux_dut(.in(inp),.sel(select),.y(out));
initial begin
    $dumpfile ("muxTest.vcd");
    $dumpvars (0, testbench);
  $monitor ($time, "in=%b, sel=%b, Y=%b", inp, select, out);
    //intialising value 
    inp=0;
    select=0;
    #10;
    select=3'd0;
    inp=8'd0;
  	#10 
  inp=8'b01110101;
  #5 select=3'b000;
  #5 select=3'b001;
  #5 select=3'b010;
  #5 select=3'b011;
  #5 select=3'b100;
  #5 select=3'b101;
  #5 select=3'b110;
  #5 select=3'b111;
    #30 $finish;
    
end
endmodule