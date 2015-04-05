`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:20 12/14/2014 
// Design Name: 
// Module Name:    seven_alternate 
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
module seven_alternate(reset,clock,bigbin,smallbin, AN);
	input clock; //Acts as 1 Hz clock
	input reset;
	
	input  [15:0] bigbin;
	
	output reg [3:0] AN;
	output reg [3:0] smallbin;
	
	reg [1:0] count;
	
	wire khzclock;
	
	clk_divider16 khz(clock, khzclock);
	
	always@(posedge khzclock or posedge reset)
	begin
		if(reset)
			begin
				AN = 0;
				smallbin = 0;
				count = 0;
			end
		else
			begin
				case(count)
					2'b00:begin
						AN = 4'b1110;
						smallbin = bigbin[3:0];
						count = count + 1'b1;
						end
					2'b01:begin
						AN = 4'b1101;
						smallbin = bigbin[7:4];
						count = count + 1'b1;
						end
					2'b10:begin
						AN = 4'b1011;
						smallbin = bigbin[11:8];
						count = count + 1'b1;
						end
					default:begin
						AN = 4'b0111;
						smallbin = bigbin[15:12];
						count = count + 1'b1;
						end
					endcase
				end
			end
endmodule 