`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:02 11/14/2014 
// Design Name: 
// Module Name:    Eight_bit_counter 
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
module Eight_bit_counter(count,clock,reset,trigger);
	input clock, reset,trigger;
	output reg [7:0] count;
	wire clean;

	Debouncer debouncer(reset,clock,trigger,clean);

	always @(posedge clock, posedge reset)
	if (reset) 
	begin
		count<=8'b0; 
	end
	else if(clean)
	begin
		count<=count+ 1'b1; 
	end

 

endmodule
