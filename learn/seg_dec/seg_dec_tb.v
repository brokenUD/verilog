`timescale 10ns/100ps

module seg_dec_tb; wire[6:0] a_g; reg[3:0] num; seg_dec seg_dec_tb(.num(num), .a_g(a_g));

initial begin
    $dumpfile("learn/seg_dec/seg_dec.vcd");
    $dumpvars(0, seg_dec_tb);
end
initial begin
    num <= 4'b000;
    #200 $stop;
end
always #10 num <= num+1;

endmodule //seg_dec_tb
