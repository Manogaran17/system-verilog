// Code your testbench here
// or browse Examples

// parent class 

class employee;

  string company;
  int salary;

  function new();
    company="silicic";
    salary=20000;
  endfunction

  function void display();
    $display("\nCompany=%0s Salary=%0d",company,salary);
  endfunction
endclass

// child class 

class engineer extends employee;

  string project;
  int salary;

  function new();
    project="AI";
    salary=50000;
  endfunction

  function void display();
    $display("\nProject=%0s\n Salary=%0d\n Company=%0s",project,salary,company);
  endfunction
endclass


module tb;

  engineer eng;

  initial 
    begin
    eng=new();

    $display("\nBefore Modification");
    eng.display();

    eng.project="TinyML";
    eng.salary=75000;
    eng.company="intel";

    $display("\nAfter Modification");
    eng.display();

  end
endmodule

// ==========================================output====================================================

Before Modification

Project=AI
 Salary=50000
 Company=silicic

After Modification

Project=TinyML
 Salary=75000
 Company=intel
