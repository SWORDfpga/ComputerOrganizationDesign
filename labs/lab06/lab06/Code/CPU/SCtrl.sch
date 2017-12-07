<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OPcode(5:0)" />
        <signal name="OPcode(2)" />
        <signal name="OPcode(1)" />
        <signal name="OPcode(0)" />
        <signal name="OPcode(5)" />
        <signal name="OPcode(4)" />
        <signal name="OPcode(3)" />
        <signal name="RegDst" />
        <signal name="MemtoReg" />
        <signal name="ALUSrc_B" />
        <signal name="RegWrite" />
        <signal name="Branch" />
        <signal name="mem_w" />
        <signal name="Jump" />
        <signal name="ALUop1" />
        <signal name="ALUop0" />
        <signal name="CPU_MIO" />
        <signal name="MIO_ready" />
        <signal name="ALU_Control(2)" />
        <signal name="Fun(2)" />
        <signal name="ALU_Control(1)" />
        <signal name="Fun(3)" />
        <signal name="XLXN_266" />
        <signal name="ALU_Control(2:0)" />
        <signal name="Fun(0)" />
        <signal name="Fun(5:0)" />
        <signal name="ALU_Control(0)" />
        <signal name="Fun(1)" />
        <signal name="XLXN_255" />
        <signal name="XLXN_372" />
        <port polarity="Input" name="OPcode(5:0)" />
        <port polarity="Output" name="RegDst" />
        <port polarity="Output" name="MemtoReg" />
        <port polarity="Output" name="ALUSrc_B" />
        <port polarity="Output" name="RegWrite" />
        <port polarity="Output" name="Branch" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Output" name="Jump" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Output" name="ALU_Control(2:0)" />
        <port polarity="Input" name="Fun(5:0)" />
        <blockdef name="nor6">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-176" y2="-176" x1="52" />
            <line x2="68" y1="-176" y2="-176" x1="52" />
            <line x2="68" y1="-272" y2="-272" x1="48" />
            <line x2="64" y1="-256" y2="-256" x1="32" />
            <line x2="64" y1="-272" y2="-272" x1="128" />
            <line x2="48" y1="-64" y2="-176" x1="48" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="228" y1="-224" y2="-224" x1="256" />
            <circle r="10" cx="218" cy="-226" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-272" y2="-384" x1="48" />
            <arc ex="208" ey="-224" sx="128" sy="-176" r="88" cx="132" cy="-264" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <arc ex="128" ey="-272" sx="208" sy="-224" r="88" cx="132" cy="-184" />
            <arc ex="48" ey="-272" sx="48" sy="-176" r="56" cx="16" cy="-224" />
        </blockdef>
        <blockdef name="and5b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and5b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and5b4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="40" y1="-256" y2="-256" x1="0" />
            <circle r="12" cx="52" cy="-256" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
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
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="and5b2" name="XLXI_6">
            <blockpin signalname="OPcode(3)" name="I0" />
            <blockpin signalname="OPcode(2)" name="I1" />
            <blockpin signalname="OPcode(1)" name="I2" />
            <blockpin signalname="OPcode(0)" name="I3" />
            <blockpin signalname="OPcode(5)" name="I4" />
            <blockpin signalname="MemtoReg" name="O" />
        </block>
        <block symbolname="nor6" name="XLXI_9">
            <blockpin signalname="OPcode(5)" name="I0" />
            <blockpin signalname="OPcode(4)" name="I1" />
            <blockpin signalname="OPcode(3)" name="I2" />
            <blockpin signalname="OPcode(2)" name="I3" />
            <blockpin signalname="OPcode(1)" name="I4" />
            <blockpin signalname="OPcode(0)" name="I5" />
            <blockpin signalname="RegDst" name="O" />
        </block>
        <block symbolname="and5b1" name="XLXI_7">
            <blockpin signalname="OPcode(2)" name="I0" />
            <blockpin signalname="OPcode(5)" name="I1" />
            <blockpin signalname="OPcode(3)" name="I2" />
            <blockpin signalname="OPcode(1)" name="I3" />
            <blockpin signalname="OPcode(0)" name="I4" />
            <blockpin signalname="mem_w" name="O" />
        </block>
        <block symbolname="and5b4" name="XLXI_8">
            <blockpin signalname="OPcode(5)" name="I0" />
            <blockpin signalname="OPcode(3)" name="I1" />
            <blockpin signalname="OPcode(1)" name="I2" />
            <blockpin signalname="OPcode(0)" name="I3" />
            <blockpin signalname="OPcode(2)" name="I4" />
            <blockpin signalname="Branch" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_19">
            <blockpin signalname="mem_w" name="I0" />
            <blockpin signalname="MemtoReg" name="I1" />
            <blockpin signalname="ALUSrc_B" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_20">
            <blockpin signalname="RegDst" name="I0" />
            <blockpin signalname="MemtoReg" name="I1" />
            <blockpin signalname="RegWrite" name="O" />
        </block>
        <block symbolname="and5b4" name="XLXI_21">
            <blockpin signalname="OPcode(5)" name="I0" />
            <blockpin signalname="OPcode(3)" name="I1" />
            <blockpin signalname="OPcode(2)" name="I2" />
            <blockpin signalname="OPcode(0)" name="I3" />
            <blockpin signalname="OPcode(1)" name="I4" />
            <blockpin signalname="Jump" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_22">
            <blockpin signalname="Branch" name="I" />
            <blockpin signalname="ALUop0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_23">
            <blockpin signalname="RegDst" name="I" />
            <blockpin signalname="ALUop1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="XLXN_266" name="I0" />
            <blockpin signalname="ALUop1" name="I1" />
            <blockpin signalname="ALU_Control(0)" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_27">
            <blockpin signalname="Fun(2)" name="I0" />
            <blockpin signalname="ALUop1" name="I1" />
            <blockpin signalname="ALU_Control(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="Fun(1)" name="I0" />
            <blockpin signalname="ALUop1" name="I1" />
            <blockpin signalname="XLXN_255" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_26">
            <blockpin signalname="XLXN_255" name="I0" />
            <blockpin signalname="ALUop0" name="I1" />
            <blockpin signalname="ALU_Control(2)" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_30">
            <blockpin signalname="Fun(1)" name="I0" />
            <blockpin signalname="Fun(0)" name="I1" />
            <blockpin signalname="XLXN_372" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_29">
            <blockpin signalname="Fun(3)" name="I0" />
            <blockpin signalname="XLXN_372" name="I1" />
            <blockpin signalname="XLXN_266" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <branch name="OPcode(5:0)">
            <wire x2="240" y1="64" y2="64" x1="224" />
            <wire x2="304" y1="64" y2="64" x1="240" />
            <wire x2="368" y1="64" y2="64" x1="304" />
            <wire x2="432" y1="64" y2="64" x1="368" />
            <wire x2="496" y1="64" y2="64" x1="432" />
            <wire x2="560" y1="64" y2="64" x1="496" />
        </branch>
        <bustap x2="240" y1="64" y2="160" x1="240" />
        <bustap x2="304" y1="64" y2="160" x1="304" />
        <bustap x2="368" y1="64" y2="160" x1="368" />
        <bustap x2="432" y1="64" y2="160" x1="432" />
        <bustap x2="496" y1="64" y2="160" x1="496" />
        <bustap x2="560" y1="64" y2="160" x1="560" />
        <branch name="OPcode(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="672" type="branch" />
            <attrtext style="alignment:HARD-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="816" y="272" type="branch" />
            <wire x2="496" y1="272" y2="272" x1="144" />
            <wire x2="496" y1="272" y2="320" x1="496" />
            <wire x2="752" y1="272" y2="272" x1="496" />
            <wire x2="752" y1="272" y2="320" x1="752" />
            <wire x2="816" y1="272" y2="272" x1="752" />
            <wire x2="1120" y1="272" y2="272" x1="816" />
            <wire x2="1120" y1="272" y2="320" x1="1120" />
            <wire x2="1360" y1="272" y2="272" x1="1120" />
            <wire x2="1360" y1="272" y2="320" x1="1360" />
            <wire x2="144" y1="272" y2="672" x1="144" />
            <wire x2="272" y1="672" y2="672" x1="144" />
            <wire x2="304" y1="672" y2="672" x1="272" />
            <wire x2="496" y1="160" y2="272" x1="496" />
        </branch>
        <branch name="OPcode(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="736" type="branch" />
            <attrtext style="alignment:HARD-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="816" y="304" type="branch" />
            <wire x2="560" y1="304" y2="304" x1="176" />
            <wire x2="560" y1="304" y2="320" x1="560" />
            <wire x2="816" y1="304" y2="304" x1="560" />
            <wire x2="816" y1="304" y2="320" x1="816" />
            <wire x2="1184" y1="304" y2="304" x1="816" />
            <wire x2="1184" y1="304" y2="320" x1="1184" />
            <wire x2="1424" y1="304" y2="304" x1="1184" />
            <wire x2="1424" y1="304" y2="320" x1="1424" />
            <wire x2="176" y1="304" y2="736" x1="176" />
            <wire x2="272" y1="736" y2="736" x1="176" />
            <wire x2="304" y1="736" y2="736" x1="272" />
            <wire x2="560" y1="160" y2="304" x1="560" />
        </branch>
        <branch name="OPcode(4)">
            <attrtext style="alignment:HARD-BVCENTER;fontsize:20;fontname:Arial" attrname="Name" x="304" y="288" type="branch" />
            <wire x2="304" y1="160" y2="288" x1="304" />
            <wire x2="304" y1="288" y2="320" x1="304" />
        </branch>
        <instance x="176" y="320" name="XLXI_9" orien="R90" />
        <text style="fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" x="264" y="552">R-format    
</text>
        <iomarker fontsize="28" x="224" y="64" name="OPcode(5:0)" orien="R180" />
        <branch name="OPcode(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="864" type="branch" />
            <attrtext style="alignment:HARD-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="816" y="208" type="branch" />
            <wire x2="368" y1="208" y2="208" x1="80" />
            <wire x2="368" y1="208" y2="320" x1="368" />
            <wire x2="624" y1="208" y2="208" x1="368" />
            <wire x2="624" y1="208" y2="320" x1="624" />
            <wire x2="816" y1="208" y2="208" x1="624" />
            <wire x2="1056" y1="208" y2="208" x1="816" />
            <wire x2="1056" y1="208" y2="320" x1="1056" />
            <wire x2="1296" y1="208" y2="208" x1="1056" />
            <wire x2="1296" y1="208" y2="320" x1="1296" />
            <wire x2="80" y1="208" y2="864" x1="80" />
            <wire x2="272" y1="864" y2="864" x1="80" />
            <wire x2="304" y1="864" y2="864" x1="272" />
            <wire x2="368" y1="160" y2="208" x1="368" />
        </branch>
        <instance x="560" y="320" name="XLXI_6" orien="R90" />
        <branch name="OPcode(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="928" type="branch" />
            <attrtext style="alignment:HARD-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="816" y="176" type="branch" />
            <wire x2="240" y1="176" y2="176" x1="48" />
            <wire x2="240" y1="176" y2="320" x1="240" />
            <wire x2="816" y1="176" y2="176" x1="240" />
            <wire x2="880" y1="176" y2="176" x1="816" />
            <wire x2="880" y1="176" y2="320" x1="880" />
            <wire x2="992" y1="176" y2="176" x1="880" />
            <wire x2="992" y1="176" y2="320" x1="992" />
            <wire x2="1232" y1="176" y2="176" x1="992" />
            <wire x2="1232" y1="176" y2="320" x1="1232" />
            <wire x2="48" y1="176" y2="928" x1="48" />
            <wire x2="272" y1="928" y2="928" x1="48" />
            <wire x2="304" y1="928" y2="928" x1="272" />
            <wire x2="240" y1="160" y2="176" x1="240" />
        </branch>
        <branch name="OPcode(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="800" type="branch" />
            <attrtext style="alignment:HARD-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="816" y="240" type="branch" />
            <wire x2="432" y1="240" y2="240" x1="112" />
            <wire x2="432" y1="240" y2="320" x1="432" />
            <wire x2="688" y1="240" y2="240" x1="432" />
            <wire x2="688" y1="240" y2="320" x1="688" />
            <wire x2="816" y1="240" y2="240" x1="688" />
            <wire x2="928" y1="240" y2="240" x1="816" />
            <wire x2="928" y1="240" y2="320" x1="928" />
            <wire x2="1488" y1="240" y2="240" x1="928" />
            <wire x2="1488" y1="240" y2="320" x1="1488" />
            <wire x2="112" y1="240" y2="800" x1="112" />
            <wire x2="272" y1="800" y2="800" x1="112" />
            <wire x2="304" y1="800" y2="800" x1="272" />
            <wire x2="432" y1="160" y2="240" x1="432" />
        </branch>
        <instance x="864" y="320" name="XLXI_7" orien="R90" />
        <instance x="1168" y="320" name="XLXI_8" orien="R90" />
        <branch name="RegDst">
            <wire x2="400" y1="576" y2="608" x1="400" />
            <wire x2="560" y1="608" y2="608" x1="400" />
            <wire x2="560" y1="608" y2="688" x1="560" />
            <wire x2="560" y1="688" y2="736" x1="560" />
            <wire x2="688" y1="736" y2="736" x1="560" />
            <wire x2="688" y1="736" y2="1104" x1="688" />
            <wire x2="1104" y1="1104" y2="1104" x1="688" />
            <wire x2="1600" y1="736" y2="736" x1="688" />
            <wire x2="1088" y1="688" y2="688" x1="560" />
        </branch>
        <branch name="ALUSrc_B">
            <wire x2="1568" y1="848" y2="848" x1="1344" />
        </branch>
        <branch name="RegWrite">
            <wire x2="1584" y1="656" y2="656" x1="1344" />
        </branch>
        <branch name="Branch">
            <wire x2="1360" y1="576" y2="592" x1="1360" />
            <wire x2="1360" y1="592" y2="1056" x1="1360" />
            <wire x2="1376" y1="1056" y2="1056" x1="1360" />
            <wire x2="1616" y1="592" y2="592" x1="1360" />
        </branch>
        <text style="fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" x="1196" y="552">Beq(I-formt)</text>
        <branch name="MemtoReg">
            <wire x2="752" y1="576" y2="624" x1="752" />
            <wire x2="752" y1="624" y2="784" x1="752" />
            <wire x2="1568" y1="784" y2="784" x1="752" />
            <wire x2="752" y1="784" y2="816" x1="752" />
            <wire x2="1088" y1="816" y2="816" x1="752" />
            <wire x2="1088" y1="624" y2="624" x1="752" />
        </branch>
        <branch name="mem_w">
            <wire x2="1056" y1="576" y2="880" x1="1056" />
            <wire x2="1056" y1="880" y2="928" x1="1056" />
            <wire x2="1616" y1="928" y2="928" x1="1056" />
            <wire x2="1088" y1="880" y2="880" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1568" y="848" name="ALUSrc_B" orien="R0" />
        <iomarker fontsize="28" x="1568" y="784" name="MemtoReg" orien="R0" />
        <iomarker fontsize="28" x="1600" y="736" name="RegDst" orien="R0" />
        <iomarker fontsize="28" x="1584" y="656" name="RegWrite" orien="R0" />
        <iomarker fontsize="28" x="1616" y="592" name="Branch" orien="R0" />
        <branch name="Jump">
            <wire x2="560" y1="800" y2="992" x1="560" />
            <wire x2="1632" y1="992" y2="992" x1="560" />
        </branch>
        <iomarker fontsize="28" x="1616" y="928" name="mem_w" orien="R0" />
        <iomarker fontsize="28" x="1632" y="992" name="Jump" orien="R0" />
        <instance x="304" y="992" name="XLXI_21" orien="R0" />
        <text style="fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" x="592" y="552">LW(I-formt)</text>
        <instance x="1376" y="1088" name="XLXI_22" orien="R0" />
        <branch name="ALUop1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" attrname="Name" x="1632" y="1104" type="branch" />
            <wire x2="1632" y1="1104" y2="1104" x1="1328" />
        </branch>
        <branch name="ALUop0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" attrname="Name" x="1632" y="1056" type="branch" />
            <wire x2="1632" y1="1056" y2="1056" x1="1600" />
        </branch>
        <instance x="1104" y="1136" name="XLXI_23" orien="R0" />
        <instance x="1088" y="752" name="XLXI_20" orien="R0" />
        <instance x="1088" y="944" name="XLXI_19" orien="R0" />
        <branch name="CPU_MIO">
            <wire x2="1536" y1="96" y2="96" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1536" y="96" name="CPU_MIO" orien="R0" />
        <branch name="MIO_ready">
            <wire x2="352" y1="1024" y2="1024" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="1024" name="MIO_ready" orien="R180" />
        <text style="fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" x="892" y="552">SW(I-formt)</text>
    </sheet>
    <sheet sheetnum="2" width="1760" height="1360">
        <branch name="ALUop0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="80" type="branch" />
            <wire x2="736" y1="80" y2="80" x1="176" />
        </branch>
        <branch name="ALU_Control(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="1024" y="112" type="branch" />
            <wire x2="1024" y1="112" y2="112" x1="992" />
            <wire x2="1056" y1="112" y2="112" x1="1024" />
        </branch>
        <branch name="Fun(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="320" y="400" type="branch" />
            <wire x2="320" y1="400" y2="400" x1="304" />
            <wire x2="736" y1="400" y2="400" x1="320" />
            <wire x2="736" y1="304" y2="400" x1="736" />
        </branch>
        <branch name="ALU_Control(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="1024" y="272" type="branch" />
            <wire x2="1024" y1="272" y2="272" x1="992" />
            <wire x2="1056" y1="272" y2="272" x1="1024" />
        </branch>
        <branch name="Fun(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="320" y="528" type="branch" />
            <wire x2="320" y1="528" y2="528" x1="304" />
            <wire x2="432" y1="528" y2="528" x1="320" />
        </branch>
        <branch name="XLXN_266">
            <wire x2="736" y1="496" y2="496" x1="688" />
        </branch>
        <branch name="ALU_Control(2:0)">
            <wire x2="1152" y1="112" y2="272" x1="1152" />
            <wire x2="1152" y1="272" y2="464" x1="1152" />
            <wire x2="1200" y1="112" y2="112" x1="1152" />
        </branch>
        <bustap x2="1056" y1="112" y2="112" x1="1152" />
        <instance x="736" y="560" name="XLXI_25" orien="R0" />
        <branch name="Fun(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="320" y="272" type="branch" />
            <wire x2="320" y1="272" y2="272" x1="304" />
            <wire x2="416" y1="272" y2="272" x1="320" />
        </branch>
        <branch name="Fun(5:0)">
            <wire x2="208" y1="192" y2="272" x1="208" />
            <wire x2="208" y1="272" y2="336" x1="208" />
            <wire x2="208" y1="336" y2="400" x1="208" />
            <wire x2="208" y1="400" y2="528" x1="208" />
        </branch>
        <bustap x2="304" y1="528" y2="528" x1="208" />
        <bustap x2="304" y1="400" y2="400" x1="208" />
        <bustap x2="1056" y1="464" y2="464" x1="1152" />
        <branch name="ALU_Control(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="1008" y="464" type="branch" />
            <wire x2="1008" y1="464" y2="464" x1="992" />
            <wire x2="1056" y1="464" y2="464" x1="1008" />
        </branch>
        <bustap x2="1056" y1="272" y2="272" x1="1152" />
        <instance x="736" y="368" name="XLXI_27" orien="R0" />
        <branch name="Fun(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="320" y="336" type="branch" />
            <wire x2="320" y1="336" y2="336" x1="304" />
            <wire x2="384" y1="336" y2="336" x1="320" />
            <wire x2="416" y1="336" y2="336" x1="384" />
            <wire x2="432" y1="176" y2="176" x1="384" />
            <wire x2="384" y1="176" y2="336" x1="384" />
        </branch>
        <branch name="ALUop1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="112" type="branch" />
            <wire x2="400" y1="112" y2="112" x1="176" />
            <wire x2="432" y1="112" y2="112" x1="400" />
            <wire x2="704" y1="48" y2="48" x1="400" />
            <wire x2="704" y1="48" y2="240" x1="704" />
            <wire x2="704" y1="240" y2="432" x1="704" />
            <wire x2="736" y1="432" y2="432" x1="704" />
            <wire x2="736" y1="240" y2="240" x1="704" />
            <wire x2="400" y1="48" y2="112" x1="400" />
        </branch>
        <instance x="432" y="240" name="XLXI_24" orien="R0" />
        <branch name="XLXN_255">
            <wire x2="736" y1="144" y2="144" x1="688" />
        </branch>
        <instance x="736" y="208" name="XLXI_26" orien="R0" />
        <instance x="416" y="400" name="XLXI_30" orien="R0" />
        <bustap x2="304" y1="272" y2="272" x1="208" />
        <bustap x2="304" y1="336" y2="336" x1="208" />
        <instance x="432" y="592" name="XLXI_29" orien="R0" />
        <branch name="XLXN_372">
            <wire x2="672" y1="432" y2="432" x1="416" />
            <wire x2="416" y1="432" y2="464" x1="416" />
            <wire x2="432" y1="464" y2="464" x1="416" />
            <wire x2="672" y1="304" y2="432" x1="672" />
        </branch>
        <iomarker fontsize="28" x="208" y="192" name="Fun(5:0)" orien="R180" />
        <iomarker fontsize="28" x="1200" y="112" name="ALU_Control(2:0)" orien="R0" />
    </sheet>
</drawing>