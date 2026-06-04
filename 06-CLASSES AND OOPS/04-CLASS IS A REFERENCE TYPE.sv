// Code your testbench here
// or browse Examples

class transaction;
  
  int data;
  
endclass:transaction 

module top;
  
  transaction tr1;
  transaction tr2;
  
  
  initial
    begin
      
      tr1 =new();
  
      tr1.data =200;
      
      tr2 = tr1;
      
      tr1.data =100;
      $display("tr1.data = %d",tr1.data);
      $display("tr2.data = %d",tr2.data);
      
    end 
endmodule 
      
 tr1.data =         100
tr2.data =         100
           V C S   S i m u l a t i o n   R e p o r t 
      
