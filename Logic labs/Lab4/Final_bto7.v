`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:46 12/05/2014 
// Design Name: 
// Module Name:    Final_bto7 
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
module Final_bto7(seven, AN, button, clock, trigger, reset);

	output wire [6:0] seven;
	output wire [3:0] AN;
	

	input button, clock, trigger, reset;
	wire kHzclk;
	
	wire [3:0] small_bin;
	

	seven_segment_driver seven_segment_driver (clock, reset, trigger, button, small_bin, AN);
	Backtosevendisplay Backtosevendisplay (small_bin, seven);
endmodule
