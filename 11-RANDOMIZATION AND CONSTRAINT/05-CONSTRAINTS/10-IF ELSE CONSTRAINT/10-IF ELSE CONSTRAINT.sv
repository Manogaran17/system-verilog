// Code your testbench here
// or browse Examples
class transaction;
  
  rand bit[7:0]addr;
  rand bit [7:0]data;
  
  constraint addr_c{
    addr inside {[5:20]};
  }
  constraint imp_c{
    if(addr>10)
      data==30;
    else
      data==50;
  }
  
  function void display();
    $display("-------------------------------------------");
    $display("ADDR = %d",addr);
    $display("DATA = %d",data);
    $display("-------------------------------------------");
  endfunction
  
endclass

module tb;
  
  transaction trans;
  
  initial 
    begin
      trans = new();
      repeat(6)
        begin
          trans.randomize();
          trans.display();
        end 
    end 
endmodule 

// =====================================output=======================================
-------------------------------------------
ADDR =   7
DATA =  50
-------------------------------------------
-------------------------------------------
ADDR =  16
DATA =  30
-------------------------------------------
-------------------------------------------
ADDR =  12
DATA =  30
-------------------------------------------
-------------------------------------------
ADDR =  16
DATA =  30
-------------------------------------------
-------------------------------------------
ADDR =  12
DATA =  30
-------------------------------------------
-------------------------------------------
ADDR =  20
DATA =  30
-------------------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
