// Code your testbench here
// or browse Examples
class packet;

  rand bit[7:0]addr;

  constraint addr_c {
    addr < 100;
  }
endclass


module tb;
  packet p;

  initial 
    begin
      repeat(5)
        begin
    p = new();
    p.randomize();
          $display("____TRANSACTION____");
          $display("\nNormal addr = %0d", p.addr);
    p.addr_c.constraint_mode(0);
    p.randomize() with { addr > 200; };
    $display("Override addr = %0d", p.addr);
        end 

  end
endmodule

// ====================OUTPUT=====================
____TRANSACTION____

Normal addr = 33
Override addr = 249
____TRANSACTION____

Normal addr = 47
Override addr = 232
____TRANSACTION____

Normal addr = 24
Override addr = 204
____TRANSACTION____

Normal addr = 55
Override addr = 236
____TRANSACTION____

Normal addr = 8
Override addr = 206
           V C S   S i m u l a t i o n   R e p o r t 
