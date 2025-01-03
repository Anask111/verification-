library verilog;
use verilog.vl_types.all;
entity seven is
    port(
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        \A\             : in     vl_logic;
        \B\             : in     vl_logic;
        \C\             : in     vl_logic;
        \D\             : in     vl_logic
    );
end seven;
