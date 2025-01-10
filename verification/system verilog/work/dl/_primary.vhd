library verilog;
use verilog.vl_types.all;
entity dl is
    port(
        q               : out    vl_logic;
        s               : in     vl_logic;
        clk             : in     vl_logic
    );
end dl;
