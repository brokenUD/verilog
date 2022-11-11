`timescale 1ns/100ps
module s_counter_tb; reg clk, res; wire[3:0] s_num; s_counter s_counter_tb(.clk(clk), .res(res), .s_num(s_num));
    initial begin
        $dumpfile("learn/s_counter/s_counter.vcd");
        $dumpvars(0, s_counter_tb);
    end

    initial begin
        clk     <= 0;res     <= 0;
        #17 res <= 1;
        #1000000 $stop;
    end

    always  #5 clk <= ~clk;


endmodule //s_counter_tb
