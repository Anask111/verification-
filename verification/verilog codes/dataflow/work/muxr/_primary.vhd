library verilog;
use verilog.vl_types.all;
entity muxr is
    port(
        y               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        s1              : in     vl_logic
    );
end muxr;
