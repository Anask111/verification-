library verilog;
use verilog.vl_types.all;
entity rough is
    port(
        z               : out    vl_logic;
        x               : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic
    );
end rough;
