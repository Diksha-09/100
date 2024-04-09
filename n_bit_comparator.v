timescale lns/ lnp
module comparator_n_bit(a, b, lesser, greater, equal);
  parameter n = 32;
  input [n-1:0]a,b;
  output lesser, greater, equal;
  reg lesser = 0, greater = 0, equal = 0;
  always @ (a,b)
    begin
      if(a>b)
        begin
          lesser = 0; equal = 0; greater = 1;
        end
      else if (a<b)
        begin
          lesser = 1; equal = 0; greater = 0;
        end
      else
        begin
          lesser = 0; equal = 1; greater = 0;
        end
    end
endmodule
