// Code your testbench here
// or browse Examples
class packet;

  local bit parity;

  bit[7:0]data;

  
  function void calculate_parity();
    parity=^data;
  endfunction

  function void display();

    $display("DATA=%0h(%b) PARITY=%0b",data,data,parity);
  endfunction
endclass


module tb;
  packet pkt;
  initial 
    begin

    pkt=new();

    pkt.data=8'hAA;

    pkt.calculate_parity();

    pkt.display();

    // Illegal Access
    // pkt.parity = 1;

  end
endmodule
// ========================================OUTPUT===================================================

DATA=aa(10101010) PARITY=0
           V C S   S i m u l a t i o n   R e p o r t
