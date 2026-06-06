// Code your testbench here
// or browse Examples
class transaction;

  bit [7:0]addr;
  bit [7:0]data;
  function void display();
    $display("\nADDR=%0h \t DATA=%0h", addr,data);

  endfunction
endclass


module tb;
  transaction tr;
  int count;

  initial
    begin
    count = 0;
    do
    begin
      tr = new();
      tr.addr=count;
      tr.data=count * 10;
      tr.display();
      count++;
    end
    while(count < 10);

  end
endmodule
// ===========================OUTPUT===============================

ADDR=0 	 DATA=0

ADDR=1 	 DATA=a

ADDR=2 	 DATA=14

ADDR=3 	 DATA=1e

ADDR=4 	 DATA=28

ADDR=5 	 DATA=32

ADDR=6 	 DATA=3c

ADDR=7 	 DATA=46

ADDR=8 	 DATA=50

ADDR=9 	 DATA=5a
           V C S   S i m u l a t i o n   R e p o r t 
