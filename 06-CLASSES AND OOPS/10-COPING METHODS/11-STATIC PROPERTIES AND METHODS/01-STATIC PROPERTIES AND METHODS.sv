class transaction;

  // Object properties
  rand bit [7:0] addr;
  rand bit [7:0] data;

  // Static property
  static int trans_count;

  // Constructor
  function new();

    trans_count++;

    $display("Transaction Object Created");
  endfunction

  // Non-static method
  function void display();

    $display("--------------------------------");
    $display("ADDR = %0h", addr);
    $display("DATA = %0h", data);
    $display("--------------------------------");

  endfunction

  // Static method
  static function void show_count();

    $display("TOTAL TRANSACTIONS = %0d",trans_count);

  endfunction
endclass


module tb;

  transaction tr1;
  transaction tr2;
  transaction tr3;

  initial
    begin

    tr1=new();
    tr2=new();
    tr3=new();

    tr1.addr=8'h10;
    tr1.data=8'hAA;

    tr2.addr=8'h20;
    tr2.data=8'hBB;

    tr3.addr=8'h30;
    tr3.data=8'hCC;

    tr1.display();
    tr2.display();
    tr3.display();

    transaction::show_count();

  end
endmodule

Transaction Object Created
Transaction Object Created
Transaction Object Created
--------------------------------
ADDR = 10
DATA = aa
--------------------------------
--------------------------------
ADDR = 20
DATA = bb
--------------------------------
--------------------------------
ADDR = 30
DATA = cc
--------------------------------
TOTAL TRANSACTIONS = 3
           V C S   S i m u l a t i o n   R e p o r t 
