module simpleand(f, x, y);
    input x, y;
    output reg f;
    always
    begin
        #1 f = x & y;
    end
endmodule