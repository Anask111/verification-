library verilog;
use verilog.vl_types.all;
entity comp is
    port(
        x               : out    vl_logic;
        y               : out    vl_logic;
        z               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end comp;
