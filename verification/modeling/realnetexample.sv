import cds_rnm_pkg::*;

nettype real realnet with CDS_res_wrealavg;

module top;

realnet w;
driver1 d1(w);
driver2 d2(w);
receiver1 r1(w);

endmodule


module receiver1(input realnet rec_1);

always@(rec_1)
$display($time, ,"sum=%f",rec_1);
endmodule

module driver1(output realnet dr_1);
real r;
assign dr_1=r;

initial begin
r=2.2;
#20 r=`wrealZState;
end
endmodule



module driver2(output realnet dr_2);
real r;
assign dr_2=r;
initial begin

r=`wrealZState;
#10 r =1.1;

end
endmodule


