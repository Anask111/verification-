library verilog;
use verilog.vl_types.all;
entity fifo is
    port(
        datao           : out    vl_logic_vector(7 downto 0);
        full            : out    vl_logic;
        empty           : out    vl_logic;
        count           : out    vl_logic_vector(3 downto 0);
        datain          : in     vl_logic_vector(7 downto 0);
        rd              : in     vl_logic;
        wr              : in     vl_logic;
        clk             : in     vl_logic;
        res             : in     vl_logic
    );
end fifo;
