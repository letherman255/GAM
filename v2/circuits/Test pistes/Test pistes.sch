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
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
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
<library name="wirepad">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2,54/1,1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="PAD">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="2,54/1,1" prefix="PAD" uservalue="yes">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2,54/1,1">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<technologies>
<technology name=""/>
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
<part name="PAD1" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD2" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD3" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD4" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD5" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD6" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD7" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD8" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD9" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD10" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD23" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD24" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD25" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD26" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD27" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD28" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD29" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD30" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD31" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD32" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD11" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD12" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD13" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD14" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD15" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD16" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD17" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD18" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD19" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD20" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD21" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD22" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD33" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD34" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD35" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD36" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD37" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD38" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD39" library="wirepad" deviceset="2,54/1,1" device=""/>
<part name="PAD40" library="wirepad" deviceset="2,54/1,1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="PAD1" gate="1" x="2.54" y="71.12"/>
<instance part="PAD2" gate="1" x="2.54" y="68.58"/>
<instance part="PAD3" gate="1" x="2.54" y="66.04"/>
<instance part="PAD4" gate="1" x="2.54" y="63.5"/>
<instance part="PAD5" gate="1" x="2.54" y="60.96"/>
<instance part="PAD6" gate="1" x="2.54" y="58.42"/>
<instance part="PAD7" gate="1" x="2.54" y="55.88"/>
<instance part="PAD8" gate="1" x="2.54" y="53.34"/>
<instance part="PAD9" gate="1" x="2.54" y="50.8"/>
<instance part="PAD10" gate="1" x="2.54" y="48.26"/>
<instance part="PAD23" gate="1" x="30.48" y="48.26" rot="R180"/>
<instance part="PAD24" gate="1" x="30.48" y="50.8" rot="R180"/>
<instance part="PAD25" gate="1" x="30.48" y="53.34" rot="R180"/>
<instance part="PAD26" gate="1" x="30.48" y="55.88" rot="R180"/>
<instance part="PAD27" gate="1" x="30.48" y="58.42" rot="R180"/>
<instance part="PAD28" gate="1" x="30.48" y="60.96" rot="R180"/>
<instance part="PAD29" gate="1" x="30.48" y="63.5" rot="R180"/>
<instance part="PAD30" gate="1" x="30.48" y="66.04" rot="R180"/>
<instance part="PAD31" gate="1" x="30.48" y="68.58" rot="R180"/>
<instance part="PAD32" gate="1" x="30.48" y="71.12" rot="R180"/>
<instance part="PAD11" gate="1" x="43.18" y="71.12"/>
<instance part="PAD12" gate="1" x="43.18" y="68.58"/>
<instance part="PAD13" gate="1" x="43.18" y="66.04"/>
<instance part="PAD14" gate="1" x="43.18" y="63.5"/>
<instance part="PAD15" gate="1" x="43.18" y="60.96"/>
<instance part="PAD16" gate="1" x="43.18" y="58.42"/>
<instance part="PAD17" gate="1" x="43.18" y="55.88"/>
<instance part="PAD18" gate="1" x="43.18" y="53.34"/>
<instance part="PAD19" gate="1" x="43.18" y="50.8"/>
<instance part="PAD20" gate="1" x="43.18" y="48.26"/>
<instance part="PAD21" gate="1" x="71.12" y="48.26" rot="R180"/>
<instance part="PAD22" gate="1" x="71.12" y="50.8" rot="R180"/>
<instance part="PAD33" gate="1" x="71.12" y="53.34" rot="R180"/>
<instance part="PAD34" gate="1" x="71.12" y="55.88" rot="R180"/>
<instance part="PAD35" gate="1" x="71.12" y="58.42" rot="R180"/>
<instance part="PAD36" gate="1" x="71.12" y="60.96" rot="R180"/>
<instance part="PAD37" gate="1" x="71.12" y="63.5" rot="R180"/>
<instance part="PAD38" gate="1" x="71.12" y="66.04" rot="R180"/>
<instance part="PAD39" gate="1" x="71.12" y="68.58" rot="R180"/>
<instance part="PAD40" gate="1" x="71.12" y="71.12" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="PAD1" gate="1" pin="P"/>
<pinref part="PAD32" gate="1" pin="P"/>
<wire x1="5.08" y1="71.12" x2="27.94" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="PAD31" gate="1" pin="P"/>
<pinref part="PAD2" gate="1" pin="P"/>
<wire x1="27.94" y1="68.58" x2="5.08" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="PAD3" gate="1" pin="P"/>
<pinref part="PAD30" gate="1" pin="P"/>
<wire x1="5.08" y1="66.04" x2="27.94" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="PAD4" gate="1" pin="P"/>
<pinref part="PAD29" gate="1" pin="P"/>
<wire x1="5.08" y1="63.5" x2="27.94" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="PAD28" gate="1" pin="P"/>
<pinref part="PAD5" gate="1" pin="P"/>
<wire x1="27.94" y1="60.96" x2="5.08" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="PAD6" gate="1" pin="P"/>
<pinref part="PAD27" gate="1" pin="P"/>
<wire x1="5.08" y1="58.42" x2="27.94" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="PAD26" gate="1" pin="P"/>
<pinref part="PAD7" gate="1" pin="P"/>
<wire x1="27.94" y1="55.88" x2="5.08" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="PAD8" gate="1" pin="P"/>
<pinref part="PAD25" gate="1" pin="P"/>
<wire x1="5.08" y1="53.34" x2="27.94" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="PAD9" gate="1" pin="P"/>
<pinref part="PAD24" gate="1" pin="P"/>
<wire x1="5.08" y1="50.8" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="PAD23" gate="1" pin="P"/>
<pinref part="PAD10" gate="1" pin="P"/>
<wire x1="27.94" y1="48.26" x2="5.08" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="PAD11" gate="1" pin="P"/>
<pinref part="PAD40" gate="1" pin="P"/>
<wire x1="45.72" y1="71.12" x2="68.58" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="PAD39" gate="1" pin="P"/>
<pinref part="PAD12" gate="1" pin="P"/>
<wire x1="68.58" y1="68.58" x2="45.72" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="PAD13" gate="1" pin="P"/>
<pinref part="PAD38" gate="1" pin="P"/>
<wire x1="45.72" y1="66.04" x2="68.58" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="PAD14" gate="1" pin="P"/>
<pinref part="PAD37" gate="1" pin="P"/>
<wire x1="45.72" y1="63.5" x2="68.58" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="PAD36" gate="1" pin="P"/>
<pinref part="PAD15" gate="1" pin="P"/>
<wire x1="68.58" y1="60.96" x2="45.72" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="PAD16" gate="1" pin="P"/>
<pinref part="PAD35" gate="1" pin="P"/>
<wire x1="45.72" y1="58.42" x2="68.58" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="PAD34" gate="1" pin="P"/>
<pinref part="PAD17" gate="1" pin="P"/>
<wire x1="68.58" y1="55.88" x2="45.72" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="PAD18" gate="1" pin="P"/>
<pinref part="PAD33" gate="1" pin="P"/>
<wire x1="45.72" y1="53.34" x2="68.58" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="PAD19" gate="1" pin="P"/>
<pinref part="PAD22" gate="1" pin="P"/>
<wire x1="45.72" y1="50.8" x2="68.58" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="PAD21" gate="1" pin="P"/>
<pinref part="PAD20" gate="1" pin="P"/>
<wire x1="68.58" y1="48.26" x2="45.72" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
