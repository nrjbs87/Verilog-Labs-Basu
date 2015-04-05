`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:41 12/05/2014 
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
module Debouncer(clean, clock, button);


output reg clean;
input clock, button;

parameter delay = 10000000;

reg [25:0] delay_count;
reg pressed;

always @ (posedge clock)
			if (button)
				begin
					if (delay_count < delay)
						begin
							clean = 0;
							delay_count = delay_count + 1'b1;
						end
					else
						begin
							clean = 1;
							delay_count = 0;
						end
				end
			else
				begin
					clean = 0;
					delay_count = delay_count + 1'b1;
				end
endmodule
