module top;
    logic [4] a, b;
    always b = #5 a;
    initial begin
        a = #1 1;
        $monitor("%2d %b %b", $time, a, b);
        #1; a = 0;
        #1; a = 'he;
        #1;
        #10; a = 'h5;
        #10;
        $finish;
    end
endmodule
