class transaction;
  
  bit [7:0]data;
  bit [7:0]addr;
  
  function void display();
    
    $display("data=%d addr=%d",data,addr);
  
  endfunction 
  
endclass 

module tb;
  
  transaction tr;
  initial 
    begin
      $display("generating trasaction");
      for(int i=0;i<9;i++)
        begin
          tr=new();
          tr.addr=i;
          tr.data=i*10;
          $display("\nIteration=%0d",i);
          tr.display();
        end
    end 
endmodule 

// ==============================OUTPUT==============================

generating trasaction

Iteration=0
data=  0 addr=  0

Iteration=1
data= 10 addr=  1

Iteration=2
data= 20 addr=  2

Iteration=3
data= 30 addr=  3

Iteration=4
data= 40 addr=  4

Iteration=5
data= 50 addr=  5

Iteration=6
data= 60 addr=  6

Iteration=7
data= 70 addr=  7

Iteration=8
data= 80 addr=  8
           V C S   S i m u l a t i o n   R e p o r t
