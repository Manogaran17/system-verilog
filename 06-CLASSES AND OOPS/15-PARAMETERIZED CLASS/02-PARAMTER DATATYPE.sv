// Code your testbench here
// or browse Examples
class apb_transaction;

  bit[7:0]addr;
  bit[7:0]data;

  function void display();
    $display("\nAPB Transaction");
    $display("ADDR=%0h DATA=%0h",addr,data);
  endfunction

endclass

class axi_transaction;

  bit[31:0]addr;
  bit[31:0]data;

  function void display();
    $display("\nAXI Transaction");
    $display("ADDR=%0h DATA=%0h",addr,data);
  endfunction

endclass


class queue #(type T = int);

  T q[$];

  function void push(T item);
    q.push_back(item);
  endfunction

  function T pop();
    return q.pop_front();
  endfunction

  function int size();
    return q.size();
  endfunction
endclass


module tb;

  apb_transaction apb_tr;
  axi_transaction axi_tr;

  queue #(apb_transaction) apb_q;
  queue #(axi_transaction) axi_q;

  initial 
    begin
    apb_q=new();
    axi_q=new();
    apb_tr=new();

    apb_tr.addr=8'h10;
    apb_tr.data=8'hAA;
    apb_q.push(apb_tr);

    axi_tr=new();

    axi_tr.addr=32'h1000_0000;
    axi_tr.data=32'hDEAD_BEEF;
    axi_q.push(axi_tr);

    apb_tr = apb_q.pop();
    apb_tr.display();

    axi_tr = axi_q.pop();
    axi_tr.display();

  end
endmodule
// ===========================OUTPUT=========================================================

APB Transaction
ADDR=10 DATA=aa

AXI Transaction
ADDR=10000000 DATA=deadbeef

           V C S   S i m u l a t i o n   R e p o r t 
