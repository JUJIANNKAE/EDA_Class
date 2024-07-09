module singen (
    input  wire       clk,
    input  wire       rst,
    output wire [7:0] dataout
);

    reg [5:0] addr;

    always @(posedge clk or negedge rst) begin
        if (!rst) addr = 0;
        else addr = addr + 1;
    end

    rom rom_inst (
        .address(addr),
        .clock  (clk),
        .q      (dataout)
    );

endmodule
