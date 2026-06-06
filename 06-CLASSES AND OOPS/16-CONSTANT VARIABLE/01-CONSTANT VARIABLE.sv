// Code your testbench here
// or browse Examples

class transaction;

  const int trans_id;
  bit[7:0]addr;
  bit[7:0]data;

  function new(int id);
    trans_id=id;
  endfunction

  function void display();
    $display("--------------------------------");
    $display("TRANS_ID=%0d",trans_id);
    $display("ADDR=%0h",addr);
    $display("DATA=%0h",data);
    $display("--------------------------------");
  endfunction

endclass


module tb;

  transaction tr;
  initial 
    begin
      
    tr=new(101);
    tr.addr=8'h10;
    tr.data=8'hAA;

      $display("\nBefore Modification");
    tr.display();

    // legal
    tr.addr=8'h20;

    // illegal
    // tr.trans_id = 200;

    $display("After Modification");
    tr.display();

  end

endmodule

Before Modification
--------------------------------
TRANS_ID=101
ADDR=10
DATA=aa
--------------------------------
After Modification
--------------------------------
TRANS_ID=101
ADDR=20
DATA=aa
--------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
