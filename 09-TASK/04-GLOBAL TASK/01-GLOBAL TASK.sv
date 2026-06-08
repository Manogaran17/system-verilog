// Code your testbench here
// or browse Examples

task display_transaction(input int transaction_id,input int addr,input int data);
  $display("----------------------------------");
  $display("TRANSACTION ID=%0d",transaction_id);
  $display("ADDRESS=%0d",addr);
  $display("DATA =%0d",data);
  $display("----------------------------------\n");
endtask

module driver;
  initial 
    begin
    $display("\nDriver Started");
    display_transaction(1, 100, 55);
    display_transaction(2, 200, 77);
  end
endmodule

module monitor;

  initial
    begin
    #5;
    $display("\nMonitor Started");
    display_transaction(101, 500, 150);
    display_transaction(102, 600, 250);
  end
endmodule

module tb;

  driver d();
  monitor m();
endmodule
// ==================================OUTPUT====================================
Driver Started
----------------------------------
TRANSACTION ID=1
ADDRESS=100
DATA =55
----------------------------------

----------------------------------
TRANSACTION ID=2
ADDRESS=200
DATA =77
----------------------------------


Monitor Started
----------------------------------
TRANSACTION ID=101
ADDRESS=500
DATA =150
----------------------------------

----------------------------------
TRANSACTION ID=102
ADDRESS=600
DATA =250
----------------------------------

           V C S   S i m u l a t i o n   R e p o r t 
