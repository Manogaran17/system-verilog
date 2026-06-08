module tb;

bit [3:0] a,b,c,d,e;
initial
  begin
repeat(4) 
  begin

void'(std::randomize(a));
$display("a=%0d",a);

void'(std::randomize(b) with {b>6;});
$display("b=%0d(b>6)",b);

void'(std::randomize(c,d) with {c<4; d<3;});
$display("c=%0d d=%0d",c,d);

void'(std::randomize(e) with {e inside {[1:4]};});
$display("e=%0d(1 to 4)",e);
$display("--------------------------------");

end
end
endmodule
// ===============================OUTPUT=================================
a=14
b=12(b>6)
c=3 d=0
e=3(1 to 4)
--------------------------------
a=5
b=11(b>6)
c=2 d=0
e=3(1 to 4)
--------------------------------
a=5
b=12(b>6)
c=0 d=0
e=1(1 to 4)
--------------------------------
a=12
b=8(b>6)
c=3 d=0
e=2(1 to 4)
--------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
