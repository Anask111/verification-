module buck_mon(
  input real vin,
  input real v2,
  input real vdd,
  input real vss,
  input real vref,
  input en,
  output reg ov_dig,
  output reg uv_dig,
  output real ov_ana,
  output real uv_ana
);
  
  reg [3:0] tx = 4'b1010; // Initial value
  
  // Power Checks 
  reg all_ok;
  always @* begin
    all_ok = (vdd == 5 && vss == 0 && vref == 1.6);
  end
  
  always @(en or vin or v2) begin
    if (en && all_ok) begin
      case (tx)
        // 1010
        4'b1010: begin 
          ov_dig = (vin > (v2 + (v2 * 0.05))) ? 1 : 0;
          uv_dig = (vin < (v2 - (v2 * 0.1))) ? 1 : 0;
        end
        // 0101
        4'b0101: begin 
          ov_dig = (vin > (v2 + (v2 * 0.05))) ? 1 : 0;
          uv_dig = (vin < (v2 - (v2 * 0.05))) ? 1 : 0;
        end
        // 1001
        4'b1001: begin 
          ov_dig = (vin > (v2 + (v2 * 0.05))) ? 1 : 0;
          uv_dig = (vin < (v2 - (v2 * 0.1))) ? 1 : 0;
        end
        // 0110
        4'b0110: begin 
          ov_dig = (vin > (v2 + (v2 * 0.1))) ? 1 : 0;
          uv_dig = (vin < (v2 - (v2 * 0.05))) ? 1 : 0;
        end
        default: begin
          ov_dig = 0;
          uv_dig = 0;
        end
      endcase
    end else begin
      ov_dig = 0;
      uv_dig = 0;
    end
  end
  
  assign ov_ana = (vin > (v2 + tx[1] * (v2 * 0.1))) ? vref : 0;
  assign uv_ana = (vin < (v2 - tx[0] * (v2 * 0.1))) ? vref : 0;

endmodule




















// module buck_mon(vin, v2, vref,vdd, vss,en, ov_dig, ov_ana, uv_dig, uv_ana);
 
//   input real vin; //fb 
//   input real v2;  //voltage regulator 
//   input real vdd ;
//   input real vss;
//   input real vref;
//   input en ;
  
//   output reg ov_dig;
//   output reg uv_dig ;
  
// //   output wreal ov_ana;
// //   output wreal uv_ana;
  
//   output real ov_ana;
//   output real uv_ana;
  
//   reg [3:0]tx = 1010;
//   real ov_tx ;
//   real uv_tx ;
  
 
//   // Power Checks 
//   real all_ok ;
//   assign all_ok =  (vdd == 5 && vss ==0 && vref == 1.6);
  
//   always @(*) begin
//     if(en && all_ok)begin
//     case (tx)
//       // 1010
//       4'b1010: begin 
//         if (vin > (v2 + (v2*0.05)))
//           ov_dig <= 1;
//         else
//           ov_dig <= 0;
          
//         if (vin < v2- (v2*0.1))
//           uv_dig <= 1;
//         else
//           uv_dig <= 0;
//       end
//       // 0101
//       4'b0101: begin 
//         if (vin > v2 + (v2*0.05))
//           ov_dig <= 1;
//         else
//           ov_dig <= 0;
          
//         if (vin < v2- (v2*0.05))
//           uv_dig <= 1;
//         else
//           uv_dig <= 0;
//       end
//       // 1001
//       4'b1001: begin 
//         if (vin > v2 + (v2*0.05))
//           ov_dig <= 1;
//         else
//           ov_dig <= 0;
          
//         if (vin < v2 - (v2*0.1))
//           uv_dig <= 1;
//         else
//           uv_dig <= 0;
//       end
//       // 0110
//       4'b0110: begin 
//         if (vin > v2 + (v2*0.1))
//           ov_dig <= 1;
//         else
//           ov_dig <= 0;
          
//         if (vin < v2 - (v2*0.05))
//           uv_dig <= 1;
//         else
//           uv_dig <= 0;
//       end
//       default: begin
//         ov_dig <= 0;
//         uv_dig <= 0;
//       end
//     endcase
//   end
//   end 
  
 
    
//   assign uv_tx = (tx[3] == 1) ? (v2*0.1) :(tx[2] == 1) ? (v2*0.05):0 ;
//   assign ov_tx = (tx[1] == 1) ? (v2*0.1) :(tx[0] == 1) ? (v2*0.05):0 ;
  
    
//   assign ov_ana = (vin > v2 + uv_tx )? vref :0 ;
//   assign uv_ana = (vin < v2 - ov_tx)? vref :0 ;

    
// endmodule   


/*
module buck_mon(
  input real vin,
  input real v2,
  input real vdd,
  input real vss,
  input real vref,
  input en,
  output reg ov_dig,
  output reg uv_dig,
  output real ov_ana,
  output real uv_ana
);
  
  reg [3:0] tx = 4'b1010; // Initial value
  
  // Power Checks 
  reg all_ok;
  always @* begin
    all_ok = (vdd == 5 && vss == 0 && vref == 1.6);
  end
  
  always @(en or vin or v2) begin
    if (en && all_ok) begin
      case (tx)
        // 1010
        4'b1010: begin 
          ov_dig = (vin > (v2 + (v2 * 0.05))) ? 1 : 0;
          uv_dig = (vin < (v2 - (v2 * 0.1))) ? 1 : 0;
        end
        // 0101
        4'b0101: begin 
          ov_dig = (vin > (v2 + (v2 * 0.05))) ? 1 : 0;
          uv_dig = (vin < (v2 - (v2 * 0.05))) ? 1 : 0;
        end
        // 1001
        4'b1001: begin 
          ov_dig = (vin > (v2 + (v2 * 0.05))) ? 1 : 0;
          uv_dig = (vin < (v2 - (v2 * 0.1))) ? 1 : 0;
        end
        // 0110
        4'b0110: begin 
          ov_dig = (vin > (v2 + (v2 * 0.1))) ? 1 : 0;
          uv_dig = (vin < (v2 - (v2 * 0.05))) ? 1 : 0;
        end
        default: begin
          ov_dig = 0;
          uv_dig = 0;
        end
      endcase
    end else begin
      ov_dig = 0;
      uv_dig = 0;
    end
  end
  
  assign ov_ana = (vin > (v2 + tx[1] * (v2 * 0.1))) ? vref : 0;
  assign uv_ana = (vin < (v2 - tx[0] * (v2 * 0.1))) ? vref : 0;

endmodule*/

