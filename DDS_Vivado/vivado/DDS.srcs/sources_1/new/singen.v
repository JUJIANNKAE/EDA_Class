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
        .clka (clk),     // input wire clka
        .ena  (1'b1),    // input wire ena
        .addra(addr),    // input wire [5 : 0] addra
        .douta(dataout)  // output wire [7 : 0] douta
    );

endmodule
