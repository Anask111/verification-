`include "voltagedivider.vams"
module voltage_divider_tb;

real vin;
real vout;




voltage_divider dur (.vin(vin),.vout(vout));

initial begin

vin=0.0;
#10

vin=1.0;
#10

vin=2.5;
#10

vin=5.0;

#10

#40
$finish;

end

initial begin
$monitor("time:%0t vin:%0.2f  vout:%0.2f" ,$time,vin,vout);
 end

endmodule


