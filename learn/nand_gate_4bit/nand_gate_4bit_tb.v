
module nand_gate_4bit_tb; reg[3:0] aa, bb; wire[3:0] yy; nand_gate_4bit nand_gate_4bit_tb(.A(aa), .B(bb), .Y(yy));

    initial begin
        $dumpfile("learn/nand_gate_4bit/nand_gate_4bit.vcd");  // 指定VCD文件的名字为wave.vcd，仿真信息将记录到此文件
        $dumpvars(0, nand_gate_4bit_tb);  // 指定层次数为0，则tb_code 模块及其下面各层次的所有信号将被记录
        // #10000 $finish;
    end

    initial begin
        aa<= 4'b0000;bb<= 4'b0000;
        #10 aa <= 4'b0001;bb <= 4'b0110;
        #10 aa <= 4'b0010;bb <= 4'b1001;
        #10 aa <= 4'b0100;bb <= 4'b1100;
        #10 $stop;
    end

endmodule //nand_gate_4bit
