<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_92" />
        <signal name="CLOCK" />
        <signal name="XLXN_99" />
        <signal name="XLXN_113(7:0)" />
        <signal name="TEST(7:0)" />
        <signal name="ALUOUT(7:0)" />
        <signal name="XLXN_120" />
        <signal name="B(7:0)" />
        <signal name="OP(1:0)" />
        <signal name="RAMOUT(7:0)" />
        <signal name="RAMWR" />
        <signal name="RAMA(1:0)" />
        <signal name="DATA_IN(7:0)" />
        <signal name="COMMON_0_OUT" />
        <signal name="COMMON_1_OUT" />
        <signal name="COMMON_2_OUT" />
        <signal name="A_OUT" />
        <signal name="B_OUT" />
        <signal name="C_OUT" />
        <signal name="D_OUT" />
        <signal name="E_OUT" />
        <signal name="F_OUT" />
        <signal name="G_OUT" />
        <signal name="DP_OUT" />
        <signal name="XLXN_160" />
        <signal name="OVERFLOW" />
        <signal name="XLXN_165" />
        <signal name="XLXN_167" />
        <signal name="XLXN_168(1:0)" />
        <signal name="ENTER_OP1" />
        <signal name="XLXN_172" />
        <signal name="XLXN_173" />
        <signal name="ENTER_OP2" />
        <signal name="CALCULATE" />
        <signal name="RESET" />
        <signal name="CCLK" />
        <signal name="EOP2" />
        <signal name="CLK" />
        <signal name="XLXN_177" />
        <port polarity="Input" name="CLOCK" />
        <port polarity="Output" name="TEST(7:0)" />
        <port polarity="Output" name="ALUOUT(7:0)" />
        <port polarity="Output" name="RAMOUT(7:0)" />
        <port polarity="Output" name="RAMWR" />
        <port polarity="Output" name="RAMA(1:0)" />
        <port polarity="Input" name="DATA_IN(7:0)" />
        <port polarity="Output" name="COMMON_0_OUT" />
        <port polarity="Output" name="COMMON_1_OUT" />
        <port polarity="Output" name="COMMON_2_OUT" />
        <port polarity="Output" name="A_OUT" />
        <port polarity="Output" name="B_OUT" />
        <port polarity="Output" name="C_OUT" />
        <port polarity="Output" name="D_OUT" />
        <port polarity="Output" name="E_OUT" />
        <port polarity="Output" name="F_OUT" />
        <port polarity="Output" name="G_OUT" />
        <port polarity="Output" name="DP_OUT" />
        <port polarity="Output" name="OVERFLOW" />
        <port polarity="Input" name="ENTER_OP1" />
        <port polarity="Input" name="ENTER_OP2" />
        <port polarity="Input" name="CALCULATE" />
        <port polarity="Input" name="RESET" />
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="CPU">
            <timestamp>2024-5-8T13:35:11</timestamp>
            <rect width="64" x="448" y="340" height="24" />
            <line x2="512" y1="352" y2="352" x1="448" />
            <rect width="64" x="448" y="20" height="24" />
            <line x2="512" y1="32" y2="32" x1="448" />
            <rect width="64" x="448" y="84" height="24" />
            <line x2="512" y1="96" y2="96" x1="448" />
            <rect width="64" x="448" y="212" height="24" />
            <line x2="512" y1="224" y2="224" x1="448" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-416" y2="-416" x1="448" />
            <line x2="512" y1="-352" y2="-352" x1="448" />
            <rect width="384" x="64" y="-512" height="960" />
        </blockdef>
        <blockdef name="MUX">
            <timestamp>2024-4-30T3:46:9</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2024-5-12T8:50:23</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ACC">
            <timestamp>2024-4-30T2:11:46</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="RAM">
            <timestamp>2024-5-8T14:1:50</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="SEG_DECODER">
            <timestamp>2024-5-2T8:42:16</timestamp>
            <rect width="496" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="624" y1="-672" y2="-672" x1="560" />
            <line x2="624" y1="-608" y2="-608" x1="560" />
            <line x2="624" y1="-544" y2="-544" x1="560" />
            <line x2="624" y1="-480" y2="-480" x1="560" />
            <line x2="624" y1="-416" y2="-416" x1="560" />
            <line x2="624" y1="-352" y2="-352" x1="560" />
            <line x2="624" y1="-288" y2="-288" x1="560" />
            <line x2="624" y1="-224" y2="-224" x1="560" />
            <line x2="624" y1="-160" y2="-160" x1="560" />
            <line x2="624" y1="-96" y2="-96" x1="560" />
            <line x2="624" y1="-32" y2="-32" x1="560" />
        </blockdef>
        <blockdef name="fdcp">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
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
        <block symbolname="cb16ce" name="XLXI_40">
            <blockpin signalname="CLOCK" name="C" />
            <blockpin signalname="XLXN_99" name="CE" />
            <blockpin signalname="XLXN_92" name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin signalname="CLK" name="TC" />
        </block>
        <block symbolname="constant" name="XLXI_43">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_92" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_45">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="CPU" name="XLXI_46">
            <blockpin signalname="EOP2" name="ENTER_OP1" />
            <blockpin signalname="XLXN_177" name="ENTER_OP2" />
            <blockpin signalname="XLXN_172" name="CALCULATE" />
            <blockpin signalname="XLXN_173" name="RESET" />
            <blockpin signalname="CLK" name="CLOCK" />
            <blockpin signalname="RAMWR" name="RAM_WR" />
            <blockpin signalname="XLXN_120" name="ACC_WR" />
            <blockpin signalname="CCLK" name="ACC_RST" />
            <blockpin signalname="RAMA(1:0)" name="RAM_ADDR(1:0)" />
            <blockpin signalname="XLXN_113(7:0)" name="CONST(7:0)" />
            <blockpin signalname="XLXN_168(1:0)" name="IN_SEL(1:0)" />
            <blockpin signalname="OP(1:0)" name="OP(1:0)" />
        </block>
        <block symbolname="MUX" name="XLXI_52">
            <blockpin signalname="XLXN_168(1:0)" name="SEL(1:0)" />
            <blockpin signalname="XLXN_113(7:0)" name="CONST(7:0)" />
            <blockpin signalname="DATA_IN(7:0)" name="DATA_IN0(7:0)" />
            <blockpin signalname="RAMOUT(7:0)" name="DATA_IN1(7:0)" />
            <blockpin signalname="B(7:0)" name="OUTPUT(7:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_53">
            <blockpin signalname="TEST(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="OP(1:0)" name="OP(1:0)" />
            <blockpin signalname="XLXN_160" name="OVERFLOW" />
            <blockpin signalname="ALUOUT(7:0)" name="OUTPUT(7:0)" />
        </block>
        <block symbolname="ACC" name="XLXI_54">
            <blockpin signalname="XLXN_120" name="WR" />
            <blockpin signalname="CCLK" name="RESET" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ALUOUT(7:0)" name="INPUT(7:0)" />
            <blockpin signalname="TEST(7:0)" name="OUTPUT(7:0)" />
        </block>
        <block symbolname="RAM" name="XLXI_55">
            <blockpin signalname="RAMWR" name="WR" />
            <blockpin signalname="RAMA(1:0)" name="ADDR(1:0)" />
            <blockpin signalname="ALUOUT(7:0)" name="DATA(7:0)" />
            <blockpin signalname="RAMOUT(7:0)" name="OUTPUT(7:0)" />
            <blockpin signalname="CLK" name="CLOCK" />
        </block>
        <block symbolname="SEG_DECODER" name="XLXI_57">
            <blockpin signalname="CLK" name="CLOCK" />
            <blockpin signalname="CCLK" name="RESET" />
            <blockpin signalname="TEST(7:0)" name="ACC_DATA_OUT_BUS(7:0)" />
            <blockpin signalname="COMMON_0_OUT" name="COMM_ONES" />
            <blockpin signalname="COMMON_1_OUT" name="COMM_DECS" />
            <blockpin signalname="COMMON_2_OUT" name="COMM_HUNDREDS" />
            <blockpin signalname="A_OUT" name="SEG_A" />
            <blockpin signalname="B_OUT" name="SEG_B" />
            <blockpin signalname="C_OUT" name="SEG_C" />
            <blockpin signalname="D_OUT" name="SEG_D" />
            <blockpin signalname="E_OUT" name="SEG_E" />
            <blockpin signalname="F_OUT" name="SEG_F" />
            <blockpin signalname="G_OUT" name="SEG_G" />
            <blockpin signalname="DP_OUT" name="DP" />
        </block>
        <block symbolname="fdcp" name="XLXI_69">
            <blockpin signalname="XLXN_165" name="C" />
            <blockpin signalname="CCLK" name="CLR" />
            <blockpin signalname="XLXN_160" name="D" />
            <blockpin signalname="XLXN_167" name="PRE" />
            <blockpin signalname="OVERFLOW" name="Q" />
        </block>
        <block symbolname="and2b1" name="XLXI_71">
            <blockpin signalname="OVERFLOW" name="I0" />
            <blockpin signalname="CLK" name="I1" />
            <blockpin signalname="XLXN_165" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_72">
            <blockpin signalname="XLXN_167" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_73">
            <blockpin signalname="ENTER_OP1" name="I" />
            <blockpin signalname="EOP2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_74">
            <blockpin signalname="ENTER_OP2" name="I" />
            <blockpin signalname="XLXN_177" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_75">
            <blockpin signalname="CALCULATE" name="I" />
            <blockpin signalname="XLXN_172" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_76">
            <blockpin signalname="RESET" name="I" />
            <blockpin signalname="XLXN_173" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="384" y="448" name="XLXI_40" orien="R0" />
        <instance x="80" y="320" name="XLXI_45" orien="R0">
        </instance>
        <instance x="80" y="448" name="XLXI_43" orien="R0">
        </instance>
        <iomarker fontsize="28" x="208" y="592" name="CLOCK" orien="R180" />
        <branch name="XLXN_99">
            <wire x2="288" y1="352" y2="352" x1="224" />
            <wire x2="288" y1="256" y2="352" x1="288" />
            <wire x2="384" y1="256" y2="256" x1="288" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="320" y1="480" y2="480" x1="224" />
            <wire x2="384" y1="416" y2="416" x1="320" />
            <wire x2="320" y1="416" y2="480" x1="320" />
        </branch>
        <branch name="CLOCK">
            <wire x2="304" y1="592" y2="592" x1="208" />
            <wire x2="384" y1="320" y2="320" x1="304" />
            <wire x2="304" y1="320" y2="592" x1="304" />
        </branch>
        <instance x="1408" y="1648" name="XLXI_46" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1040" y="1168" name="ENTER_OP1" orien="R180" />
        <instance x="2448" y="1904" name="XLXI_52" orien="R0">
        </instance>
        <branch name="XLXN_113(7:0)">
            <wire x2="1968" y1="1744" y2="1744" x1="1920" />
            <wire x2="1968" y1="1744" y2="2000" x1="1968" />
            <wire x2="2448" y1="2000" y2="2000" x1="1968" />
        </branch>
        <instance x="2992" y="2688" name="XLXI_54" orien="R0">
        </instance>
        <branch name="XLXN_120">
            <wire x2="2048" y1="1232" y2="1232" x1="1920" />
            <wire x2="2048" y1="1232" y2="2464" x1="2048" />
            <wire x2="2992" y1="2464" y2="2464" x1="2048" />
        </branch>
        <instance x="2704" y="1376" name="XLXI_55" orien="R0">
        </instance>
        <branch name="RAMOUT(7:0)">
            <wire x2="2368" y1="1600" y2="1808" x1="2368" />
            <wire x2="2448" y1="1808" y2="1808" x1="2368" />
            <wire x2="3168" y1="1600" y2="1600" x1="2368" />
            <wire x2="3168" y1="1216" y2="1216" x1="3088" />
            <wire x2="3168" y1="1216" y2="1600" x1="3168" />
            <wire x2="3168" y1="1136" y2="1216" x1="3168" />
        </branch>
        <branch name="RAMWR">
            <wire x2="2304" y1="1168" y2="1168" x1="1920" />
            <wire x2="2304" y1="1168" y2="1216" x1="2304" />
            <wire x2="2688" y1="1216" y2="1216" x1="2304" />
            <wire x2="2704" y1="1216" y2="1216" x1="2688" />
            <wire x2="2688" y1="1088" y2="1216" x1="2688" />
        </branch>
        <branch name="RAMA(1:0)">
            <wire x2="2304" y1="1680" y2="1680" x1="1920" />
            <wire x2="2304" y1="1280" y2="1680" x1="2304" />
            <wire x2="2432" y1="1280" y2="1280" x1="2304" />
            <wire x2="2704" y1="1280" y2="1280" x1="2432" />
            <wire x2="2432" y1="1072" y2="1280" x1="2432" />
        </branch>
        <branch name="DATA_IN(7:0)">
            <wire x2="2208" y1="1008" y2="1008" x1="1936" />
            <wire x2="2208" y1="1008" y2="1744" x1="2208" />
            <wire x2="2448" y1="1744" y2="1744" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="1936" y="1008" name="DATA_IN(7:0)" orien="R180" />
        <instance x="160" y="2352" name="XLXI_57" orien="R0">
        </instance>
        <branch name="COMMON_0_OUT">
            <wire x2="1072" y1="1680" y2="1680" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1680" name="COMMON_0_OUT" orien="R0" />
        <branch name="COMMON_1_OUT">
            <wire x2="1072" y1="1744" y2="1744" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1744" name="COMMON_1_OUT" orien="R0" />
        <branch name="COMMON_2_OUT">
            <wire x2="1072" y1="1808" y2="1808" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1808" name="COMMON_2_OUT" orien="R0" />
        <branch name="A_OUT">
            <wire x2="1072" y1="1872" y2="1872" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1872" name="A_OUT" orien="R0" />
        <branch name="B_OUT">
            <wire x2="1072" y1="1936" y2="1936" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1936" name="B_OUT" orien="R0" />
        <branch name="C_OUT">
            <wire x2="1072" y1="2000" y2="2000" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="2000" name="C_OUT" orien="R0" />
        <branch name="D_OUT">
            <wire x2="1072" y1="2064" y2="2064" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="2064" name="D_OUT" orien="R0" />
        <branch name="E_OUT">
            <wire x2="1072" y1="2128" y2="2128" x1="784" />
        </branch>
        <branch name="F_OUT">
            <wire x2="1072" y1="2192" y2="2192" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="2192" name="F_OUT" orien="R0" />
        <branch name="G_OUT">
            <wire x2="1072" y1="2256" y2="2256" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="2256" name="G_OUT" orien="R0" />
        <branch name="DP_OUT">
            <wire x2="1072" y1="2320" y2="2320" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="2320" name="DP_OUT" orien="R0" />
        <instance x="3088" y="2416" name="XLXI_69" orien="R0" />
        <branch name="XLXN_160">
            <wire x2="3088" y1="2160" y2="2160" x1="2832" />
        </branch>
        <instance x="3040" y="1872" name="XLXI_71" orien="R0" />
        <branch name="OVERFLOW">
            <wire x2="3040" y1="1808" y2="1808" x1="2960" />
            <wire x2="2960" y1="1808" y2="1872" x1="2960" />
            <wire x2="3376" y1="1872" y2="1872" x1="2960" />
            <wire x2="3504" y1="1872" y2="1872" x1="3376" />
            <wire x2="3504" y1="1872" y2="2160" x1="3504" />
            <wire x2="3376" y1="1712" y2="1872" x1="3376" />
            <wire x2="3504" y1="2160" y2="2160" x1="3472" />
        </branch>
        <branch name="XLXN_165">
            <wire x2="3024" y1="1984" y2="2288" x1="3024" />
            <wire x2="3088" y1="2288" y2="2288" x1="3024" />
            <wire x2="3344" y1="1984" y2="1984" x1="3024" />
            <wire x2="3344" y1="1776" y2="1776" x1="3296" />
            <wire x2="3344" y1="1776" y2="1984" x1="3344" />
        </branch>
        <instance x="2928" y="2336" name="XLXI_72" orien="R0" />
        <branch name="XLXN_167">
            <wire x2="3088" y1="2064" y2="2064" x1="2992" />
            <wire x2="2992" y1="2064" y2="2208" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="3376" y="1712" name="OVERFLOW" orien="R270" />
        <branch name="XLXN_168(1:0)">
            <wire x2="1952" y1="2000" y2="2000" x1="1920" />
            <wire x2="1952" y1="1936" y2="2000" x1="1952" />
            <wire x2="2448" y1="1936" y2="1936" x1="1952" />
        </branch>
        <branch name="ALUOUT(7:0)">
            <wire x2="2576" y1="1120" y2="1392" x1="2576" />
            <wire x2="2640" y1="1392" y2="1392" x1="2576" />
            <wire x2="2896" y1="1392" y2="1392" x1="2640" />
            <wire x2="2896" y1="1392" y2="2352" x1="2896" />
            <wire x2="2896" y1="2352" y2="2656" x1="2896" />
            <wire x2="2992" y1="2656" y2="2656" x1="2896" />
            <wire x2="2704" y1="1344" y2="1344" x1="2640" />
            <wire x2="2640" y1="1344" y2="1392" x1="2640" />
            <wire x2="2896" y1="2352" y2="2352" x1="2832" />
        </branch>
        <branch name="OP(1:0)">
            <wire x2="2176" y1="1872" y2="1872" x1="1920" />
            <wire x2="2176" y1="1872" y2="2352" x1="2176" />
            <wire x2="2448" y1="2352" y2="2352" x1="2176" />
        </branch>
        <branch name="B(7:0)">
            <wire x2="2240" y1="1872" y2="2288" x1="2240" />
            <wire x2="2448" y1="2288" y2="2288" x1="2240" />
            <wire x2="2448" y1="1872" y2="1872" x1="2240" />
        </branch>
        <branch name="TEST(7:0)">
            <wire x2="160" y1="2320" y2="2320" x1="128" />
            <wire x2="128" y1="2320" y2="2448" x1="128" />
            <wire x2="128" y1="2448" y2="2704" x1="128" />
            <wire x2="2336" y1="2704" y2="2704" x1="128" />
            <wire x2="3392" y1="2704" y2="2704" x1="2336" />
            <wire x2="192" y1="2448" y2="2448" x1="128" />
            <wire x2="2448" y1="2224" y2="2224" x1="2336" />
            <wire x2="2336" y1="2224" y2="2704" x1="2336" />
            <wire x2="3392" y1="2464" y2="2464" x1="3376" />
            <wire x2="3392" y1="2464" y2="2704" x1="3392" />
        </branch>
        <instance x="2448" y="2384" name="XLXI_53" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1072" y="2128" name="E_OUT" orien="R0" />
        <instance x="1136" y="1200" name="XLXI_73" orien="R0" />
        <branch name="ENTER_OP1">
            <wire x2="1136" y1="1168" y2="1168" x1="1040" />
        </branch>
        <instance x="1136" y="1312" name="XLXI_74" orien="R0" />
        <instance x="1136" y="1424" name="XLXI_75" orien="R0" />
        <instance x="1136" y="1536" name="XLXI_76" orien="R0" />
        <branch name="XLXN_172">
            <wire x2="1408" y1="1392" y2="1392" x1="1360" />
        </branch>
        <branch name="XLXN_173">
            <wire x2="1408" y1="1504" y2="1504" x1="1360" />
        </branch>
        <branch name="ENTER_OP2">
            <wire x2="1136" y1="1280" y2="1280" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1280" name="ENTER_OP2" orien="R180" />
        <branch name="CALCULATE">
            <wire x2="1136" y1="1392" y2="1392" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1392" name="CALCULATE" orien="R180" />
        <branch name="RESET">
            <wire x2="1136" y1="1504" y2="1504" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1504" name="RESET" orien="R180" />
        <branch name="CCLK">
            <wire x2="160" y1="2000" y2="2000" x1="112" />
            <wire x2="112" y1="2000" y2="2528" x1="112" />
            <wire x2="2112" y1="2528" y2="2528" x1="112" />
            <wire x2="2960" y1="2528" y2="2528" x1="2112" />
            <wire x2="2992" y1="2528" y2="2528" x1="2960" />
            <wire x2="2112" y1="1296" y2="1296" x1="1920" />
            <wire x2="2112" y1="1296" y2="2528" x1="2112" />
            <wire x2="3088" y1="2384" y2="2384" x1="2960" />
            <wire x2="2960" y1="2384" y2="2528" x1="2960" />
        </branch>
        <branch name="EOP2">
            <wire x2="1408" y1="1168" y2="1168" x1="1360" />
        </branch>
        <branch name="CLK">
            <wire x2="112" y1="1024" y2="1680" x1="112" />
            <wire x2="160" y1="1680" y2="1680" x1="112" />
            <wire x2="768" y1="1024" y2="1024" x1="112" />
            <wire x2="768" y1="1024" y2="1616" x1="768" />
            <wire x2="992" y1="1616" y2="1616" x1="768" />
            <wire x2="1408" y1="1616" y2="1616" x1="992" />
            <wire x2="992" y1="1616" y2="2592" x1="992" />
            <wire x2="2864" y1="2592" y2="2592" x1="992" />
            <wire x2="2944" y1="2592" y2="2592" x1="2864" />
            <wire x2="2992" y1="2592" y2="2592" x1="2944" />
            <wire x2="768" y1="320" y2="1024" x1="768" />
            <wire x2="2704" y1="1408" y2="1408" x1="2640" />
            <wire x2="2640" y1="1408" y2="1504" x1="2640" />
            <wire x2="2864" y1="1504" y2="1504" x1="2640" />
            <wire x2="2864" y1="1504" y2="2592" x1="2864" />
            <wire x2="2944" y1="1744" y2="2592" x1="2944" />
            <wire x2="3040" y1="1744" y2="1744" x1="2944" />
        </branch>
        <branch name="XLXN_177">
            <wire x2="1408" y1="1280" y2="1280" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="192" y="2448" name="TEST(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3168" y="1136" name="RAMOUT(7:0)" orien="R270" />
        <iomarker fontsize="28" x="2576" y="1120" name="ALUOUT(7:0)" orien="R270" />
        <iomarker fontsize="28" x="2432" y="1072" name="RAMA(1:0)" orien="R270" />
        <iomarker fontsize="28" x="2688" y="1088" name="RAMWR" orien="R270" />
    </sheet>
</drawing>