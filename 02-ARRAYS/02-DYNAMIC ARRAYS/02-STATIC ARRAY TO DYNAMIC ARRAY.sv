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
----------------------------------output-------------------------------------------------------------------------------------------------
      
arr[0]=0
arr[1]=0
arr[2]=0
arr[3]=0
arr[4]=0
static_arr[0]=50
static_arr[1]=51
static_arr[2]=52
static_arr[3]=53
static_arr[4]=54
----after assigning static to dynamic-----
arr[0]=50
arr[1]=51
arr[2]=52
arr[3]=53
arr[4]=54
--------copied array----------
arr_copy[0]=50
arr_copy[1]=51
arr_copy[2]=52
arr_copy[3]=53
arr_copy[4]=54
partial copy 
arr_partial[0]=50
arr_partial[1]=51
arr_partial[2]=52
after delete size=0
-----display after reallocation--------
arr[0]=90
arr[1]=67
           V C S   S i m u l a t i o n   R e p o r t 
