`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:36 05/26/2014 
// Design Name: 
// Module Name:    SCPU_ctrl 
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
module     SCtrl_INT(input[5:0]OPcode,				//OPcode
							input[5:0]Fun,					//Function
							input wire int_code,
							 input wire MIO_ready,			//CPU Wait
							 input wire zero,					//ALU result=0
							 output reg RegDst,
							 output reg ALUSrc_B,
							 output reg [1:0] DatatoReg,
							 output reg Jal,
							 output reg [1:0]Branch,
							 output reg RegWrite,
							 output reg mem_w,
							 output reg [2:0]ALU_Control,
							 output reg eret,
							 output reg CPU_MIO
							);
					  
	always @* begin
		RegDst=0;
		ALUSrc_B=0;
		DatatoReg=2'b00;
		RegWrite=0;
		Branch=2'b00;
		Jal=0;
		mem_w=0;
		CPU_MIO=0;
		eret=0;
		
			case(OPcode)												//采用一级译码，不用ALUop编码
				6'b000000: begin RegDst=1;RegWrite=1;			//ALU
							  case(Fun)
								6'b100000: ALU_Control=3'b010;	//add
								6'b100010: ALU_Control=3'b110;	//sub
								6'b100100: ALU_Control=3'b000;	//and
								6'b100101: ALU_Control=3'b001;	//or
								6'b101010: ALU_Control=3'b111;	//slt
								6'b100111: ALU_Control=3'b100;	//nor:~(A | B)
								6'b000010: ALU_Control=3'b101;	//srl
								6'b010110: ALU_Control=3'b011;	//xor
				//				6'h00:	  ALU_Control=3'b011;	//sll
								6'h08:	  Branch=2'b11; 			//jr

								default:   ALU_Control=3'bx;
							  endcase
							  end
							  
				6'b100011: begin ALU_Control=3'b010;									//add计算地址
									  ALUSrc_B=1;DatatoReg=2'b01;RegWrite=1;	end	//load
									  
				6'b101011: begin ALU_Control=3'b010;									//add计算地址
									  ALUSrc_B=1;	mem_w=1;							end	//store
									  
				6'b000100: begin ALU_Control=3'b110;									//减法zero=1?
									  Branch={1'b0,zero};							end	//beq	
									  
				6'b000010:		  Branch=2'b10;											//jump
				
				6'h05: 	  begin ALU_Control=3'b110;									//减法zero=0?
									  Branch={1'b0,~zero};							end	//bne
									  
				6'h24: 	  begin ALU_Control=3'b111;
									  ALUSrc_B=1; RegWrite=1;						end	//slti
									  
				6'h08: 	  begin ALU_Control=3'b010;
									  ALUSrc_B=1;	RegWrite=1;						end	//addi;	

		//		6'h09: 	  begin ALU_Control=3'b010; 
		//							  ALUSrc_B=2‘b10;RegWrite=1;end						//addui要扩展ALUSrc_B信号

				6'h0c: 	  begin ALU_Control=3'b000;	
									  ALUSrc_B=1; RegWrite=1;						end	//andi
				
				6'h0d: 		begin ALU_Control=3'b001;
									   ALUSrc_B=1; RegWrite=1;end							//ori
										
		//		6'h0e: 		begin ALU_Control=3'b011;	
		//								ALUSrc_B=1; RegWrite=1;end							//xori

				6'h03:		begin Jal=1; Branch=2'b10;	
										DatatoReg=2'b11;  RegWrite=1;	end				//jal
				
				6'h0f: 		begin DatatoReg=2'b10;		RegWrite=1;end				//lui
				
				6'h10: if (int_code & Fun == 6'h18) eret=1;							//eret:interrupt return

				default: 		  ALU_Control=3'b010;	

			endcase
	end
	
endmodule

