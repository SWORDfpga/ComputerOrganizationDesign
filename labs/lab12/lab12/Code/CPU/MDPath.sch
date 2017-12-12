<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RegDst(1:0)" />
        <signal name="data2CPU(31:0)" />
        <signal name="RegWrite" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="Inst(20:16)" />
        <signal name="data_out(31:0)" />
        <signal name="PC_Current(31:0)" />
        <signal name="V5" />
        <signal name="ALU_operation(2:0)" />
        <signal name="res(31:0)" />
        <signal name="XLXN_531(31:0)" />
        <signal name="PC_Current(31:28),Inst(25:0),N0,N0" />
        <signal name="IorD" />
        <signal name="PCSource(1:0)" />
        <signal name="ALU_Out(31:0)" />
        <signal name="IRWrite" />
        <signal name="Inst(31:0)" />
        <signal name="Inst(15:0)" />
        <signal name="MemtoReg(1:0)" />
        <signal name="XLXN_590(31:0)" />
        <signal name="Inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="Imm_32(31:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" />
        <signal name="XLXN_746(31:0)" />
        <signal name="XLXN_747(31:0)" />
        <signal name="ALUSrcA" />
        <signal name="N0" />
        <signal name="XLXN_770(31:0)" />
        <signal name="Imm_32(29:0),N0,N0" />
        <signal name="XLXN_803(4:0)" />
        <signal name="Inst(25:21)" />
        <signal name="ALUSrcB(1:0)" />
        <signal name="PCWriteCond" />
        <signal name="zero" />
        <signal name="Branch" />
        <signal name="XLXN_887" />
        <signal name="MIO_ready" />
        <signal name="XLXN_905" />
        <signal name="XLXN_910" />
        <signal name="XLXN_911" />
        <signal name="overflow" />
        <signal name="PCWrite" />
        <signal name="XLXN_929" />
        <signal name="XLXN_930(31:0)" />
        <signal name="N0,N0,N0,N0,N0" />
        <signal name="V5,V5,V5,V5,V5" />
        <signal name="Inst(15:11)" />
        <signal name="M_addr(31:0)" />
        <signal name="XLXN_931(31:0)" />
        <signal name="XLXN_932(31:0)" />
        <port polarity="Input" name="RegDst(1:0)" />
        <port polarity="Input" name="data2CPU(31:0)" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="data_out(31:0)" />
        <port polarity="Output" name="PC_Current(31:0)" />
        <port polarity="Input" name="ALU_operation(2:0)" />
        <port polarity="Input" name="IorD" />
        <port polarity="Input" name="PCSource(1:0)" />
        <port polarity="Input" name="IRWrite" />
        <port polarity="Output" name="Inst(31:0)" />
        <port polarity="Input" name="MemtoReg(1:0)" />
        <port polarity="Input" name="ALUSrcA" />
        <port polarity="Input" name="ALUSrcB(1:0)" />
        <port polarity="Input" name="PCWriteCond" />
        <port polarity="Output" name="zero" />
        <port polarity="Input" name="Branch" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Output" name="overflow" />
        <port polarity="Input" name="PCWrite" />
        <port polarity="Output" name="M_addr(31:0)" />
        <blockdef name="alu">
            <timestamp>2017-3-28T6:46:32</timestamp>
            <line x2="108" y1="-216" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="108" y1="-72" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="32" y1="-72" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="352" y1="-48" y2="-232" style="linewidth:W;linecolor:rgb(255,0,0)" x1="352" />
            <line x2="32" y1="-232" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="352" />
            <line x2="32" y1="-216" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="32" />
            <line x2="32" y1="-48" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="352" />
            <line x2="0" y1="-288" y2="-288" style="linewidth:W" x1="32" />
            <line x2="0" y1="16" y2="16" style="linewidth:W" x1="32" />
            <line x2="208" y1="-384" y2="-300" style="linewidth:W" x1="208" />
            <line x2="384" y1="-208" y2="-208" x1="352" />
            <line x2="384" y1="-144" y2="-144" style="linewidth:W" x1="352" />
            <line x2="384" y1="-80" y2="-80" x1="352" />
        </blockdef>
        <blockdef name="Regs">
            <timestamp>2014-6-26T7:27:31</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(254,180,229);fillstyle:Solid" width="352" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="240" y1="-496" y2="-448" x1="240" />
            <rect width="64" x="416" y="-396" height="24" />
            <line x2="480" y1="-384" y2="-384" x1="416" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="416" y="-124" height="24" />
            <line x2="480" y1="-112" y2="-112" x1="416" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2014-6-26T5:42:38</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="REG32">
            <timestamp>2016-1-9T14:9:2</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="88" x="32" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="0" y1="-96" y2="-96" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="120" y1="-128" y2="-128" style="linewidth:W" x1="144" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="MUX4T1_5">
            <timestamp>2017-4-26T13:57:45</timestamp>
            <rect width="24" x="4" y="-136" height="136" />
            <line x2="16" y1="-144" y2="-136" x1="16" />
            <line x2="4" y1="-112" y2="-112" style="linewidth:W" x1="0" />
            <line x2="4" y1="-80" y2="-80" style="linewidth:W" x1="0" />
            <line x2="28" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="4" y1="-48" y2="-48" style="linewidth:W" x1="0" />
            <line x2="4" y1="-16" y2="-16" style="linewidth:W" x1="0" />
        </blockdef>
        <blockdef name="MUX4T1_32">
            <timestamp>2015-12-29T3:46:53</timestamp>
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <rect width="40" x="12" y="-136" height="128" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="32" y1="-136" y2="-144" style="linewidth:W" x1="32" />
            <line x2="52" y1="-96" y2="-96" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2015-12-29T3:52:31</timestamp>
            <rect width="40" x="12" y="-100" height="100" />
            <line x2="32" y1="-112" y2="-100" x1="32" />
            <line x2="52" y1="-48" y2="-48" style="linewidth:W;linecolor:rgb(0,0,0)" x1="64" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
        </blockdef>
        <block symbolname="alu" name="U1">
            <blockpin signalname="ALU_operation(2:0)" name="ALU_Ctr(2:0)" />
            <blockpin signalname="res(31:0)" name="res(31:0)" />
            <blockpin signalname="zero" name="zero" />
            <blockpin signalname="overflow" name="overflow" />
            <blockpin signalname="XLXN_746(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_531(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="Regs" name="U2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="XLXN_747(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_770(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="Inst(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="Inst(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_803(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="Ext_32" name="Ext">
            <blockpin signalname="Inst(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="Imm_32(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="REG32" name="ALUOut">
            <blockpin signalname="res(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ALU_Out(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="REG32" name="PC">
            <blockpin signalname="XLXN_930(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_929" name="CE" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_Current(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="REG32" name="IR">
            <blockpin signalname="data2CPU(31:0)" name="D(31:0)" />
            <blockpin signalname="IRWrite" name="CE" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Inst(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="REG32" name="MDR">
            <blockpin signalname="data2CPU(31:0)" name="D(31:0)" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_590(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_887" name="I0" />
            <blockpin signalname="PCWriteCond" name="I1" />
            <blockpin signalname="XLXN_905" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_910" name="I0" />
            <blockpin signalname="MIO_ready" name="I1" />
            <blockpin signalname="XLXN_929" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_4">
            <blockpin signalname="zero" name="I0" />
            <blockpin signalname="Branch" name="I1" />
            <blockpin signalname="XLXN_911" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="XLXN_911" name="I" />
            <blockpin signalname="XLXN_887" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_11">
            <blockpin signalname="XLXN_905" name="I0" />
            <blockpin signalname="PCWrite" name="I1" />
            <blockpin signalname="XLXN_910" name="O" />
        </block>
        <block symbolname="vcc" name="V">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="NO">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="MUX4T1_5" name="MUX1">
            <blockpin signalname="RegDst(1:0)" name="s(1:0)" />
            <blockpin signalname="Inst(15:11)" name="I1(4:0)" />
            <blockpin signalname="Inst(20:16)" name="I0(4:0)" />
            <blockpin signalname="XLXN_803(4:0)" name="o(4:0)" />
            <blockpin signalname="V5,V5,V5,V5,V5" name="I2(4:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0" name="I3(4:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="MUX2">
            <blockpin signalname="MemtoReg(1:0)" name="s(1:0)" />
            <blockpin signalname="ALU_Out(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_590(31:0)" name="I1(31:0)" />
            <blockpin signalname="Inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="I2(31:0)" />
            <blockpin signalname="PC_Current(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_770(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="MUX3">
            <blockpin signalname="ALUSrcB(1:0)" name="s(1:0)" />
            <blockpin signalname="data_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" name="I1(31:0)" />
            <blockpin signalname="Imm_32(31:0)" name="I2(31:0)" />
            <blockpin signalname="Imm_32(29:0),N0,N0" name="I3(31:0)" />
            <blockpin signalname="XLXN_531(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="MUX4">
            <blockpin signalname="ALUSrcA" name="s" />
            <blockpin signalname="PC_Current(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_747(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_746(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_16">
            <blockpin signalname="PCSource(1:0)" name="s(1:0)" />
            <blockpin signalname="res(31:0)" name="I0(31:0)" />
            <blockpin signalname="ALU_Out(31:0)" name="I1(31:0)" />
            <blockpin signalname="PC_Current(31:28),Inst(25:0),N0,N0" name="I2(31:0)" />
            <blockpin signalname="ALU_Out(31:0)" name="I3(31:0)" />
            <blockpin signalname="XLXN_930(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="MUX5">
            <blockpin signalname="IorD" name="s" />
            <blockpin signalname="PC_Current(31:0)" name="I0(31:0)" />
            <blockpin signalname="ALU_Out(31:0)" name="I1(31:0)" />
            <blockpin signalname="M_addr(31:0)" name="o(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <branch name="data_out(31:0)">
            <wire x2="1328" y1="1312" y2="1312" x1="1248" />
            <wire x2="1424" y1="1312" y2="1312" x1="1328" />
            <wire x2="1328" y1="1312" y2="1488" x1="1328" />
            <wire x2="2480" y1="1488" y2="1488" x1="1328" />
        </branch>
        <branch name="clk">
            <wire x2="336" y1="32" y2="32" x1="96" />
            <wire x2="336" y1="32" y2="912" x1="336" />
            <wire x2="768" y1="912" y2="912" x1="336" />
            <wire x2="768" y1="912" y2="1008" x1="768" />
            <wire x2="2192" y1="32" y2="32" x1="336" />
            <wire x2="2192" y1="32" y2="80" x1="2192" />
            <wire x2="2192" y1="80" y2="784" x1="2192" />
            <wire x2="2224" y1="80" y2="80" x1="2192" />
            <wire x2="240" y1="912" y2="992" x1="240" />
            <wire x2="288" y1="992" y2="992" x1="240" />
            <wire x2="240" y1="992" y2="1312" x1="240" />
            <wire x2="288" y1="1312" y2="1312" x1="240" />
            <wire x2="336" y1="912" y2="912" x1="240" />
        </branch>
        <branch name="XLXN_531(31:0)">
            <wire x2="1504" y1="1328" y2="1328" x1="1488" />
            <wire x2="1504" y1="1328" y2="1344" x1="1504" />
            <wire x2="1584" y1="1344" y2="1344" x1="1504" />
        </branch>
        <branch name="RegWrite">
            <wire x2="1008" y1="896" y2="896" x1="176" />
            <wire x2="1008" y1="896" y2="928" x1="1008" />
        </branch>
        <branch name="IorD">
            <wire x2="2448" y1="624" y2="624" x1="112" />
            <wire x2="2448" y1="624" y2="784" x1="2448" />
        </branch>
        <branch name="PCSource(1:0)">
            <wire x2="1712" y1="480" y2="480" x1="240" />
            <wire x2="1952" y1="416" y2="416" x1="1712" />
            <wire x2="1952" y1="416" y2="432" x1="1952" />
            <wire x2="1712" y1="416" y2="480" x1="1712" />
        </branch>
        <branch name="Inst(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:26;fontname:Arial" attrname="Name" x="464" y="1088" type="branch" />
            <wire x2="464" y1="1088" y2="1088" x1="432" />
            <wire x2="496" y1="1088" y2="1088" x1="464" />
            <wire x2="496" y1="1088" y2="1104" x1="496" />
            <wire x2="496" y1="1104" y2="1152" x1="496" />
            <wire x2="496" y1="1152" y2="1232" x1="496" />
            <wire x2="496" y1="1232" y2="1536" x1="496" />
            <wire x2="496" y1="1536" y2="1680" x1="496" />
            <wire x2="2528" y1="1680" y2="1680" x1="496" />
        </branch>
        <iomarker fontsize="28" x="2448" y="176" name="PC_Current(31:0)" orien="R0" />
        <branch name="Inst(15:0)">
            <wire x2="912" y1="1536" y2="1536" x1="592" />
        </branch>
        <branch name="XLXN_590(31:0)">
            <wire x2="672" y1="1408" y2="1408" x1="432" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="1440" type="branch" />
            <wire x2="288" y1="1440" y2="1440" x1="176" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="1376" type="branch" />
            <wire x2="288" y1="1376" y2="1376" x1="176" />
        </branch>
        <branch name="MemtoReg(1:0)">
            <wire x2="448" y1="1264" y2="1264" x1="208" />
            <wire x2="448" y1="1264" y2="1328" x1="448" />
            <wire x2="704" y1="1328" y2="1328" x1="448" />
            <wire x2="704" y1="1328" y2="1344" x1="704" />
        </branch>
        <iomarker fontsize="28" x="96" y="32" name="clk" orien="R180" />
        <instance x="2224" y="304" name="PC" orien="R0">
            <attrtext style="fontsize:40;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="64" y="-224" type="instance" />
        </instance>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="912" type="branch" />
            <wire x2="2192" y1="912" y2="912" x1="2160" />
        </branch>
        <branch name="XLXN_746(31:0)">
            <wire x2="1440" y1="1008" y2="1008" x1="1424" />
            <wire x2="1440" y1="1008" y2="1040" x1="1440" />
            <wire x2="1584" y1="1040" y2="1040" x1="1440" />
        </branch>
        <branch name="XLXN_747(31:0)">
            <wire x2="1360" y1="1040" y2="1040" x1="1248" />
        </branch>
        <branch name="ALUSrcA">
            <wire x2="1392" y1="832" y2="832" x1="192" />
            <wire x2="1392" y1="832" y2="944" x1="1392" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="848" type="branch" />
            <wire x2="2192" y1="848" y2="848" x1="2160" />
        </branch>
        <branch name="Imm_32(31:0)">
            <wire x2="1264" y1="1472" y2="1472" x1="1088" />
            <wire x2="1264" y1="1376" y2="1472" x1="1264" />
            <wire x2="1424" y1="1376" y2="1376" x1="1264" />
        </branch>
        <instance x="816" y="1536" name="Ext" orien="R0">
        </instance>
        <branch name="RegDst(1:0)">
            <wire x2="704" y1="944" y2="944" x1="208" />
            <wire x2="704" y1="944" y2="1168" x1="704" />
        </branch>
        <branch name="Inst(20:16)">
            <wire x2="656" y1="1152" y2="1152" x1="592" />
            <wire x2="768" y1="1152" y2="1152" x1="656" />
            <wire x2="656" y1="1152" y2="1200" x1="656" />
            <wire x2="688" y1="1200" y2="1200" x1="656" />
        </branch>
        <instance x="768" y="1424" name="U2" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="160" y="-368" type="instance" />
        </instance>
        <branch name="XLXN_770(31:0)">
            <wire x2="752" y1="1392" y2="1392" x1="736" />
            <wire x2="768" y1="1376" y2="1376" x1="752" />
            <wire x2="752" y1="1376" y2="1392" x1="752" />
        </branch>
        <bustap x2="592" y1="1536" y2="1536" x1="496" />
        <branch name="Inst(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <wire x2="672" y1="1440" y2="1440" x1="576" />
        </branch>
        <branch name="XLXN_803(4:0)">
            <wire x2="736" y1="1248" y2="1248" x1="720" />
            <wire x2="768" y1="1232" y2="1232" x1="736" />
            <wire x2="736" y1="1232" y2="1248" x1="736" />
        </branch>
        <bustap x2="592" y1="1152" y2="1152" x1="496" />
        <bustap x2="592" y1="1104" y2="1104" x1="496" />
        <branch name="Inst(25:21)">
            <wire x2="768" y1="1104" y2="1104" x1="592" />
        </branch>
        <text style="fontsize:26;fontname:Arial;textcolor:rgb(255,0,0)" x="1336" y="1424">offset</text>
        <text style="fontsize:20;fontname:Arial" x="620" y="1428">lui</text>
        <text x="592" y="1368">ALU OP</text>
        <text x="612" y="1396">MDR</text>
        <instance x="288" y="1536" name="MDR" orien="R0">
            <attrtext style="fontsize:30;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="48" y="-192" type="instance" />
        </instance>
        <iomarker fontsize="24" x="208" y="1264" name="MemtoReg(1:0)" orien="R180" />
        <iomarker fontsize="28" x="144" y="1120" name="IRWrite" orien="R180" />
        <instance x="288" y="1216" name="IR" orien="R0">
            <attrtext style="fontsize:40;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="64" y="-224" type="instance" />
        </instance>
        <iomarker fontsize="28" x="208" y="944" name="RegDst(1:0)" orien="R180" />
        <iomarker fontsize="28" x="176" y="896" name="RegWrite" orien="R180" />
        <iomarker fontsize="28" x="192" y="832" name="ALUSrcA" orien="R180" />
        <branch name="IRWrite">
            <wire x2="288" y1="1120" y2="1120" x1="144" />
        </branch>
        <branch name="ALUSrcB(1:0)">
            <wire x2="1456" y1="768" y2="768" x1="240" />
            <wire x2="1456" y1="768" y2="1280" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="240" y="768" name="ALUSrcB(1:0)" orien="R180" />
        <iomarker fontsize="28" x="112" y="624" name="IorD" orien="R180" />
        <branch name="PC_Current(31:28),Inst(25:0),N0,N0">
            <wire x2="1920" y1="528" y2="528" x1="1744" />
        </branch>
        <text style="fontsize:26;fontname:Arial;textcolor:rgb(255,0,0)" x="1892" y="544">j$r</text>
        <text style="fontsize:20;fontname:Arial;textcolor:rgb(255,0,0)" x="1824" y="512">Jump_addr</text>
        <text style="fontsize:20;fontname:Arial;textcolor:rgb(255,0,0)" x="1832" y="480">Branch_pc</text>
        <text style="fontsize:20;fontname:Arial;textcolor:rgb(255,0,0)" x="1300" y="528">Jump_addr=PC_Current(31:28),Inst(25:0),N0,N0</text>
        <branch name="PCWriteCond">
            <wire x2="1072" y1="272" y2="272" x1="224" />
        </branch>
        <branch name="Branch">
            <wire x2="160" y1="336" y2="336" x1="144" />
            <wire x2="432" y1="320" y2="320" x1="160" />
            <wire x2="160" y1="320" y2="336" x1="160" />
        </branch>
        <branch name="zero">
            <wire x2="432" y1="384" y2="384" x1="400" />
            <wire x2="400" y1="384" y2="592" x1="400" />
            <wire x2="2016" y1="592" y2="592" x1="400" />
            <wire x2="2016" y1="592" y2="1120" x1="2016" />
            <wire x2="2496" y1="1120" y2="1120" x1="2016" />
            <wire x2="2016" y1="1120" y2="1120" x1="1968" />
        </branch>
        <branch name="MIO_ready">
            <wire x2="1744" y1="160" y2="160" x1="192" />
            <wire x2="1744" y1="160" y2="176" x1="1744" />
            <wire x2="1760" y1="176" y2="176" x1="1744" />
        </branch>
        <instance x="1760" y="304" name="XLXI_6" orien="R0" />
        <branch name="XLXN_910">
            <wire x2="1744" y1="256" y2="256" x1="1616" />
            <wire x2="1760" y1="240" y2="240" x1="1744" />
            <wire x2="1744" y1="240" y2="256" x1="1744" />
        </branch>
        <text style="fontsize:26;fontname:Courier New;textcolor:rgb(255,0,0)" x="1120" y="1456">Imm_32</text>
        <text style="fontsize:26;fontname:Courier New;textcolor:rgb(255,0,0)" x="824" y="1520">Imm_16</text>
        <iomarker fontsize="28" x="2480" y="1488" name="data_out(31:0)" orien="R0" />
        <text x="564" y="1088">rs=Inst(25:21)</text>
        <text x="556" y="1140">rt=Inst(20:16)</text>
        <branch name="data2CPU(31:0)">
            <wire x2="272" y1="1504" y2="1504" x1="256" />
            <wire x2="288" y1="1504" y2="1504" x1="272" />
            <wire x2="288" y1="1184" y2="1184" x1="272" />
            <wire x2="272" y1="1184" y2="1504" x1="272" />
        </branch>
        <iomarker fontsize="28" x="256" y="1504" name="data2CPU(31:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="704" name="ALU_operation(2:0)" orien="R180" />
        <branch name="overflow">
            <wire x2="2480" y1="1248" y2="1248" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1248" name="overflow" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1456" type="branch" />
            <wire x2="2048" y1="1440" y2="1456" x1="2048" />
            <wire x2="2112" y1="1456" y2="1456" x1="2048" />
        </branch>
        <instance x="1984" y="1440" name="V" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1328" type="branch" />
            <wire x2="2240" y1="1328" y2="1344" x1="2240" />
            <wire x2="2272" y1="1328" y2="1328" x1="2240" />
        </branch>
        <instance x="2176" y="1472" name="NO" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1680" name="Inst(31:0)" orien="R0" />
        <iomarker fontsize="28" x="112" y="80" name="reset" orien="R180" />
        <iomarker fontsize="28" x="2496" y="1120" name="zero" orien="R0" />
        <branch name="reset">
            <wire x2="752" y1="80" y2="80" x1="112" />
            <wire x2="752" y1="80" y2="1056" x1="752" />
            <wire x2="768" y1="1056" y2="1056" x1="752" />
            <wire x2="2080" y1="80" y2="80" x1="752" />
            <wire x2="2080" y1="80" y2="144" x1="2080" />
            <wire x2="2224" y1="144" y2="144" x1="2080" />
        </branch>
        <branch name="PCWrite">
            <wire x2="1360" y1="224" y2="224" x1="160" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0">
            <wire x2="1424" y1="1344" y2="1344" x1="1408" />
        </branch>
        <branch name="Imm_32(29:0),N0,N0">
            <wire x2="1424" y1="1408" y2="1408" x1="1408" />
        </branch>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(255,0,0)" x="1368" y="1348">4</text>
        <branch name="XLXN_929">
            <wire x2="2224" y1="208" y2="208" x1="2016" />
        </branch>
        <branch name="ALU_operation(2:0)">
            <wire x2="1792" y1="704" y2="704" x1="288" />
            <wire x2="1792" y1="704" y2="944" x1="1792" />
        </branch>
        <text style="fontsize:26;fontname:Arial;textcolor:rgb(255,0,0)" x="1820" y="448">PC+4</text>
        <instance x="2192" y="1008" name="ALUOut" orien="R0">
            <attrtext style="fontsize:24;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="32" y="-192" type="instance" />
        </instance>
        <branch name="res(31:0)">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1184" type="branch" />
            <wire x2="1904" y1="384" y2="464" x1="1904" />
            <wire x2="1920" y1="464" y2="464" x1="1904" />
            <wire x2="2080" y1="384" y2="384" x1="1904" />
            <wire x2="2080" y1="384" y2="976" x1="2080" />
            <wire x2="2080" y1="976" y2="1184" x1="2080" />
            <wire x2="2192" y1="976" y2="976" x1="2080" />
            <wire x2="2080" y1="1184" y2="1184" x1="1968" />
        </branch>
        <branch name="XLXN_930(31:0)">
            <wire x2="2032" y1="480" y2="480" x1="1984" />
            <wire x2="2224" y1="272" y2="272" x1="2032" />
            <wire x2="2032" y1="272" y2="480" x1="2032" />
        </branch>
        <instance x="672" y="1488" name="MUX2" orien="R0">
        </instance>
        <instance x="688" y="1312" name="MUX1" orien="R0">
        </instance>
        <branch name="N0,N0,N0,N0,N0">
            <wire x2="688" y1="1296" y2="1296" x1="640" />
        </branch>
        <text x="576" y="1296">Not Use</text>
        <branch name="V5,V5,V5,V5,V5">
            <wire x2="688" y1="1264" y2="1264" x1="640" />
        </branch>
        <text x="596" y="1264">$ra</text>
        <branch name="Inst(15:11)">
            <wire x2="688" y1="1232" y2="1232" x1="592" />
        </branch>
        <bustap x2="592" y1="1232" y2="1232" x1="496" />
        <text x="556" y="1220">rd=Inst(15:11)</text>
        <instance x="1424" y="1424" name="MUX3" orien="R0">
        </instance>
        <instance x="1920" y="576" name="XLXI_16" orien="R0">
        </instance>
        <branch name="M_addr(31:0)">
            <wire x2="2512" y1="848" y2="848" x1="2480" />
        </branch>
        <instance x="1360" y="1056" name="MUX4" orien="R0">
        </instance>
        <branch name="ALU_Out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="672" type="branch" />
            <wire x2="528" y1="672" y2="1376" x1="528" />
            <wire x2="672" y1="1376" y2="1376" x1="528" />
            <wire x2="1088" y1="672" y2="672" x1="528" />
            <wire x2="1792" y1="672" y2="672" x1="1088" />
            <wire x2="2368" y1="672" y2="672" x1="1792" />
            <wire x2="2368" y1="672" y2="880" x1="2368" />
            <wire x2="2416" y1="880" y2="880" x1="2368" />
            <wire x2="1920" y1="496" y2="496" x1="1792" />
            <wire x2="1792" y1="496" y2="560" x1="1792" />
            <wire x2="1920" y1="560" y2="560" x1="1792" />
            <wire x2="1792" y1="560" y2="672" x1="1792" />
            <wire x2="2368" y1="880" y2="880" x1="2336" />
        </branch>
        <branch name="PC_Current(31:0)">
            <wire x2="672" y1="1472" y2="1472" x1="656" />
            <wire x2="656" y1="1472" y2="1584" x1="656" />
            <wire x2="1296" y1="1584" y2="1584" x1="656" />
            <wire x2="2400" y1="1584" y2="1584" x1="1296" />
            <wire x2="1360" y1="976" y2="976" x1="1296" />
            <wire x2="1296" y1="976" y2="1584" x1="1296" />
            <wire x2="2400" y1="176" y2="176" x1="2368" />
            <wire x2="2448" y1="176" y2="176" x1="2400" />
            <wire x2="2400" y1="176" y2="816" x1="2400" />
            <wire x2="2400" y1="816" y2="1584" x1="2400" />
            <wire x2="2416" y1="816" y2="816" x1="2400" />
        </branch>
        <instance x="2416" y="896" name="MUX5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2512" y="848" name="M_addr(31:0)" orien="R0" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="96" y="1056" type="branch" />
            <wire x2="288" y1="1056" y2="1056" x1="96" />
        </branch>
        <text x="628" y="1476">JR</text>
        <instance x="1360" y="352" name="XLXI_11" orien="R0" />
        <branch name="XLXN_905">
            <wire x2="1344" y1="304" y2="304" x1="1328" />
            <wire x2="1360" y1="288" y2="288" x1="1344" />
            <wire x2="1344" y1="288" y2="304" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="192" y="160" name="MIO_ready" orien="R180" />
        <iomarker fontsize="28" x="160" y="224" name="PCWrite" orien="R180" />
        <instance x="1072" y="400" name="XLXI_5" orien="R0" />
        <branch name="XLXN_887">
            <wire x2="1072" y1="336" y2="336" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="224" y="272" name="PCWriteCond" orien="R180" />
        <iomarker fontsize="28" x="144" y="336" name="Branch" orien="R180" />
        <instance x="816" y="368" name="XLXI_7" orien="R0" />
        <branch name="XLXN_911">
            <wire x2="800" y1="352" y2="352" x1="688" />
            <wire x2="816" y1="336" y2="336" x1="800" />
            <wire x2="800" y1="336" y2="352" x1="800" />
        </branch>
        <instance x="432" y="448" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="240" y="480" name="PCSource(1:0)" orien="R180" />
        <instance x="1584" y="1328" name="U1" orien="R0">
            <attrtext style="alignment:VCENTER;fontsize:68;fontname:Arial" attrname="InstName" x="176" y="-144" type="instance" />
        </instance>
    </sheet>
</drawing>