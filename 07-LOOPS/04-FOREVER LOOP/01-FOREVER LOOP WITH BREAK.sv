// Code your testbench here
// or browse Examples
class transaction;

  int trans_id;
  function void display();
    $display("Transaction ID=%0d",trans_id);
  endfunction

endclass


module tb;
  transaction tr;
  int count = 0;
  initial
    begin
    forever
    begin
      tr=new();
      tr.trans_id = count*32;
      tr.display();
      count++;
      if(count == 10)
      begin
        $display("Transactions Generated=%0d",count);
        break;
      end
    end
    $display("Exited Forever Loop");
  end
endmodule
// ========================OUTPUT===============================

Transaction ID=0
Transaction ID=32
Transaction ID=64
Transaction ID=96
Transaction ID=128
Transaction ID=160
Transaction ID=192
Transaction ID=224
Transaction ID=256
Transaction ID=288
Transactions Generated=10
Exited Forever Loop
           V C S   S i m u l a t i o n   R e p o r t 
