`timescale 1ns/10ps
// module fn_sw(a,
//              b,
//              sel,
//              y);
//     input a;
//     input b;
//     input sel;
//     output y;

//     assign y = sel?(a^b):(a&b);

// endmodule


// always实现方式
module fn_sw(a,
             b,
             sel,
             y);
    input a;
    input b;
    input sel;
    output y;

    reg y;
    always @(a or b or sel) begin
        if (sel == 1) begin
            y <= a^b;
        end
        else begin
            y <= a&b;
        end
    end

endmodule
