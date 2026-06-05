class marks;

  int maths;
  int science;

  function new();
    maths   = 80;
    science = 90;
  endfunction

endclass

class student;

  string name;
  int roll_no;

  marks m;

  function new();

    name="Mano";
    roll_no=101;
    m = new();

  endfunction

  function void display();

    $display("----------------------------------");
    $display("NAME= %s", name);
    $display("ROLL NO= %0d", roll_no);
    $display("MATHS= %0d", m.maths);
    $display("SCIENCE=%0d",m.science);
    $display("----------------------------------");
  endfunction

endclass

module tb;

  student s1;
  student s2;

  initial begin

    s1=new();

    $display("\nOriginal Object");
    s1.display();

    
    s2=new();

    // Copy primitive members
    s2.name=s1.name;
    s2.roll_no=s1.roll_no;

    // Deep copy nested object members
    s2.m.maths=s1.m.maths;
    s2.m.science=s1.m.science;

    $display("\nAfter Deep Copy");
    s2.display();

    // Modify copied object
    s2.roll_no=202;
    s2.m.maths=50;
    s2.m.science=60;

    $display("\nAfter Modifying s2");

    $display("Displaying s1");
    s1.display();

    $display("Displaying s2");
    s2.display();

  end

endmodule

Original Object
----------------------------------
NAME= Mano
ROLL NO= 101
MATHS= 80
SCIENCE=90
----------------------------------

After Deep Copy
----------------------------------
NAME= Mano
ROLL NO= 101
MATHS= 80
SCIENCE=90
----------------------------------

After Modifying s2
Displaying s1
----------------------------------
NAME= Mano
ROLL NO= 101
MATHS= 80
SCIENCE=90
----------------------------------
Displaying s2
----------------------------------
NAME= Mano
ROLL NO= 202
MATHS= 50
SCIENCE=60
----------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
