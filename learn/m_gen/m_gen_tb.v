`timescale 1ns/100ps

module m_gen_tb; reg clk, res; wire y; m_gen mgen_tb(.clk(clk), .res(res), .y(y));

    initial begin
        $dumpfile("learn/m_gen/m_gen.vcd");
        $dumpvars(0, m_gen_tb);
    end

    initial begin
        clk     <= 0;res     <= 0;
        #17 res <= 1;
        #600 $stop;
    end

    always #5 clk <= ~clk;

endmodule //m_gen_tb
