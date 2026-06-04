// Code your testbench here
// or browse Examples

class transaction;
  
  bit[7:0]addr;
  bit[7:0]data;
  
  function void display();
    $display("\t\naddr = %0h \n\tdata = %0h",addr,data);   
  endfunction
  
endclass:transaction  

  module tb;
    transaction tr;
    initial 
      begin
        tr = new();
        tr.addr = 8'h10;
        tr.data = 8'haa;
        tr.display();
      end
  endmodule
