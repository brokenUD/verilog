// module counter (clk,
//                 res,
//                 y);
//     input clk;
//     input res;
//     output[7:0] y;

//     reg[7:0] y;
//     wire[7:0] sum; // +1运算结果

//     assign sum = y+1; // 组合逻辑

//     always @(posedge clk or negedge res) begin
//         if (~res)begin
//             y <= 0;
//         end
//         else begin
//             y <= sum;
//         end

//     end

// endmodule //counter



module counter (clk,
                res,
                y);
    input clk;
    input res;
    output[7:0] y;

    reg[7:0] y;
    // wire[7:0] sum; // +1运算结果

    // assign sum = y+1; // 组合逻辑

    always @(posedge clk or negedge res) begin
        if (~res)begin
            y <= 0;
        end
        else begin
            y <= y+1;
        end

    end

endmodule //counter
