<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="10" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="26" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="KK-156-4">
<description>&lt;b&gt;KK 156 HEADER&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com/pdm_docs/sd/026604100_sd.pdf</description>
<wire x1="7.77" y1="4.95" x2="5.97" y2="4.95" width="0.2032" layer="21"/>
<wire x1="5.97" y1="4.95" x2="-5.945" y2="4.95" width="0.2032" layer="21"/>
<wire x1="-5.945" y1="4.95" x2="-7.745" y2="4.95" width="0.2032" layer="21"/>
<wire x1="-7.745" y1="4.95" x2="-7.745" y2="-4.825" width="0.2032" layer="21"/>
<wire x1="-7.745" y1="-4.825" x2="7.77" y2="-4.825" width="0.2032" layer="21"/>
<wire x1="7.77" y1="-4.825" x2="7.77" y2="4.95" width="0.2032" layer="21"/>
<wire x1="-5.945" y1="2.525" x2="5.97" y2="2.525" width="0.2032" layer="21"/>
<wire x1="5.97" y1="2.525" x2="5.97" y2="4.95" width="0.2032" layer="21"/>
<wire x1="-5.945" y1="2.525" x2="-5.945" y2="4.95" width="0.2032" layer="21"/>
<pad name="1" x="-5.94" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="2" x="-1.98" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="3" x="1.98" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="4" x="5.94" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<text x="-8.44" y="-4.445" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="9.71" y="-4.445" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="87758-0216">
<description>&lt;b&gt;2 Pin - 2mm Dual Row Single Wafer, Vertical T/H HDR&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com/pdm_docs/sd/877580616_sd.pdf</description>
<wire x1="-0.85" y1="-1.9" x2="0.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="0.85" y1="-1.9" x2="0.85" y2="-0.4" width="0.2032" layer="21"/>
<wire x1="0.85" y1="0.4" x2="0.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="0.85" y1="1.9" x2="-0.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="-0.85" y1="1.9" x2="-0.85" y2="0.4" width="0.2032" layer="21"/>
<wire x1="-0.85" y1="-0.4" x2="-0.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-0.85" y1="0.4" x2="-0.85" y2="-0.4" width="0.2032" layer="21" curve="-129.184564"/>
<wire x1="0.85" y1="-0.4" x2="0.85" y2="0.4" width="0.2032" layer="21" curve="-129.184564"/>
<pad name="1" x="0" y="-1" drill="0.9" diameter="1.27"/>
<pad name="2" x="0" y="1" drill="0.9" diameter="1.27"/>
<text x="-0.65" y="-1.75" size="0.3048" layer="21" font="vector">1</text>
<text x="-0.62" y="-3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.62" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.25" y1="-1.25" x2="0.25" y2="-0.75" layer="51"/>
<rectangle x1="-0.25" y1="0.75" x2="0.25" y2="1.25" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="KK-156-4" prefix="X" uservalue="yes">
<description>&lt;b&gt;KK 156 HEADER&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com/pdm_docs/sd/026604100_sd.pdf</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="KK-156-4">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="87758-0216" prefix="X">
<description>&lt;b&gt;2 Pin - 2mm Dual Row Single Wafer, Vertical T/H HDR&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com/pdm_docs/sd/877580616_sd.pdf</description>
<gates>
<gate name="-1" symbol="MV" x="-10.16" y="0" addlevel="always"/>
<gate name="-2" symbol="MV" x="10.16" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="87758-0216">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="87758-0216" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="94M1513" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-berg">
<description>&lt;b&gt;Berg Connectors&lt;/b&gt;&lt;p&gt;
Based on  the following source:
&lt;ul&gt;
&lt;li&gt;http://catalog.fciconnect.com
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="PN61729-S">
<description>&lt;b&gt;USB connector&lt;/b&gt; with shield&lt;p&gt;</description>
<wire x1="-5.9" y1="5.6" x2="-5.9" y2="-10.15" width="0.254" layer="51"/>
<wire x1="-5.9" y1="-10.15" x2="5.9" y2="-10.15" width="0.254" layer="21"/>
<wire x1="5.9" y1="-10.15" x2="5.9" y2="5.6" width="0.254" layer="51"/>
<wire x1="5.9" y1="5.6" x2="-5.9" y2="5.6" width="0.254" layer="21"/>
<wire x1="-2.46" y1="-0.27" x2="-2.46" y2="0.73" width="0.0508" layer="21" curve="180"/>
<wire x1="-2.46" y1="-1.27" x2="-2.46" y2="-0.27" width="0.0508" layer="21" curve="180"/>
<wire x1="3.665" y1="0.23" x2="3.665" y2="-0.77" width="0.0508" layer="21" curve="180"/>
<wire x1="3.415" y1="0.73" x2="3.415" y2="-1.27" width="0.0508" layer="21" curve="180"/>
<wire x1="3.665" y1="0.23" x2="4.165" y2="0.23" width="0.0508" layer="21" curve="-15.189287"/>
<wire x1="3.415" y1="0.73" x2="4.175" y2="0.675" width="0.0508" layer="21" curve="-12.057134"/>
<wire x1="3.415" y1="-1.27" x2="4.165" y2="-1.145" width="0.0508" layer="21" curve="18.422836"/>
<wire x1="1.665" y1="-0.52" x2="1.665" y2="0.73" width="0.0508" layer="21" curve="180"/>
<wire x1="1.29" y1="-0.145" x2="1.29" y2="0.23" width="0.0508" layer="21" curve="180"/>
<wire x1="-3.835" y1="0.73" x2="-3.835" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="-3.835" y1="-1.27" x2="-3.21" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="-1.27" x2="-3.21" y2="-0.27" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="-0.27" x2="-3.21" y2="0.73" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="0.73" x2="-3.835" y2="0.73" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="0.73" x2="-2.46" y2="0.23" width="0.0508" layer="21"/>
<wire x1="-2.46" y1="0.23" x2="-3.21" y2="-0.27" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="-0.27" x2="-2.46" y2="-0.77" width="0.0508" layer="21"/>
<wire x1="-2.46" y1="-0.77" x2="-3.21" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="-2.46" y1="-1.27" x2="-3.21" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="-2.46" y1="0.73" x2="-3.21" y2="0.73" width="0.0508" layer="21"/>
<wire x1="-1.71" y1="0.73" x2="-1.71" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="-1.71" y1="-1.27" x2="0.04" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="0.04" y1="-1.27" x2="0.04" y2="-0.77" width="0.0508" layer="21"/>
<wire x1="0.04" y1="-0.77" x2="-1.085" y2="-0.77" width="0.0508" layer="21"/>
<wire x1="-1.085" y1="-0.77" x2="-1.085" y2="-0.52" width="0.0508" layer="21"/>
<wire x1="-1.085" y1="-0.52" x2="0.04" y2="-0.52" width="0.0508" layer="21"/>
<wire x1="0.04" y1="-0.52" x2="0.04" y2="-0.02" width="0.0508" layer="21"/>
<wire x1="0.04" y1="-0.02" x2="-1.085" y2="-0.02" width="0.0508" layer="21"/>
<wire x1="-1.085" y1="-0.02" x2="-1.085" y2="0.23" width="0.0508" layer="21"/>
<wire x1="-1.085" y1="0.23" x2="0.04" y2="0.23" width="0.0508" layer="21"/>
<wire x1="0.04" y1="0.23" x2="0.04" y2="0.73" width="0.0508" layer="21"/>
<wire x1="0.04" y1="0.73" x2="-1.71" y2="0.73" width="0.0508" layer="21"/>
<wire x1="0.29" y1="0.73" x2="0.29" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="0.29" y1="-1.27" x2="0.915" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="0.915" y1="-1.27" x2="0.915" y2="-0.52" width="0.0508" layer="21"/>
<wire x1="0.915" y1="-0.52" x2="1.415" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="1.415" y1="-1.27" x2="2.165" y2="-1.27" width="0.0508" layer="21"/>
<wire x1="2.165" y1="-1.27" x2="1.665" y2="-0.52" width="0.0508" layer="21"/>
<wire x1="0.915" y1="0.23" x2="0.915" y2="-0.145" width="0.0508" layer="21"/>
<wire x1="0.29" y1="0.73" x2="1.665" y2="0.73" width="0.0508" layer="21"/>
<wire x1="0.915" y1="0.23" x2="1.29" y2="0.23" width="0.0508" layer="21"/>
<wire x1="0.915" y1="-0.145" x2="1.29" y2="-0.145" width="0.0508" layer="21"/>
<wire x1="3.665" y1="-0.27" x2="4.165" y2="-0.27" width="0.0508" layer="21"/>
<wire x1="3.665" y1="-0.27" x2="3.665" y2="-0.77" width="0.0508" layer="21"/>
<wire x1="4.16" y1="0.23" x2="4.16" y2="0.675" width="0.0508" layer="21"/>
<wire x1="4.165" y1="-0.27" x2="4.165" y2="-1.145" width="0.0508" layer="21"/>
<wire x1="-5.9" y1="-2.02" x2="-5.9" y2="-10.15" width="0.254" layer="21"/>
<wire x1="5.9" y1="1.915" x2="5.9" y2="5.6" width="0.254" layer="21"/>
<wire x1="-5.9" y1="5.6" x2="-5.9" y2="1.915" width="0.254" layer="21"/>
<wire x1="5.9" y1="-10.15" x2="5.9" y2="-2.02" width="0.254" layer="21"/>
<pad name="1" x="1.25" y="4.71" drill="0.95" shape="octagon"/>
<pad name="2" x="-1.25" y="4.71" drill="0.95" shape="octagon"/>
<pad name="3" x="-1.25" y="2.71" drill="0.95" shape="octagon"/>
<pad name="4" x="1.25" y="2.71" drill="0.95" shape="octagon"/>
<pad name="S1" x="-6.02" y="0" drill="2.3" diameter="2.9"/>
<pad name="S2" x="6.02" y="0" drill="2.3" diameter="2.9"/>
<text x="-6.35" y="6.35" size="1.27" layer="25">&gt;NAME</text>
<text x="7.62" y="-8.89" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-3.81" y="-2.04" size="0.4064" layer="21">E L E C T R O N I C S</text>
</package>
<package name="PN87520">
<description>&lt;b&gt;USB connector&lt;/b&gt;</description>
<wire x1="-7.4" y1="-10.19" x2="7.4" y2="-10.19" width="0.254" layer="21"/>
<wire x1="7.4" y1="-10.19" x2="7.4" y2="4.11" width="0.254" layer="21"/>
<wire x1="7.4" y1="4.11" x2="-7.4" y2="4.11" width="0.254" layer="21"/>
<wire x1="-7.4" y1="4.11" x2="-7.4" y2="-10.19" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-2.87" x2="-3.81" y2="-8.72" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-8.72" x2="-2.54" y2="-8.72" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-8.72" x2="-1.27" y2="-2.87" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.87" x2="2.54" y2="-8.72" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-8.72" x2="3.81" y2="-8.72" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-8.72" x2="5.08" y2="-2.87" width="0.1524" layer="21"/>
<wire x1="-2.46" y1="-0.1" x2="-2.46" y2="0.9" width="0.0508" layer="21" curve="180"/>
<wire x1="-2.46" y1="-1.1" x2="-2.46" y2="-0.1" width="0.0508" layer="21" curve="180"/>
<wire x1="3.665" y1="0.4" x2="3.665" y2="-0.6" width="0.0508" layer="21" curve="180"/>
<wire x1="3.415" y1="0.9" x2="3.415" y2="-1.1" width="0.0508" layer="21" curve="180"/>
<wire x1="3.665" y1="0.4" x2="4.165" y2="0.4" width="0.0508" layer="21" curve="-15.189287"/>
<wire x1="3.415" y1="0.9" x2="4.175" y2="0.845" width="0.0508" layer="21" curve="-12.05913"/>
<wire x1="3.415" y1="-1.1" x2="4.165" y2="-0.975" width="0.0508" layer="21" curve="18.422836"/>
<wire x1="1.665" y1="-0.35" x2="1.665" y2="0.9" width="0.0508" layer="21" curve="180"/>
<wire x1="1.29" y1="0.025" x2="1.29" y2="0.4" width="0.0508" layer="21" curve="180"/>
<wire x1="-3.835" y1="0.9" x2="-3.835" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="-3.835" y1="-1.1" x2="-3.21" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="-1.1" x2="-3.21" y2="-0.1" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="-0.1" x2="-3.21" y2="0.9" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="0.9" x2="-3.835" y2="0.9" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="0.9" x2="-2.46" y2="0.4" width="0.0508" layer="21"/>
<wire x1="-2.46" y1="0.4" x2="-3.21" y2="-0.1" width="0.0508" layer="21"/>
<wire x1="-3.21" y1="-0.1" x2="-2.46" y2="-0.6" width="0.0508" layer="21"/>
<wire x1="-2.46" y1="-0.6" x2="-3.21" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="-2.46" y1="-1.1" x2="-3.21" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="-2.46" y1="0.9" x2="-3.21" y2="0.9" width="0.0508" layer="21"/>
<wire x1="-1.71" y1="0.9" x2="-1.71" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="-1.71" y1="-1.1" x2="0.04" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="0.04" y1="-1.1" x2="0.04" y2="-0.6" width="0.0508" layer="21"/>
<wire x1="0.04" y1="-0.6" x2="-1.085" y2="-0.6" width="0.0508" layer="21"/>
<wire x1="-1.085" y1="-0.6" x2="-1.085" y2="-0.35" width="0.0508" layer="21"/>
<wire x1="-1.085" y1="-0.35" x2="0.04" y2="-0.35" width="0.0508" layer="21"/>
<wire x1="0.04" y1="-0.35" x2="0.04" y2="0.15" width="0.0508" layer="21"/>
<wire x1="0.04" y1="0.15" x2="-1.085" y2="0.15" width="0.0508" layer="21"/>
<wire x1="-1.085" y1="0.15" x2="-1.085" y2="0.4" width="0.0508" layer="21"/>
<wire x1="-1.085" y1="0.4" x2="0.04" y2="0.4" width="0.0508" layer="21"/>
<wire x1="0.04" y1="0.4" x2="0.04" y2="0.9" width="0.0508" layer="21"/>
<wire x1="0.04" y1="0.9" x2="-1.71" y2="0.9" width="0.0508" layer="21"/>
<wire x1="0.29" y1="0.9" x2="0.29" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="0.29" y1="-1.1" x2="0.915" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="0.915" y1="-1.1" x2="0.915" y2="-0.35" width="0.0508" layer="21"/>
<wire x1="0.915" y1="-0.35" x2="1.415" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="1.415" y1="-1.1" x2="2.165" y2="-1.1" width="0.0508" layer="21"/>
<wire x1="2.165" y1="-1.1" x2="1.665" y2="-0.35" width="0.0508" layer="21"/>
<wire x1="0.915" y1="0.4" x2="0.915" y2="0.025" width="0.0508" layer="21"/>
<wire x1="0.29" y1="0.9" x2="1.665" y2="0.9" width="0.0508" layer="21"/>
<wire x1="0.915" y1="0.4" x2="1.29" y2="0.4" width="0.0508" layer="21"/>
<wire x1="0.915" y1="0.025" x2="1.29" y2="0.025" width="0.0508" layer="21"/>
<wire x1="3.665" y1="-0.1" x2="4.165" y2="-0.1" width="0.0508" layer="21"/>
<wire x1="3.665" y1="-0.1" x2="3.665" y2="-0.6" width="0.0508" layer="21"/>
<wire x1="4.16" y1="0.4" x2="4.16" y2="0.845" width="0.0508" layer="21"/>
<wire x1="4.165" y1="-0.1" x2="4.165" y2="-0.975" width="0.0508" layer="21"/>
<pad name="2" x="-1" y="2.71" drill="0.95" shape="long" rot="R90"/>
<pad name="3" x="1" y="2.71" drill="0.95" shape="long" rot="R90"/>
<pad name="1" x="-3.5" y="2.71" drill="0.95" shape="long" rot="R90"/>
<pad name="4" x="3.5" y="2.71" drill="0.95" shape="long" rot="R90"/>
<text x="-7.62" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="9.144" y="-10.16" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-3.81" y="-2.04" size="0.4064" layer="21">E L E C T R O N I C S</text>
<hole x="-6.57" y="0" drill="2.3"/>
<hole x="6.57" y="0" drill="2.3"/>
</package>
</packages>
<symbols>
<symbol name="USB-SHIELD">
<wire x1="0" y1="7.62" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="2.54" y2="-9.398" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-8.89" x2="2.54" y2="-8.128" width="0.1524" layer="94"/>
<wire x1="6.35" y1="-5.334" x2="6.35" y2="-4.572" width="0.1524" layer="94"/>
<wire x1="6.35" y1="-4.064" x2="6.35" y2="-3.302" width="0.1524" layer="94"/>
<wire x1="6.35" y1="-2.794" x2="6.35" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="6.35" y1="-1.524" x2="6.35" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="6.35" y1="-0.254" x2="6.35" y2="0.508" width="0.1524" layer="94"/>
<wire x1="6.35" y1="1.016" x2="6.35" y2="1.778" width="0.1524" layer="94"/>
<wire x1="6.35" y1="2.286" x2="6.35" y2="3.048" width="0.1524" layer="94"/>
<wire x1="6.35" y1="3.556" x2="6.35" y2="4.318" width="0.1524" layer="94"/>
<wire x1="6.35" y1="4.826" x2="6.35" y2="5.588" width="0.1524" layer="94"/>
<wire x1="6.35" y1="6.096" x2="6.35" y2="6.858" width="0.1524" layer="94"/>
<wire x1="6.35" y1="7.366" x2="6.35" y2="8.128" width="0.1524" layer="94"/>
<wire x1="6.35" y1="8.382" x2="5.588" y2="8.382" width="0.1524" layer="94"/>
<wire x1="5.08" y1="8.382" x2="4.318" y2="8.382" width="0.1524" layer="94"/>
<wire x1="3.81" y1="8.382" x2="3.048" y2="8.382" width="0.1524" layer="94"/>
<wire x1="2.54" y1="8.382" x2="1.778" y2="8.382" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-7.112" x2="2.54" y2="-6.35" width="0.1524" layer="94"/>
<wire x1="3.556" y1="-5.842" x2="2.794" y2="-5.842" width="0.1524" layer="94"/>
<wire x1="4.826" y1="-5.842" x2="4.064" y2="-5.842" width="0.1524" layer="94"/>
<wire x1="6.096" y1="-5.842" x2="5.334" y2="-5.842" width="0.1524" layer="94"/>
<text x="0" y="8.89" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="5.08" y="-2.54" size="2.54" layer="94" rot="R90">USB</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="S1" x="0" y="-7.62" visible="off" length="short" direction="pas"/>
<pin name="S2" x="0" y="-10.16" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="J11">
<wire x1="0" y1="7.62" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<text x="0" y="8.89" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="5.08" y="-2.54" size="2.54" layer="94" rot="R90">USB</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PN61729-S" prefix="X">
<description>&lt;b&gt;BERG&lt;/b&gt; USB connector</description>
<gates>
<gate name="G$1" symbol="USB-SHIELD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PN61729-S">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="S1" pad="S1"/>
<connect gate="G$1" pin="S2" pad="S2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PN87520" prefix="X" uservalue="yes">
<description>&lt;b&gt;BERG&lt;/b&gt; USB connector</description>
<gates>
<gate name="G$1" symbol="J11" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="PN87520">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA12-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-14.605" y1="1.27" x2="-13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-1.27" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-0.635" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-1.27" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-15.24" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-14.351" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="13.335" y="1.651" size="1.27" layer="21" ratio="10">12</text>
<text x="1.397" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA12-1">
<wire x1="3.81" y1="-15.24" x2="-1.27" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="15.24" x2="2.54" y2="15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="17.78" x2="-1.27" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-15.24" x2="3.81" y2="17.78" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="17.78" x2="3.81" y2="17.78" width="0.4064" layer="94"/>
<text x="-1.27" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="18.542" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA12-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA12-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA12-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="10" pad="10"/>
<connect gate="1" pin="11" pad="11"/>
<connect gate="1" pin="12" pad="12"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
<connect gate="1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-molex" deviceset="KK-156-4" device=""/>
<part name="X2" library="con-berg" deviceset="PN61729-S" device=""/>
<part name="X3" library="con-berg" deviceset="PN87520" device=""/>
<part name="SV1" library="con-lstb" deviceset="MA12-1" device=""/>
<part name="SV2" library="con-lstb" deviceset="MA12-1" device=""/>
<part name="X4" library="con-molex" deviceset="87758-0216" device=""/>
<part name="X5" library="con-berg" deviceset="PN61729-S" device=""/>
<part name="X6" library="con-berg" deviceset="PN87520" device=""/>
<part name="X7" library="con-berg" deviceset="PN61729-S" device=""/>
<part name="X8" library="con-berg" deviceset="PN61729-S" device=""/>
<part name="X9" library="con-berg" deviceset="PN87520" device=""/>
<part name="X10" library="con-berg" deviceset="PN87520" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="-10.16" y="45.72" rot="R180"/>
<instance part="X1" gate="-2" x="-10.16" y="48.26" rot="R180"/>
<instance part="X1" gate="-3" x="-10.16" y="50.8" rot="R180"/>
<instance part="X1" gate="-4" x="-10.16" y="53.34" rot="R180"/>
<instance part="X2" gate="G$1" x="91.44" y="76.2" rot="R90"/>
<instance part="X3" gate="G$1" x="88.9" y="15.24" rot="R270"/>
<instance part="SV1" gate="1" x="25.4" y="50.8"/>
<instance part="SV2" gate="1" x="50.8" y="50.8"/>
<instance part="X4" gate="-1" x="25.4" y="15.24"/>
<instance part="X4" gate="-2" x="25.4" y="20.32"/>
<instance part="X5" gate="G$1" x="119.38" y="76.2" rot="R90"/>
<instance part="X6" gate="G$1" x="116.84" y="15.24" rot="R270"/>
<instance part="X7" gate="G$1" x="147.32" y="76.2" rot="R90"/>
<instance part="X8" gate="G$1" x="175.26" y="76.2" rot="R90"/>
<instance part="X9" gate="G$1" x="144.78" y="15.24" rot="R270"/>
<instance part="X10" gate="G$1" x="172.72" y="15.24" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="-3" pin="S"/>
<pinref part="X4" gate="-2" pin="S"/>
<wire x1="-7.62" y1="50.8" x2="22.86" y2="50.8" width="0.1524" layer="91"/>
<wire x1="22.86" y1="50.8" x2="22.86" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="-2" pin="S"/>
<wire x1="-7.62" y1="48.26" x2="20.32" y2="48.26" width="0.1524" layer="91"/>
<wire x1="20.32" y1="48.26" x2="20.32" y2="15.24" width="0.1524" layer="91"/>
<pinref part="X4" gate="-1" pin="S"/>
<wire x1="20.32" y1="15.24" x2="22.86" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="4"/>
<pinref part="X3" gate="G$1" pin="1"/>
<wire x1="93.98" y1="73.66" x2="93.98" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="3"/>
<wire x1="91.44" y1="73.66" x2="91.44" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X1" gate="-4" pin="S"/>
<pinref part="SV1" gate="1" pin="4"/>
<wire x1="-7.62" y1="53.34" x2="33.02" y2="53.34" width="0.1524" layer="91"/>
<wire x1="33.02" y1="53.34" x2="33.02" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X1" gate="-1" pin="S"/>
<wire x1="-7.62" y1="45.72" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
<wire x1="2.54" y1="45.72" x2="2.54" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="3"/>
<wire x1="2.54" y1="40.64" x2="33.02" y2="40.64" width="0.1524" layer="91"/>
<wire x1="33.02" y1="40.64" x2="33.02" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="4"/>
<pinref part="X6" gate="G$1" pin="1"/>
<wire x1="121.92" y1="73.66" x2="121.92" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="3"/>
<wire x1="119.38" y1="73.66" x2="119.38" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="3"/>
<pinref part="X9" gate="G$1" pin="2"/>
<wire x1="147.32" y1="73.66" x2="147.32" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="X9" gate="G$1" pin="1"/>
<pinref part="X7" gate="G$1" pin="4"/>
<wire x1="149.86" y1="17.78" x2="149.86" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="X8" gate="G$1" pin="3"/>
<pinref part="X10" gate="G$1" pin="2"/>
<wire x1="175.26" y1="73.66" x2="175.26" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X10" gate="G$1" pin="1"/>
<pinref part="X8" gate="G$1" pin="4"/>
<wire x1="177.8" y1="17.78" x2="177.8" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
