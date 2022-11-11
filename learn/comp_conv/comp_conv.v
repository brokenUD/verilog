
// module comp_conv(a,
//                  a_comp);
//     input[7:0] a;
//     output[7:0] a_comp;

//     wire[6:0] b; // 按位取反幅度位
//     wire[7:0] y; // 负数补码
//     assign b      = ~a[6:0];
//     assign y[6:0] = b+1; // 按位取反+1
//     assign y[7]   = a[7]; // 符号为不变
//     assign a_comp = a[7]?y:a; // 二选一

// endmodule


module comp_conv(a,
                 a_comp);
    input[7:0] a;
    output[7:0] a_comp;
    wire[6:0] y;

    assign y      = ~a[6:0];
    assign a_comp = a[7]?{a[7],y}:a;

endmodule

