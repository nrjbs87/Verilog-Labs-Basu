`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:00 12/14/2014 
// Design Name: 
// Module Name:    clk_divider16 
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
module clk_divider16(in, out);
	input in;
	output reg out;
	
	reg [15:0] count;
	
	always@(posedge in)
	begin
		if(count >= 50000)
			begin
			count <= 0;
			out<=1;
			end
		else
			begin
				count <= count + 1'b1;
				out<=0;
			end
	end
endmodule