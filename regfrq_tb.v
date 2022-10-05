`timescale 10ns/100ps
module regfrq_tb();
  
  reg clk1;
  wire clk2;
  reg reset;
  
  
  Regfrq DUT (
  
  .clk1(clk1),
  .clk2(clk2),
  .reset(reset)
  
  );
  

  
  
  initial begin
  reset = 1;
  #5;
  reset = 0;
  clk1 = 0;
  #10;
  forever #10 clk1 = ~clk1;
  
  
end



endmodule