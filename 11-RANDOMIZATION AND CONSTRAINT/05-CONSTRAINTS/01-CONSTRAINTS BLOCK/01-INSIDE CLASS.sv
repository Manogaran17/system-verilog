// Code your testbench here
// or browse Examples
class transaction;

  rand bit[31:0]addr;
  rand bit[31:0]data;
  rand bit[3:0]burst;

  constraint addr_c {
    addr inside {[0:1023]};
  }

  constraint burst_c {
    burst inside {[1:8]};
  }

  constraint data_c {
    data != 32'hDEADBEEF;
  }
  
  function void display();
    $display("___________________________________");
    $display("TRANSACTION");
    $display("ADDRESS=%d",addr);
    $display("DATA=%d",data);
    $display("BURST=%d",burst);
    $display("___________________________________");
  endfunction 
    
endclass

module tb;
  transaction tr;
  
  initial 
    begin
      repeat(5)
        begin
      tr = new();
      tr.randomize();
      tr.display();
        end 
    end 
endmodule 

___________________________________
TRANSACTION
ADDRESS=       215
DATA= 772895052
BURST= 8
___________________________________
___________________________________
TRANSACTION
ADDRESS=        67
DATA= 779601959
BURST= 7
___________________________________
___________________________________
TRANSACTION
ADDRESS=        19
DATA=3671523460
BURST= 5
___________________________________
___________________________________
TRANSACTION
ADDRESS=       116
DATA=2829673121
BURST= 7
___________________________________
___________________________________
TRANSACTION
ADDRESS=       476
DATA=2568051197
BURST= 5
___________________________________
           V C S   S i m u l a t i o n   R e p o r t 
