library verilog;
use verilog.vl_types.all;
entity fsm is
    generic(
        s0              : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        s1              : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        s2              : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        z               : out    vl_logic;
        x               : in     vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of s0 : constant is 1;
    attribute mti_svvh_generic_type of s1 : constant is 1;
    attribute mti_svvh_generic_type of s2 : constant is 1;
end fsm;
