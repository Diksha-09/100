timescale lns/lps
module pipo_shift_reg(clk, clr, pin, pout);
  input clk, clr;
  output reg[3:0] pout;
  input [3:0] pin;
  always @(posedge clk)
    begin
      if(clr)
        pout <= 4'b00000;
      else
        pout <= pin;
    end
endmodule
