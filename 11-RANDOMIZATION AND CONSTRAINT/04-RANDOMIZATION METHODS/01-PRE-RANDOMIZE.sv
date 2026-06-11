// Code your testbench here
// or browse Examples
class packet;

  rand bit[7:0]addr;
  rand bit[7:0]data;

  int count;
  function void pre_randomize();

    if(count==5) begin
      rand_mode(0);
      $display("Randomization Disabled");
    end
    else begin
      rand_mode(1);
      $display("Randomization Enabled");
    end
    count++;
  endfunction

endclass


module tb;
  packet p;
  initial 
    begin
    p = new();
      repeat(7)
      begin
      $display("--------------------------------");
        $display("Calling randomize()");
        p.randomize();

      $display("ADDR = %0d",p.addr);
      $display("DATA = %0d",p.data);
        
    end
  end
endmodule

// ===================output===============================================
--------------------------------
Calling randomize()
Randomization Enabled
ADDR = 185
DATA = 108
--------------------------------
Calling randomize()
Randomization Enabled
ADDR = 91
DATA = 128
--------------------------------
Calling randomize()
Randomization Enabled
ADDR = 58
DATA = 86
--------------------------------
Calling randomize()
Randomization Enabled
ADDR = 7
DATA = 82
--------------------------------
Calling randomize()
Randomization Enabled
ADDR = 224
DATA = 76
--------------------------------
Calling randomize()
Randomization Disabled
ADDR = 224
DATA = 76
--------------------------------
Calling randomize()
Randomization Enabled
ADDR = 211
DATA = 214
           V C S   S i m u l a t i o n   R e p o r t 
