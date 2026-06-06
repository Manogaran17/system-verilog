// Code your testbench here
// or browse Examples

class transaction;

   bit[7:0]addr;
   bit[7:0]data;

  function void display();
    $display("\nADDR=%0h DATA=%0h",addr,data);
  endfunction
endclass


module tb;
  transaction tr;
  initial
    begin
    tr=new();

    // Generator fills transaction
    tr.addr =8'h10;
    tr.data=8'hAA;

    // Driver accesses transaction
      $display("\nDriver Received:");
    tr.display();

    // Scoreboard modifies transaction
    tr.data =8'h55;

      $display("\nScoreboard Updated:");
    tr.display();

  end
endmodule
// =======================================OUTPUT================================================
Driver Received:

ADDR=10 DATA=aa

Scoreboard Updated:

ADDR=10 DATA=55
           V C S   S i m u l a t i o n   R e p o r t
