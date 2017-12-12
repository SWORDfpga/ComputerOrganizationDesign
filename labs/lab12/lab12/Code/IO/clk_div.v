`timescale 1ns / 1ps

module	clk_div(
//	input		clk
	input					clk200m_p,
	input					clk200m_n,
	input					rst,
	input					SW2,
	output				Clk_CPU,
	output				clk100m,
	output	[31:0]	clkdiv
);

wire	clk;

IBUFDS	inst_clk(
.I(clk200m_p),
.IB(clk200m_n),
.O(clk)
);

reg	[32:0]	cntx;

always@(posedge	clk	or	posedge	rst)
begin
	if(rst)
		cntx<=0;
	else
		cntx<=cntx+1'b1;
end

reg	clk100m;

always@(posedge	clk)
begin
	clk100m<=~clk100m;
end

//assign	clk100m=cntx[0];
//assign	clk100m=1'b1;

assign	clkdiv[31:0]=cntx[32:1];
assign	Clk_CPU=(SW2)?clkdiv[24]:clkdiv[2];

endmodule
