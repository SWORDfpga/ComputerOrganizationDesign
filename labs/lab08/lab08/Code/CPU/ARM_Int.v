`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:10:34 02/25/2014 
// Design Name: 
// Module Name:    Decode_Int 
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
module       ARM_INT(input wire clk,
							input wire reset,
							input wire INT,
							input wire eret,
							input wire[31:0] pc_next,
							output reg [31:0] pc
							);
						
reg int_act=0,int_req_r=0,int_en=1;
reg [31:0] EPC;

	//interrupt Trigger 
		assign int_clr = reset|int_act;		//clear interrupt Request
		always @(posedge INT or 				//interrupt Request
					posedge int_clr )begin		//clear interrupt Request
			if(int_clr==1 )int_req_r<=0;		//clear interrupt Request
			else int_req_r<=1;					//set interrupt Request
		end
						
	always @(posedge clk or posedge reset ) begin	  			
			if (reset)begin EPC     <= 0; 	//EPC=32'h00000000; 
								 int_act <= 0;		
								 int_en  <= 1;	
			end 			
			else if(int_req_r & int_en)begin //int_req_r: interrupt Request reg
							EPC <= pc_next; 		//interrupt return PC
							int_act<=1;				//interrupt Service 
							int_en<=0; 				//interrupt disable
				  end
				  else begin int_act<=0; 	
						 if(eret) int_en<=1;	 	//interrupt enable if pc<=EPC;						
						 end
	end
		
		
	//PC Out	
		always @* begin
			if (reset==1)pc <= 32'h00000000; 
			else if(int_req_r & int_en )
					  pc <= 32'h00000004;		//interrupt Vector
				  else if(eret)pc <= EPC; 		//interrupt return
				       else pc <= pc_next;		//next instruction
		end

endmodule
