module full_adder (output sum, cout, input a, b, cin);
    wire temp_sum;
    assign temp_sum = a^b;
    assign sum = temp_sum^cin;
    assign cout = (temp_sum & cin) + (a & b);
endmodule