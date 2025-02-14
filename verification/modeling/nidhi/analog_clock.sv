`include "constants.vams"

module analog_clock(clk);

	output real clk;
	
	parameter time_period = 1 ;
	parameter ramp_rate   = 0.5;
	parameter TON         = 5;
	parameter TOFF        = 5;


	initial begin 
	repeat(5)begin
	 for (integer i=0 ; i<=9 ; i++)begin 
	 #time_period;
	 clk = clk + ramp_rate;
         end 
	#TON
	for (integer i=0 ; i<=9 ; i++)begin 
	#time_period ;
	clk = clk + ramp_rate;
	end
	#TOFF
	end  
	end 
endmodule 
