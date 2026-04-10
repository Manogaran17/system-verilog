// Code your testbench here
// or browse Examples

module string_operator;
  
  string s1="this is system verilog";
  string s2="string concept";
  string s,s3;
  
  initial 
    begin
      
      // equality 
      begin
      if(s1==s2)
        $display("\ns1=%s is equal to s2=%s",s1,s2);
      else 
        $display("\ns1=%s is not equal to s2=%s",s1,s2);
                 end 
                 
      // comparison 
                 begin
      if(s1>s2)
        $display("\ns1 = %s is grater than s2 = %s",s1,s2);
      else 
        $display("\ns1 = %s is less than s2 = %s",s1,s2);
                 end  
     // replicaion 
                 
      s2={6{"silicon "}};
      $display("\n replication operator s2 = %s",s2);
                 
      // indexing 
                 
       $display("s1=%0d s1=%0s",s1[3],s1[3]);
      
      // assignment 
      s3 = s1;
      $display("after assignment s3=%s",s3);
                 
        end 
  endmodule 
-----------------------------------------------------OUTPUT-----------------------------------------------------------------
s1=this is system verilog is not equal to s2=string concept

s1 = this is system verilog is grater than s2 = string concept

 replication operator s2 = silicon silicon silicon silicon silicon silicon 
s1=115 s1=s
after assignment s3=this is system verilog
           V C S   S i m u l a t i o n   R e p o r t                    
                 
                   
