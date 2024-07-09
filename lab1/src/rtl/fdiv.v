module fdiv (
    input  wire iCLK_50,
    output wire oLEDR
);

    reg clk_1Hz;
    reg [31:0] count;

    always @(posedge iCLK_50) begin
        if (count < 25000000) begin
            count <= count + 1;
        end else begin
            count   <= 1;
            clk_1Hz <= ~clk_1Hz;
        end
    end

    assign oLEDR = clk_1Hz;

endmodule
