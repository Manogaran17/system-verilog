module enum_datatype;
  
  //basic enum 
  typedef enum{red,blue,green}colour;
  
  // enum with base size
  typedef enum logic [1:0]{idle,busy,done}state;
  
  // enum with constant 
  typedef enum logic[2:0]{
    A=3'b001,
    B=3'b110,
    C=3'b100}cont;
  
  // enum with x and z 
   typedef enum logic[2:0]{
     start=3'b000,
     error=3'bxxx,
     hold=3'b001,
     zstate=3'bzzz
  }status;
  
  // variables 
  colour c,c_next;
  state s;
  cont ct;
  status st;
  
  int i;
  
  state arr[3];
  
  initial 
    begin
      c=red;// basic enum usage 
      $display("\n index=%0d colour=%s",c,c.name());
      
      // enum assignment 
      c_next=c;
      $display("\n index=%0d colour=%s",c_next,c_next.name());
      
      // enum arithmetic + casting 
      c_next=colour'(c+1);
        $display("\n index=%0d colour=%s",c_next,c_next.name());
      
      //base size enum 
      s=busy;
      $display("\n index=%0b state=%s",s,s.name());
      
      // constant initialized enum 
      ct=B;
      $display("\n index=%0b constant=%s",ct,ct.name());
      
      // enum with x
      
      st=error;
      $display("\n index=%0b status=%s",st,st.name());
      
      // enum with z
      
      st=zstate;
      $display("\n index=%0b status=%s",st,st.name());
      
      // build in methods 
      
      $display("\n------------build in methods-------");
      
      $display("index=%0d first=%s",c.first(),c.first().name());
      
      $display("index=%0d last=%s",c.last(),c.last().name());
      
      $display("index=%0d next=%s",c.next(),c.next().name());
      
      $display("index=%0d previous=%s",c.prev(),c.prev().name());
      
      $display("count=%0d ",c.num());
    end 
endmodule 
              
