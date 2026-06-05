class transaction;

 
  bit [7:0] addr;
  bit [7:0] data;
  
  static int trans_count;

  extern function new(bit[7:0]a,bit[7:0]d);

  extern function void display();

  extern function bit compare(transaction tr);

  extern static function void report();

endclass
//     ===================================================
    
function transaction::new(bit[7:0]a,bit[7:0]d);
                          
  addr=a;
  data=d;
  trans_count++;

endfunction
    
//     ================================================
function void transaction::display();

  $display("--------------------------------");
  $display("ADDR=%0h",addr);
  $display("DATA=%0h",data);
  $display("--------------------------------");

endfunction
//     =================================================
    
function bit transaction::compare(transaction tr);

  if(addr==tr.addr&&
     data==tr.data)
    return 1;

  else
    return 0;

endfunction
    
    
//     ====================================================
    
    function void transaction::report();

  $display("TOTAL TRANSACTIONS=%0d",trans_count);
           

endfunction
//     ===================================================
    
module tb;

  transaction tr1;
  transaction tr2;
  transaction tr3;
  

  bit result;

  initial 
    begin

    tr1=new(8'h10,8'hAA);
    tr2=new(8'h10,8'hAA);
    tr3=new(8'hA,8'hAB);

    tr1.display();
    tr2.display();
    tr3.display();

    result=tr1.compare(tr2);

    if(result)
      $display("MATCH");

    else
      $display("MISMATCH");

    transaction::report();

  end
      

endmodule
// ======================================output=======================================
--------------------------------
ADDR=10
DATA=aa
--------------------------------
--------------------------------
ADDR=10
DATA=aa
--------------------------------
--------------------------------
ADDR=a
DATA=ab
--------------------------------
MATCH
TOTAL TRANSACTIONS=3
           V C S   S i m u l a t i o n   R e p o r t 
