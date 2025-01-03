class queue;
  int q[$];
  int q2[$];
  function display();
   populate();
    
       $display("queue = %0p",q);
    $display("queue = %0p",q.size());
    q.insert(7,25);
     $display("queue = %0p",q);
    $display("queue = %0p",q.size());
    q=q[0:$-1];
     $display("queue = %0p",q);
    q2=q[0:5];
    $display("queue2 = %0p",q2);
    $display("queue = %0p",q2.size());
 endfunction
  function populate();
     int i;
    for(i=0;i<10;i++)
     begin
       q.push_back(i);
      // q[i]=i;
     end
    endfunction

endclass
module que();
  initial
    begin
      queue q1;
      q1=new();
      q1.display();
   
    end
endmodule