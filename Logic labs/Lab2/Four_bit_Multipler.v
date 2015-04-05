`timescale 1ns / 1ps
module Four_bit_Multipler(y, i1, i2);
output [7:0] y;
input [3:0] i1;
input [3:0] i2;

assign y = i1*i2;

endmodule
