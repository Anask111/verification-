library verilog;
use verilog.vl_types.all;
entity reverse is
    port(
        reverse         : out    vl_logic_vector(7 downto 0);
        data            : in     vl_logic_vector(7 downto 0)
    );
end reverse;
