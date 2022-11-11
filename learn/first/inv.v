// 反相器
//时间单位/精度
`timescale 1ns/10ps
module inv(A,
           Y);
    input A;
    output Y;
    assign Y = ~A;

endmodule



//testbench
// module inv_tb;
// reg aa;
// wire yy;
// inv inv(
//     .A(),
//     .Y()
// );
// initial begin
//         aa <= 0;
//     #10 aa <= 1;

//     #10 aa <= 0;
//     #10 aa <= 1;
//     #10 $stop;
// end
// endmodule
