// Code your testbench here
// or browse Examples

class transaction;

  rand bit [7:0] addr;
  rand bit [7:0] data;

  function void display();
    $display("ADDR=%0h DATA=%0h",addr,data);
  endfunction

endclass


module tb;

  transaction tr;
  initial 
    begin

    repeat(10)
    begin
      tr = new();
      tr.randomize();
      $display("transaction generated");
      tr.display();
    end
  end
endmodule

//============================OUTPUT======================================
transaction generated
ADDR=b9 DATA=6c
transaction generated
ADDR=7 DATA=14
transaction generated
ADDR=6b DATA=a1
transaction generated
ADDR=56 DATA=e3
transaction generated
ADDR=49 DATA=c8
transaction generated
ADDR=97 DATA=7a
transaction generated
ADDR=b4 DATA=17
transaction generated
ADDR=af DATA=86
transaction generated
ADDR=21 DATA=dc
transaction generated
ADDR=5e DATA=45
           V C S   S i m u l a t i o n   R e p o r t 
