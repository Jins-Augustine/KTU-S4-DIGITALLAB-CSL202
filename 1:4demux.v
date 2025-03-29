`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2025 19:40:11
// Design Name: 
// Module Name: demux
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


module demux(input i0,s1,s0,output y0,y1,y2,y3);
and(y0,i0,(~s1),(~s0));
and(y1,i0,(~s1),s0);
and(y2,i0,s1,(~s0));
and(y3,i0,s1,s0);
endmodule
