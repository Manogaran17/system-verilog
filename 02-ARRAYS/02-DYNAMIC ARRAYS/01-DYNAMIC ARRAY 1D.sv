module dynamic_array;
  
  int arr[];
  int static_arr[5];
  
  initial 
    begin
      // initial state
      
      $display("initial size=%0d",arr.size());
      
      // allocation using new
      
      arr=new[3];
      $display("after allocation size=%0d",arr.size());
      
      // initialization
      
      foreach(arr[i])begin
        arr[i]=i+1;
      end
      
      $display("-----------after initialization------------");
      foreach(arr[i])
        $display("arr[%0d]=%0d",i,arr[i]);
      // direct element access
      $display("------direct elelment access------");
      $display("arr[2]=%0d",arr[2]);
      
      arr[1]=100;
      $display("after modificaton arr[1]=%0d",arr[1]);
      foreach(arr[i])
        $display("arr[%0d]=%0d",i,arr[i]);
      
      // resize without copy 
      arr=new[5];
      
      $display("after resize without copy size=%0d",arr.size());
      
      foreach(arr[i])
        $display("arr[%0d]=%0d",i,arr[i]);
      // re-initialize 
      
      foreach(arr[i])
        arr[i]=i*10;
      
      // resize with preserving the data
      
      arr = new[8](arr);
      $display("after resize with copy size=%0d",arr.size());
      
      foreach(arr[i])
        $display("arr[%0d]=%0d",i,arr[i]);
      
    end
endmodule 
--------------------------------------------------output------------------------------------------------------------------------------------------
initial size=0
after allocation size=3
-----------after initialization------------
arr[0]=1
arr[1]=2
arr[2]=3
------direct elelment access------
arr[2]=3
after modificaton arr[1]=100
arr[0]=1
arr[1]=100
arr[2]=3
after resize without copy size=5
arr[0]=0
arr[1]=0
arr[2]=0
arr[3]=0
arr[4]=0
after resize with copy size=8
arr[0]=0
arr[1]=10
arr[2]=20
arr[3]=30
arr[4]=40
arr[5]=0
arr[6]=0
arr[7]=0
           V C S   S i m u l a t i o n   R e p o r t
     

