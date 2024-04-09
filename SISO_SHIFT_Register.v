timescale lns / lps
module siso_shift_reg(
  input clk,
  input clr,
  input sin,
  output sout);
  reg [3:0] temp;
  always @(posedge clk)
    begin
      if(clk)
        temp <= temp >> 1;
      temp[3] <= sin;
    end
  assign sout = temp[0];
endmodule
