`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:51:40 12/05/2014
// Design Name:   Final_bto7
// Module Name:   X:/Desktop/Logic labs/Lab4/seven_seg_disoplay_test.v
// Project Name:  Seven_Segment_Display
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Final_bto7
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seven_seg_disoplay_test;

	// Inputs
	reg button;
	reg clock;
	reg trigger;
	reg reset;

	// Outputs
	wire [6:0] seven;
	wire [3:0] AN;

	// Instantiate the Unit Under Test (UUT)
	Final_bto7 uut (
		.seven(seven), 
		.AN(AN), 
		.button(button), 
		.clock(clock), 
		.trigger(trigger), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		button = 0;
		clock = 0;
		trigger = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

