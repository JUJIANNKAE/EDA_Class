module singen (
    input  wire       clk,
    output wire [7:0] dataout
);

    reg [5:0] addr;

    always @(posedge clk) begin
        addr = addr + 1;
    end

    rom rom_inst (
        .address(addr),
        .clock  (clk),
        .q      (dataout)
    );

endmodule
