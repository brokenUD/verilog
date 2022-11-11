`timescale 1ns/10ps
module nand_gate (A,
                  B,
                  Y);
    input A;
    input B;
    output Y;

    assign Y=~(A&B);

endmodule //nand_gate
