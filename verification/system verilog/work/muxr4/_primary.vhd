library verilog;
use verilog.vl_types.all;
entity muxr4 is
    port(
        y2              : out    vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic_vector(7 downto 0);
        d               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(3 downto 0);
        s1              : in     vl_logic_vector(3 downto 0);
        s2              : in     vl_logic_vector(3 downto 0);
        s3              : in     vl_logic_vector(3 downto 0);
        f               : in     vl_logic;
        f1              : in     vl_logic;
        f2              : in     vl_logic
    );
end muxr4;
