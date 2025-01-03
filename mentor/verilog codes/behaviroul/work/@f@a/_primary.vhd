library verilog;
use verilog.vl_types.all;
entity FA is
    port(
        s               : out    vl_logic;
        c               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        ci              : in     vl_logic
    );
end FA;
