`timescale 1ns/100ps
module sigma_16p_tb; reg clk, res; reg[7:0] data_in; reg syn_in; wire[11:0] data_out; wire syn_out; sigma_16p sigma_16p_tb(.clk(clk), .res(res), .data_in(data_in), .syn_in(syn_in), .data_out(data_out), .syn_out(syn_out));



initial begin
    $dumpfile("learn/sigma_16p/sigma_16p.vcd");
    $dumpvars(0,sigma_16p_tb);
end

initial begin
    // clk  <= 0;res  <= 0; data_in  <= 1;syn_in  <= 0;
    clk     <= 0;res     <= 0; data_in     <= 8'b1;syn_in     <= 0;
    #17 res <= 1;
    #100000 $stop;
end

always #5 clk      = ~clk;
always #100 syn_in = ~syn_in;
endmodule //sigma_16p
