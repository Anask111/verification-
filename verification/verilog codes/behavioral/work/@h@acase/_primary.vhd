library verilog;
use verilog.vl_types.all;
entity HAcase is
    port(
        s               : out    vl_logic;
        c               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end HAcase;
