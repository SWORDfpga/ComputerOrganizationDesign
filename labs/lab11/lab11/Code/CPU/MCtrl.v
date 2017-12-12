`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:06 08/03/2009 
// Design Name: 
// Module Name:    ctrl 
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
module   MCtrl(input  clk,
					input  reset,
					input  [31:0] Inst_in,
					input  zero,
					input  overflow,
					input  MIO_ready,
					output reg MemRead,
					output reg MemWrite,
					output [2:0]ALU_operation,
					output [4:0]state_out,
					
					output reg CPU_MIO,
					output reg IorD,
					output reg IRWrite,
					output reg [1:0]RegDst,
					output reg RegWrite,
					output reg [1:0]MemtoReg,
					output reg ALUSrcA,
					output reg [1:0]ALUSrcB,
					output reg [1:0]PCSource,
					output reg PCWrite,
					output reg PCWriteCond,
					output reg Branch
					);
				

reg [3:0] state, Q;
reg [1:0] ALUop;
wire[3:0] D;

parameter IF    = 4'b0000,  ID    = 4'b0001, Mem_Ex = 4'b0010, Mem_RD = 4'b0011, LW_WB = 4'b0100,
			 Mem_W = 4'b0101,  R_Exc = 4'b0110, R_WB   = 4'b0111, Beq_Exc= 4'b1000, J     = 4'b1001, 
			 Error = 4'b1111;
`define Datapath_signals	{PCWrite, PCWriteCond,IorD, MemRead, MemWrite,IRWrite, MemtoReg, PCSource, ALUSrcA, ALUSrcB, RegWrite, RegDst, Branch, ALUop, CPU_MIO}
parameter 	value0 = 20'b10010100000010000000,	value1 = 20'b00000000000110000000,
				value2 = 20'b00000000001100000000,	value3 = 20'b00110000000000000001,
				value4 = 20'b00000001000001000000,	value5 = 20'b00101000000000000001,
				value6 = 20'b00000000001000000100,	value7 = 20'b00000000000001010000,
				value8 = 20'b01000000011000001010,	value9 = 20'b10000000100000000000;
				
parameter AND=3'b000, OR=3'b001, ADD=3'b010, SUB=3'b110, NOR=3'b100, SLT=3'b111, XOR=3'b011, SRL=3'b101;
	  
								  									

	assign state_out={1'b0,Q};
	wire [5:0] OP = Inst_in[31:26];
//	
	wire s0 = ~|Q;											//if Q=0000 then s0 = 1
	wire s1 = ~Q[3] && ~Q[2] && ~Q[1] &&  Q[0] ;	//if Q=0001 then s1 = 1
	wire s2 = ~Q[3] && ~Q[2] &&  Q[1] && ~Q[0] ;	//if Q=0010 then s2 = 1
	wire s3 = ~Q[3] && ~Q[2] &&  Q[1] &&  Q[0] ;	//if Q=0011 then s3 = 1
	wire s4 = ~Q[3] &&  Q[2] && ~Q[1] && ~Q[0] ;	//if Q=0100 then s4 = 1
	wire s5 = ~Q[3] &&  Q[2] && ~Q[1] &&  Q[0] ;	//if Q=0101 then s5 = 1
	wire s6 = ~Q[3] &&  Q[2] &&  Q[1] && ~Q[0] ;	//if Q=0110 then s6 = 1
	wire s7 = ~Q[3] &&  Q[2] &&  Q[1] &&  Q[0] ;	//if Q=0111 then s7 = 1
	
	wire s8 =  Q[3] && ~Q[2] && ~Q[1] && ~Q[0] ;	//if Q=1000 then s8 = 1
	wire s9 =  Q[3] && ~Q[2] && ~Q[1] &&  Q[0] ;	//if Q=1001 then s9 = 1
	
	wire Rtype  =  ~|OP; 
	wire LS     = (OP == 6'b10x011) ? 1 : 0;	
	wire IBeq   = (OP == 6'b000100) ? 1 : 0;
	wire Jump   = (OP == 6'b000010) ? 1 : 0;
	wire Load   = (OP == 6'b100011) ? 1 : 0;
	wire Store  = (OP == 6'b101011) ? 1 : 0;

	assign D[3] = s1 && (IBeq || Jump);
	assign D[2] = s1 && Rtype || s2 && Store || s3 && Load || s6 && Rtype;
	assign D[1] = s1 && (LS || Rtype) || s2 && Load || s6 && Rtype;
	assign D[0] = s0 || s1 && Jump || s2 && Load || s2 && Store || s6 && Rtype;
	

	always @ (posedge clk or posedge reset)
		if (reset==1) Q <= IF;  	        
		else Q <= D;

	always @ * begin
		case(Q)												//state
			IF: 		`Datapath_signals = value0;
			ID:		`Datapath_signals = value1;
			Mem_Ex:	`Datapath_signals = value2;
			Mem_RD:	`Datapath_signals = value3;
			LW_WB:	`Datapath_signals = value4;
			Mem_W:	`Datapath_signals = value5;
			R_Exc:	`Datapath_signals = value6;
			R_WB:		`Datapath_signals = value7;
			Beq_Exc:	`Datapath_signals = value8;
			J:			`Datapath_signals = value9;
			default: `Datapath_signals = value0;
		endcase

	end

//ALU Decoder

	ALU_Decoder		ALU_D(.ALUop(ALUop),
								.Fun(Inst_in[5:0]), 
								.ALU_Control(ALU_operation)
								);


	
/*	always @ * begin
		case(ALUop)
			2'b00: ALU_operation = 3'b010;					//add计算地址
			2'b01: ALU_operation = 3'b110;					//sub比较条件
			2'b10: 
			case (Inst_in[5:0])
				6'b100000: ALU_operation = ADD;
				6'b100010: ALU_operation = SUB;
				6'b100100: ALU_operation = AND;
				6'b100101: ALU_operation = OR;
				6'b100111: ALU_operation = NOR;
				6'b101010: ALU_operation = SLT;
				6'b000010: ALU_operation = SRL;		//shfit 1bit right
				6'b000000: ALU_operation = XOR;	
				default:   ALU_operation = ADD;
			endcase
			2'b11: ALU_operation = 3'b111;			//slti
		endcase		
	end	
*/	
/*	always @ (posedge clk or posedge reset)
		if (reset==1) begin 
		 state <= IF; 
		end
		else
		  case (state)
			IF: begin
				if(MIO_ready)begin state <= ID;	end
				else begin	state <= IF;end
			 end
			 
			ID: begin
				case (Inst_in[31:26])
				6'b000000:begin state <= R_Exc;	end				//R-type OP
				6'b100011:begin state <= Mem_Ex;	end				//Lw
				6'b101011:begin state <= Mem_Ex;	end				//Sw
				6'b000010:begin state <= J;		end				//Jump
				6'b000100:begin state <= Beq_Exc; end				//Beq
				default:  begin state <= Error;	end
				endcase
			end		//end ID
			
			Mem_Ex:begin
				if(Inst_in[31:26]==6'b100011)begin
					state <= Mem_RD; end
				else if(Inst_in[31:26]==6'b101011)begin
					state <= Mem_W; end
			end

			Mem_RD:begin
				if(MIO_ready)begin
					state <= LW_WB; end
				else begin
					state <=Mem_RD; end
			 end

			Mem_W:begin
				if(MIO_ready)begin
					state <= IF; 		end
				else begin
					state <= Mem_W;  	end
			end
		
			LW_WB:begin
				state <=IF; end
			
			R_Exc:begin
				state <= R_WB; end
					 
			R_WB:begin
				state <= IF; end
		 
			Beq_Exc:begin
				state <= IF; end
				
			J:begin
				state <= IF; end

			Error: state <= Error;
			default: begin
				state <= Error; end
		  endcase 
*/	
 endmodule
