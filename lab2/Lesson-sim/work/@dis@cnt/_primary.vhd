library verilog;
use verilog.vl_types.all;
entity DisCnt is
    port(
        iCLK_50         : in     vl_logic;
        rst             : in     vl_logic;
        oHEX0_D         : out    vl_logic_vector(6 downto 0)
    );
end DisCnt;
