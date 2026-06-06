// Code your testbench here
// or browse Examples


class transaction;

  bit [7:0]addr;
  bit [7:0]data;

  function void display();
    $display("ADDR=%0h DATA=%0h",addr,data);
  endfunction

endclass


module tb;

  transaction tr[10];

  initial begin

    foreach(tr[i])
    begin
      tr[i] = new();
      tr[i].addr = i;
      tr[i].data = i*10;
      $display("\ntransaction=%0d",i);
      tr[i].display();
    end

  end
endmodule

// ==============================OUTPUT================================
transaction=0
ADDR=0 DATA=0

transaction=1
ADDR=1 DATA=a

transaction=2
ADDR=2 DATA=14

transaction=3
ADDR=3 DATA=1e

transaction=4
ADDR=4 DATA=28

transaction=5
ADDR=5 DATA=32

transaction=6
ADDR=6 DATA=3c

transaction=7
ADDR=7 DATA=46

transaction=8
ADDR=8 DATA=50

transaction=9
ADDR=9 DATA=5a
           V C S   S i m u l a t i o n   R e p o r t 
