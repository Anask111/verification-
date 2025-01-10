library verilog;
use verilog.vl_types.all;
entity comp2 is
    port(
        x               : out    vl_logic;
        y               : out    vl_logic;
        z               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        a1              : in     vl_logic;
        b1              : in     vl_logic
    );
end comp2;
