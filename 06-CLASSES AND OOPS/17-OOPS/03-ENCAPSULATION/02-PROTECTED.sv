// Code your testbench here
// or browse Examples

// parent class
class transaction;

  protected int trans_id;
  
  function new(int id);
    trans_id=id;

  endfunction
endclass

// child class

class write_transaction extends transaction;

  bit wr;
  function new(int id);
    super.new(id);
    wr = 1;
  endfunction

  function void display();
    $display("\nID=%0d",trans_id);
    $display("WR=%0b",wr);

  endfunction
endclass


module tb;

  write_transaction wtr;
  
  initial 
    begin
    wtr = new(101);
    wtr.display();
      
      wtr = new(102);
    wtr.display();
      
      wtr = new(103);
    wtr.display();
    
    // Illegal
    // wtr.trans_id = 200;

  end
endmodule

// ===================================OUTPUT=========================================
ID=101
WR=1

ID=102
WR=1

ID=103
WR=1
           V C S   S i m u l a t i o n   R e p o r t
