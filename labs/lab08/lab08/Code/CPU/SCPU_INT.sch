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
        <signal name="inst_in(31:0)" />
        <signal name="inst_in(31:26)" />
        <signal name="inst_in(5:0)" />
        <signal name="reset" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_in(25:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_9(1:0)" />
        <signal name="XLXN_10(1:0)" />
        <signal name="MIO_ready" />
        <signal name="XLXN_12" />
        <signal name="XLXN_8" />
        <signal name="XLXN_16(2:0)" />
        <signal name="XLXN_17" />
        <signal name="INT" />
        <signal name="inst_in(25)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Input" name="inst_in(31:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Input" name="INT" />
        <blockdef name="SCtrl_INT">
            <timestamp>2017-4-26T10:4:33</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(255,170,255);fillstyle:Solid" width="336" x="64" y="-576" height="576" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" style="linewidth:W" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="0" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="0" y1="-432" y2="-432" style="linewidth:W" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="464" y1="-48" y2="-48" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-288" y2="-288" style="linewidth:W" x1="400" />
            <line x2="464" y1="-240" y2="-240" x1="400" />
            <line x2="400" y1="-144" y2="-144" x1="464" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="400" />
            <line x2="64" y1="-240" y2="-240" x1="0" />
        </blockdef>
        <blockdef name="SDPath_INT">
            <timestamp>2017-4-26T10:8:9</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(0,255,255);fillstyle:Solid" width="352" x="64" y="-804" height="768" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-336" y2="-336" style="linewidth:W" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" style="linewidth:W" x1="64" />
            <line x2="0" y1="-720" y2="-720" x1="64" />
            <line x2="0" y1="-656" y2="-656" x1="64" />
            <rect width="64" x="416" y="-620" height="24" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <rect width="64" x="416" y="-460" height="24" />
            <line x2="480" y1="-448" y2="-448" x1="416" />
            <rect width="64" x="416" y="-332" height="24" />
            <line x2="480" y1="-320" y2="-320" x1="416" />
            <line x2="416" y1="-208" y2="-208" x1="480" />
            <line x2="416" y1="-144" y2="-144" x1="480" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-768" y2="-768" x1="0" />
        </blockdef>
        <block symbolname="SCtrl_INT" name="Controller">
            <blockpin signalname="XLXN_2" name="RegDst" />
            <blockpin signalname="XLXN_3" name="ALUSrc_B" />
            <blockpin signalname="XLXN_9(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_5" name="Jal" />
            <blockpin signalname="inst_in(5:0)" name="Fun(5:0)" />
            <blockpin signalname="inst_in(31:26)" name="OPcode(5:0)" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="XLXN_12" name="zero" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="XLXN_10(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_8" name="RegWrite" />
            <blockpin signalname="XLXN_17" name="eret" />
            <blockpin signalname="XLXN_16(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="inst_in(25)" name="int_code" />
        </block>
        <block symbolname="SDPath_INT" name="DataPath">
            <blockpin signalname="XLXN_2" name="RegDst" />
            <blockpin signalname="XLXN_3" name="ALUSrc_B" />
            <blockpin signalname="XLXN_9(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_5" name="Jal" />
            <blockpin signalname="XLXN_10(1:0)" name="Branch(1:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="inst_in(25:0)" name="inst_field(25:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="PC_out(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="ALU_out(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="XLXN_12" name="zero" />
            <blockpin name="overflow" />
            <blockpin signalname="XLXN_8" name="RegWrite" />
            <blockpin signalname="XLXN_16(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="XLXN_17" name="eret" />
            <blockpin signalname="INT" name="INT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <branch name="CPU_MIO">
            <wire x2="832" y1="1008" y2="1008" x1="816" />
            <wire x2="832" y1="1008" y2="1040" x1="832" />
            <wire x2="1520" y1="1040" y2="1040" x1="832" />
        </branch>
        <branch name="mem_w">
            <wire x2="1552" y1="960" y2="960" x1="816" />
        </branch>
        <branch name="inst_in(31:0)">
            <wire x2="240" y1="432" y2="432" x1="208" />
            <wire x2="240" y1="432" y2="624" x1="240" />
            <wire x2="240" y1="624" y2="704" x1="240" />
            <wire x2="240" y1="704" y2="816" x1="240" />
            <wire x2="320" y1="432" y2="432" x1="240" />
        </branch>
        <bustap x2="336" y1="624" y2="624" x1="240" />
        <bustap x2="336" y1="704" y2="704" x1="240" />
        <text style="fontsize:26;fontname:Arial" x="252" y="596">inst_in(31:26)</text>
        <branch name="inst_in(5:0)">
            <wire x2="352" y1="704" y2="704" x1="336" />
        </branch>
        <branch name="reset">
            <wire x2="880" y1="320" y2="320" x1="112" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="832" y1="512" y2="512" x1="816" />
            <wire x2="864" y1="512" y2="512" x1="832" />
            <wire x2="880" y1="512" y2="512" x1="864" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="864" y1="576" y2="576" x1="816" />
            <wire x2="880" y1="576" y2="576" x1="864" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="864" y1="704" y2="704" x1="816" />
            <wire x2="880" y1="704" y2="704" x1="864" />
        </branch>
        <iomarker fontsize="28" x="112" y="320" name="reset" orien="R180" />
        <branch name="clk">
            <wire x2="864" y1="256" y2="256" x1="96" />
            <wire x2="880" y1="256" y2="256" x1="864" />
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
            <wire x2="1376" y1="528" y2="528" x1="1360" />
            <wire x2="1440" y1="528" y2="528" x1="1376" />
        </branch>
        <iomarker fontsize="38" x="1456" y="368" name="PC_out(31:0)" orien="R0" />
        <branch name="PC_out(31:0)">
            <wire x2="1376" y1="368" y2="368" x1="1360" />
            <wire x2="1456" y1="368" y2="368" x1="1376" />
        </branch>
        <iomarker fontsize="38" x="1440" y="528" name="Addr_out(31:0)" orien="R0" />
        <iomarker fontsize="38" x="1424" y="656" name="Data_out(31:0)" orien="R0" />
        <branch name="Data_out(31:0)">
            <wire x2="1376" y1="656" y2="656" x1="1360" />
            <wire x2="1424" y1="656" y2="656" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="96" y="256" name="clk" orien="R180" />
        <branch name="inst_in(31:26)">
            <wire x2="352" y1="624" y2="624" x1="336" />
        </branch>
        <branch name="XLXN_9(1:0)">
            <wire x2="864" y1="640" y2="640" x1="816" />
            <wire x2="880" y1="640" y2="640" x1="864" />
        </branch>
        <branch name="XLXN_10(1:0)">
            <wire x2="864" y1="768" y2="768" x1="816" />
            <wire x2="880" y1="768" y2="768" x1="864" />
        </branch>
        <branch name="MIO_ready">
            <wire x2="272" y1="960" y2="960" x1="256" />
            <wire x2="352" y1="960" y2="960" x1="272" />
        </branch>
        <iomarker fontsize="38" x="256" y="960" name="MIO_ready" orien="R180" />
        <branch name="XLXN_12">
            <wire x2="352" y1="1008" y2="1008" x1="288" />
            <wire x2="288" y1="1008" y2="1120" x1="288" />
            <wire x2="1440" y1="1120" y2="1120" x1="288" />
            <wire x2="1376" y1="768" y2="768" x1="1360" />
            <wire x2="1440" y1="768" y2="768" x1="1376" />
            <wire x2="1440" y1="768" y2="1120" x1="1440" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="864" y1="816" y2="816" x1="816" />
            <wire x2="880" y1="816" y2="816" x1="864" />
        </branch>
        <branch name="XLXN_16(2:0)">
            <wire x2="864" y1="864" y2="864" x1="816" />
            <wire x2="880" y1="864" y2="864" x1="864" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="864" y1="912" y2="912" x1="816" />
            <wire x2="880" y1="912" y2="912" x1="864" />
        </branch>
        <iomarker fontsize="38" x="1552" y="960" name="mem_w" orien="R0" />
        <iomarker fontsize="38" x="1520" y="1040" name="CPU_MIO" orien="R0" />
        <branch name="INT">
            <wire x2="864" y1="208" y2="208" x1="128" />
            <wire x2="880" y1="208" y2="208" x1="864" />
        </branch>
        <iomarker fontsize="38" x="128" y="208" name="INT" orien="R180" />
        <bustap x2="336" y1="816" y2="816" x1="240" />
        <branch name="inst_in(25)">
            <wire x2="352" y1="816" y2="816" x1="336" />
        </branch>
        <text style="fontsize:28;fontname:Arial" x="264" y="680">inst_in(5:0)</text>
        <text style="fontsize:28;fontname:Arial" x="264" y="792">inst_in(25)</text>
        <instance x="352" y="1056" name="Controller" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="64" y="-512" type="instance" />
        </instance>
        <instance x="880" y="976" name="DataPath" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="144" y="-740" type="instance" />
        </instance>
    </sheet>
</drawing>