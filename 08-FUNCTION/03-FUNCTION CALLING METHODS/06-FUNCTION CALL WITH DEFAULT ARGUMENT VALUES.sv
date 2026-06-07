// Code your testbench here
// or browse Examples
module tb;
  // Function with default argument values
  function void create_transaction(
    input int addr=0,
    input int data=0,
    input int priority_1=1,
    input int delay=0
  );
    $display("--------------------------------");
    $display("Transaction Details");
    $display("ADDR= %0d",addr);
    $display("DATA=%0d",data);
    $display("PRIORITY_1=%0d",priority_1);
    $display("DELAY=%0d",delay);
    $display("--------------------------------\n");

  endfunction

  initial
    begin
    $display("\ntransaction 1:using all default values");
    create_transaction();

    $display("transaction 2:only address modified");
    create_transaction(100);

    $display("transaction 3:adress and data modified");
    create_transaction(200, 55);

    $display("transaction 4:address, data and priority modified");
    create_transaction(300, 99, 2);

    $display("transaction 5 : all arguments modified");
    create_transaction(400, 123, 3, 10);

    $display("transaction 6:using named arguments");
    create_transaction(.addr(500),.priority_1(5));
  end
endmodule
// ============================OUTPUT============================================

transaction 1:using all default values
--------------------------------
Transaction Details
ADDR= 0
DATA=0
PRIORITY_1=1
DELAY=0
--------------------------------

transaction 2:only address modified
--------------------------------
Transaction Details
ADDR= 100
DATA=0
PRIORITY_1=1
DELAY=0
--------------------------------

transaction 3:adress and data modified
--------------------------------
Transaction Details
ADDR= 200
DATA=55
PRIORITY_1=1
DELAY=0
--------------------------------

transaction 4:address, data and priority modified
--------------------------------
Transaction Details
ADDR= 300
DATA=99
PRIORITY_1=2
DELAY=0
--------------------------------

transaction 5 : all arguments modified
--------------------------------
Transaction Details
ADDR= 400
DATA=123
PRIORITY_1=3
DELAY=10
--------------------------------

transaction 6:using named arguments
--------------------------------
Transaction Details
ADDR= 500
DATA=0
PRIORITY_1=5
DELAY=0
--------------------------------

           V C S   S i m u l a t i o n   R e p o r t 
