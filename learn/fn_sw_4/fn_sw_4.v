`timescale 1ns/10ps

module fn_sw_4(a,
               b,
               sel,
               y);
    input a;
    input b;
    input sel;
    output y;

    reg y;
    always @(a or b or sel) begin
        case(sel)
            2'b00:begin
                y <= a&b;
            end
            2'b01:begin
                y <= a|b;
            end
            2'b10:begin
                y <= a^b;
            end
            2'b11:begin
                y <= ~(a^b);
            end
        endcase
    end
    
endmodule
