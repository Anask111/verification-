module demux (y1,y2,y3,y4,i,s2,s1);
	output reg y1,y2,y3,y4;
	input i,s1,s2;
	always @ (s1,s2,i)
	begin
			if ({s1,s2,i}== 3'b001)
			{y1,y2,y3,y4}=4'b1000; 
			
			else if ({s1,s2,i}==3'b011)
			{y1,y2,y3,y4}=4'b0100; 
			
			else if ({s1,s2,i}== 3'b101)
			{y1,y2,y3,y4}=4'b0010; 
			
			else if ({s1,s2,i}== 3'b111)
			{y1,y2,y3,y4}=4'b0001;
			
			else if ({s1,s2,i}== 3'b000)
			{y1,y2,y3,y4}=4'b0000;
			
			else if ({s1,s2,i}== 3'b010)
			{y1,y2,y3,y4}=4'b0000;
			
			else if ({s1,s2,i}== 3'b100)
			{y1,y2,y3,y4}=4'b0000;
			else if ({s1,s2,i}== 3'b110)
			{y1,y2,y3,y4}=4'b0000;
			
	end
endmodule

module demux_tb;
  wire Y1,Y2,Y3,Y4;
  reg I,S1,S2;
  demux i_demux(Y1,Y2,Y3,Y4,I,S1,S2);
  initial
  begin
  $monitor("At time %0t -  Y1=%b , Y2=%b , Y3=%b,Y4=%b,I=%b,S1=%b,S2=%b ",$time,Y1,Y2,Y3,Y4,I,S1,S2);
    I=1'b0;
    S1=1'b0;
    S2=1'b0;
  end
   always #5 S1=~S1;
   always #10 S2=~S2;
   always #10 I=~I;
  initial #200 $finish;
endmodule