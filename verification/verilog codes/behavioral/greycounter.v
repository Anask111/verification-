module greycounter(y,temp,clk,ret);
output reg [3:0]y;
output reg [3:0]temp;

input clk,ret;

always @(posedge clk)
begin
		if (ret==1)
		begin
		y=4'b0000;
		temp=4'b0000;
		end
		else 
		begin
		temp=temp+1;
		y[3]=temp[3];
		y[2]=temp[2]^temp[3];
		y[1]=temp[2]^temp[1];
		y[0]=temp[1]^temp[0];
		end
	end
  endmodule
	
		module greycounter_tb;
	wire [3:0] temp,y;
	reg clk,ret;
	 greycounter i_greycountera(y,temp,clk,ret);
	  initial
	  begin
	  $monitor("At time %0t - y=%b,temp=%b, clk=%b ,ret=%b ",$time,y,temp,clk,ret);
	
		clk=1'b0;
	
		ret=1'b0;
		
		end
		initial #10 ret=1'b1;
		initial #20 ret=1'b0;
		always #10 clk =~clk;
	    always #500 $finish;
  endmodule 