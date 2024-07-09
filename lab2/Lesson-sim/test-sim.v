`timescale 1ns / 1ns
module test ();

    parameter DELAY = 200;
    reg clk, rst;

    initial begin
        rst = 0;
        #DELAY;
        rst = 1;
    end

    initial begin
        clk = 0;
        forever begin
            #10 clk = !clk;
        end
    end

    wire [6:0] Hex;

    DisCnt U0 (
        .iCLK_50(clk),
        .rst    (rst),
        .oHEX0_D(Hex)
    );

endmodule

