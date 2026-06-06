// Code your testbench here
// or browse Example
class transaction #(parameter ADDR_WIDTH = 8,DATA_WIDTH = 8);
  
  bit [ADDR_WIDTH-1:0]addr;
  bit [DATA_WIDTH-1:0]data;

  function void display();
    $display("----------------------------------");
    $display("ADDR_WIDTH=%0d",ADDR_WIDTH);
    $display("DATA_WIDTH=%0d",DATA_WIDTH);
    $display("ADDR=%0h",addr);
    $display("DATA=%0h",data);
    $display("----------------------------------");

  endfunction
endclass

module tb;
  
  transaction #(8,8) tr1;
  transaction #(16,32) tr2;

  initial 
    begin
    tr1=new();
    tr2=new();

    tr1.addr=8'h10;
    tr1.data=8'hAA;
    tr2.addr=16'h1234;
    tr2.data=32'hDEADBEEF;

    $display("\nTransaction-1");
    tr1.display();
    $display("\nTransaction-2");
    tr2.display();
  end
endmodule

// =========================================output===============================================
Transaction-1
----------------------------------
ADDR_WIDTH=8
DATA_WIDTH=8
ADDR=10
DATA=aa
----------------------------------

Transaction-2
----------------------------------
ADDR_WIDTH=16
DATA_WIDTH=32
ADDR=1234
DATA=deadbeef
----------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
