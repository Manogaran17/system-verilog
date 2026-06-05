// Code your testbench here
// or browse Examples

class transaction;
  
  int addr;
  int data;
  
  function new(int a,int d);
    addr = a;
    data = d;
  endfunction 
  
endclass

module tb;
  
  transaction tr1,tr2;
  
  initial 
    begin
      
      tr1 = new(10,100);
      tr2 = new(20,200);
      
      $display("tr1:%0d %0d",tr1.addr,tr1.data);
      $display("tr2:%0d %0d",tr2.addr,tr2.data);
      
    end 
endmodule 
// ============================================output==================================================
tr1:10 100

tr2:20 200
           V C S   S i m u l a t i o n   R e p o r t 
