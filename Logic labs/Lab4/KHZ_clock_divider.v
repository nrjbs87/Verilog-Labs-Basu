`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:01 12/05/2014 
// Design Name: 
// Module Name:    KHZ_clock_divider 
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
module KHZ_clock_divider(in_clk, out_clk);
input in_clk;
	output reg out_clk;
	
	reg [15:0] count;
	
	always @(posedge in_clk)
	begin
		if (count >= 50000)
			begin
			count <= 0;
			out_clk <= 1;
			end
		else
			begin
				count <= count + 1'b1;
				out_clk <= 0;
			end
	end

endmodule
