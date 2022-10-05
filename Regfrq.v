module Regfrq (

clk1, clk2, reset


);

wire [3:0] next; 
//////// counter inside FF to wait ////////
reg [3:0] clksave;
//////// temp memory to save value inside FF ////////
reg clktemp;
//////// change value according to clk save (internal clk) ///////


input clk1, reset;
output clk2;

always@(posedge clk1 or posedge reset)begin

if (reset)begin
  
    clksave <= 0;
    clktemp <= 1'b0;


end

 else if(next == 2)begin
    clksave <= 0;
    clktemp <= ~clktemp; 
    
  end

else 
  clksave <= next;

end

assign next = clksave + 1;
assign clk2 = clktemp;


endmodule