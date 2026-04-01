module static_to_dynamic_arr;
  
  int arr[];
  int static_arr[5];
  int arr_partial[];
   int arr_copy[];
  
  initial 
    begin
      
      arr=new[5];
      foreach(arr[i])
      $display("arr[%0d]=%0d",i,arr[i]);
      
      // initialization
      foreach(static_arr[i])
        static_arr[i]=i+50;
      foreach(static_arr[i])
        $display("static_arr[%0d]=%0d",i,static_arr[i]);
      
      arr=static_arr;
      
      $display("----after assigning static to dynamic-----");
      
      foreach(arr[i])
        $display("arr[%0d]=%0d",i,arr[i]);
      // copy to another dynamic array
      
     
      
      arr_copy=arr;
      
      $display("--------copied array----------");
      foreach(arr_copy[i])
        $display("arr_copy[%0d]=%0d",i,arr_copy[i]);
      
      // partial copy 
      
      
      
      arr_partial=new[3];
      
      for(int i=0;i<3;i++)
        arr_partial[i]=arr[i];
      
      $display("partial copy ");
      
      foreach(arr_partial[i])
        $display("arr_partial[%0d]=%0d",i,arr_partial[i]);
      // delete array
      
      arr.delete();
      
      $display("after delete size=%0d",arr.size());
      
      // reallocate after delete 
      
      arr=new[2];
      
      arr[0]=90;
      arr[1]=67;
      
      $display("-----display after reallocation--------");
      foreach(arr[i])
        $display("arr[%0d]=%0d",i,arr[i]);
     
    end
endmodule 
      
