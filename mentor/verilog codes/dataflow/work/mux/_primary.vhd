library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        y               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic
    );
end mux;
