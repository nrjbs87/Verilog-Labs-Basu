`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:39:48 12/14/2014 
// Design Name: 
// Module Name:    Bin_to_Seg 
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
module Bin_to_Seg(bin, seven);//Converts binary inputs to seven segment display.
	input [3:0] bin;
	output reg [6:0] seven; 
	
	always @(bin)
	begin
	
		case (bin)
			4'b0000: seven =	7'b1000000;//0
			4'b0001: seven =	7'b1111001;//1
			4'b0010: seven = 	7'b0100100;//2
			4'b0011: seven = 	7'b0110000;//3
			4'b0100: seven =	7'b0011001;//4
			4'b0101: seven =	7'b0010010;//5
			4'b0110: seven =	7'b0000010;//6
			4'b0111: seven =	7'b1111000;//7
			4'b1000: seven =	7'b0000000;//8
			4'b1001: seven =	7'b0011000;//9
			4'b1010: seven =	7'b0001000;//A
			4'b1011: seven =	7'b0000011;//B
			4'b1100: seven =	7'b1000110;//C
			4'b1101: seven =	7'b0100001;//D
			4'b1110: seven =	7'b0000110;//E
			default: seven =	7'b0001110;// Default F
		endcase
	
	end
endmodule