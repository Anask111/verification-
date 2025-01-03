library verilog;
use verilog.vl_types.all;
entity demuxc is
    port(
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        y3              : out    vl_logic;
        y4              : out    vl_logic;
        i               : in     vl_logic;
        s2              : in     vl_logic;
        s1              : in     vl_logic
    );
end demuxc;
