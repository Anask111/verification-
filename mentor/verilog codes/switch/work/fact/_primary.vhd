library verilog;
use verilog.vl_types.all;
entity fact is
    port(
        fact            : out    vl_logic_vector(31 downto 0);
        data            : in     vl_logic_vector(31 downto 0)
    );
end fact;
