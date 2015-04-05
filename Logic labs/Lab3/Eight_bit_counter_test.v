`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:46:15 11/14/2014
// Design Name:   Eight_bit_counter
// Module Name:   X:/Desktop/Logic labs/Lab3/Eight_bit_counter_test.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Eight_bit_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Eight_bit_counter_test;

	// Inputs
	reg clock;
	reg reset;
	reg trigger;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	Eight_bit_counter uut (
		.count(count), 
		.clock(clock), 
		.reset(reset), 
		.trigger(trigger)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;
		trigger = 0;  
		#10 reset=0;
	
		

		// Wait 100 ns for global reset to finish
		#100;
		
      
		// Add stimulus here 
		#100
	trigger=0;
	#100
	trigger=1;
	#100
	trigger=0;
		

	end 
	
	//always #5 trigger=~trigger;
	
	always #5 clock=~clock;
      
endmodule

