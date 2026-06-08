
class transaction;
  
  rand bit[7:0]addr;
  rand bit[7:0]data;
  rand bit[7:0]burst;
  
  extern constraint addr_c;
  extern constraint data_c;
  extern constraint burst_c;
  
  function void display();
  
    $display("___________________________________");
    $display("TRANSACTION");
    $display("ADDRESS=%d",addr);
    $display("DATA=%d",data);
    $display("BURST=%d",burst);
    $display("___________________________________");
  endfunction 

  
endclass

constraint transaction::addr_c{
  addr inside {[0:100]};
}

constraint transaction::data_c{
  data > 50;
}

constraint transaction::burst_c{
  burst inside {[1:8]};
}


module tb;
  transaction tr;
  
  initial 
    begin
      repeat(5)
        begin
      tr=new;
      tr.randomize();
      tr.display();
    end 
    end 
endmodule 
// ===============================OUTPUT=================================================
___________________________________
TRANSACTION
ADDRESS= 21
DATA=249
BURST=  2
___________________________________
___________________________________
TRANSACTION
ADDRESS=  6
DATA= 82
BURST=  2
___________________________________
___________________________________
TRANSACTION
ADDRESS=  1
DATA= 69
BURST=  8
___________________________________
___________________________________
TRANSACTION
ADDRESS= 11
DATA=106
BURST=  7
___________________________________
___________________________________
TRANSACTION
ADDRESS= 46
DATA=150
BURST=  6
___________________________________
           V C S   S i m u l a t i o n   R e p o r t 
