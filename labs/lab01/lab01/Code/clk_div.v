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

reg	[32:0]	cnt;

always@(posedge	clk	or	posedge	rst)
begin
	if(rst)
		cnt<=0;
	else
		cnt<=cnt+1'b1;
end

assign	clkdiv[31:0]=cnt[32:1];
assign	Clk_CPU=(SW2)?clkdiv[24]:clkdiv[2];
//assign	clk100m=cnt[0];

reg	clk100m;
always@(posedge	clk)
begin
	clk100m<=~clk100m;
end

endmodule
