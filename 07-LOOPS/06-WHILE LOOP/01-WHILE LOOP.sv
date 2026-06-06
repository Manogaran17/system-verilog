// Code your testbench here
// or browse Examples

class transaction;

  int id;
  function void display();
    $display("Transaction = %0d", id);
  endfunction

endclass


module tb;
  transaction tr;

  int count = 0;

  initial
    begin
      
      while(count < 10)
    begin
      tr=new();
      tr.id=count;
      $display("TRANSACTION ID HAS GENERATED");
      tr.display();
      count++;
    end
  end
endmodule
// ==========================OUTPUT=======================================
TRANSACTION ID HAS GENERATED
Transaction = 0
TRANSACTION ID HAS GENERATED
Transaction = 1
TRANSACTION ID HAS GENERATED
Transaction = 2
TRANSACTION ID HAS GENERATED
Transaction = 3
TRANSACTION ID HAS GENERATED
Transaction = 4
TRANSACTION ID HAS GENERATED
Transaction = 5
TRANSACTION ID HAS GENERATED
Transaction = 6
TRANSACTION ID HAS GENERATED
Transaction = 7
TRANSACTION ID HAS GENERATED
Transaction = 8
TRANSACTION ID HAS GENERATED
Transaction = 9
           V C S   S i m u l a t i o n   R e p o r t 
