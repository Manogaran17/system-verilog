// Code your testbench here
// or browse Examples
module tb;

  int a,b,c,d,e;
  initial 
    begin
    $display("\n====== RANDOM FUNCTION DEMO ======\n");
    a = $random;
    $display("[1] $random (no seed)");
    $display("a=%0d\n",a);

    b = $urandom;
    $display("[2] $urandom (no seed)");
    $display("b=%0d\n",b);
    
    c = $urandom_range(10,1);
    $display("[3] $urandom_range(10,1)");
    $display("c=%0d\n",c);

    d = $random(5);
    $display("[4] $random WITH seed=5");
    $display("d=%0d\n",d);
      
    e = $urandom(5);
    $display("[5] $urandom WITH seed=5");
    $display("e=%0d\n",e);

  end
endmodule
// ===================================OUTPUT======================================
===== RANDOM FUNCTION DEMO ======

[1] $random (no seed)
a=303379748

[2] $urandom (no seed)
b=98710838

[3] $urandom_range(10,1)
c=1

[4] $random WITH seed=5
d=-2147138048

[5] $urandom WITH seed=5
e=633793198

           V C S   S i m u l a t i o n   R e p o r t 
