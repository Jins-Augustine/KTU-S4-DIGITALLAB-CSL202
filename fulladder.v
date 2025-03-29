`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 16:46:48
// Design Name: 
// Module Name: fulladder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fulladder(output sum,carry,input a,b,c);
wire d,e,f;
xor g1(d,a,b);
xor g2(sum,d,c);
and g3(e,a,b);
and g4(f,d,c);
or g5(carry,f,e);
endmodule
