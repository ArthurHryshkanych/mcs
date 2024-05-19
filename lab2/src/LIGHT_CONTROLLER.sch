<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OUT_BUS(7:0)" />
        <signal name="OUT_BUS(7)" />
        <signal name="OUT_BUS(6)" />
        <signal name="OUT_BUS(5)" />
        <signal name="OUT_BUS(4)" />
        <signal name="OUT_BUS(3)" />
        <signal name="OUT_BUS(2)" />
        <signal name="OUT_BUS(1)" />
        <signal name="OUT_BUS(0)" />
        <signal name="NS_BUS(2:0)" />
        <signal name="NS_BUS(2)" />
        <signal name="NS_BUS(1)" />
        <signal name="NS_BUS(0)" />
        <signal name="CLOCK" />
        <signal name="RESET" />
        <signal name="MODE" />
        <signal name="CS_BUS(2:0)" />
        <signal name="CS_BUS(2)" />
        <signal name="CS_BUS(1)" />
        <signal name="CS_BUS(0)" />
        <port polarity="Output" name="OUT_BUS(7)" />
        <port polarity="Output" name="OUT_BUS(6)" />
        <port polarity="Output" name="OUT_BUS(5)" />
        <port polarity="Output" name="OUT_BUS(4)" />
        <port polarity="Output" name="OUT_BUS(3)" />
        <port polarity="Output" name="OUT_BUS(2)" />
        <port polarity="Output" name="OUT_BUS(1)" />
        <port polarity="Output" name="OUT_BUS(0)" />
        <port polarity="Input" name="CLOCK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="MODE" />
        <blockdef name="TRANSITION_LOGIC">
            <timestamp>2024-3-23T13:21:7</timestamp>
            <rect width="400" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
        </blockdef>
        <blockdef name="fdc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="OUTPUT_LOGIC">
            <timestamp>2024-3-23T13:20:54</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <block symbolname="TRANSITION_LOGIC" name="XLXI_1">
            <blockpin signalname="MODE" name="MODE" />
            <blockpin signalname="CS_BUS(2:0)" name="CURR_STATE(2:0)" />
            <blockpin signalname="NS_BUS(2:0)" name="NEXT_STATE(2:0)" />
        </block>
        <block symbolname="fdc" name="XLXI_4">
            <blockpin signalname="CLOCK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="NS_BUS(1)" name="D" />
            <blockpin signalname="CS_BUS(1)" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_5">
            <blockpin signalname="CLOCK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="NS_BUS(0)" name="D" />
            <blockpin signalname="CS_BUS(0)" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_3">
            <blockpin signalname="CLOCK" name="C" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="NS_BUS(2)" name="D" />
            <blockpin signalname="CS_BUS(2)" name="Q" />
        </block>
        <block symbolname="OUTPUT_LOGIC" name="XLXI_6">
            <blockpin signalname="CS_BUS(2:0)" name="IN_BUS(2:0)" />
            <blockpin signalname="OUT_BUS(7:0)" name="OUT_BUS(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="OUT_BUS(7:0)">
            <wire x2="3088" y1="512" y2="512" x1="2976" />
            <wire x2="3088" y1="512" y2="592" x1="3088" />
            <wire x2="3088" y1="592" y2="672" x1="3088" />
            <wire x2="3088" y1="672" y2="752" x1="3088" />
            <wire x2="3088" y1="752" y2="832" x1="3088" />
            <wire x2="3088" y1="832" y2="912" x1="3088" />
            <wire x2="3088" y1="912" y2="992" x1="3088" />
            <wire x2="3088" y1="992" y2="1072" x1="3088" />
            <wire x2="3088" y1="1072" y2="1152" x1="3088" />
            <wire x2="3088" y1="1152" y2="1248" x1="3088" />
        </branch>
        <branch name="OUT_BUS(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3208" y="592" type="branch" />
            <wire x2="3216" y1="592" y2="592" x1="3184" />
            <wire x2="3232" y1="592" y2="592" x1="3216" />
            <wire x2="3312" y1="592" y2="592" x1="3232" />
        </branch>
        <branch name="OUT_BUS(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3208" y="672" type="branch" />
            <wire x2="3216" y1="672" y2="672" x1="3184" />
            <wire x2="3232" y1="672" y2="672" x1="3216" />
            <wire x2="3312" y1="672" y2="672" x1="3232" />
        </branch>
        <branch name="OUT_BUS(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3208" y="752" type="branch" />
            <wire x2="3216" y1="752" y2="752" x1="3184" />
            <wire x2="3232" y1="752" y2="752" x1="3216" />
            <wire x2="3312" y1="752" y2="752" x1="3232" />
        </branch>
        <branch name="OUT_BUS(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3208" y="832" type="branch" />
            <wire x2="3216" y1="832" y2="832" x1="3184" />
            <wire x2="3232" y1="832" y2="832" x1="3216" />
            <wire x2="3312" y1="832" y2="832" x1="3232" />
        </branch>
        <branch name="OUT_BUS(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3208" y="912" type="branch" />
            <wire x2="3216" y1="912" y2="912" x1="3184" />
            <wire x2="3232" y1="912" y2="912" x1="3216" />
            <wire x2="3312" y1="912" y2="912" x1="3232" />
        </branch>
        <branch name="OUT_BUS(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3208" y="992" type="branch" />
            <wire x2="3216" y1="992" y2="992" x1="3184" />
            <wire x2="3232" y1="992" y2="992" x1="3216" />
            <wire x2="3312" y1="992" y2="992" x1="3232" />
        </branch>
        <branch name="OUT_BUS(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3208" y="1072" type="branch" />
            <wire x2="3216" y1="1072" y2="1072" x1="3184" />
            <wire x2="3232" y1="1072" y2="1072" x1="3216" />
            <wire x2="3312" y1="1072" y2="1072" x1="3232" />
        </branch>
        <branch name="OUT_BUS(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3208" y="1152" type="branch" />
            <wire x2="3216" y1="1152" y2="1152" x1="3184" />
            <wire x2="3232" y1="1152" y2="1152" x1="3216" />
            <wire x2="3312" y1="1152" y2="1152" x1="3232" />
        </branch>
        <bustap x2="3184" y1="592" y2="592" x1="3088" />
        <bustap x2="3184" y1="672" y2="672" x1="3088" />
        <bustap x2="3184" y1="752" y2="752" x1="3088" />
        <bustap x2="3184" y1="832" y2="832" x1="3088" />
        <bustap x2="3184" y1="912" y2="912" x1="3088" />
        <bustap x2="3184" y1="992" y2="992" x1="3088" />
        <bustap x2="3184" y1="1072" y2="1072" x1="3088" />
        <bustap x2="3184" y1="1152" y2="1152" x1="3088" />
        <iomarker fontsize="28" x="3312" y="592" name="OUT_BUS(7)" orien="R0" />
        <iomarker fontsize="28" x="3312" y="672" name="OUT_BUS(6)" orien="R0" />
        <iomarker fontsize="28" x="3312" y="752" name="OUT_BUS(5)" orien="R0" />
        <iomarker fontsize="28" x="3312" y="832" name="OUT_BUS(4)" orien="R0" />
        <iomarker fontsize="28" x="3312" y="912" name="OUT_BUS(3)" orien="R0" />
        <iomarker fontsize="28" x="3312" y="992" name="OUT_BUS(2)" orien="R0" />
        <iomarker fontsize="28" x="3312" y="1072" name="OUT_BUS(1)" orien="R0" />
        <iomarker fontsize="28" x="3312" y="1152" name="OUT_BUS(0)" orien="R0" />
        <instance x="1504" y="1024" name="XLXI_4" orien="R0" />
        <instance x="1504" y="1392" name="XLXI_5" orien="R0" />
        <instance x="1504" y="656" name="XLXI_3" orien="R0" />
        <instance x="496" y="400" name="XLXI_1" orien="R0">
        </instance>
        <branch name="NS_BUS(2:0)">
            <wire x2="1168" y1="304" y2="304" x1="1024" />
            <wire x2="1168" y1="304" y2="400" x1="1168" />
            <wire x2="1168" y1="400" y2="768" x1="1168" />
            <wire x2="1168" y1="768" y2="1136" x1="1168" />
            <wire x2="1168" y1="1136" y2="1184" x1="1168" />
        </branch>
        <bustap x2="1264" y1="400" y2="400" x1="1168" />
        <branch name="NS_BUS(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1384" y="400" type="branch" />
            <wire x2="1392" y1="400" y2="400" x1="1264" />
            <wire x2="1504" y1="400" y2="400" x1="1392" />
        </branch>
        <bustap x2="1264" y1="768" y2="768" x1="1168" />
        <branch name="NS_BUS(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1384" y="768" type="branch" />
            <wire x2="1392" y1="768" y2="768" x1="1264" />
            <wire x2="1504" y1="768" y2="768" x1="1392" />
        </branch>
        <bustap x2="1264" y1="1136" y2="1136" x1="1168" />
        <branch name="NS_BUS(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1384" y="1136" type="branch" />
            <wire x2="1392" y1="1136" y2="1136" x1="1264" />
            <wire x2="1504" y1="1136" y2="1136" x1="1392" />
        </branch>
        <branch name="CLOCK">
            <wire x2="1296" y1="1440" y2="1440" x1="1232" />
            <wire x2="1504" y1="528" y2="528" x1="1296" />
            <wire x2="1296" y1="528" y2="896" x1="1296" />
            <wire x2="1296" y1="896" y2="1264" x1="1296" />
            <wire x2="1296" y1="1264" y2="1440" x1="1296" />
            <wire x2="1504" y1="1264" y2="1264" x1="1296" />
            <wire x2="1504" y1="896" y2="896" x1="1296" />
        </branch>
        <branch name="RESET">
            <wire x2="1392" y1="1520" y2="1520" x1="1232" />
            <wire x2="1504" y1="624" y2="624" x1="1392" />
            <wire x2="1392" y1="624" y2="992" x1="1392" />
            <wire x2="1504" y1="992" y2="992" x1="1392" />
            <wire x2="1392" y1="992" y2="1360" x1="1392" />
            <wire x2="1392" y1="1360" y2="1472" x1="1392" />
            <wire x2="1392" y1="1472" y2="1520" x1="1392" />
            <wire x2="1504" y1="1360" y2="1360" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1232" y="1440" name="CLOCK" orien="R180" />
        <iomarker fontsize="28" x="1232" y="1520" name="RESET" orien="R180" />
        <branch name="MODE">
            <wire x2="496" y1="304" y2="304" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="304" name="MODE" orien="R180" />
        <branch name="CS_BUS(2:0)">
            <wire x2="496" y1="368" y2="368" x1="416" />
            <wire x2="416" y1="368" y2="1728" x1="416" />
            <wire x2="2112" y1="1728" y2="1728" x1="416" />
            <wire x2="2112" y1="336" y2="400" x1="2112" />
            <wire x2="2112" y1="400" y2="512" x1="2112" />
            <wire x2="2112" y1="512" y2="768" x1="2112" />
            <wire x2="2112" y1="768" y2="1136" x1="2112" />
            <wire x2="2112" y1="1136" y2="1728" x1="2112" />
            <wire x2="2544" y1="512" y2="512" x1="2112" />
        </branch>
        <bustap x2="2016" y1="400" y2="400" x1="2112" />
        <branch name="CS_BUS(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="400" type="branch" />
            <wire x2="1952" y1="400" y2="400" x1="1888" />
            <wire x2="2016" y1="400" y2="400" x1="1952" />
        </branch>
        <bustap x2="2016" y1="768" y2="768" x1="2112" />
        <branch name="CS_BUS(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="768" type="branch" />
            <wire x2="1952" y1="768" y2="768" x1="1888" />
            <wire x2="2016" y1="768" y2="768" x1="1952" />
        </branch>
        <bustap x2="2016" y1="1136" y2="1136" x1="2112" />
        <branch name="CS_BUS(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1136" type="branch" />
            <wire x2="1952" y1="1136" y2="1136" x1="1888" />
            <wire x2="2016" y1="1136" y2="1136" x1="1952" />
        </branch>
        <instance x="2544" y="544" name="XLXI_6" orien="R0">
        </instance>
    </sheet>
</drawing>