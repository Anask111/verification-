library verilog;
use verilog.vl_types.all;
entity encoder8 is
    port(
        y               : out    vl_logic_vector(2 downto 0);
        i               : in     vl_logic_vector(7 downto 0)
    );
end encoder8;
