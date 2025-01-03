library verilog;
use verilog.vl_types.all;
entity duty is
    port(
        clk             : out    vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0)
    );
end duty;
