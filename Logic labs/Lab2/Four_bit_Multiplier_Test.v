`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:47:02 10/31/2014
// Design Name:   Four_bit_Multipler
// Module Name:   X:/Desktop/Logic labs/Lab2/Four_bit_Multiplier_Test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Four_bit_Multipler
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Four_bit_Multiplier_Test;

	// Inputs
	reg [3:0] i1;
	reg [3:0] i2;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	Four_bit_Multipler uut (
		.y(y), 
		.i1(i1), 
		.i2(i2)
	);

	initial begin
		// Initialize Inputs
		i1 = 4'b0010;
		i2 = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

