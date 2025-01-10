library verilog;
use verilog.vl_types.all;
entity armstrong is
    port(
        arm             : out    vl_logic;
        numb            : in     integer
    );
end armstrong;
