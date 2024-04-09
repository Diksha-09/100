timescale lns / lps
module parity_generator(
  input x,
  input y,
  input z,
  output result
);
  xor (result, x, y, z);
endmodule
