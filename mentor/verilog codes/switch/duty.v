//`define ontime 9
//`define offtime 1
module duty(clk,a,b);
  output reg clk;
  input [7:0] a,b;
  //parameter a=9,b=1;
  
  always  
  begin
   forever duty (a,b);
  end

  task duty; 
    
    input [7:0] A,B;
  begin
    #(A) clk = 1'b1;
    #(B) clk = 1'b0 ;
  end
  endtask
endmodule 
 
module duty_tb;
  wire clk;
   reg [7:0] a,b;     
	duty  duty_tb(clk,a,b);
	initial 
	begin
	  a=4;
	  b=7;
	  end
	  
	initial #5000 $finish;
	
endmodule 