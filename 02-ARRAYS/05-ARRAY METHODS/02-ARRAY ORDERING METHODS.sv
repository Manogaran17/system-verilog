// Code your testbench here
// or browse Examples

module array_ordering;
  
  int arr[]='{10,20,30,45,67,89,76,56};
  
  typedef struct {
    
    int id;
    int mark;
  }student;
  
  student students[5];
  
  initial begin
    
    $display("\noriginal array = %p",arr);
    
    // sort()
    
    arr.sort();
    $display("after sort() = %p",arr);
    
    // rsort()
    
    arr.rsort();
    $display("after rsort() = %p",arr);
    
    // reverse()
    
    arr.reverse();
    $display("after reverse() = %p",arr);
    
    // shuffle()
    
    for(int i=0;i<7;i++)begin
      arr.shuffle();
      $display("\nafter shuffle:%0d = %p",i,arr);
    end
    
    // sort with condition 
    
    arr.sort(x)with(-x);
    $display("\nafter sort(x) = %p",arr);
    
    // struct initialization 
    
    students = '{
      '{1,50},
      '{2,60},
      '{3,70},
      '{4,80},
      '{5,90}
    };
    
    $display("\noriginal students = %p",students);
    
    students.sort(s)with(s.mark);
    $display("\nsorted by mark =%p",students);
    
     students.rsort(s)with(s.mark);
    $display("\nreverse sorted by mark =%p",students);
    
    students.shuffle();
    $display("\nafter shuffle =%p",students);
    
    
    students.reverse();
    $display("\nafter reverse  =%p",students);
    
  end 
endmodule 

===================================================OUTPUT====================================================

original array = '{10, 20, 30, 45, 67, 89, 76, 56} 

after sort() = '{10, 20, 30, 45, 56, 67, 76, 89} 
after rsort() = '{89, 76, 67, 56, 45, 30, 20, 10} 
after reverse() = '{10, 20, 30, 45, 56, 67, 76, 89} 

after shuffle:0 = '{76, 56, 89, 45, 30, 67, 10, 20} 

after shuffle:1 = '{20, 30, 76, 56, 10, 89, 67, 45} 

after shuffle:2 = '{89, 10, 76, 45, 30, 20, 67, 56} 

after shuffle:3 = '{56, 76, 30, 89, 10, 20, 67, 45} 

after shuffle:4 = '{67, 10, 89, 20, 56, 45, 76, 30} 

after shuffle:5 = '{30, 10, 76, 67, 45, 20, 56, 89} 

after shuffle:6 = '{89, 10, 76, 30, 20, 45, 56, 67} 

after sort(x) = '{89, 76, 67, 56, 45, 30, 20, 10} 

original students = '{'{id:1, mark:50}, '{id:2, mark:60}, '{id:3, mark:70}, '{id:4, mark:80}, '{id:5, mark:90}} 

sorted by mark ='{'{id:1, mark:50}, '{id:2, mark:60}, '{id:3, mark:70}, '{id:4, mark:80}, '{id:5, mark:90}} 

reverse sorted by mark ='{'{id:5, mark:90}, '{id:4, mark:80}, '{id:3, mark:70}, '{id:2, mark:60}, '{id:1, mark:50}} 

after shuffle ='{'{id:3, mark:70}, '{id:5, mark:90}, '{id:2, mark:60}, '{id:1, mark:50}, '{id:4, mark:80}} 

after reverse  ='{'{id:4, mark:80}, '{id:1, mark:50}, '{id:2, mark:60}, '{id:5, mark:90}, '{id:3, mark:70}} 
           V C S   S i m u l a t i o n   R e p o r t 
   
