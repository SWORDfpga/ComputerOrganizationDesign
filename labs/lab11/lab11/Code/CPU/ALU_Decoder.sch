<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_373" />
        <signal name="ALUop(0)" />
        <signal name="ALU_Control(2)" />
        <signal name="Fun(2)" />
        <signal name="ALU_Control(1)" />
        <signal name="Fun(3)" />
        <signal name="XLXN_266" />
        <signal name="ALU_Control(2:0)" />
        <signal name="Fun(0)" />
        <signal name="XLXN_387(5:0)" />
        <signal name="ALU_Control(0)" />
        <signal name="XLXN_389" />
        <signal name="Fun(1)" />
        <signal name="XLXN_391" />
        <signal name="ALUop(1)" />
        <signal name="XLXN_255" />
        <signal name="XLXN_372" />
        <signal name="XLXN_396" />
        <signal name="XLXN_397" />
        <signal name="XLXN_398" />
        <signal name="Fun(5:0)" />
        <signal name="XLXN_400(5:0)" />
        <signal name="ALUop(1:0)" />
        <signal name="XLXN_402" />
        <port polarity="Output" name="ALU_Control(2:0)" />
        <port polarity="Input" name="Fun(5:0)" />
        <port polarity="Input" name="ALUop(1:0)" />
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
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="XLXN_266" name="I0" />
            <blockpin signalname="ALUop(1)" name="I1" />
            <blockpin signalname="ALU_Control(0)" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_27">
            <blockpin signalname="Fun(2)" name="I0" />
            <blockpin signalname="ALUop(1)" name="I1" />
            <blockpin signalname="ALU_Control(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="ALUop(1)" name="I0" />
            <blockpin signalname="Fun(1)" name="I1" />
            <blockpin signalname="XLXN_255" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_26">
            <blockpin signalname="XLXN_255" name="I0" />
            <blockpin signalname="ALUop(0)" name="I1" />
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
    <sheet sheetnum="2" width="1760" height="1360">
        <branch name="ALUop(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="64" type="branch" />
            <wire x2="368" y1="64" y2="64" x1="352" />
            <wire x2="816" y1="64" y2="64" x1="368" />
        </branch>
        <branch name="ALU_Control(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="1104" y="96" type="branch" />
            <wire x2="1104" y1="96" y2="96" x1="1072" />
            <wire x2="1136" y1="96" y2="96" x1="1104" />
        </branch>
        <branch name="Fun(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="384" type="branch" />
            <wire x2="368" y1="384" y2="384" x1="352" />
            <wire x2="816" y1="384" y2="384" x1="368" />
            <wire x2="816" y1="288" y2="384" x1="816" />
        </branch>
        <branch name="ALU_Control(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="1104" y="256" type="branch" />
            <wire x2="1104" y1="256" y2="256" x1="1072" />
            <wire x2="1136" y1="256" y2="256" x1="1104" />
        </branch>
        <branch name="Fun(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="512" type="branch" />
            <wire x2="368" y1="512" y2="512" x1="352" />
            <wire x2="512" y1="512" y2="512" x1="368" />
        </branch>
        <branch name="XLXN_266">
            <wire x2="816" y1="480" y2="480" x1="768" />
        </branch>
        <branch name="ALU_Control(2:0)">
            <wire x2="1232" y1="96" y2="256" x1="1232" />
            <wire x2="1232" y1="256" y2="448" x1="1232" />
            <wire x2="1280" y1="96" y2="96" x1="1232" />
        </branch>
        <bustap x2="1136" y1="96" y2="96" x1="1232" />
        <instance x="816" y="544" name="XLXI_25" orien="R0" />
        <branch name="Fun(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="256" type="branch" />
            <wire x2="368" y1="256" y2="256" x1="352" />
            <wire x2="496" y1="256" y2="256" x1="368" />
        </branch>
        <bustap x2="1136" y1="448" y2="448" x1="1232" />
        <branch name="ALU_Control(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:20;fontname:Arial" attrname="Name" x="1088" y="448" type="branch" />
            <wire x2="1088" y1="448" y2="448" x1="1072" />
            <wire x2="1136" y1="448" y2="448" x1="1088" />
        </branch>
        <bustap x2="1136" y1="256" y2="256" x1="1232" />
        <instance x="816" y="352" name="XLXI_27" orien="R0" />
        <branch name="Fun(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="320" type="branch" />
            <wire x2="368" y1="320" y2="320" x1="352" />
            <wire x2="464" y1="320" y2="320" x1="368" />
            <wire x2="496" y1="320" y2="320" x1="464" />
            <wire x2="512" y1="96" y2="96" x1="464" />
            <wire x2="464" y1="96" y2="320" x1="464" />
        </branch>
        <instance x="512" y="224" name="XLXI_24" orien="R0" />
        <branch name="XLXN_255">
            <wire x2="816" y1="128" y2="128" x1="768" />
        </branch>
        <instance x="816" y="192" name="XLXI_26" orien="R0" />
        <instance x="496" y="384" name="XLXI_30" orien="R0" />
        <instance x="512" y="576" name="XLXI_29" orien="R0" />
        <branch name="XLXN_372">
            <wire x2="752" y1="416" y2="416" x1="496" />
            <wire x2="496" y1="416" y2="448" x1="496" />
            <wire x2="512" y1="448" y2="448" x1="496" />
            <wire x2="752" y1="288" y2="416" x1="752" />
        </branch>
        <iomarker fontsize="28" x="1280" y="96" name="ALU_Control(2:0)" orien="R0" />
        <branch name="Fun(5:0)">
            <wire x2="256" y1="512" y2="512" x1="176" />
            <wire x2="256" y1="256" y2="320" x1="256" />
            <wire x2="256" y1="320" y2="384" x1="256" />
            <wire x2="256" y1="384" y2="512" x1="256" />
        </branch>
        <bustap x2="352" y1="512" y2="512" x1="256" />
        <bustap x2="352" y1="384" y2="384" x1="256" />
        <bustap x2="352" y1="256" y2="256" x1="256" />
        <bustap x2="352" y1="320" y2="320" x1="256" />
        <iomarker fontsize="28" x="176" y="512" name="Fun(5:0)" orien="R180" />
        <branch name="ALUop(1:0)">
            <wire x2="256" y1="64" y2="64" x1="208" />
            <wire x2="256" y1="64" y2="160" x1="256" />
        </branch>
        <bustap x2="352" y1="64" y2="64" x1="256" />
        <iomarker fontsize="28" x="208" y="64" name="ALUop(1:0)" orien="R180" />
        <bustap x2="352" y1="160" y2="160" x1="256" />
        <branch name="ALUop(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="160" type="branch" />
            <wire x2="368" y1="160" y2="160" x1="352" />
            <wire x2="496" y1="160" y2="160" x1="368" />
            <wire x2="512" y1="160" y2="160" x1="496" />
            <wire x2="496" y1="160" y2="224" x1="496" />
            <wire x2="784" y1="224" y2="224" x1="496" />
            <wire x2="784" y1="224" y2="416" x1="784" />
            <wire x2="816" y1="416" y2="416" x1="784" />
            <wire x2="816" y1="224" y2="224" x1="784" />
        </branch>
    </sheet>
</drawing>