// Code your testbench here
// or browse Examples
 
module array_locator_methods;
  
  int arr[]='{2,3,4,5,6,6,7,3,4,6};
  int first_value[$],last_value[$];
  int val_q[$];
  int idx_q[$];
  int unique_value[$],unique_idx[$];
  
  
  initial 
    begin
      $display("\n===========element locator methods==========");
      // find
      val_q=arr.find(x)with(x>5);
      $display("\nvalue >5 = %p",val_q);
      
      // find first
      
      first_value = arr.find_first(x)with(x>5);
      $display("item first >5 = %0p",first_value);
      
      // find last
      
      last_value = arr.find_last(x)with(x>5);
      $display("item last >5 = %0p",last_value);
      
      $display("\n===========index locator methods=========="); 
      // find index 
      
      idx_q = arr.find_index(x)with(x>5);
      $display("\nfind index >5 = %p",idx_q);
      
      // find_first_index
      
      $display("first_index >5 = %0p",arr.find_first_index(x)with(x>5));
      
      // find_last_index
      
      $display("last_index > 5 = %0p",arr.find_last_index(x)with(x>5));
      
      // unique 
      unique_value = arr.unique();
      unique_idx = arr.unique_index();
      
      $display("\nunique value = %p",unique_value);
      $display("unique value index = %p",unique_idx);
      
      // min and max
      
      $display("\nmin = %0p",arr.min());
      $display("max = %0p",arr.max());
      
      
    end 
endmodule 
    ==============================================OUTPUT===============================================================

===========element locator methods==========

value >5 = '{6, 6, 7, 6} 
item first >5 = '{6} 
item last >5 = '{6} 

===========index locator methods==========

find index >5 = '{4, 5, 6, 9} 
first_index >5 = '{4} 
last_index > 5 = '{9} 

unique value = '{2, 3, 4, 5, 6, 7} 
unique value index = '{0, 1, 2, 3, 4, 6} 

min = '{2} 
max = '{7} 
           V C S   S i m u l a t i o n   R e p o r t 
