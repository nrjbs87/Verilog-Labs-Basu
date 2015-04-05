`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:37:05 10/24/2014
// Design Name:   BCD_adder
// Module Name:   X:/Desktop/Logic labs/four_bit_binary_adder_subtractor/BCD_adder_testbench.v
// Project Name:  four_bit_binary_adder_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_adder_testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire Cout;
	wire [0:3] S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	BCD_adder uut (
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.S(S), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

