//`include "design_top.vams"

module tb();

real ov_ana,uv_ana;
wire ov_dig,uv_dig;
reg en;
reg clk;
reg rst_n;
reg [3:0] data;
reg wrb;
real v2;

real vdd,vss,vdig,vana,vref;
reg [3:0] ov_uv_thr;
//wire ana;
//real temp_FB;
 buck_regulator18 BR(clk, rst_n,en,data, wrb,vdig , vana, vdd, vss,ov_dig,uv_dig,ov_ana, uv_ana,dvs_done,vref,v2);

initial begin
    clk=0;
    forever begin
     #0.5 clk=~clk;
    end
  end

  initial begin
   #5 rst_n = 1;
    vref=1.6;
    vdd=5;
    vss=0;
    vdig=1.6;
    vana=1.6;
    
    en = 1;
    data = 4'b1000;
    wrb = 0;
    vref = 1.6;
    v2 = 4;
  #1000
    data = 4'b0001;
end

 initial begin
    $dumpfile ("dump.vcd");
      $dumpvars;
      #25000
      $finish;
  end 
  
endmodule

