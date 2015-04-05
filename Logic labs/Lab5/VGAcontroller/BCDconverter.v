`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:19 12/14/2014 
// Design Name: 
// Module Name:    BCDconverter 
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
module BCDconverter( input [15:0] binary, output reg[15:0] clean);
//Converts HEX to BCD so it can be displayed on the seven segment.
	

	reg [3:0] Thousands_place;
	reg [3:0] Hundreds_place;
	reg [3:0] Tens_place;
	reg [3:0] Ones_place;
	
	integer x;
	always@(binary)
	begin
	
		Thousands_place=4'd0;
		Hundreds_place=4'd0;
		Tens_place=4'd0;
		Ones_place=4'd0;
		
		for (x=15; x>=0; x=x-1)
			begin
			if(Thousands_place >= 5)
				Thousands_place = Thousands_place + 3;
				
			if (Hundreds_place >=5)
				Hundreds_place = Hundreds_place + 3;
				
			if(Tens_place >= 5)
				Tens_place = Tens_place + 3;
				
			if (Ones_place >=5)
				Ones_place = Ones_place + 3;
			
			Thousands_place = Thousands_place << 1;
			Thousands_place[0] = Hundreds_place[3];
			
			Hundreds_place = Hundreds_place << 1;
			Hundreds_place[0] = Tens_place[3];
			Tens_place = Tens_place << 1;
			
			Tens_place[0] = Ones_place[3];
			Ones_place = Ones_place <<1;
			Ones_place[0] = binary[x];
			end
		
		clean<={Thousands_place, Hundreds_place, Tens_place, Ones_place};
		
	end
endmodule

	