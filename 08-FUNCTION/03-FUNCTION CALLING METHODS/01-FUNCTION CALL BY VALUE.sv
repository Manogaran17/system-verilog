// Code your testbench here
// or browse Examples
module tb;

  function int calculate_addr(int base_addr,int offset  );
    int final_addr;
    final_addr=base_addr+offset;

    $display("--------------------------------");
    $display("Inside Function");
    $display("base_addr=%0d",base_addr);
    $display("offset=%0d",offset);
    $display("final_addr=%0d",final_addr);
    $display("--------------------------------");

    return final_addr;
  endfunction

  
  int addr;

  initial 
    begin
    addr = calculate_addr(1000,20);
    $display("Returned Address=%0d",addr);
    addr = calculate_addr(1000,40);
    $display("Returned Address=%0d",addr);
    addr = calculate_addr(1000,60);
    $display("Returned Address=%0d",addr);
  end
endmodule

// =====================================OUTPUT====================================================
--------------------------------
Inside Function
base_addr=1000
offset=20
final_addr=1020
--------------------------------
Returned Address=1020
--------------------------------
Inside Function
base_addr=1000
offset=40
final_addr=1040
--------------------------------
Returned Address=1040
--------------------------------
Inside Function
base_addr=1000
offset=60
final_addr=1060
--------------------------------
Returned Address=1060
           V C S   S i m u l a t i o n   R e p o r t 
