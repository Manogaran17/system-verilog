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
      
      // reverse 
      queue.reverse();
      $display(" after reverse operation =%p",queue);
      
      queue.sort();
      $display(" after sort operation =%p",queue);
      
      queue.rsort();
      $display(" after rsort operation =%p",queue);
      
      queue.shuffle();
      $display(" after shuffle operation =%p",queue);
      
    end
endmodule 
  ---------------------------------------------output-----------------------------------------------------------
      original queue ='{0, 1, 2, 3, 4, 5, 6} 

size of queue x=7
after insertion queue='{0, 1, 2, 7, 3, 4, 5, 6} 
after deletion of index 5 queue='{0, 1, 2, 7, 3, 5, 6} 
pop_front element y=0
after pop_front = '{1, 2, 7, 3, 5, 6} 
pop_back element z=6
after pop_back = '{1, 2, 7, 3, 5} 
after push_front = '{9, 1, 2, 7, 3, 5} 
after push_back = '{9, 1, 2, 7, 3, 5, 8} 
 after reverse operation ='{8, 5, 3, 7, 2, 1, 9} 
 after sort operation ='{1, 2, 3, 5, 7, 8, 9} 
 after rsort operation ='{9, 8, 7, 5, 3, 2, 1} 
 after shuffle operation ='{7, 5, 9, 2, 8, 1, 3} 
           V C S   S i m u l a t i o n   R e p o r t 
  
