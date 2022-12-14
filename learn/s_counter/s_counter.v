module s_counter (clk,
                  res,
                  s_num);

    input clk,res;
    output[3:0] s_num;

    parameter freq_clk = 24; // 24Mhz

    reg[24:0] con_t; //秒脉冲分频计数器
    reg s_pulse; // 秒脉冲尖
    reg[3:0] s_num;

    always @(posedge clk or negedge res) begin
        if (~res)begin
            con_t   <= 0;
            s_pulse <= 0;
            s_num   <= 0;
        end
        else begin
            if (con_t == freq_clk*100-1)begin // 24MHz
                con_t <= 0;
            end
            else begin
                con_t <= con_t+1;
            end

            if (con_t == 0)begin
                s_pulse <= 1;
            end
            else begin
                s_pulse <= 0;
            end

            if (s_pulse==1)begin
                if (s_num == 9)begin
                    s_num <= 0;
                end
                else begin
                    s_num <= s_num+1;
                end
            end

        end

    end

endmodule //s_counter
