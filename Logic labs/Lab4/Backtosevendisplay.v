`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:55 12/05/2014 
// Design Name: 
// Module Name:    Backtosevendisplay 
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
module Backtosevendisplay(bin, seven);

	input [3:0] bin;
	output reg [6:0] seven;

	always @(bin)
	begin
		case (bin)
			4'b0000: seven = 7'b1000000; //0 1000000
			4'b0001: seven = 7'b1111001; //1 1111001
			4'b0010: seven = 7'b0100100; //2 0100100
			4'b0011: seven = 7'b0110000; //3 0110000
			4'b0100: seven = 7'b0011001; //4 0011001
			4'b0101: seven = 7'b0010010; //5 0010010
			4'b0110: seven = 7'b0000010; //6 0000010
			4'b0111: seven = 7'b1111000; //7 1111000
			4'b1000: seven = 7'b0000000; //8 0000000
			4'b1001: seven = 7'b0011000; //9 0011000
			4'b1010: seven = 7'b0001000; //A 0001000
			4'b1011: seven = 7'b0000011; //B 0000011
			4'b1100: seven = 7'b1000110; //C 1000110
			4'b1101: seven = 7'b0100001; //D 0100001
			4'b1110: seven = 7'b0000110; //E 0000110
			default: seven = 7'b0001110; //F 0001110
		endcase
	end
endmodule
