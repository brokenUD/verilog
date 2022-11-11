`timescale 1ns/10ps
module comp_conv_tb; reg[7:0] a; wire[7:0] y; comp_conv comp_conv(.a(a), .a_comp(y));

initial begin
    $dumpfile("learn/comp_conv/comp_conv.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
    $dumpvars(0, comp_conv_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
    // #10000 $finish;
end

initial begin
    a <= 0;
    #3000 $stop;
end

always #10 a <= a+1;

endmodule
