<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_55" />
        <signal name="XLXN_58(31:0)" />
        <signal name="XLXN_68(31:0)" />
        <signal name="XLXN_70" />
        <signal name="XLXN_75" />
        <signal name="XLXN_2(2:0)" />
        <signal name="XLXN_3(1:0)" />
        <signal name="XLXN_4(1:0)" />
        <signal name="XLXN_5(1:0)" />
        <signal name="XLXN_6(1:0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_89" />
        <signal name="XLXN_18" />
        <signal name="inst_out(31:0)" />
        <signal name="XLXN_92(31:0)" />
        <signal name="XLXN_17" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="MIO_ready" />
        <signal name="CPU_MIO" />
        <signal name="PC_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="XLXN_102(31:0)" />
        <signal name="state(4:0)" />
        <signal name="XLXN_104" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="mem_w" />
        <signal name="XLXN_109" />
        <signal name="XLXN_39" />
        <signal name="XLXN_111" />
        <signal name="INT" />
        <port polarity="Output" name="inst_out(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Output" name="state(4:0)" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Input" name="INT" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="MDPath">
            <timestamp>2017-4-26T12:23:7</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="400" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="0" y1="-288" y2="-288" style="linewidth:W" x1="64" />
            <line x2="0" y1="-224" y2="-224" style="linewidth:W" x1="64" />
            <line x2="0" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="0" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="528" y1="-992" y2="-992" x1="464" />
            <line x2="528" y1="-800" y2="-800" x1="464" />
            <line x2="528" y1="-608" y2="-608" style="linewidth:W" x1="464" />
            <line x2="528" y1="-416" y2="-416" style="linewidth:W" x1="464" />
            <line x2="528" y1="-224" y2="-224" style="linewidth:W" x1="464" />
            <line x2="528" y1="-32" y2="-32" style="linewidth:W" x1="464" />
        </blockdef>
        <blockdef name="MCtrl">
            <timestamp>2017-4-26T12:28:50</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="352" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="480" y1="-992" y2="-992" x1="416" />
            <line x2="480" y1="-928" y2="-928" x1="416" />
            <line x2="480" y1="-864" y2="-864" x1="416" />
            <line x2="480" y1="-800" y2="-800" x1="416" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="480" y1="-352" y2="-352" style="linewidth:W" x1="416" />
            <line x2="480" y1="-288" y2="-288" style="linewidth:W" x1="416" />
            <line x2="480" y1="-224" y2="-224" style="linewidth:W" x1="416" />
            <line x2="480" y1="-160" y2="-160" style="linewidth:W" x1="416" />
            <line x2="480" y1="-96" y2="-96" style="linewidth:W" x1="416" />
            <line x2="480" y1="-32" y2="-32" style="linewidth:W" x1="416" />
            <line x2="0" y1="-752" y2="-752" x1="64" />
            <line x2="0" y1="-960" y2="-960" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="XLXN_39" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="mem_w" name="O" />
        </block>
        <block symbolname="MDPath" name="DataPath">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="XLXN_13" name="IorD" />
            <blockpin signalname="XLXN_12" name="IRWrite" />
            <blockpin signalname="XLXN_11" name="RegWrite" />
            <blockpin signalname="XLXN_10" name="ALUSrcA" />
            <blockpin signalname="XLXN_9" name="PCWrite" />
            <blockpin signalname="XLXN_8" name="PCWriteCond" />
            <blockpin signalname="XLXN_7" name="Branch" />
            <blockpin signalname="XLXN_6(1:0)" name="RegDst(1:0)" />
            <blockpin signalname="XLXN_5(1:0)" name="MemtoReg(1:0)" />
            <blockpin signalname="XLXN_4(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_3(1:0)" name="PCSource(1:0)" />
            <blockpin signalname="XLXN_2(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="Data_in(31:0)" name="data2CPU(31:0)" />
            <blockpin signalname="XLXN_17" name="zero" />
            <blockpin signalname="XLXN_18" name="overflow" />
            <blockpin signalname="PC_out(31:0)" name="PC_Current(31:0)" />
            <blockpin signalname="inst_out(31:0)" name="Inst(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="data_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="M_addr(31:0)" />
        </block>
        <block symbolname="MCtrl" name="Contorller">
            <blockpin signalname="XLXN_17" name="zero" />
            <blockpin signalname="XLXN_18" name="overflow" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="inst_out(31:0)" name="Inst_in(31:0)" />
            <blockpin signalname="XLXN_39" name="MemRead" />
            <blockpin signalname="XLXN_41" name="MemWrite" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="XLXN_13" name="IorD" />
            <blockpin signalname="XLXN_12" name="IRWrite" />
            <blockpin signalname="XLXN_11" name="RegWrite" />
            <blockpin signalname="XLXN_10" name="ALUSrcA" />
            <blockpin signalname="XLXN_9" name="PCWrite" />
            <blockpin signalname="XLXN_8" name="PCWriteCond" />
            <blockpin signalname="XLXN_7" name="Branch" />
            <blockpin signalname="XLXN_6(1:0)" name="RegDst(1:0)" />
            <blockpin signalname="XLXN_5(1:0)" name="MemtoReg(1:0)" />
            <blockpin signalname="XLXN_4(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_3(1:0)" name="PCSource(1:0)" />
            <blockpin signalname="XLXN_2(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="state(4:0)" name="state_out(4:0)" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clk" name="clk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <branch name="XLXN_2(2:0)">
            <wire x2="1504" y1="1312" y2="1312" x1="1152" />
        </branch>
        <branch name="XLXN_3(1:0)">
            <wire x2="1504" y1="1248" y2="1248" x1="1152" />
        </branch>
        <branch name="XLXN_4(1:0)">
            <wire x2="1504" y1="1184" y2="1184" x1="1152" />
        </branch>
        <branch name="XLXN_5(1:0)">
            <wire x2="1504" y1="1120" y2="1120" x1="1152" />
        </branch>
        <branch name="XLXN_6(1:0)">
            <wire x2="1504" y1="1056" y2="1056" x1="1152" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1504" y1="992" y2="992" x1="1152" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1504" y1="928" y2="928" x1="1152" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1504" y1="864" y2="864" x1="1152" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1504" y1="800" y2="800" x1="1152" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1504" y1="736" y2="736" x1="1152" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1504" y1="672" y2="672" x1="1152" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1504" y1="608" y2="608" x1="1152" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="512" y1="992" y2="1552" x1="512" />
            <wire x2="2192" y1="1552" y2="1552" x1="512" />
            <wire x2="672" y1="992" y2="992" x1="512" />
            <wire x2="2192" y1="608" y2="608" x1="2032" />
            <wire x2="2192" y1="608" y2="1552" x1="2192" />
        </branch>
        <branch name="inst_out(31:0)">
            <wire x2="672" y1="1376" y2="1376" x1="608" />
            <wire x2="608" y1="1376" y2="1520" x1="608" />
            <wire x2="2096" y1="1520" y2="1520" x1="608" />
            <wire x2="2096" y1="992" y2="992" x1="2032" />
            <wire x2="2096" y1="992" y2="1520" x1="2096" />
            <wire x2="2448" y1="992" y2="992" x1="2096" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="544" y1="352" y2="800" x1="544" />
            <wire x2="672" y1="800" y2="800" x1="544" />
            <wire x2="2048" y1="352" y2="352" x1="544" />
            <wire x2="2048" y1="352" y2="416" x1="2048" />
            <wire x2="2048" y1="416" y2="416" x1="2032" />
        </branch>
        <branch name="clk">
            <wire x2="656" y1="160" y2="160" x1="144" />
            <wire x2="656" y1="160" y2="448" x1="656" />
            <wire x2="672" y1="448" y2="448" x1="656" />
            <wire x2="1488" y1="160" y2="160" x1="656" />
            <wire x2="1488" y1="160" y2="416" x1="1488" />
            <wire x2="1504" y1="416" y2="416" x1="1488" />
        </branch>
        <branch name="reset">
            <wire x2="608" y1="224" y2="224" x1="176" />
            <wire x2="608" y1="224" y2="656" x1="608" />
            <wire x2="672" y1="656" y2="656" x1="608" />
            <wire x2="1456" y1="224" y2="224" x1="608" />
            <wire x2="1456" y1="224" y2="480" x1="1456" />
            <wire x2="1504" y1="480" y2="480" x1="1456" />
        </branch>
        <branch name="MIO_ready">
            <wire x2="288" y1="288" y2="288" x1="256" />
            <wire x2="288" y1="288" y2="1184" x1="288" />
            <wire x2="672" y1="1184" y2="1184" x1="288" />
            <wire x2="1392" y1="288" y2="288" x1="288" />
            <wire x2="1392" y1="288" y2="544" x1="1392" />
            <wire x2="1504" y1="544" y2="544" x1="1392" />
        </branch>
        <branch name="CPU_MIO">
            <wire x2="1232" y1="544" y2="544" x1="1152" />
            <wire x2="1232" y1="544" y2="1472" x1="1232" />
            <wire x2="2448" y1="1472" y2="1472" x1="1232" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="2448" y1="800" y2="800" x1="2032" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="2432" y1="1184" y2="1184" x1="2032" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="2432" y1="1376" y2="1376" x1="2032" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="1488" y1="1712" y2="1712" x1="256" />
            <wire x2="1504" y1="1376" y2="1376" x1="1488" />
            <wire x2="1488" y1="1376" y2="1712" x1="1488" />
        </branch>
        <branch name="state(4:0)">
            <wire x2="1168" y1="1376" y2="1376" x1="1152" />
            <wire x2="1168" y1="1376" y2="1600" x1="1168" />
            <wire x2="2448" y1="1600" y2="1600" x1="1168" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1216" y1="480" y2="480" x1="1152" />
            <wire x2="2128" y1="128" y2="128" x1="1216" />
            <wire x2="2128" y1="128" y2="464" x1="2128" />
            <wire x2="2224" y1="464" y2="464" x1="2128" />
            <wire x2="1216" y1="128" y2="480" x1="1216" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="2176" y1="80" y2="80" x1="1856" />
            <wire x2="2176" y1="80" y2="400" x1="2176" />
            <wire x2="2224" y1="400" y2="400" x1="2176" />
        </branch>
        <branch name="mem_w">
            <wire x2="2496" y1="432" y2="432" x1="2480" />
            <wire x2="2528" y1="432" y2="432" x1="2496" />
        </branch>
        <instance x="1632" y="112" name="XLXI_5" orien="R0" />
        <branch name="XLXN_39">
            <wire x2="1168" y1="416" y2="416" x1="1152" />
            <wire x2="1632" y1="80" y2="80" x1="1168" />
            <wire x2="1168" y1="80" y2="416" x1="1168" />
        </branch>
        <instance x="1504" y="1408" name="DataPath" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="192" y="-928" type="instance" />
        </instance>
        <instance x="672" y="1408" name="Contorller" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="80" y="-816" type="instance" />
        </instance>
        <iomarker fontsize="28" x="256" y="288" name="MIO_ready" orien="R180" />
        <iomarker fontsize="28" x="176" y="224" name="reset" orien="R180" />
        <iomarker fontsize="28" x="256" y="1712" name="Data_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2448" y="1600" name="state(4:0)" orien="R0" />
        <iomarker fontsize="28" x="2448" y="1472" name="CPU_MIO" orien="R0" />
        <iomarker fontsize="28" x="2432" y="1376" name="Addr_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2432" y="1184" name="Data_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2448" y="992" name="inst_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2448" y="800" name="PC_out(31:0)" orien="R0" />
        <instance x="2224" y="528" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="2528" y="432" name="mem_w" orien="R0" />
        <iomarker fontsize="28" x="144" y="160" name="clk" orien="R180" />
        <iomarker fontsize="28" x="160" y="96" name="INT" orien="R180" />
        <branch name="INT">
            <wire x2="352" y1="96" y2="96" x1="160" />
        </branch>
    </sheet>
</drawing>