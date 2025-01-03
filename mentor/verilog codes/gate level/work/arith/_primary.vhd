library verilog;
use verilog.vl_types.all;
entity arith is
    port(
        s               : out    vl_logic;
        c               : out    vl_logic;
        an              : out    vl_logic;
        o               : out    vl_logic;
        di              : out    vl_logic;
        bo              : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        ci              : in     vl_logic;
        ei              : in     vl_logic
    );
end arith;
