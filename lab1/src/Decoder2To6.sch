<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_19" />
        <signal name="XLXN_27" />
        <signal name="XLXN_22" />
        <signal name="OUT_5" />
        <signal name="OUT_4" />
        <signal name="OUT_3" />
        <signal name="OUT_2" />
        <signal name="OUT_1" />
        <signal name="OUT_0" />
        <signal name="XLXN_23" />
        <signal name="XLXN_30" />
        <signal name="XLXN_99" />
        <signal name="XLXN_101" />
        <signal name="XLXN_111" />
        <signal name="XLXN_110" />
        <signal name="IN_1" />
        <signal name="IN_0" />
        <port polarity="Output" name="OUT_5" />
        <port polarity="Output" name="OUT_4" />
        <port polarity="Output" name="OUT_3" />
        <port polarity="Output" name="OUT_2" />
        <port polarity="Output" name="OUT_1" />
        <port polarity="Output" name="OUT_0" />
        <port polarity="Input" name="IN_1" />
        <port polarity="Input" name="IN_0" />
        <blockdef name="ibuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuf4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="128" y1="-224" y2="-224" x1="224" />
            <line x2="128" y1="-160" y2="-160" x1="224" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="128" y1="-96" y2="-96" x1="224" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
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
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_19">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_101" name="O" />
        </block>
        <block symbolname="obuf4" name="XLXI_3">
            <blockpin signalname="XLXN_101" name="I0" />
            <blockpin signalname="XLXN_99" name="I1" />
            <blockpin signalname="XLXN_27" name="I2" />
            <blockpin signalname="XLXN_30" name="I3" />
            <blockpin signalname="OUT_5" name="O0" />
            <blockpin signalname="OUT_4" name="O1" />
            <blockpin signalname="OUT_3" name="O2" />
            <blockpin signalname="OUT_2" name="O3" />
        </block>
        <block symbolname="obuf" name="XLXI_4">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="OUT_1" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_5">
            <blockpin signalname="XLXN_27" name="I" />
            <blockpin signalname="OUT_0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_18">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="XLXN_101" name="I" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="XLXN_111" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="XLXN_110" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_1">
            <blockpin signalname="IN_1" name="I" />
            <blockpin signalname="XLXN_111" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_2">
            <blockpin signalname="IN_0" name="I" />
            <blockpin signalname="XLXN_110" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_19">
            <wire x2="816" y1="672" y2="672" x1="720" />
            <wire x2="816" y1="672" y2="832" x1="816" />
            <wire x2="816" y1="832" y2="960" x1="816" />
            <wire x2="848" y1="960" y2="960" x1="816" />
            <wire x2="848" y1="832" y2="832" x1="816" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="752" y1="736" y2="736" x1="720" />
            <wire x2="752" y1="736" y2="768" x1="752" />
            <wire x2="752" y1="768" y2="864" x1="752" />
            <wire x2="752" y1="864" y2="1024" x1="752" />
            <wire x2="848" y1="1024" y2="1024" x1="752" />
            <wire x2="752" y1="1024" y2="1056" x1="752" />
            <wire x2="1424" y1="1056" y2="1056" x1="752" />
            <wire x2="1424" y1="864" y2="864" x1="752" />
            <wire x2="848" y1="768" y2="768" x1="752" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1168" y1="992" y2="992" x1="1104" />
        </branch>
        <instance x="848" y="1088" name="XLXI_14" orien="R0" />
        <instance x="848" y="896" name="XLXI_19" orien="R0" />
        <instance x="1424" y="960" name="XLXI_3" orien="R0" />
        <instance x="1424" y="1024" name="XLXI_4" orien="R0" />
        <instance x="1424" y="1088" name="XLXI_5" orien="R0" />
        <branch name="OUT_5">
            <wire x2="1680" y1="736" y2="736" x1="1648" />
        </branch>
        <branch name="OUT_4">
            <wire x2="1680" y1="800" y2="800" x1="1648" />
        </branch>
        <branch name="OUT_3">
            <wire x2="1680" y1="864" y2="864" x1="1648" />
        </branch>
        <branch name="OUT_2">
            <wire x2="1680" y1="928" y2="928" x1="1648" />
        </branch>
        <branch name="OUT_1">
            <wire x2="1680" y1="992" y2="992" x1="1648" />
        </branch>
        <branch name="OUT_0">
            <wire x2="1680" y1="1056" y2="1056" x1="1648" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1424" y1="992" y2="992" x1="1392" />
        </branch>
        <instance x="1168" y="1024" name="XLXI_15" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1424" y1="928" y2="928" x1="1344" />
        </branch>
        <instance x="1200" y="896" name="XLXI_18" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1680" y="736" name="OUT_5" orien="R0" />
        <iomarker fontsize="28" x="1680" y="800" name="OUT_4" orien="R0" />
        <iomarker fontsize="28" x="1680" y="864" name="OUT_3" orien="R0" />
        <iomarker fontsize="28" x="1680" y="928" name="OUT_2" orien="R0" />
        <iomarker fontsize="28" x="1680" y="992" name="OUT_1" orien="R0" />
        <iomarker fontsize="28" x="1680" y="1056" name="OUT_0" orien="R0" />
        <branch name="XLXN_99">
            <wire x2="1424" y1="800" y2="800" x1="1376" />
        </branch>
        <instance x="1152" y="832" name="XLXI_20" orien="R0" />
        <branch name="XLXN_101">
            <wire x2="1120" y1="800" y2="800" x1="1104" />
            <wire x2="1152" y1="800" y2="800" x1="1120" />
            <wire x2="1424" y1="736" y2="736" x1="1120" />
            <wire x2="1120" y1="736" y2="800" x1="1120" />
        </branch>
        <instance x="496" y="704" name="XLXI_23" orien="R0" />
        <instance x="496" y="768" name="XLXI_24" orien="R0" />
        <iomarker fontsize="28" x="224" y="672" name="IN_1" orien="R180" />
        <iomarker fontsize="28" x="224" y="736" name="IN_0" orien="R180" />
        <instance x="256" y="704" name="XLXI_1" orien="R0" />
        <instance x="256" y="768" name="XLXI_2" orien="R0" />
        <branch name="XLXN_111">
            <wire x2="496" y1="672" y2="672" x1="480" />
        </branch>
        <branch name="XLXN_110">
            <wire x2="496" y1="736" y2="736" x1="480" />
        </branch>
        <branch name="IN_1">
            <wire x2="256" y1="672" y2="672" x1="224" />
        </branch>
        <branch name="IN_0">
            <wire x2="256" y1="736" y2="736" x1="224" />
        </branch>
    </sheet>
</drawing>