`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:20 10/31/2014 
// Design Name: 
// Module Name:    Four_Bit_Adder 
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
module four_bit_binary_adder_subtractor(A,B,S);

input [3:0] A, B;
//input M;

output [7:0] S;
//input C;
//output Cout;

/*wire w1,w2,w3,w4,C1,C2,C3;


Xor G1(w1,M, B[0]);
Full_Adder FA1(A[0], w1, M, S[0],C1);

Xor G2(w2,M, B[1]);
Full_Adder FA2(A[1], w2, C1, S[1],C2);

Xor G3(w3,M, B[2]);
Full_Adder FA3(A[2], w3, C2, S[2],C3);

Xor G4(w4,M, B[3]);
Full_Adder FA4(A[3], w4, C3, S[3],Cout);

//Xor Gout(V,Cout,C3);

*/

assign S = A + B;

endmodule
