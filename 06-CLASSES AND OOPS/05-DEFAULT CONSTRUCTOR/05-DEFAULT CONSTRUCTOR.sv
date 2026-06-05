// Code your testbench here
// or browse Examples
class transaction;
  
  int addr;
  int data;
  
  function new();
    addr = 8'haa;
    data = 8'hff;
    $display("\nconstructor called");
  endfunction 
  
endclass

module top;
  
  transaction tr;
  
  initial 
    begin
      
      tr = new();
      
      $display("\nadd = %0h",tr.addr);
      $display("\ndata = %0h",tr.data);
      
    end 
endmodule 
// ==========================================output===========================================
constructor called

add = aa

data = ff
           V C S   S i m u l a t i o n   R e p o r t 
