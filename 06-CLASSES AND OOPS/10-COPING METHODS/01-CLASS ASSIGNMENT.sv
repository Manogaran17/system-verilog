// Code your testbench here
// or browse Examples

class transaction;

  bit [7:0] addr;
  bit [7:0] data;

  function void display();

    $display("ADDR=%0h DATA=%0h",addr,data);

  endfunction
endclass


module tb;

  transaction tr1;
  transaction tr2;

  initial
    begin

    tr1=new();

    tr1.addr=8'h10;
    tr1.data=8'hAA;
    tr2=tr1;

    $display("Before Modification");

    tr1.display();
    tr2.display();
    tr2.data=8'h55;
    $display("After Modification");

    tr1.display();
    tr2.display();

  end

endmodule

Before Modification
ADDR=10 DATA=aa
ADDR=10 DATA=aa
After Modification
ADDR=10 DATA=55
ADDR=10 DATA=55
           V C S   S i m u l a t i o n   R e p o r t
