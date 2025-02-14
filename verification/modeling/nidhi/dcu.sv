`include "dcu.sv"
`include "dvs_buck.sv"
`include "monitor.sv"

module buck_regulator18(clk, rst_n,en,data, wrb,vdig , vana, vdd, vss,ov_dig,uv_dig,ov_ana, uv_ana,dvs_done,vref,v2);
  
  //Output
  output reg ov_dig, uv_dig;
  output wire dvs_done ;
  output real ov_ana, uv_ana ;
  
  //Inputs
  input wire clk , rst_n, en ;
  input real vref ;
  input real vana ;
  input real vdd , vss;
  input real vdig;
  input [3:0]data;
  input wrb;
  input real v2;

  
  //Internals Signals
 
  wire integer unsigned dvs_data; 
  wire dvs_done_dig ;
  wire dvs_done_ana;
  real  fb ,lx;
   //wreal  fb ,lx;
  
  
  
 //Digital Block 
digital_18 DCU(
 	 .clk(clk), 
 	 .rst_n(rst_n),
  	.en(en),
	  .vdig(vdig),
 	 .data(data),
 	 .wrb(wrb),
	  .dvs_done_dig(dvs_done_dig),
  .dvs_data(dvs_data));	
             
 //Buck Monitor             
  buck_mon mon (.vin(fb), 
                .v2(v2), 
                .vref(vref),
                .vdd(vdd), 
                .vss(vss),
                .en(en), 
                .ov_dig(ov_dig), 
                .ov_ana(ov_ana), 
                .uv_dig(uv_dig), 
                .uv_ana(uv_ana));
 
 //Analog Block
  Anna_18 dvs_buck( .dvs_data(dvs_data), 
                   .en(en) , 
                   .vss(vss) , 
                   .vdd(vdd), 
                   .vana(vana), 
                   .vref(vref) , 
                   .fb(fb) ,
                   .lx(lx), 
                   .dvs_done_ana(dvs_done_ana));
  
               
 assign dvs_done = dvs_done_dig && dvs_done_ana;
  
endmodule 
 
  
  
