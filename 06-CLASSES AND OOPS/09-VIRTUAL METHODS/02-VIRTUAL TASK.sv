// Code your testbench here
// or browse Examples

class transaction;

  rand bit [7:0] addr;
  rand bit [7:0] data;

  virtual task display();

    $display("Generic Transaction");
    $display("ADDR=%0h DATA=%0h",addr,data);
  endtask

endclass

class write_transaction extends transaction;

  bit wr;

 task display();

    $display("Write Transaction");
    $display("ADDR=%0h DATA=%0h WR=%0b",addr,data,wr);
    #10;
    $display("Write Task Completed");

  endtask

endclass

class read_transaction extends transaction;

  bit rd;

  task display();

    $display("Read Transaction");
    $display("ADDR=%0h DATA=%0h RD=%0b",addr,data,rd);
    #10;
    $display("Read Task Completed");

  endtask

endclass

module tb;

  transaction tr,tr1;

  initial begin

    write_transaction wtr;
    read_transaction  rtr;

    wtr=new();
    rtr=new();

    wtr.addr=8'h10;
    wtr.data=8'hAA;
    wtr.wr=1;

    rtr.addr=8'h20;
    rtr.data=8'h55;
    rtr.rd=1;

    tr=wtr;
    tr1=rtr;

    tr.display();

    tr1.display();

  end

endmodule
// ===================================output================================================
Write Transaction
ADDR=10 DATA=aa WR=1
Write Task Completed
Read Transaction
ADDR=20 DATA=55 RD=1
Read Task Completed
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
CPU Time:      0.590 seconds;       Data structure size:   0.0Mb
Fri Jun  5 03:08:29 2026
Done
