// testbench
// `include "learn/first/inv.v"
// `timescale 1ns/10ps
// inv  inst_inv (
//     .A                 (A),
//     .Y                 (Y)
// );
module inv_tb; reg aa; wire yy; inv inv(.A(aa), .Y(yy));

    initial begin
        $dumpfile("/Users/ud/projects/my/verilog/learn/first/inv.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, inv_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        #10000 $finish;
    end

    initial begin
        aa     <= 0;
        #10 aa <= 1;
        #10 aa <= 0;
        #10 aa <= 1;
        #10 $stop;
    end


endmodule
