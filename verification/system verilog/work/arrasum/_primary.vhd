library verilog;
use verilog.vl_types.all;
entity arrasum is
    port(
        sum             : out    vl_logic_vector(12 downto 0);
        arr             : in     vl_logic
    );
end arrasum;
