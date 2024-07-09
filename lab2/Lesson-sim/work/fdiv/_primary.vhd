library verilog;
use verilog.vl_types.all;
entity fdiv is
    port(
        iCLK_50         : in     vl_logic;
        rst             : in     vl_logic;
        oLEDR           : out    vl_logic
    );
end fdiv;
