`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:21 09/16/2016 
// Design Name: 
// Module Name:    Display 
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
module Display(input clk,
					input rst,
					input Start,
					input Text,
					input flash,
					input [31:0]Hexs,
					input [7:0]point,
					input [7:0]LES,
					
					output segclk,
					output segsout,
					output SEGEN,
					output segclrn
					);
					
wire [63:0]a,b,o;	
	assign o = Text ? a : b;

					
	HexTo8SEG		SM1(.Hexs(Hexs),		
							 .points(point),
							 .LES(LES),
							 .flash(flash),
							 .SEG_TXT(a)
							 );
						 
	SSeg_map			SM3(.Disp_num({Hexs,Hexs}), 
                      .Seg_map(b)
							 );


	P2S 				#(.DATA_BITS(64),.DATA_COUNT_BITS(6),.DIR(1)) 
						  P7SEG (.clk(clk),
									.rst(rst),
									.Start(Start),
									.PData(o),
									.sclk(segclk),
									.sclrn(segclrn),
									.sout(segsout),
									.EN(SEGEN)
									);							 

endmodule
