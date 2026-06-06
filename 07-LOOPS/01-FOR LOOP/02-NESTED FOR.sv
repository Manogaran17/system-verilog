// Code your testbench here
// or browse Examples

class transaction;

  bit [7:0]addr;
  bit [7:0]data;

  function void display();

    $display("ADDR=%0d DATA=%0d",addr,data);
  endfunction

endclass


module tb;

  transaction tr;
  initial
    begin
    for(int i=0; i<4; i++)
    begin
      for(int j=0; j<3; j++)
      begin
        tr = new();
        tr.addr = i;
        tr.data = j;
        tr.display();
      end
      
      $display("transaction = %d",i);
      $display("___________________");
    end
  end
endmodule
// ==================================OUTPUT=======================================

ADDR=0 DATA=0
ADDR=0 DATA=1
ADDR=0 DATA=2
transaction =           0
___________________
ADDR=1 DATA=0
ADDR=1 DATA=1
ADDR=1 DATA=2
transaction =           1
___________________
ADDR=2 DATA=0
ADDR=2 DATA=1
ADDR=2 DATA=2
transaction =           2
___________________
ADDR=3 DATA=0
ADDR=3 DATA=1
ADDR=3 DATA=2
transaction =           3
___________________
           V C S   S i m u l a t i o n   R e p o r t 
