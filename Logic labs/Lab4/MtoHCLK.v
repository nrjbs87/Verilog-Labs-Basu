`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:53 12/05/2014 
// Design Name: 
// Module Name:    MtoHCLK 
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
module MtoHCLK(in_clk, out_clk);
input in_clk;
	output reg out_clk;
	
	reg [27:0] count;
	
	
	always @(posedge in_clk)
	begin
		if (count >= 50000000) 
			begin
			count <= 0;
			out_clk <= 1;
			end
		else
			begin
				out_clk <= 0;
				count <= count + 1'b1;
			end
	end

endmodule

