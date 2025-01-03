library verilog;
use verilog.vl_types.all;
entity bintogre is
    port(
        g               : out    vl_logic;
        g1              : out    vl_logic;
        g2              : out    vl_logic;
        b               : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic
    );
end bintogre;
