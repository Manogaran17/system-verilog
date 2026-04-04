
module dynamic_3D_array;
  
  int arr[][][];
  int static_arr[2][2][2];
  
  int arr_copy[][][];
  int arr_partial[][][];
  
  initial 
    begin
      
      arr=new[2]; //2 block
      foreach(arr[i])
        arr[i] = new[2];// 2nd dimention
      foreach(arr[i,j])
        arr[i][j]=new[2];// 3ed dimention
      
      $display("------display the 3d array after allocation -------");
      
      foreach(arr[i,j,k])
        $display("arr[%0d][%0d][%0d]=%0d",i,j,k,arr[i][j][k]);
      // array initialization using Aggregate Initialization
      arr='{ '{'{10,20},'{30,40}},
            '{'{50,60},'{70,80}}
           };
      $display("------display the 3d array after value initialized -------");
      foreach(arr[i,j,k])
        $display("arr[%0d][%0d][%0d]=%0d",i,j,k,arr[i][j][k]);
      
      // static array initialization
      foreach(static_arr[i,j,k])
        static_arr='{'{'{2,3},'{4,5}},
                       '{'{6,7},'{8,9}}
                      };
                     $display("----staic array elements----");
                     foreach(static_arr[i,j,k])
                       $display("static_arr[%0d][%0d][%0d]=%0d",i,j,k,static_arr[i][j][k]);
        // static to dynamic
                     
           arr=static_arr;
                     $display("after assigning static to dynamic ");
                     foreach(arr[i,j,k])
                       $display("arr[%0d][%0d][%0d]=%0d",i,j,k,arr[i][j][k]);
                     
                     
                     arr_copy=arr;
                     $display("----copied array----");
                     foreach(arr_copy[i,j,k])
                       $display("arr_copy[%0d][%0d][%0d]=%0d",i,j,k,arr_copy[i][j][k]);
                     
                     // partial copy in 3d 
                     
                     arr_partial=new[2]; //1d
                     
                     
                     foreach(arr_partial[i])
                       arr_partial[i]=new[2]; //2d
                     
                     foreach(arr_partial[i,j])
                       arr_partial[i][j]=new[2]; // 3d
                     
                     for(int j=0;j<3;j++)begin
                       for(int k=0;k<3;k++)begin
                         arr_partial[1][j][k]=arr[1][j][k];
                       end 
                     end 
      $display("----partially copied array----");
      foreach(arr_partial[i,j,k])
        $display("arr_partial[%0d][%0d][%0d]=%0d",i,j,k,arr_partial[i][j][k]);
                     
    end
  endmodule 
------------------------------------------output-------------------------------------------------------------------------
    ------display the 3d array after allocation -------
arr[0][0][0]=0
arr[0][0][1]=0
arr[0][1][0]=0
arr[0][1][1]=0
arr[1][0][0]=0
arr[1][0][1]=0
arr[1][1][0]=0
arr[1][1][1]=0
------display the 3d array after value initialized -------
arr[0][0][0]=10
arr[0][0][1]=20
arr[0][1][0]=30
arr[0][1][1]=40
arr[1][0][0]=50
arr[1][0][1]=60
arr[1][1][0]=70
arr[1][1][1]=80
----staic array elements----
static_arr[0][0][0]=2
static_arr[0][0][1]=3
static_arr[0][1][0]=4
static_arr[0][1][1]=5
static_arr[1][0][0]=6
static_arr[1][0][1]=7
static_arr[1][1][0]=8
static_arr[1][1][1]=9
after assigning static to dynamic 
arr[0][0][0]=2
arr[0][0][1]=3
arr[0][1][0]=4
arr[0][1][1]=5
arr[1][0][0]=6
arr[1][0][1]=7
arr[1][1][0]=8
arr[1][1][1]=9
----copied array----
arr_copy[0][0][0]=2
arr_copy[0][0][1]=3
arr_copy[0][1][0]=4
arr_copy[0][1][1]=5
arr_copy[1][0][0]=6
arr_copy[1][0][1]=7
arr_copy[1][1][0]=8
arr_copy[1][1][1]=9
----partially copied array----
arr_partial[0][0][0]=0
arr_partial[0][0][1]=0
arr_partial[0][1][0]=0
arr_partial[0][1][1]=0
arr_partial[1][0][0]=6
arr_partial[1][0][1]=7
arr_partial[1][1][0]=8
arr_partial[1][1][1]=9
           V C S   S i m u l a t i o n   R e p o r t     
      
