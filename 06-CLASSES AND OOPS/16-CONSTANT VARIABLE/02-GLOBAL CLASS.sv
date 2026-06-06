class employee;

  string name;
  const string company = "Mirafra";

  function new(string n);
    name = n;
  endfunction

  function void display();
    $display("Name=%0s",name);
    $display("Company=%0s",company);
  endfunction
endclass


module tb;
  employee emp1;
  employee emp2;
  initial 
    begin
    emp1=new("Manogaran");
    emp2=new("Rahul");
    emp1.display();
    $display("");
    emp2.display();
  end
endmodule
// =========================output=======================================
Name    = Manogaran
Company = silicic

Name    = Rahul
Company = silicic
           V C S   S i m u l a t i o n   R e p o r t 
