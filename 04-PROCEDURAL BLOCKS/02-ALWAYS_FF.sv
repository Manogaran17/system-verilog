// Code your testbench here
// or browse Examples

module always_ff_block;
  
  logic clk;
  logic rst;
  
  logic [3:0]d;
  logic [3:0]q;
  
  initial 
    begin
      clk=0;
      forever #5 clk = ~clk;
    end 
  
  always_ff@(posedge clk or posedge rst)
    begin
      
      if(rst)
        q<= 4'b0000;
      
      else 
        q<=d;
    end 
  
  initial 
    begin
      
      $display("\n=====always_ff EXAMPLE===");
      
      rst = 1;
      d = 4'b0000;
      
      #10;
      
      rst=0;
      
      
      d = 4'b1010;
      
      #10;
      
      $display("\nclock edge captured");
      $display("d=%b",d);
      $display("q=%b",q);
      
         d = 4'b0110;
      
      #10;
      
      $display("\nclock edge captured");
      $display("d=%b",d);
      $display("q=%b",q);
      
      
         d = 4'b1110;
      
      #10;
      
      $display("\nclock edge captured");
      $display("d=%b",d);
      $display("q=%b",q);
      
      rst = 1;
      
      #10;
      
      $display("\n display reset");
      
      $display("q=%b",q);
      
      $finish;
      
    end 
endmodule 
