module dynamic_2D_array;
  
  int arr[][];
  int static_arr[2][3];
  
  int arr_copy[][];
  int arr_partial[][];
  
  initial 
    begin
      // 2d array creation
      arr=new[2]; // row
      
      foreach(arr[i])
        arr[i]=new[3]; // column
      $display("after allocation");
      
      foreach(arr[i,j])
        $display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
      // static array initialization
      
      foreach(static_arr[i,j])
        static_arr[i][j]=i*10+j;
      $display("static array");
      
      foreach(static_arr[i,j])
        $display("static arr[%0d][%0d]=%0d",i,j,static_arr[i][j]);
      // static to dynamic 
      
      arr=static_arr;
      $display("After assigning static to dynamic:");
      
      foreach(arr[i,j])
        $display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
      
      arr_copy=arr;
      
      $display("-----copied array-----");
      
      foreach(arr_copy[i,j])
        $display("arr_copy[%0d][%0d]=%0d",i,j,arr_copy[i][j]);
      // partial copy 
      
      arr_partial = new[1]; // single row is created 
      
      arr_partial[0]=new[3]; // three column is created 
      
      for(int j=0;j<3;j++)
        arr_partial[0][j]=arr[0][j];
      
      $display("partial copy");
      foreach(arr_partial[i,j])
        $display("arr_partial[%0d][%0d]=%0d",i,j,arr_partial[i][j]);
      
      // resize with preserving the data
      
      arr=new[3](arr);
      
      arr[2]=new[3];
      
      foreach(arr[2][j])
        arr[2][j]=99;
      $display("after resizing");
      foreach(arr[i,j])
        $display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
      // delete
      
      foreach(arr[i])
        arr[i].delete();
      arr.delete();
      
      $display("after delete size=%0d",arr.size());
    end 
endmodule 
-------------------------------------------------------------output---------------------------------------------------------------
after allocation
arr[0][0]=0
arr[0][1]=0
arr[0][2]=0
arr[1][0]=0
arr[1][1]=0
arr[1][2]=0
static array
static arr[0][0]=0
static arr[0][1]=1
static arr[0][2]=2
static arr[1][0]=10
static arr[1][1]=11
static arr[1][2]=12
After assigning static to dynamic:
arr[0][0]=0
arr[0][1]=1
arr[0][2]=2
arr[1][0]=10
arr[1][1]=11
arr[1][2]=12
-----copied array-----
arr_copy[0][0]=0
arr_copy[0][1]=1
arr_copy[0][2]=2
arr_copy[1][0]=10
arr_copy[1][1]=11
arr_copy[1][2]=12
partial copy
arr_partial[0][0]=0
arr_partial[0][1]=1
arr_partial[0][2]=2
after resizing
arr[0][0]=0
arr[0][1]=1
arr[0][2]=2
arr[1][0]=10
arr[1][1]=11
arr[1][2]=12
arr[2][0]=99
arr[2][1]=99
arr[2][2]=99
after delete size=0
           V C S   S i m u l a t i o n   R e p o r t 
