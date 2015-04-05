module Xor(O,A,B);
output O;
input A, B;
assign O = (((~A) & B) | (A & (~B)));
endmodule

