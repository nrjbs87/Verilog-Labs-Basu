`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:32 12/05/2014 
// Design Name: 
// Module Name:    Counter 
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
module Counter(count, trigger, clock, button, reset);
output reg [15:0] count;
input reset;

input trigger, clock, button;
wire trueclock;

mux_2x1 mux (trueclock, trigger, clock, button);

initial begin
	count = 0;
end

always @ (posedge trueclock or posedge reset)
	begin
		if (reset == 1)
			count <= 0;
		else 
			count <= count + 1'b1;
	end


endmodule
