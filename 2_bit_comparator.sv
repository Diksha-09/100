`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// 
//////////////////////////////////////////////////////////////////////////////////


module BIT_2_Comparator(aeb, agb, acb, a, b);
input a,b;
output aeb, agb, acb;
reg aeb, agb, acb;
always @ (*)
if (a>b)
begin
aeb = 1;
agb = 0;
acb = 0;
end
else if (a == b)
begin
aeb = 0;
agb = 1;
acb = 0;
end
else
begin
aeb = 0;
agb = 0;
acb = 1;
end
endmodule
