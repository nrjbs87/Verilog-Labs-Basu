`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:50:22 12/14/2014 
// Design Name: 
// Module Name:    vga_display 
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
module vga_display(rst, clk, R, G, B, HS, VS, R_control, G_control, B_control, up, down, left, right, seven, anode);
	
	input rst;	// global reset
	input clk;	// 100MHz clk
	output [6:0]seven;
	output [3:0]anode;
	
	// color inputs for a given pixel
	input [2:0] R_control, G_control;
	input [1:0] B_control; 
	 
	// color outputs to show on display (current pixel)
	output reg [2:0] R, G;
	output reg [1:0] B;
	
	// Synchronization signals
	output HS;
	output VS;
	
	//State Machine parameters
	parameter S_IDLE = 0; 	//no button pushed
	parameter S_UP = 1; 	// the first button pushed
	parameter S_UP_LEFT = 5; 	//UP+LEFT = 0001+0100=0101
	parameter S_UP_RIGHT = 9; 	//UP+RIGHT = 0001+1000=1001
	parameter S_DOWN = 2; 	// 0010 - the second button pushed
	parameter S_DOWN_RIGHT = 10; //DOWN+RIGHT=1010
	parameter S_DOWN_LEFT = 6;	//DOWN+LEFT=0110
	parameter S_LEFT = 4; 	// 0100 - and so on
	parameter S_RIGHT = 8; 	// 1000 - and so on
	
	input up, down, left, right;	//1 bit inputs
	reg[15:0]x = 200, y = 100;		//current position variables
	reg slow_clk;	//clock for position update
	reg [3:0]state;
	reg [3:0]next_state;
	wire [15:0]clean;
	wire [3:0]smallbin;
	
	//slow clock for position update 
	reg[25:0] slow_count;
	always@(posedge clk)
	begin
		slow_count = slow_count + 1'b1;
		slow_clk = slow_count[23];
	end

	
	//State Machine
	always@(posedge slow_clk)
	begin
		state = next_state;
	end
	
	
	always@(posedge slow_clk)
	begin
		if(rst)
		begin
			x <= 200;
			y <= 100;
			next_state <= {right, left, down, up};
		end
		else
		begin
		case(state)
			S_IDLE:begin //if input is 0000
				next_state <= {right, left, down, up};
				end
			S_UP:begin	//if input is 0001
				y <= y-5;
				next_state <= {right, left, down, up};
				end
			S_UP_LEFT:begin
				y <= y - 5;
				x <= x - 5;
				next_state <= {right, left, down, up};
				end
			S_UP_RIGHT:begin
				y <= y - 5;
				x <= x + 5;
				next_state <= {right, left, down, up};
				end
			S_DOWN:begin	//if input is 0010
				y <= y+5;
				next_state <= {right, left, down, up};
				end
			S_DOWN_RIGHT:begin
				y <= y + 5;
				x <= x + 5;
				next_state <= {right, left, down, up};
				end
			S_DOWN_LEFT:begin
				y <= y + 5;
				x <= x - 5;
				next_state <= {right, left, down, up};
				end
			S_LEFT:begin //if input is 0011
				x <= x-5;
				next_state <= {right, left, down, up};
				end
			S_RIGHT:begin	//if input is 0100
				x <= x+5;
				next_state <= {right, left, down, up};
				end
			default:begin
				next_state <= {right, left, down, up};
				end
		endcase
		end
	end
	
	// controls:
	wire [10:0] hcount, vcount;	// coordinates for the current pixel
	wire blank;	// signal to indicate the current coordinate is blank
	wire figure;	// the figure you want to display
	
	/////////////////////////////////////////////////////
	// Begin clock division
	parameter N = 2;	// parameter for clock division
	reg clk_25Mhz;
	reg [N-1:0] count;
	always @ (posedge clk) begin
		count <= count + 1'b1;
		clk_25Mhz <= count[N-1];
	end
	// End clock division
	/////////////////////////////////////////////////////
	
	// Call driver
	vga_controller_640_60 vc(
		.rst(rst), 
		.pixel_clk(clk_25Mhz), 
		.HS(HS), 
		.VS(VS), 
		.hcounter(hcount), 
		.vcounter(vcount), 
		.blank(blank));
	
	// create a box:
	assign figure = ~blank & (hcount >= x & hcount <= 150+x & vcount >= y & vcount <= 150+y);
	
	
	
	
	BCDconverter B4(x, clean);
	seven_alternate S1(clk, rst, clean, smallbin, anode);
	Bin_to_Seg B1(smallbin, seven);
	
	
	
	// send colors:
	always @ (posedge clk) begin
		if (figure) begin	// if you are within the valid region
			R = R_control;
			G = G_control;
			B = B_control;
		end
		else begin	// if you are outside the valid region
			R = 0;
			G = 0;
			B = 0;
		end
	end
endmodule
