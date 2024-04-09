timescale lns / lps
module Jhonson_counter(clk, reset, count);
  parameter width = 4;
  input clk, reset;
  output reg [width-1:0] count;
  always @(posedge clk)
    begin
      if(reset)
        count = {~count[0], count[width-1:1]};
      else
        count = 4'b0001;
    end
endmodule
