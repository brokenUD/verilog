
module nand_gate_tb; reg aa, bb; wire yy; nand_gate nand_gate_tb(.A(aa), .B(bb), .Y(yy));

    initial begin
        $dumpfile("learn/nand_gate/nand_gate.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, nand_gate_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        // #10000 $finish;
    end

    initial begin
        aa<= 0;bb<= 0;
        #10 aa <= 0;bb <= 1;
        #10 aa <= 1;bb <= 0;
        #10 aa <= 1;bb <= 1;
        #10 $stop;
    end

endmodule //nand_gate
