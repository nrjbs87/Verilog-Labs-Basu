`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:17:33 10/14/2014
// Design Name:   four_bit_binary_adder_subtractor
// Module Name:   X:/Desktop/Logic labs/four_bit_binary_adder_subtractor/Lab1_testbench_Q1_1.v
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

module Lab1_testbench_Q1_1;

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
		A = 0;
		B = 0;
		M = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		M=1'b0;
		A=4'b0100;
		B=4'b0010;
		
        
		// Add stimulus here

	end
      
endmodule

