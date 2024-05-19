<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OUTPUT(7:0)" />
        <signal name="OUTPUT(7)" />
        <signal name="OUTPUT(6)" />
        <signal name="OUTPUT(5)" />
        <signal name="OUTPUT(4)" />
        <signal name="OUTPUT(3)" />
        <signal name="OUTPUT(2)" />
        <signal name="OUTPUT(1)" />
        <signal name="OUTPUT(0)" />
        <signal name="MODE" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="CLOCK" />
        <signal name="RST" />
        <signal name="RESET" />
        <signal name="CLK_BUS(15:0)" />
        <signal name="CLK_BUS(4)" />
        <signal name="CLK_BUS(6)" />
        <signal name="SPEED" />
        <signal name="XLXN_26" />
        <port polarity="Output" name="OUTPUT(7)" />
        <port polarity="Output" name="OUTPUT(6)" />
        <port polarity="Output" name="OUTPUT(5)" />
        <port polarity="Output" name="OUTPUT(4)" />
        <port polarity="Output" name="OUTPUT(3)" />
        <port polarity="Output" name="OUTPUT(2)" />
        <port polarity="Output" name="OUTPUT(1)" />
        <port polarity="Output" name="OUTPUT(0)" />
        <port polarity="Input" name="MODE" />
        <port polarity="Input" name="CLOCK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="SPEED" />
        <blockdef name="LIGHT_CONTROLLER">
            <timestamp>2024-3-23T21:32:34</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="cc16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="LIGHT_CONTROLLER" name="XLXI_1">
            <blockpin signalname="XLXN_26" name="CLOCK" />
            <blockpin signalname="RST" name="RESET" />
            <blockpin signalname="MODE" name="MODE" />
            <blockpin signalname="OUTPUT(7:0)" name="OUT_BUS(7:0)" />
        </block>
        <block symbolname="cc16ce" name="XLXI_3">
            <blockpin signalname="CLOCK" name="C" />
            <blockpin signalname="XLXN_13" name="CE" />
            <blockpin signalname="RST" name="CLR" />
            <blockpin signalname="XLXN_12" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cc16ce" name="XLXI_4">
            <blockpin signalname="CLOCK" name="C" />
            <blockpin signalname="XLXN_12" name="CE" />
            <blockpin signalname="RST" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="CLK_BUS(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_13" name="P" />
        </block>
        <block symbolname="fd" name="XLXI_6">
            <blockpin signalname="CLOCK" name="C" />
            <blockpin signalname="RESET" name="D" />
            <blockpin signalname="RST" name="Q" />
        </block>
        <block symbolname="m2_1" name="XLXI_8">
            <blockpin signalname="CLK_BUS(4)" name="D0" />
            <blockpin signalname="CLK_BUS(6)" name="D1" />
            <blockpin signalname="SPEED" name="S0" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2560" y="592" name="XLXI_1" orien="R0">
        </instance>
        <branch name="OUTPUT(7:0)">
            <wire x2="3040" y1="432" y2="432" x1="2944" />
            <wire x2="3040" y1="432" y2="480" x1="3040" />
            <wire x2="3040" y1="480" y2="560" x1="3040" />
            <wire x2="3040" y1="560" y2="640" x1="3040" />
            <wire x2="3040" y1="640" y2="720" x1="3040" />
            <wire x2="3040" y1="720" y2="800" x1="3040" />
            <wire x2="3040" y1="800" y2="880" x1="3040" />
            <wire x2="3040" y1="880" y2="960" x1="3040" />
            <wire x2="3040" y1="960" y2="1040" x1="3040" />
            <wire x2="3040" y1="1040" y2="1072" x1="3040" />
        </branch>
        <branch name="OUTPUT(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="480" type="branch" />
            <wire x2="3168" y1="480" y2="480" x1="3136" />
            <wire x2="3280" y1="480" y2="480" x1="3168" />
        </branch>
        <branch name="OUTPUT(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="560" type="branch" />
            <wire x2="3168" y1="560" y2="560" x1="3136" />
            <wire x2="3280" y1="560" y2="560" x1="3168" />
        </branch>
        <branch name="OUTPUT(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="640" type="branch" />
            <wire x2="3168" y1="640" y2="640" x1="3136" />
            <wire x2="3280" y1="640" y2="640" x1="3168" />
        </branch>
        <branch name="OUTPUT(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="720" type="branch" />
            <wire x2="3168" y1="720" y2="720" x1="3136" />
            <wire x2="3280" y1="720" y2="720" x1="3168" />
        </branch>
        <branch name="OUTPUT(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="800" type="branch" />
            <wire x2="3168" y1="800" y2="800" x1="3136" />
            <wire x2="3280" y1="800" y2="800" x1="3168" />
        </branch>
        <branch name="OUTPUT(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="880" type="branch" />
            <wire x2="3168" y1="880" y2="880" x1="3136" />
            <wire x2="3280" y1="880" y2="880" x1="3168" />
        </branch>
        <branch name="OUTPUT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="960" type="branch" />
            <wire x2="3168" y1="960" y2="960" x1="3136" />
            <wire x2="3280" y1="960" y2="960" x1="3168" />
        </branch>
        <branch name="OUTPUT(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="1040" type="branch" />
            <wire x2="3168" y1="1040" y2="1040" x1="3136" />
            <wire x2="3280" y1="1040" y2="1040" x1="3168" />
        </branch>
        <bustap x2="3136" y1="480" y2="480" x1="3040" />
        <bustap x2="3136" y1="560" y2="560" x1="3040" />
        <bustap x2="3136" y1="640" y2="640" x1="3040" />
        <bustap x2="3136" y1="720" y2="720" x1="3040" />
        <bustap x2="3136" y1="800" y2="800" x1="3040" />
        <bustap x2="3136" y1="880" y2="880" x1="3040" />
        <bustap x2="3136" y1="960" y2="960" x1="3040" />
        <bustap x2="3136" y1="1040" y2="1040" x1="3040" />
        <iomarker fontsize="28" x="3280" y="480" name="OUTPUT(7)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="560" name="OUTPUT(6)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="640" name="OUTPUT(5)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="720" name="OUTPUT(4)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="800" name="OUTPUT(3)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="880" name="OUTPUT(2)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="960" name="OUTPUT(1)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="1040" name="OUTPUT(0)" orien="R0" />
        <branch name="MODE">
            <wire x2="2304" y1="560" y2="560" x1="2272" />
            <wire x2="2560" y1="560" y2="560" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2272" y="560" name="MODE" orien="R180" />
        <instance x="560" y="704" name="XLXI_3" orien="R0" />
        <instance x="1056" y="704" name="XLXI_4" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1056" y1="512" y2="512" x1="944" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="480" y1="320" y2="512" x1="480" />
            <wire x2="560" y1="512" y2="512" x1="480" />
        </branch>
        <instance x="416" y="320" name="XLXI_5" orien="R0" />
        <branch name="CLOCK">
            <wire x2="448" y1="848" y2="848" x1="416" />
            <wire x2="448" y1="848" y2="1328" x1="448" />
            <wire x2="912" y1="1328" y2="1328" x1="448" />
            <wire x2="1008" y1="848" y2="848" x1="448" />
            <wire x2="560" y1="576" y2="576" x1="448" />
            <wire x2="448" y1="576" y2="848" x1="448" />
            <wire x2="1056" y1="576" y2="576" x1="1008" />
            <wire x2="1008" y1="576" y2="848" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="416" y="848" name="CLOCK" orien="R180" />
        <branch name="RST">
            <wire x2="560" y1="672" y2="912" x1="560" />
            <wire x2="1056" y1="912" y2="912" x1="560" />
            <wire x2="1296" y1="912" y2="912" x1="1056" />
            <wire x2="1296" y1="912" y2="1200" x1="1296" />
            <wire x2="2128" y1="912" y2="912" x1="1296" />
            <wire x2="1056" y1="672" y2="912" x1="1056" />
            <wire x2="2560" y1="496" y2="496" x1="2128" />
            <wire x2="2128" y1="496" y2="912" x1="2128" />
        </branch>
        <instance x="912" y="1456" name="XLXI_6" orien="R0" />
        <branch name="RESET">
            <wire x2="896" y1="1200" y2="1200" x1="880" />
            <wire x2="912" y1="1200" y2="1200" x1="896" />
        </branch>
        <branch name="CLK_BUS(15:0)">
            <wire x2="1520" y1="448" y2="448" x1="1440" />
            <wire x2="1520" y1="448" y2="480" x1="1520" />
            <wire x2="1520" y1="480" y2="544" x1="1520" />
            <wire x2="1520" y1="544" y2="576" x1="1520" />
        </branch>
        <instance x="1632" y="640" name="XLXI_8" orien="R0" />
        <bustap x2="1616" y1="480" y2="480" x1="1520" />
        <branch name="CLK_BUS(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1624" y="480" type="branch" />
            <wire x2="1632" y1="480" y2="480" x1="1616" />
        </branch>
        <bustap x2="1616" y1="544" y2="544" x1="1520" />
        <branch name="CLK_BUS(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1624" y="544" type="branch" />
            <wire x2="1632" y1="544" y2="544" x1="1616" />
        </branch>
        <branch name="SPEED">
            <wire x2="1392" y1="752" y2="752" x1="1360" />
            <wire x2="1632" y1="752" y2="752" x1="1392" />
            <wire x2="1632" y1="608" y2="752" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1360" y="752" name="SPEED" orien="R180" />
        <branch name="XLXN_26">
            <wire x2="1952" y1="432" y2="512" x1="1952" />
            <wire x2="2560" y1="432" y2="432" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="880" y="1200" name="RESET" orien="R180" />
    </sheet>
</drawing>