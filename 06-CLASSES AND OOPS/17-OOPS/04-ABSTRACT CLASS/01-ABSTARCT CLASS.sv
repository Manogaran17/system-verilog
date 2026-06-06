// Code your testbench here
// or browse Examples

virtual class transaction;

  bit[7:0]addr;
  bit[7:0]data;

  pure virtual function void display();
endclass

class write_transaction extends transaction;
  bit wr;

  function new();
    wr = 1;
  endfunction

  function void display();

    $display("--------------------------------");
    $display("WRITE TRANSACTION");
    $display("ADDR=%0h",addr);
    $display("DATA=%0h",data);
    $display("WR =%0b",wr);
    $display("--------------------------------");

  endfunction
endclass


class read_transaction extends transaction;
  bit rd;

  function new();
    rd=1;
  endfunction

  function void display();

    $display("--------------------------------");
    $display("READ TRANSACTION");
    $display("ADDR = %0h", addr);
    $display("DATA = %0h", data);
    $display("RD   = %0b", rd);
    $display("--------------------------------");

  endfunction
endclass


module tb;

  transaction tr;

  write_transaction wtr;
  read_transaction  rtr;

  initial
    begin
    wtr=new();

    wtr.addr=8'h10;
    wtr.data=8'hAA;

    rtr=new();

    rtr.addr=8'h20;
    rtr.data=8'h55;

    tr=wtr;
    tr.display();

    tr=rtr;
    tr.display();

  end

endmodule

    // =================================OUTPUT============================================
    
--------------------------------
WRITE TRANSACTION
ADDR=10
DATA=aa
WR =1
--------------------------------
--------------------------------
READ TRANSACTION
ADDR = 20
DATA = 55
RD   = 1
--------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
