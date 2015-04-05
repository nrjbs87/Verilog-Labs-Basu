`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:53 11/07/2014 
// Design Name: 
// Module Name:    ALU 
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
module ALU(input [3:0] A,B, input [1:0] S,
           output [7:0] Y); 
			  
	wire [7:0] D0, D1, D2, D3;
	reg [3:0] Z;
	reg Cout;
	wire C;

	Buffer m0(A,B,D0);
	four_bit_binary_adder_subtractor m1(A,B,D1);
	BCD_adder m2(A,B,D2,C);
	Four_bit_Multipler m3(D3, A, B);
	my_mux m4(D0, D1, D2, D3, S,Y);
	
	endmodule
	



