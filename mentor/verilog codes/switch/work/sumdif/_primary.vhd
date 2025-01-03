library verilog;
use verilog.vl_types.all;
entity sumdif is
    port(
        diff            : out    vl_logic;
        sum             : out    vl_logic;
        bo              : out    vl_logic;
        c               : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        CIN             : in     vl_logic;
        BIN             : in     vl_logic
    );
end sumdif;
