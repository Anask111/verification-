library verilog;
use verilog.vl_types.all;
entity sr is
    port(
        q               : out    vl_logic;
        p               : out    vl_logic;
        s               : in     vl_logic;
        r               : in     vl_logic;
        clk             : in     vl_logic
    );
end sr;
