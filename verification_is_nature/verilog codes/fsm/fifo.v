module fifo(datao,full,empty,count,datain,rd,wr,clk ,res);
output reg [7:0] datao;
output reg [3:0] count;
output reg full,empty;
input [7:0] datain;
reg [7:0] prd,pwr;
reg [7:0] mem [7:0];
integer i;
input rd,wr,clk ,res;

always @ (posedge clk )
	begin
			if (res == 1'b1)
				begin
				pwr=4'b0000;
				prd=4'b0000;
				datao=4'b0000;
				
				end
		else if(wr==1'b1 & !full)
			begin
				mem[pwr]=datain;
				pwr=pwr+1;
				
		  end
		else if(rd==1'b1 & !empty)
			begin
					datao=mem[pwr];
					prd=prd-1;
			 end		
		end
	
always @ (posedge clk)
begin
 

 if (prd==pwr)
	begin
	empty=1'b1;
	full=1'b0;
	end
	else if ((pwr+1'b1)==prd)
	begin
	empty=1'b0;
	full=1'b1;
	end
	else
	begin
	$display("%b",count);
	end
	 count=pwr-prd;	
end
endmodule 



			module fifo_tb1;
			wire [7:0] datao;
			wire [3:0] count;
			wire full ,empty;
			reg[7:0] datain;
			reg rd,wr,clk ,res;  
				  fifo i_fifo2(datao,full,empty,count,datain,rd,wr,clk ,res);
				  
				  initial 
				  begin
					// $monitor("At time %0t - datao=%b, datain=%b,  cs=%b ,  rd=%b  , wr=%b , add=%b , clk=%b, res=%b",$time,datao,full,empty,count,datain,rd,wr,,clk ,res);
				  clk=1'b0;
				  res=1'b0;
				  wr=1'b0;
					rd=1'b0;
				  datain=8'b00000010;
				  #5;
		
				  
					end
				initial #11 res=1'b1;
				initial #12 res=1'b0;
				initial #15 rd=1'b1;
				initial #25 rd=1'b1;
				initial #45 rd=1'b1;
//				initial #14 wr=1'b1;
//				initial #17 wr=1'b0;
	        initial #43 rd=1'b0;
	      always #21 datain=$random;
//				initial #24 wr=1'b1;
//				initial #27 wr=1'b0;			
			//always #7 datain=8'b11100010;
//				initial #34 wr=1'b1;
//				initial #37 wr=1'b0;
			always #1 wr= $random;
		//	always #1 rd= $random;
				always #1 clk= ~clk;
				initial #3000 $finish;
					 endmodule
