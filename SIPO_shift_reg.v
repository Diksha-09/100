timescale lns/lnp
module SISO_shift_reg(clk, clr, si, po);
  input clk, s1, clr;
  output [3:0] tmp;
  reg[3:0] p0;
  always @(posedge clk)
    begin
      if(clr)
        tmp <= tmp<<1;
      tmp[0] <= s1;
      po = tmp;
    end
endmodule
