`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:40:16 11/07/2014
// Design Name:   ALU
// Module Name:   X:/Desktop/Logic labs/Lab2/ALUtestbench.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUtestbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg [1:0] S;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		S = 0;
 
		// Wait 100 ns for global reset to finish
		#100;
		
	#5	A=4'b0011;
		B=4'b0100;
		S=2'b00;
		
	#100A=4'b0011;
		B=4'b0100;
		S=2'b01;
		
	#100 A=4'b0011;
		B=4'b0100;
		S=2'b10;
		
	#100 A=4'b0011;
		B=4'b0100;
		S=2'b11;
		
		
        
		// Add stimulus here

	end
       
endmodule

