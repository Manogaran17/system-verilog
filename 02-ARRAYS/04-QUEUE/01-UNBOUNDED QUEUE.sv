// Code your testbench here
// or browse Examples

module queue_methods;
  
  int queue[$];
  int x,y,z;
  
  initial
    begin
      queue = '{0,1,2,3,4,5,6};
      
      // size of queue
      $display("\noriginal queue =%p",queue);
      x=queue.size();
      $display("\nsize of queue x=%0d",x);
      
      // insertion 
      
      queue.insert(3,7);
      $display("after insertion queue=%p",queue);
      
      // delete
      queue.delete(5);
      $display("after deletion of index 5 queue=%p",queue);
      
      // pop_front
      y=queue.pop_front();
      $display("pop_front element y=%0d",y);
      
      // after pop operation queue
      $display("after pop_front = %p",queue);
      
      // pop_back
      z=queue.pop_back();
      $display("pop_back element z=%0d",z);
      
      // after pop operation queue
      $display("after pop_back = %p",queue);
      
      // push_front
       queue.push_front(9);
      
      // after push operation queue
      $display("after push_front = %p",queue);
      
      
      // push_back
      queue.push_back(8);
      
      // after push operation queue
      $display("after push_back = %p",queue);
    end
endmodule   
  
