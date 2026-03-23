// Code your testbench here
// or browse Examples

module packed_2Darray;
  
  logic [3:0][3:0]data;
  
  int i,j;
  initial begin
    
    data=16'habcd;
    
    $display("full data=%h",data);
    
    $display("data[0]=%0d(%b)",data[0],data[0]);
    $display("data[1]=%0d(%b)",data[1],data[1]);
    $display("data[2]=%0d(%b)",data[2],data[2]);
    $display("data[3]=%0d(%b)",data[3],data[3]);
    
    $display("data[0][1]=%b",data[0][1]);
    
    data[0][0]=1'b0;
    $display(" after bit change %b",data);
    
    
    $display("data[3][3:1]=%b",data[3][3:1]);
    
    $display("all bits");
    //for(i=0;i<4;i++)begin
      //for(j=0;j<4;j++)begin
    foreach(data[i,j])begin
        $display("data[%0d][%0d]=%b",i,j,data[i][j]);
      end 
      $display("");
   
    
    $display("flat view=%b",data);
    
    $display("data[0][1+:2]=%b",data[0][1+:2]);
    
    $display("---row value>a---");
    for(i=0;i<4;i++)begin
      if(data[i]>10)
        $display("data[%0d]=%0d",i,data[i]);
    end 
    
    data={4'b1111,4'b1111,4'b1111,4'b1111};
    $display("after concat=%b",data);
    
    $display("AND reduction=%b",&data);
  end 
endmodule
    
    
    
    
    
    
