// Code your testbench here
// or browse Examples
class packet;

  rand bit mode;
  rand bit [7:0] addr;

  constraint c {
    if(mode)
      addr==255;
  }
 
  function void display();
    $display("------------------------------------------");
    $display("MODE = %0d ADDR = %0d",mode,addr);
  endfunction 

endclass

class packet2;

  rand bit mode;
  rand bit [7:0] addr;

  constraint c {
    if(mode)
      addr==255;
  }
  constraint order_c {
    solve mode before addr;
  }
  
  function void display1();
    $display("------------------------------------------");
    $display("time=%0t MODE = %0d ADDR = %0d",$time, mode,addr);
  endfunction 

endclass

module tb;
  
  packet pkt;
  packet2 pkt2;
  
  initial
    begin
      repeat(10)
        begin
      pkt = new();
          
      pkt.randomize();
      pkt.display();
    end 
    end 
   
  initial
    begin
      #10;
      repeat(10)
        begin
          
      pkt2 = new();
      pkt2.randomize();
      pkt2.display1();
    end 
    end 
endmodule

//================================output======================================
-----------------------------------------
MODE = 0 ADDR = 150
------------------------------------------
MODE = 0 ADDR = 127
------------------------------------------
MODE = 0 ADDR = 178
------------------------------------------
MODE = 0 ADDR = 191
------------------------------------------
MODE = 0 ADDR = 39
------------------------------------------
MODE = 0 ADDR = 40
------------------------------------------
MODE = 0 ADDR = 131
------------------------------------------
MODE = 0 ADDR = 158
------------------------------------------
MODE = 0 ADDR = 157
------------------------------------------
MODE = 0 ADDR = 151
------------------------------------------
time=10 MODE = 0 ADDR = 239
------------------------------------------
time=10 MODE = 1 ADDR = 255
------------------------------------------
time=10 MODE = 0 ADDR = 175
------------------------------------------
time=10 MODE = 1 ADDR = 255
------------------------------------------
time=10 MODE = 0 ADDR = 222
------------------------------------------
time=10 MODE = 1 ADDR = 255
------------------------------------------
time=10 MODE = 0 ADDR = 185
------------------------------------------
time=10 MODE = 0 ADDR = 35
------------------------------------------
time=10 MODE = 0 ADDR = 61
------------------------------------------
time=10 MODE = 0 ADDR = 140
           V C S   S i m u l a t i o n   R e p o r t 
