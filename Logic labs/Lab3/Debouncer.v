`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:24:38 11/14/2014 
// Design Name: 
// Module Name:    Debouncer 
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
module Debouncer(reset,clock,trigger,clean);
	input reset,trigger, clock;
	output reg clean;
	parameter delay=300000;
	reg [21:0] delay_count;

	always @(posedge clock)
	begin

		if (trigger == 1)
		begin
			if (delay_count!=22'b1111111111111111111111)
			delay_count<=delay_count+1'b1;
			
				if(delay_count==delay) 
					clean<=1;
				else 
					clean <= 0;
			
			
		end
		else
		begin
			delay_count<=0;
			clean<=0;
		end
	end
endmodule



