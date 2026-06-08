// Code your testbench here
// or browse Examples
module tb;

  task search_transaction;
    int txn_id;

    $display("----------------------------------");
    $display("Starting Transaction Search");
    $display("----------------------------------");

    for(txn_id=1;txn_id<=10;txn_id++) 
      begin
      $display("@%0t Checking Transaction ID=%0d",$time,txn_id);

      // Assume transaction ID 6 is corrupted
      if(txn_id==6) 
        begin
        $display("\nERROR: Corrupted Transaction Found!");
        $display("Transaction ID=%0d",txn_id);
        disable search_transaction;
      end
      $display("Transaction %0d is Valid\n",txn_id);
    end
    $display("----------------------------------");
    $display("All Transactions Checked");
    $display("----------------------------------");
  endtask

  initial 
    begin
    search_transaction();
    $display("\nReturned to Initial Block");
  end
endmodule
// ==============================OUTPUT===============================
----------------------------------
Starting Transaction Search
----------------------------------
@0 Checking Transaction ID=1
Transaction 1 is Valid

@0 Checking Transaction ID=2
Transaction 2 is Valid

@0 Checking Transaction ID=3
Transaction 3 is Valid

@0 Checking Transaction ID=4
Transaction 4 is Valid

@0 Checking Transaction ID=5
Transaction 5 is Valid

@0 Checking Transaction ID=6

ERROR: Corrupted Transaction Found!
Transaction ID=6

Returned to Initial Block
           V C S   S i m u l a t i o n   R e p o r t 
