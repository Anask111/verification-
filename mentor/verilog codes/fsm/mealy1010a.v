module mealy1010a(z,x,rst,clk);
output reg z;
input x,rst,clk;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0] ps,ns;
always @ (posedge clk)
begin
	if(rst==1'b1)
		ps=s0;
	else
		ps=ns;
end
always @(ps or x)
begin
	case(ps)
		s0:if(x==1'b0)
			begin
			ns=s0;z=1'b0;end
			else
			begin
			ns=s1;z=1'b0;end
		s1:if(x==1'b0)begin
			ns=s2;z=1'b0;end
			else begin
			ns=s1;z=1'b0;end
		s2:if(x==1'b0)begin
			ns=s0;z=1'b0;end
			else begin
			ns=s3;z=1'b0;end
		s3:if(x==1'b0)begin
			ns=s2;z=1'b0;end
			else begin
			ns=s1;z=1'b1;end
	
		endcase	
	end		
endmodule 

				module mealy1010a_tb;
				wire z;
				reg x,rst,clk;
				mealy1010a i_mealy1010a(z,x,rst,clk);
				  
				  initial 
				  begin
					 $monitor("At time %0t - z=%b, x=%b,  rst=%b , clk=%b ",$time,z,x,rst,clk);
				  clk=1'b0;
				  rst=1'b1;
				  x=1'b0;
				  #10;
				  rst=1'b0;
					end
			
				always #1 clk= ~clk;
				always #2	 x= $random;
				initial #300 $finish;
					 endmodule