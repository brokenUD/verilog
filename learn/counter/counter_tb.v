`timescale 10ns/100ps
module counter_tb; reg clk, res; wire[7:0] y; counter counter_tb(.clk(clk), .res(res), .y(y));

    initial begin
        $dumpfile("learn/counter/counter.vcd");
        $dumpvars(0, counter_tb);
    end

    initial begin
        clk     <= 0;res     <= 0;
        #17 res <= 1;
        #6000 $stop;
    end

    always #5 clk <= ~clk;



endmodule //counter
