module ex_adder(a,b,sum);

input [7:0] a;
input [7:0] b;

output [7:0] sum;

assign sum = a+b;

endmodule