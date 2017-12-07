<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <attr value="Never" name="RenameBusIO" />
    <netlist>
        <signal name="clk" />
        <signal name="CPU_MIO" />
        <signal name="mem_w" />
        <signal name="INT" />
        <signal name="inst_in(31:0)" />
        <signal name="inst_in(31:26)" />
        <signal name="inst_in(5:0)" />
        <signal name="reset" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_7(2:0)" />
        <signal name="XLXN_8" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_in(25:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_9(1:0)" />
        <signal name="XLXN_10(1:0)" />
        <signal name="MIO_ready" />
        <signal name="XLXN_12" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Input" name="INT" />
        <port polarity="Input" name="inst_in(31:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="MIO_ready" />
        <blockdef name="SCtrl_M">
            <timestamp>2017-4-26T8:46:43</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(255,170,255);fillstyle:Solid" width="336" x="64" y="-576" height="576" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" style="linewidth:W" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="0" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="0" y1="-432" y2="-432" style="linewidth:W" x1="64" />
            <line x2="464" y1="-288" y2="-288" style="linewidth:W" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
        </blockdef>
        <blockdef name="SDPath_M">
            <timestamp>2017-4-26T8:43:46</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="352" x="64" y="-744" height="740" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <line x2="0" y1="-304" y2="-304" style="linewidth:W" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="64" />
            <line x2="0" y1="-576" y2="-576" style="linewidth:W" x1="64" />
            <line x2="0" y1="-512" y2="-512" style="linewidth:W" x1="64" />
            <line x2="0" y1="-688" y2="-688" x1="64" />
            <line x2="0" y1="-624" y2="-624" x1="64" />
            <line x2="480" y1="-576" y2="-576" style="linewidth:W" x1="416" />
            <line x2="480" y1="-416" y2="-416" style="linewidth:W" x1="416" />
            <line x2="480" y1="-288" y2="-288" style="linewidth:W" x1="416" />
            <line x2="416" y1="-176" y2="-176" x1="480" />
            <line x2="416" y1="-112" y2="-112" x1="480" />
        </blockdef>
        <block symbolname="SCtrl_M" name="Controller">
            <blockpin signalname="XLXN_2" name="RegDst" />
            <blockpin signalname="XLXN_3" name="ALUSrc_B" />
            <blockpin signalname="XLXN_9(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_5" name="Jal" />
            <blockpin signalname="XLXN_7(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="inst_in(5:0)" name="Fun(5:0)" />
            <blockpin signalname="inst_in(31:26)" name="OPcode(5:0)" />
            <blockpin signalname="XLXN_10(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_8" name="RegWrite" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="XLXN_12" name="zero" />
        </block>
        <block symbolname="SDPath_M" name="Datapath">
            <blockpin signalname="XLXN_2" name="RegDst" />
            <blockpin signalname="XLXN_3" name="ALUSrc_B" />
            <blockpin signalname="XLXN_9(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_5" name="Jal" />
            <blockpin signalname="XLXN_10(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_8" name="RegWrite" />
            <blockpin signalname="XLXN_7(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="inst_in(25:0)" name="inst_field(25:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="PC_out(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="ALU_out(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="XLXN_12" name="zero" />
            <blockpin name="overflow" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <branch name="CPU_MIO">
            <wire x2="832" y1="1024" y2="1024" x1="816" />
            <wire x2="832" y1="1024" y2="1248" x1="832" />
            <wire x2="1504" y1="1248" y2="1248" x1="832" />
        </branch>
        <branch name="mem_w">
            <wire x2="832" y1="960" y2="960" x1="816" />
            <wire x2="1536" y1="960" y2="960" x1="832" />
        </branch>
        <iomarker fontsize="38" x="1504" y="1248" name="CPU_MIO" orien="R0" />
        <branch name="inst_in(31:0)">
            <wire x2="240" y1="432" y2="432" x1="208" />
            <wire x2="240" y1="432" y2="624" x1="240" />
            <wire x2="240" y1="624" y2="704" x1="240" />
            <wire x2="320" y1="432" y2="432" x1="240" />
        </branch>
        <bustap x2="336" y1="624" y2="624" x1="240" />
        <bustap x2="336" y1="704" y2="704" x1="240" />
        <text style="fontsize:28;fontname:Arial" x="264" y="676">inst_in(5:0)</text>
        <text style="fontsize:26;fontname:Arial" x="252" y="596">inst_in(31:26)</text>
        <branch name="inst_in(5:0)">
            <wire x2="352" y1="704" y2="704" x1="336" />
        </branch>
        <iomarker fontsize="38" x="144" y="1200" name="INT" orien="R180" />
        <branch name="INT">
            <wire x2="352" y1="1200" y2="1200" x1="144" />
        </branch>
        <branch name="reset">
            <wire x2="880" y1="320" y2="320" x1="112" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="832" y1="512" y2="512" x1="816" />
            <wire x2="880" y1="512" y2="512" x1="832" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="832" y1="576" y2="576" x1="816" />
            <wire x2="880" y1="576" y2="576" x1="832" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="832" y1="704" y2="704" x1="816" />
            <wire x2="880" y1="704" y2="704" x1="832" />
        </branch>
        <branch name="XLXN_7(2:0)">
            <wire x2="832" y1="896" y2="896" x1="816" />
            <wire x2="880" y1="896" y2="896" x1="832" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="832" y1="832" y2="832" x1="816" />
            <wire x2="880" y1="832" y2="832" x1="832" />
        </branch>
        <iomarker fontsize="28" x="112" y="320" name="reset" orien="R180" />
        <branch name="clk">
            <wire x2="880" y1="256" y2="256" x1="96" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="880" y1="368" y2="368" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="368" name="Data_in(31:0)" orien="R180" />
        <bustap x2="416" y1="432" y2="432" x1="320" />
        <iomarker fontsize="28" x="208" y="432" name="inst_in(31:0)" orien="R180" />
        <branch name="inst_in(25:0)">
            <wire x2="880" y1="432" y2="432" x1="416" />
        </branch>
        <text style="fontsize:28;fontname:Arial" x="376" y="408">inst_in(25:0)</text>
        <branch name="Addr_out(31:0)">
            <wire x2="1440" y1="528" y2="528" x1="1360" />
        </branch>
        <iomarker fontsize="38" x="1456" y="368" name="PC_out(31:0)" orien="R0" />
        <branch name="PC_out(31:0)">
            <wire x2="1456" y1="368" y2="368" x1="1360" />
        </branch>
        <iomarker fontsize="38" x="1440" y="528" name="Addr_out(31:0)" orien="R0" />
        <iomarker fontsize="38" x="1424" y="656" name="Data_out(31:0)" orien="R0" />
        <branch name="Data_out(31:0)">
            <wire x2="1424" y1="656" y2="656" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="96" y="256" name="clk" orien="R180" />
        <branch name="inst_in(31:26)">
            <wire x2="352" y1="624" y2="624" x1="336" />
        </branch>
        <branch name="XLXN_9(1:0)">
            <wire x2="832" y1="640" y2="640" x1="816" />
            <wire x2="880" y1="640" y2="640" x1="832" />
        </branch>
        <branch name="XLXN_10(1:0)">
            <wire x2="832" y1="768" y2="768" x1="816" />
            <wire x2="880" y1="768" y2="768" x1="832" />
        </branch>
        <branch name="MIO_ready">
            <wire x2="352" y1="960" y2="960" x1="256" />
        </branch>
        <iomarker fontsize="38" x="256" y="960" name="MIO_ready" orien="R180" />
        <branch name="XLXN_12">
            <wire x2="352" y1="1008" y2="1008" x1="288" />
            <wire x2="288" y1="1008" y2="1120" x1="288" />
            <wire x2="1440" y1="1120" y2="1120" x1="288" />
            <wire x2="1440" y1="768" y2="768" x1="1360" />
            <wire x2="1440" y1="768" y2="1120" x1="1440" />
        </branch>
        <iomarker fontsize="38" x="1536" y="960" name="mem_w" orien="R0" />
        <instance x="352" y="1056" name="Controller" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="80" y="-512" type="instance" />
        </instance>
        <instance x="880" y="944" name="Datapath" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="160" y="-692" type="instance" />
        </instance>
    </sheet>
</drawing>