// Code your testbench here
// or browse Examples
class transaction;
  rand bit[7:0]addr;
  rand bit [7:0]data;
  
  constraint addr_c{
    addr inside {[11:20]};
  }
  constraint imp_c{
    (addr>10)->data==100;
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
// =======================OUTPUT=============================
-------------------------------------------
ADDR =  19
DATA = 100
-------------------------------------------
-------------------------------------------
ADDR =  13
DATA = 100
-------------------------------------------
-------------------------------------------
ADDR =  16
DATA = 100
-------------------------------------------
-------------------------------------------
ADDR =  12
DATA = 100
-------------------------------------------
-------------------------------------------
ADDR =  13
DATA = 100
-------------------------------------------
-------------------------------------------
ADDR =  13
DATA = 100
-------------------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
