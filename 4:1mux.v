`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 19:08:40
// Design Name: 
// Module Name: mux
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


module mux(input i0,i1,i2,i3,s1,s0,output y);
wire a,b,c,d;
and(a,i0,(~s1),(~s0));
and(b,i1,(~s1),s0);
and(c,i2,s1,(~s0));
and(d,i3,s1,s0);
or(y,a,b,c,d);
endmodule
