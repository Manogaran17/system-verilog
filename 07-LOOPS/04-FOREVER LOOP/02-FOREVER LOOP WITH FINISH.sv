// Code your testbench here
// or browse Examples

class transaction;
  int id;
endclass


module tb;
  transaction tr;
  int count = 0;

  initial 
    begin
    forever
    begin
      tr=new();
      tr.id=count;
      $display("Transaction = %0d",tr.id);
      count++;

      if(count==10)
      begin
        $display("Generated Transactions=%0d",count);
        $finish;
      end
    end
  end
endmodule
// =========================================OUTPUT=================================================

Transaction = 0
Transaction = 1
Transaction = 2
Transaction = 3
Transaction = 4
Transaction = 5
Transaction = 6
Transaction = 7
Transaction = 8
Transaction = 9
Generated Transactions=10
$finish called from file "testbench.sv", line 30.
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
