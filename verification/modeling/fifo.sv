module fifo (data_out, fifo_cnt, empty, full,
             clk, rst_n, data_in, wr, rd);
				 //parameter
            parameter WIDTH = 8;
            parameter DEPTH = 16;

            //output
            output logic [WIDTH-1:0]data_out;
            output logic [4:0]fifo_cnt;
            output logic empty, full;

            //input
            input logic clk, rst_n, wr, rd;
            input logic [WIDTH-1:0] data_in;

            //fifo
            reg [WIDTH-1:0]mem[DEPTH-1:0];

            reg [4:0] rd_pntr=0;
            reg [4:0] wr_pntr=0;

            assign empty = (fifo_cnt==0) ? 1'b1 :1'b0;
            assign full = (fifo_cnt==DEPTH) ? 1'b1 :1'b0; 
           bit firstdata=1'b0;

                 //data write
            always @(posedge clk or negedge rst_n)
            begin
                if(!rst_n) begin
                        wr_pntr<='b0;
                    end 
                else if( !full && wr )
                begin
                    
                    mem[wr_pntr][WIDTH-1:0]=data_in;
                    wr_pntr++;
                   
                end
                
            end 

                 //data read

            always @(posedge clk or negedge rst_n)
            begin
                if(!rst_n) begin
                    rd_pntr<='b0;   
                    end 
                else if(!empty && rd && fifo_cnt>0)begin
                    data_out=mem[rd_pntr][WIDTH-1:0];
                    rd_pntr++;
                    
                end
            end

            //cnt
            always @(posedge clk or negedge rst_n) begin
					  if(!rst_n) begin
					  fifo_cnt<='b0;
					        end
					  else if(wr_pntr=='b0 && rd_pntr=='b0 && firstdata==1'b0) begin
                        fifo_cnt<='b0;
                      end
                      else
                      begin
                        if(rd && fifo_cnt>0)begin
                                    fifo_cnt<=fifo_cnt-1;
                              end
                        if(wr) begin
                                    fifo_cnt<=fifo_cnt+1;
												firstdata<=1'b1;
                               end
                    
                      end

                end
                
            
				
endmodule