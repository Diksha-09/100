timescale lns / lps
module adder_sub_8bit(a, b, cin, sum, cout);
  output reg cout;
  output reg [7:0] sum;
  input [7:0] a;
  input [7:0] b;
  input cin;
  reg [8:0] c;
  integer i;
  always @(a or b or cin)
    begin
      c[0] = cin;
      if (cin == 0) begin
        for [i=0; i<8; i = i+1]
          begin
            sum[1] = a[1]^(~b[1]]^c[1];
                           c[i+1] = (a[1] & (~b[1])) | ((~b[1]) & c[1]);
                           end
                           end
                           cout = c[8];
                           end
                           endmodule
