module BCD_adder(A,B,Z,C);

input [3:0] A,B;
output [3:0] Z;
output  C;
wire V;
wire w1;
wire Cout;
wire Cin,Ch, Cout1;
wire [3:0]  S;
assign M=0;
wire [3:0] j;
assign Cin=0;
assign Ch=0;

four_bit_binary_adder_subtractor G1(A,B,M,S,Cin,Cout,V);

assign w1=Cout;
assign C = (w1 | (S[3] & S[1] ) | (S[3] & S[2]));



assign j[0]=0;
assign j[1]=C;
assign j[2]=C;
assign j[3]=0;

//assign B[0]=S[0];
//assign B[1]=S[1];
//assign B[2]=S[2];
//assign B[3]=S[3];


four_bit_binary_adder_subtractor G2(j,S,M,Z,Ch,Cout1,V);

endmodule
