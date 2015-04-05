`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:32 11/05/2014 
// Design Name: 
// Module Name:    my_mux 
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
module my_mux(input [7:0] A0, A1, A2, A3,
              input [1:0] S,
              output reg [7:0] Y);
always@(*)begin
case(S)
0:Y=A0;
1:Y=A1;
2:Y=A2;
3:Y=A3;
endcase
end
endmodule
