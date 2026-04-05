// Code your testbench here
// or browse Examples

module associative;
  
  int arr[int]; // asso with integer key 
   int idx;
  initial 
    begin
      arr[5]=2;
      arr[10]=4;
      arr[15]=6;
      arr[20]=8;
      arr[25]=10;
      arr[30]=12;
      
      $display("\n----array values------");
      
      foreach(arr[i])begin
        $display("index=%0d,value=%0d",i,arr[i]);
      end
      
      // first index
      arr.first(idx);
      $display("\nfirst index=%0d,value=%0d",idx,arr[idx]);
      
      // last index
      
      arr.last(idx);
      $display("last index=%0d,value=%0d",idx,arr[idx]);
      // exists
      $display("\nexists(5)=%0d",arr.exists(5));
      $display("exists(100)=%0d",arr.exists(100));
      // num
      $display("\ntotal element=%0d",arr.num());

      // delete a element 
      
      arr.delete(5);
      $display("\nafter deleting index 5:");
      foreach(arr[i])begin
        $display("index=%0d,value=%0d",i,arr[i]);
        
      end 
      // deleting all element 
        arr.delete();
        $display("\nafter deleting all element:");
        $display("total element=%0d",arr.num());
        
    end 
endmodule 
-------------------------------------------output---------------------------------------------
   ---array values------
index=5,value=2
index=10,value=4
index=15,value=6
index=20,value=8
index=25,value=10
index=30,value=12

first index=5,value=2
last index=30,value=12

exists(5)=1
exists(100)=0

total element=6

after deleting index 5:
index=10,value=4
index=15,value=6
index=20,value=8
index=25,value=10
index=30,value=12

after deleting all element:
total element=0
           V C S   S i m u l a t i o n   R e p o r t 
