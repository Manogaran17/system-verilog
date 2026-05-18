// Code your testbench here
// or browse Examples

module reduction_operator;
  
   logic [3:0]a;
   logic and_out;
   logic or_out;
   logic xor_out;
   logic nand_out;
   logic nor_out;
   logic xnor_out;
  
  initial 
    begin
       a = 4'b1011;
      
        and_out = &a;     // Reduction AND
        or_out = |a;     // Reduction OR
        xor_out = ^a;     // Reduction XOR

        nand_out= ~&a;    // Reduction NAND
        nor_out= ~|a;    // Reduction NOR
        xnor_out= ~^a;    // Reduction XNOR
      
       $display("\n========= REDUCTION OPERATORS =========");

      $display("input a=%b", a);

        $display("\n------ BASIC REDUCTION ------");

        $display("&a(AND)= %b", and_out);
        $display("|a(OR) = %b", or_out);
        $display("^a(XOR)= %b", xor_out);

        $display("\n------ INVERTED REDUCTION ----");

        $display("~&a(NAND)= %b", nand_out);
        $display("~|a(NOR)= %b", nor_out);
        $display("~^a(XNOR) = %b", xnor_out);
      
    end 
endmodule 
