module full_adder_tb;
        wire sum, cout;
        reg a, b, cin; 
        full_adder A1(sum, cout, a, b, cin);
        initial begin
            $monitor($time, " a: %b, b: %b, cin: %b, sum: %b, cout: %b", a, b, cin, sum, cout);
            #2 a = 0; b =0; cin =0;
            #5 a = 0; b =0; cin =1;
            #5 a = 0; b =1; cin =0;
            #5 a = 0; b =1; cin =1;
            #5 a = 1; b =0; cin =0;
            #5 a = 1; b =0; cin =1;
            #5 a = 1; b =1; cin =0;
            #5 a = 1; b =1; cin =1;
            #40 $finish;
        end
endmodule