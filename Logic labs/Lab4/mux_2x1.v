`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:35 12/05/2014 
// Design Name: 
// Module Name:    mux_2x1 
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
module mux_2x1(trueclock, trigger, clock, button);
	output reg trueclock;
	wire cleaninput, hzclock;
	input trigger, clock, button;
		
	Debouncer Debouncer (cleaninput, clock, button);
	MtoHCLK MtoHCLK (clock, hzclock);
	
	always @ (*)
	begin
		case (trigger)
			1'b0: trueclock = hzclock;
			1'b1: trueclock = cleaninput;
		endcase
	end
	
endmodule
