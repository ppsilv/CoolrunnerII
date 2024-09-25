<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="key1" />
        <signal name="key2" />
        <signal name="LED1" />
        <signal name="XLXN_2" />
        <signal name="LED2" />
        <port polarity="Input" name="key1" />
        <port polarity="Input" name="key2" />
        <port polarity="Output" name="LED1" />
        <port polarity="Output" name="LED2" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
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
        <block symbolname="buf" name="XLXI_1">
            <blockpin signalname="key1" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="key2" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="I" />
            <blockpin signalname="LED1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_2" name="I" />
            <blockpin signalname="LED2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="1264" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1104" y1="1232" y2="1232" x1="1072" />
        </branch>
        <instance x="1104" y="1264" name="XLXI_3" orien="R0" />
        <instance x="848" y="1152" name="XLXI_1" orien="R0" />
        <branch name="key1">
            <wire x2="848" y1="1120" y2="1120" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="1120" name="key1" orien="R180" />
        <branch name="key2">
            <wire x2="848" y1="1232" y2="1232" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="1232" name="key2" orien="R180" />
        <branch name="LED1">
            <wire x2="1360" y1="1232" y2="1232" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1232" name="LED1" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1104" y1="1120" y2="1120" x1="1072" />
        </branch>
        <instance x="1104" y="1152" name="XLXI_4" orien="R0" />
        <branch name="LED2">
            <wire x2="1360" y1="1120" y2="1120" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1120" name="LED2" orien="R0" />
    </sheet>
</drawing>