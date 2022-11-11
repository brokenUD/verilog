
module fn_sw_tb; reg a, b, sel; wire y;
    fn_sw fn_sw_tb(.a(a), .b(b), .sel(sel), .y(y));

    initial begin
        $dumpfile("learn/fn_sw/fn_sw.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, fn_sw_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        // #10000 $finish;
    end

    initial begin
        a     <= 0;b     <= 0;sel     <= 0;
        #10 a <= 0;b <= 0;sel <= 1;
        #10 a <= 0;b <= 1;sel <= 0;
        #10 a <= 0;b <= 1;sel <= 1;
        #10 a <= 1;b <= 0;sel <= 0;
        #10 a <= 1;b <= 0;sel <= 1;
        #10 a <= 1;b <= 1;sel <= 0;
        #10 a <= 1;b <= 1;sel <= 1;
        #10 $stop;
    end

endmodule
