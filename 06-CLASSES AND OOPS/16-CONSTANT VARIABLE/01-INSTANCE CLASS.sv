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

  transaction tr,tr2,tr3;
  initial 
    begin
      
      tr=new(101);
      
    tr.addr=8'h10;
    tr.data=8'hAA;
      
      tr2=new(102);
    tr2.addr=8'h11;
    tr2.data=8'hBB;
      
      tr3=new(103);
    tr3.addr=8'h12;
    tr3.data=8'hCC;
      

    $display("\nBefore Modification");
      tr.display();
      tr2.display();
      tr3.display();
      
       tr.addr=8'h08;
    tr.data=8'hee;
      
       tr2.addr=8'h07;
    tr2.data=8'hff;
      
       tr3.addr=8'h65;
    tr3.data=8'hdd;
      

    $display("After Modification");
    tr.display();
    tr2.display();
      tr3.display();

  end

endmodule

Before Modification
--------------------------------
TRANS_ID=101
ADDR=10
DATA=aa
--------------------------------
--------------------------------
TRANS_ID=102
ADDR=11
DATA=bb
--------------------------------
--------------------------------
TRANS_ID=103
ADDR=12
DATA=cc
--------------------------------
After Modification
--------------------------------
TRANS_ID=101
ADDR=8
DATA=ee
--------------------------------
--------------------------------
TRANS_ID=102
ADDR=7
DATA=ff
--------------------------------
--------------------------------
TRANS_ID=103
ADDR=65
DATA=dd
--------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
