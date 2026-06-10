// Code your testbench here
// or browse Examples

class queue_1;
  rand bit[7:0]queue[$];
  constraint size_q{
    queue.size() inside{[5:9]};
    
  }
  constraint value_1{
    foreach(queue[i])
      queue[i] inside{[23:67]};
  }
  function void display();
    
    $display("____________________________________");
    $display("queue = %0p",queue);
    $display("___________________________________");
  endfunction 
  
endclass

module tb;
  
  queue_1 q;
  
  initial 
    begin
      repeat(6)
        begin
      q = new();
          q.randomize();
      q.display();
        end 
    end 
endmodule 
      // =====================OUTPUT=========================================

  ____________________________________
queue = '{'h41, 'h20, 'h38, 'h18, 'h1b, 'h43} 
___________________________________
____________________________________
queue = '{'h3c, 'h20, 'h21, 'h36, 'h34} 
___________________________________
____________________________________
queue = '{'h2f, 'h43, 'h32, 'h27, 'h2f} 
___________________________________
____________________________________
queue = '{'h3c, 'h39, 'h1b, 'h34, 'h37} 
___________________________________
____________________________________
queue = '{'h2f, 'h35, 'h1e, 'h19, 'h2b, 'h31, 'h38} 
___________________________________
____________________________________
queue = '{'h1f, 'h2e, 'h19, 'h2b, 'h1a, 'h1e, 'h2f, 'h41} 
___________________________________
           V C S   S i m u l a t i o n   R e p o r t
