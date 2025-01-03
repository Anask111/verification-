library verilog;
use verilog.vl_types.all;
entity decoderc is
    port(
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        y3              : out    vl_logic;
        y4              : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end decoderc;
