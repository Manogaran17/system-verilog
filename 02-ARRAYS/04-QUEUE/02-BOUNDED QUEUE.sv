// Code your testbench here
// or browse Examples
module unbounded_queue;
  
  int q[$:9];
  int x,y;
 
  initial 
    begin
      
      $display("\n-----bounded queue----");
      
      // initialization
      
      q='{10,20,30,40,50};
      $display("\ninitial queue = %p",q);
      
      // push back 
      q.push_back(60);
      q.push_back(70);
      q.push_back(80);
      q.push_back(90);
      q.push_back(100);
      
      $display("after push_back = %p",q);
      
      // overflow condition
      
      q.push_back(5);
      $display("after push_back = %p",q);
      
      // push front
      q.push_front(5);
      $display("after push_front = %p",q);
      
      q.push_front(5);
      $display("after push_front = %p",q);
      
      q.push_front(5);
      $display("after push_front = %p",q);
      
      // pop operations
      x= q.pop_front();
      $display("poped front =%0d",x);
      $display("queue = %p",q);
      
      y=q.pop_back();
      $display("poped back = %0d",y);
      $display("queue = %p",q);
      
      
      // access element 
      
      $display("q[0] = %0d",q[0]);
      $display("q size = %0d",q.size());
      
      // iterate queue
      
      foreach(q[i])begin
        $display("q[%0d] = %0d",i,q[i]);
      end
      
    end 
      endmodule 
------------------------------output---------------------------------------------------------------
    after push_front = '{5, 10, 20, 30, 40, 50, 60, 70, 80, 90} 
poped front =5
queue = '{10, 20, 30, 40, 50, 60, 70, 80, 90} 
poped back = 90
queue = '{10, 20, 30, 40, 50, 60, 70, 80} 
q[0] = 10
q size = 8
q[0] = 10
q[1] = 20
q[2] = 30
q[3] = 40
q[4] = 50
q[5] = 60
q[6] = 70
q[7] = 80
           V C S   S i m u l a t i o n   R e p o r t
