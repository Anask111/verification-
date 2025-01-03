module sram(datao,datain,cs,rd,wr,add,clk ,res);
output reg [7:0] datao;
input [7:0] datain;
input  [3:0] add;
reg [7:0] mem [15:0];
integer i;
input cs,rd,wr,clk ,res;
always @ (posedge clk )
	begin
			if(cs==1'b1)
				begin
					if(wr==1'b1)
						begin
							mem[add]=datain;
					  end
					else if(rd==1'b1)
						begin
								//$display("%b",add);
								datao=mem[add];
						 end
					else if(res==1'b1)
						begin
							  for(i=0;i<=15;i=i+1)
										mem[i]=8'b0;
					  end
				end
	end
endmodule 



			module sram_tb;
				wire [7:0] datao;
			reg [7:0] datain;
			reg  [3:0] add;

			
			reg cs,rd,wr,clk ,res;  
				  sram i_sram2(datao,datain,cs,rd,wr,add,clk ,res);
				  
				  initial 
				  begin
					 $monitor("At time %0t - datao=%b, datain=%b,  cs=%b ,  rd=%b  , wr=%b , add=%b , clk=%b, res=%b",$time,datao,datain,cs,rd,wr,add,clk ,res);
				  clk=1'b0;
				  res=1'b0;
				  wr=1'b0;
					rd=1'b0;
				  add=4'b0001;
				  cs=1'b0;
				  datain=8'b00000010;
				  #5;
		
				  #5;
				  
					end
				initial #10 cs=1'b1;
				initial #11 res=1'b1;
				initial #12 res=1'b0;
				initial #13 rd=1'b1;
				initial #14 wr=1'b1;
				initial #17 wr=1'b0;
				
				
				
				initial #20 add=4'b0101; 
				initial #21 datain=8'b00100010;
				initial #24 wr=1'b1;
				initial #27 wr=1'b0;
				
				
				initial #30 add=4'b1101; 
				initial #31 datain=8'b11100010;
				initial #34 wr=1'b1;
				initial #37 wr=1'b0;
				
				always #1 clk= ~clk;
				initial #3000 $finish;
					 endmodule
