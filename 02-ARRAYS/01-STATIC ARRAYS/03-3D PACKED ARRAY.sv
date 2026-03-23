// Code your testbench here
// or browse Examples
module packed_3darray;
  
  logic [3:0][2:0][2:0]data;
  
  int i,j,k;
  
  initial begin
    data=36'hfafafafaf;
    
    $display("-----Full data=%h-----",data);
    // block access fist level 
    $display("data[0]=%b",data[0]); 
    $display("data[1]=%b",data[1]);
    $display("data[2]=%b",data[2]);
    $display("data[3]=%b",data[3]);
    
    // second level access
    $display("-----second level -----");
    $display("data[0][0]=%b",data[0][0]);
    $display("data[1][1]=%b",data[1][1]);
    $display("data[2][2]=%b",data[2][2]);
    $display("data[3][1]=%b",data[3][1]);
    
    // third level access 
    $display("-----third level -----");
    $display("data[0][0][2]=%b",data[0][0][2]);
    $display("data[1][2][1]=%b",data[1][2][1]);
    $display("data[2][1][0]=%b",data[2][1][0]);
    $display("data[3][0][2]=%b",data[3][0][2]);
    
    // modify single bit 
    
    data[0][0][2]=1'b0;
    data[1][2][1]=1'b0;
    data[2][1][0]=1'b0;
    data[3][0][2]=1'b0;
    // after modification
    $display("-----third level after modification -----");
    $display("data[0][0][2]=%b",data[0][0][2]);
    $display("data[1][2][1]=%b",data[1][2][1]);
    $display("data[2][1][0]=%b",data[2][1][0]);
    $display("data[3][0][2]=%b",data[3][0][2]);
    // slicing 
    $display("data[0][1][2:1]=%b",data[0][1][2:1]);
    
    $display("after bit change=%0h(%b)",data,data);// flat view 
    
    // indexed part select 
    $display("data[2][0][2-:3]=%b",data[2][0][2-:3]);
    
    $display("xOR reduction =%b",^data);
  end 
endmodule     
  
