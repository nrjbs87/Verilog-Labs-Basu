`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:17 11/17/2014 
// Design Name: 
// Module Name:    lab4_seven_alternate 
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
module lab4_seven_alternate(clock, reset, trigger, button,
									small_bin, AN);
	input trigger, clock, button;
	input reset;
	
	wire [15:0] big_bin;
	
	output reg [3:0] small_bin;
	output reg [3:0] AN;
	
	reg [1:0] count;
	wire kHzclk; // 1KHZ clock
	
	//big_bin loaded from MidCounter into 7seg 
	lab4_counter MidCounter (big_bin, trigger, clock, button, reset);
	//100 MHz -> 1KHz
	lab4_Khz_clock_divider MtoKclock (clock, kHzclk);
	
	always @(posedge kHzclk or posedge reset)
	begin
		if (reset)
			begin
				AN = 0;
				small_bin = 0;
				count = 0; 
			end
		else
			begin
//				count = count + 1'b1;
				case (count)
					2'b00: begin
								AN = 4'b1110;
								small_bin = big_bin[3:0];
								count = count + 1'b1;
								end
					2'b01: begin
								AN = 4'b1101;
								small_bin = big_bin [7:4];
								count = count + 1'b1;
								end
					2'b10: begin
								AN = 4'b1011;
								small_bin = big_bin [11:8];
								count = count + 1'b1;
								end
					default: begin
								AN = 4'b0111;
								small_bin = big_bin [15:12];
								count = count + 1'b1;
								end
					endcase
				end
		end
endmodule
