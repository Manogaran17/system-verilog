// Code your testbench here
// or browse Examples

class transaction;

   bit[7:0]addr;
   bit[7:0]data;

  function new();
    addr=8'h00;
    data=8'h00;
  endfunction

  function void display();
    $display("--------------------------------");
    $display("Generic Transaction");
    $display("ADDR = %0h",addr);
    $display("DATA = %0h",data);
    $display("--------------------------------");

  endfunction
endclass


class write_transaction extends transaction;
  bit wr;

  function new();
    super.new();
    wr = 1;
  endfunction

  function void display();
    $display("--------------------------------");
    $display("Write Transaction");
    $display("ADDR = %0h",addr);
    $display("DATA = %0h",data);
    $display("WR =%0b",wr);
    $display("--------------------------------");
  endfunction

endclass

class read_transaction extends transaction;
  bit rd;
  function new();
    super.new();
    rd = 1;
  endfunction

  function void display();
    $display("--------------------------------");
    $display("Read Transaction");
    $display("ADDR = %0h",addr);
    $display("DATA = %0h",data);
    $display("RD = %0b",rd);
    $display("--------------------------------");
  endfunction

endclass

module tb;

  write_transaction wtr;
  read_transaction  rtr;

  initial 
    begin
    wtr=new();
    wtr.addr=8'h10;
    wtr.data=8'hAA;

    rtr = new();

    rtr.addr=8'h20;
    rtr.data=8'h55;

    wtr.display();

    rtr.display();

  end

endmodule

--------------------------------
Write Transaction
ADDR = 10
DATA = aa
WR =1
--------------------------------
--------------------------------
Read Transaction
ADDR = 20
DATA = 55
RD = 1
--------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
