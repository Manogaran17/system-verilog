// Code your testbench here
// or browse Examples
class transaction;

  int id;
  function void display();
    $display("Transaction = %0d",id);
  endfunction

endclass

module tb;
  transaction tr;
  initial 
    begin
    for(int i=0; i<10; i++)
    begin
      tr=new();
      tr.id = i;
      $display("TRANSACTION ID GENERATED");
      tr.display();
    end
  end
endmodule
// ================================OUTPUT===============================================
TRANSACTION ID GENERATED
Transaction = 0
TRANSACTION ID GENERATED
Transaction = 1
TRANSACTION ID GENERATED
Transaction = 2
TRANSACTION ID GENERATED
Transaction = 3
TRANSACTION ID GENERATED
Transaction = 4
TRANSACTION ID GENERATED
Transaction = 5
TRANSACTION ID GENERATED
Transaction = 6
TRANSACTION ID GENERATED
Transaction = 7
TRANSACTION ID GENERATED
Transaction = 8
TRANSACTION ID GENERATED
Transaction = 9
           V C S   S i m u l a t i o n   R e p o r t 
