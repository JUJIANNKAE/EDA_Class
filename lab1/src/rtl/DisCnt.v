module DisCnt (
    input  wire       iCLK_50,
    output wire [6:0] oHEX0_D
);

    wire       clk_1Hz;
    reg  [3:0] cnt;

    always @(posedge clk_1Hz) begin
        if (cnt < 9) begin
            cnt <= cnt + 1;
        end else begin
            cnt <= 0;
        end
    end

endmodule
