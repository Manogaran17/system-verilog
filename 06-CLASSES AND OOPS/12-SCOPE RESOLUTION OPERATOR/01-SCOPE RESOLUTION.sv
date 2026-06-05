// Code your testbench here
// or browse Examples

package trans_pkg;

  class transaction;
    bit [7:0]addr;
    bit [7:0]data;

    static int trans_count;
    
    function new();
      trans_count++;
    endfunction

    function void display();

      $display("--------------------------------");
      $display("ADDR=%0h",addr);
      $display("DATA=%0h",data);
      $display("--------------------------------");
    endfunction

    static function void report();
      $display("TOTAL TRANSACTIONS = %0d",trans_count);
    endfunction

  endclass

endpackage


module tb;

  trans_pkg::transaction tr1;
  trans_pkg::transaction tr2;

  initial begin

    tr1=new();
    tr2=new();

    tr1.addr=8'h10;
    tr1.data=8'hAA;

    tr2.addr=8'h20;
    tr2.data=8'hBB;

    tr1.display();
    tr2.display();
    trans_pkg::transaction::report();

  end

endmodule

--------------------------------
ADDR=10
DATA=aa
--------------------------------
--------------------------------
ADDR=20
DATA=bb
--------------------------------
TOTAL TRANSACTIONS = 2
           V C S   S i m u l a t i o n   R e p o r t 
