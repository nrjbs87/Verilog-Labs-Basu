`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:15:49 10/14/2014
// Design Name:   four_bit_binary_adder_subtractor
// Module Name:   X:/Desktop/Logic labs/four_bit_binary_adder_subtractor/Four_bit_binary_adder_subtractor_simulation.v
// Project Name:  four_bit_binary_adder_subtractor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bit_binary_adder_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Four_bit_binary_adder_subtractor_simulation;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg M;

	// Outputs
	wire [3:0] S;
	wire [3:0] C;
	wire Cout;
	wire V;

	// Instantiate the Unit Under Test (UUT)
	four_bit_binary_adder_subtractor uut (
		.A(A), 
		.B(B), 
		.M(M), 
		.S(S), 
		.C(C), 
		.Cout(Cout), 
		.V(V)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0001;
		B = 4'b0001;
		M = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

