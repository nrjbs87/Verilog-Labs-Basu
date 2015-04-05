`timescale 1ns / 1ps
module Full_Adder(A,B,Cin,S,Cout);

	input A,B,Cin;
	output Cout,S;
	wire w1;

	Xor G1(w1,A,B);
	Xor G2(S,w1,Cin);
	assign Cout=((A & B) | (w1 & Cin));




endmodule
