// Code your testbench here
// or browse Examples
class transaction;

  bit[7:0]addr;
  bit[7:0]data;

  virtual function void display();
    $display("Generic Transaction");
    $display("ADDR=%0h DATA=%0h",addr,data);
  endfunction

endclass

class write_transaction extends transaction;
  bit wr;

  function void display();
    $display("\nWrite Transaction");
    $display("ADDR=%0h DATA=%0h WR=%0b",addr,data,wr);
  endfunction

endclass

class read_transaction extends transaction;
  bit rd;

  function void display();
    $display("\nRead Transaction");
    $display("ADDR=%0h DATA=%0h RD=%0b",addr,data,rd);
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
    wtr.wr=1;

    rtr=new();
    rtr.addr=8'h20;
    rtr.data=8'h55;
    rtr.rd=1;

    tr=wtr;
    tr.display();
    tr=rtr;
    tr.display();

  end
endmodule
// =====================================output======================================
Write Transaction
ADDR=10 DATA=aa WR=1

Read Transaction
ADDR=20 DATA=55 RD=1
           V C S   S i m u l a t i o n   R e p o r t 
