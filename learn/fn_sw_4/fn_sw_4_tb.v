`timescale 1ns/10ps
module fn_sw_4_tb; reg[3:0] absel; wire y; fn_sw_4 fn_sw_4_tb(.a(absel[0]), .b(absel[1]), .sel(absel[2]), .y(y));

initial begin
    $dumpfile("learn/fn_sw_4/fn_sw_4.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
    $dumpvars(0, fn_sw_4_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
    // #10000 $finish;
end

initial begin
    absel <= 0;
    #200 $stop;
end

always #10 absel <= absel+1;

endmodule
