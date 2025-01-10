library verilog;
use verilog.vl_types.all;
entity my_AND is
    port(
        y               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end my_AND;
