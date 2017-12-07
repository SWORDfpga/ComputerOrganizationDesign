`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:25 12/12/2015 
// Design Name: 
// Module Name:    P2S 
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
module        P2S(input wire clk,						//parallel to serial
						input wire rst,
						input wire Start,
						input wire[DATA_BITS-1:0] PData,
						output wire sclk,
						output wire sclrn,
						output wire sout,
						output reg  EN
						);
						
parameter
	DATA_BITS = 64,  											// data length
	DATA_COUNT_BITS = 6,										// data shift bits
	DIR = 1;														// Shift direction =0×óÒÆ
		
endmodule
