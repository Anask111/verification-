module Anna_18( dvs_data, en , vss , vdd, vana, vref , fb ,lx, dvs_done_ana);
  
  //outputs
  output real  fb ;
  output real lx ;
  
//   output wreal  fb ;
//   output wreal lx ;
  
   output dvs_done_ana ;
  
  
  //inputs
  input integer unsigned dvs_data ;
  input en ;
  input real vdd;
  input real vss;
  input real vana;
  input real vref;
  
  //internal signals
  real fb_int;
  real lx_int;
  
  //Parameter
  parameter real ramp_rate = 0.018;
  
  //power checks
  assign all_check = (vdd == 5 && vana == 1.6 && vref == 1.6 && vss ==  0); 

  always @(dvs_data)begin 
    if(en && all_check)begin
      fb_int <= #10 dvs_data * ramp_rate; 
      lx_int <= dvs_data ;
  end 
  end 
 
  
  assign dvs_done_ana = (fb >= (dvs_data*ramp_rate) && fb != 0)  ? 1'b1:0;
  
  assign fb = fb_int;
  assign lx = lx_int;
    
  endmodule 
