// Code your testbench here
// or browse Examples
class transaction;

  rand bit[7:0]addr;
  rand bit[7:0]data;
  
  constraint addr_c {
    addr inside {[0:100]};
  }

  constraint data_c {
    data inside {[10:50]};
  }

endclass


class error_transaction extends transaction;

  constraint addr_c {
    addr inside {[200:255]};
  }

endclass


module tb;

  transaction tr;
  error_transaction err_tr;

  initial begin

    tr = new();

    $display("NORMAL TRANSACTION");

    repeat(3) begin
      tr.randomize();
      $display("addr=%0d data=%0d",tr.addr,tr.data);
    end

    $display("\nERROR TRANSACTION");

    err_tr = new();

    repeat(3) begin
      err_tr.randomize();
      $display("addr=%0d data=%0d",err_tr.addr,err_tr.data);
    end

  end

endmodule
// =========================output================================
NORMAL TRANSACTION
addr=21 data=48
addr=24 data=11
addr=62 data=39

ERROR TRANSACTION
addr=246 data=12
addr=254 data=50
addr=249 data=19
           V C S   S i m u l a t i o n   R e p o r t 
