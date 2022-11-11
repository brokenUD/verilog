module m_gen (clk,
              res,
              y);

    input clk,res;
    output y;

    reg[3:0] d;
    assign y = d[0];

    always @(posedge clk or negedge res) begin
        if (~res)begin
            d <= 4'b1111;
        end
        else begin
            d[2:0] <= d[3:1];
            d[3]   <= d[0]^d[3];
        end
    end

endmodule //m_gen
