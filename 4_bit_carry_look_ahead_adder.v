timescale lns/lps
module bit_cla_adder(a, b, cin, sum, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] sum;
  output cout;
  wire [3:0] c1;
  assign c1[0] = cin;
  assign c1[1] = (a[0] & b[0]) | ((a[0]^b[0]) & c1[0]);
  assign c1[2] = (a[1] & b[1]) | ((a[1]^b[0]) & ((a[0] & b[0]) | ((a[0]^b[0]) & c1[0])));
  assign c1[3] = (a[2] & b[2]) | ((a[2]^b[2]) & ((a[1] & b[1]) | ((a[1]^b[1]) & ((a[0] & b[0] & c1[0]))))))
    assign cout = (a[3] & b[3]) | ((a[3]^b[3]) & ((a[2] & b[2]) | ((a[2]^b[2]) & ((a[1] & b[1]) | ((a[1] ^ b[1]) & ((a[0] & b[0]) | ((a[0] ^ b[0]) & ci[0]))))))));
  assign sum = a^b^c1;
endmodule
