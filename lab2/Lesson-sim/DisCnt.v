module DisCnt (
    input  wire       iCLK_50,
    input  wire       rst,
    output wire [6:0] oHEX0_D
);

    wire       clk_1Hz;
    reg  [3:0] cnt;

    always @(posedge clk_1Hz or negedge rst) begin
        if (!rst) begin
            cnt <= 0;
        end else if (cnt < 9) begin
            cnt <= cnt + 1;
        end else begin
            cnt <= 0;
        end
    end

    fdiv fd0 (
        .iCLK_50(iCLK_50),
        .rst    (rst),
        .oLEDR  (clk_1Hz)
    );

    SEG7_LUT hex0 (
        .iDIG(cnt),
        .oSEG(oHEX0_D)
    );

endmodule
