`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:00 10/31/2014 
// Design Name: 
// Module Name:    BCD_Adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BCD_adder(A,B,Z,C);

input [3:0] A,B;
output [7:0] Z;
output reg  C;
wire V;
wire w1;
wire Cout;
wire Cin,Ch, Cout1;
wire [3:0]  S;
assign M=0;
wire [3:0] j;
assign Cin=0;
assign Ch=0;

four_bit_binary_adder_subtractor G1(A,B,S);

assign w1=Cout;


always @ (S)
begin
	if(S> 4'b1001)
	 C = 1'b1;
	else
	 C = 1'b0;
end



assign j[0]=0;
assign j[1]=C;
assign j[2]=C;
assign j[3]=0;

//assign B[0]=S[0];
//assign B[1]=S[1];
//assign B[2]=S[2];
//assign B[3]=S[3];


four_bit_binary_adder_subtractor G2(j,S,Z);

endmodule
