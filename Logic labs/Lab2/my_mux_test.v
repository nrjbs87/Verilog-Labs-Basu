`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:28:15 11/05/2014
// Design Name:   my_mux
// Module Name:   X:/Desktop/Logic labs/Lab2/my_mux_test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: my_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module my_mux_test;

	// Inputs
	reg [7:0] A0;
	reg [7:0] A1;
	reg [7:0] A2;
	reg [7:0] A3;
	reg [1:0] S;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	my_mux uut (
		.A0(A0), 
		.A1(A1), 
		.A2(A2), 
		.A3(A3), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A0 = 0;
		A1 = 0;
		A2 = 0;
		A3 = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
	   S=2'b11;
		A0=8'b00000001;
		A1=8'b00000011;
		A2=8'b00000111;
		A3=8'b00001111;
      #100;
        
		// Add stimulus here

	end
	
	//always begin
	
	//#10 S =S+ 1'b1;
	
	//end
      
endmodule

