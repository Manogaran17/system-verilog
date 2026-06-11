class packet;

  rand bit [7:0] data[5];
  rand bit [7:0]data1[8];

  constraint data_c {
    foreach(data[i])
      data[i] inside {[1:10]};
  }

   constraint data1_c {
     foreach(data1[i])
       data1[i] inside {[244:255]};
   }
  
function void display();
  $display("----------------");
  foreach(data[i])
    $write("%0d ",data[i]);
  $display("");
  foreach(data1[j])
    $write("%0d ",data1[j]);
  $display("");
endfunction
endclass

module tb;

  packet p;
  initial 
    begin
    p=new();
    repeat(5)
      begin
      void'(p.randomize());
        p.display();
    end
  end
endmodule
// ==========================OUTPUT=======================================
----------------
3 10 3 8 1 
245 255 245 250 250 244 245 244 
----------------
3 1 10 8 2 
249 251 254 247 244 245 254 252 
----------------
7 8 8 5 5 
253 247 247 247 245 251 250 252 
----------------
8 5 6 9 9 
248 246 254 255 246 250 255 244 
----------------
3 5 3 7 6 
251 246 254 247 253 249 254 244 
           V C S   S i m u l a t i o n   R e p o r t 
