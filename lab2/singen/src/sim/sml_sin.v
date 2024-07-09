`timescale 1ns / 1ns
module sml_sin ();

    parameter DELAY = 200;
    reg clk_50M;
    reg rst;
    wire [7:0] dataout;

    singen U1 (
        .clk    (clk_50M),
        .rst    (rst),
        .dataout(dataout)
    );

    initial begin
        rst = 0;
        #DELAY;
        rst = 1;
    end

    initial begin
        clk_50M = 0;
        forever begin
            #10 clk_50M = !clk_50M;
        end
    end


endmodule
