// Code your testbench here
// or browse Examples
module tb;

  function int calculate_parity(bit[7:0]data);

    int parity;

    parity=^data;

    $display("--------------------------------");
    $display("Inside Function");
    $display("Received Data=%0h",data);
    $display("Calculated Parity=%0d",parity);
    $display("--------------------------------");
    return parity;

  endfunction

  bit[7:0]tx_data;
  int parity_bit;

  initial 
    begin

    tx_data=8'hA5;

    $display("Before Function Call");
    $display("tx_data = %0h", tx_data);

    parity_bit=calculate_parity(tx_data);

    $display("After Function Call");
    $display("tx_data= %0h",tx_data);
    $display("parity_bit= %0d",parity_bit);
  end
endmodule
// ========================================OUTPUT=============================================
Before Function Call
tx_data = a5
--------------------------------
Inside Function
Received Data=a5
Calculated Parity=0
--------------------------------
After Function Call
tx_data= a5
parity_bit= 0
           V C S   S i m u l a t i o n   R e p o r t 
