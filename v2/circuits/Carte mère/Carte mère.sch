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
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="14" fill="10" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="wirepad">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1,6/0,9">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-0.508" y1="0.762" x2="-0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.508" x2="-0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-0.508" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-0.762" x2="0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.762" x2="0.762" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.508" x2="0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.508" y2="0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="1.6002" shape="octagon"/>
<text x="-0.762" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
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
<deviceset name="1,6/0,9" prefix="PAD" uservalue="yes">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1,6/0,9">
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
<library name="raspberrypi_Bastelstube_v13">
<description>&lt;b&gt;Raspberry Pi&lt;/b&gt; by &lt;b&gt;Martin's Bastelstube&lt;/b&gt;
&lt;p&gt;
Different shapes of piggyback boards for the famous &amp;amp; fabulous
&lt;a href="http://www.raspberrypi.org/"&gt;Raspberry Pi&lt;/a&gt; computer.
&lt;p&gt;
The outline of the Raspberry Pi board is drawn on layer 52 bDocu, so you can make it invisible if necessary.&lt;br/&gt;
Recommendation: Start your design with RASPI_BOARD_*_FULL, so you are aware of all the big components and
connectors when you're drawing the dimensions of your board and placing your own components.&lt;br/&gt;
Later, you can simply change the package of your Raspberry Pi connector to the RASPI_BOARD_*_EDGES type,
so you can concentrate on your own design.
&lt;p&gt;
Most of my board packages don't have the outline drawn in layer 20 Dimension (except the HATs). This allows you to deviate from the original Raspberry Pi board shape, e.g. when you need more space behind the GPIO connector for the routing of the power supply lines. If you want to stick exactly to the Raspberry Pi board shape, then just draw the Dimension layer right on the lines in layer bDocu.

&lt;hr&gt;&lt;br/&gt;

Version 1.3
&lt;ul&gt;
&lt;li&gt;Added the shape and dimensions of the HAT board with &amp;amp; without the camera and display flex cutout&lt;/li&gt;
&lt;li&gt;New GPIO connector version (suffix &amp;quot;#&amp;quot;) with all pins connected (no more &amp;quot;n.c.&amp;quot; pins)&lt;/li&gt;
&lt;li&gt;Two more &amp;quot;AB-&amp;quot; boards with 5 and 6 drill holes / pads, mechanically compatible with all RasPi versions&lt;/li&gt;
&lt;/ul&gt;

Version 1.2
&lt;ul&gt;
&lt;li&gt;Added a 26-pin GPIO connector with board dimensions of model B+&lt;br/&gt;
       for backwards compatibility with models A and B, named &amp;quot;B-&amp;quot;&lt;/li&gt;
&lt;/ul&gt;

Version 1.1
&lt;ul&gt;
&lt;li&gt;New GPIO connector and board dimensions of model B+&lt;/li&gt;
&lt;li&gt;Old connector and board (for models A and B) renamed to AB&lt;/li&gt;
&lt;li&gt;GPIO pin numbers on connector changed to match Rev2 board design&lt;/li&gt;
&lt;/ul&gt;

Version 1.0
&lt;ul&gt;
&lt;li&gt;More detailed descriptions for all components&lt;/li&gt;
&lt;li&gt;Published on Cadsoft webpage&lt;/li&gt;
&lt;/ul&gt;

&lt;hr&gt;&lt;br/&gt;

Designed by &lt;a href="http://bastelstube.rocci.net/"&gt;Martin's Bastelstube&lt;/a&gt;&lt;br&gt;
Comments / complaints / bug reports / suggestions to &lt;author&gt;eightbit@web.de&lt;/author&gt;</description>
<packages>
<package name="RASPI_GPIO_B+_BOX">
<description>40-pin box header for Raspberry Pi GPIO model B+&lt;br/&gt;
 &amp;nbsp; for use with flat ribbon cables</description>
<wire x1="-29.05" y1="4.2" x2="29.05" y2="4.2" width="0.2032" layer="21"/>
<wire x1="29.05" y1="4.2" x2="29.05" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="29.05" y1="-4.2" x2="1.883" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="1.883" y1="-4.2" x2="1.883" y2="-3.275" width="0.2032" layer="21"/>
<wire x1="1.883" y1="-3.275" x2="1.883" y2="-2.65" width="0.2032" layer="21"/>
<wire x1="1.883" y1="-2.65" x2="-1.883" y2="-2.65" width="0.2032" layer="21"/>
<wire x1="-1.883" y1="-2.65" x2="-1.883" y2="-3.275" width="0.2032" layer="21"/>
<wire x1="-1.883" y1="-3.275" x2="-1.883" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="1.883" y1="-4.2" x2="-1.883" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="-1.883" y1="-4.2" x2="-23.5895" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="-23.5895" y1="-4.2" x2="-24.751" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="-24.751" y1="-4.2" x2="-29.05" y2="-4.2" width="0.2032" layer="21"/>
<wire x1="-29.05" y1="-4.2" x2="-29.05" y2="4.2" width="0.2032" layer="21"/>
<wire x1="-27.925" y1="3.275" x2="27.925" y2="3.275" width="0.2032" layer="21"/>
<wire x1="27.925" y1="3.275" x2="27.925" y2="-3.275" width="0.2032" layer="21"/>
<wire x1="27.925" y1="-3.275" x2="1.883" y2="-3.275" width="0.2032" layer="21"/>
<wire x1="-1.883" y1="-3.275" x2="-27.925" y2="-3.275" width="0.2032" layer="21"/>
<wire x1="-27.925" y1="-3.275" x2="-27.925" y2="3.275" width="0.2032" layer="21"/>
<wire x1="-23.5895" y1="-4.2" x2="-24.116" y2="-2.9475" width="0.2032" layer="21"/>
<wire x1="-24.116" y1="-2.9475" x2="-24.751" y2="-4.2" width="0.2032" layer="21"/>
<pad name="1" x="-24.13" y="-1.27" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="-24.13" y="1.27" drill="1" diameter="1.778"/>
<pad name="3" x="-21.59" y="-1.27" drill="1" diameter="1.778"/>
<pad name="4" x="-21.59" y="1.27" drill="1" diameter="1.778"/>
<pad name="5" x="-19.05" y="-1.27" drill="1" diameter="1.778"/>
<pad name="6" x="-19.05" y="1.27" drill="1" diameter="1.778"/>
<pad name="7" x="-16.51" y="-1.27" drill="1" diameter="1.778"/>
<pad name="8" x="-16.51" y="1.27" drill="1" diameter="1.778"/>
<pad name="9" x="-13.97" y="-1.27" drill="1" diameter="1.778"/>
<pad name="10" x="-13.97" y="1.27" drill="1" diameter="1.778"/>
<pad name="11" x="-11.43" y="-1.27" drill="1" diameter="1.778"/>
<pad name="12" x="-11.43" y="1.27" drill="1" diameter="1.778"/>
<pad name="13" x="-8.89" y="-1.27" drill="1" diameter="1.778"/>
<pad name="14" x="-8.89" y="1.27" drill="1" diameter="1.778"/>
<pad name="15" x="-6.35" y="-1.27" drill="1" diameter="1.778"/>
<pad name="16" x="-6.35" y="1.27" drill="1" diameter="1.778"/>
<pad name="17" x="-3.81" y="-1.27" drill="1" diameter="1.778"/>
<pad name="18" x="-3.81" y="1.27" drill="1" diameter="1.778"/>
<pad name="19" x="-1.27" y="-1.27" drill="1" diameter="1.778"/>
<pad name="20" x="-1.27" y="1.27" drill="1" diameter="1.778"/>
<pad name="21" x="1.27" y="-1.27" drill="1" diameter="1.778"/>
<pad name="22" x="1.27" y="1.27" drill="1" diameter="1.778"/>
<pad name="23" x="3.81" y="-1.27" drill="1" diameter="1.778"/>
<pad name="24" x="3.81" y="1.27" drill="1" diameter="1.778"/>
<pad name="25" x="6.35" y="-1.27" drill="1" diameter="1.778"/>
<pad name="26" x="6.35" y="1.27" drill="1" diameter="1.778"/>
<text x="-27.94" y="4.572" size="1.27" layer="25" font="vector" ratio="10">&gt;NAME</text>
<pad name="27" x="8.89" y="-1.27" drill="1" diameter="1.778"/>
<pad name="28" x="8.89" y="1.27" drill="1" diameter="1.778"/>
<pad name="29" x="11.43" y="-1.27" drill="1" diameter="1.778"/>
<pad name="30" x="11.43" y="1.27" drill="1" diameter="1.778"/>
<pad name="31" x="13.97" y="-1.27" drill="1" diameter="1.778"/>
<pad name="32" x="13.97" y="1.27" drill="1" diameter="1.778"/>
<pad name="33" x="16.51" y="-1.27" drill="1" diameter="1.778"/>
<pad name="34" x="16.51" y="1.27" drill="1" diameter="1.778"/>
<pad name="35" x="19.05" y="-1.27" drill="1" diameter="1.778"/>
<pad name="36" x="19.05" y="1.27" drill="1" diameter="1.778"/>
<pad name="37" x="21.59" y="-1.27" drill="1" diameter="1.778"/>
<pad name="38" x="21.59" y="1.27" drill="1" diameter="1.778"/>
<pad name="39" x="24.13" y="-1.27" drill="1" diameter="1.778"/>
<pad name="40" x="24.13" y="1.27" drill="1" diameter="1.778"/>
</package>
<package name="RASPI_GPIO_B+_PIN">
<description>40-pin connector for Raspberry Pi GPIO model B+&lt;br/&gt;
 &amp;nbsp; just the two rows of pins</description>
<wire x1="-25.4" y1="2.54" x2="-25.4" y2="0" width="0.127" layer="21"/>
<wire x1="-25.4" y1="0" x2="-25.4" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-25.4" y1="2.54" x2="7.62" y2="2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="-22.86" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-22.86" y1="-2.54" x2="-23.8125" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-23.8125" y1="-2.54" x2="-24.4475" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-24.4475" y1="-2.54" x2="-25.4" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-25.4" y1="0" x2="-22.86" y2="0" width="0.127" layer="21"/>
<wire x1="-22.86" y1="0" x2="-22.86" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-24.4475" y1="-2.54" x2="-24.4475" y2="-2.8575" width="0.127" layer="21"/>
<wire x1="-24.4475" y1="-2.8575" x2="-23.8125" y2="-2.8575" width="0.127" layer="21"/>
<wire x1="-23.8125" y1="-2.8575" x2="-23.8125" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="-24.13" y="-1.27" drill="1" diameter="1.778" shape="square"/>
<pad name="2" x="-24.13" y="1.27" drill="1" diameter="1.778"/>
<pad name="3" x="-21.59" y="-1.27" drill="1" diameter="1.778"/>
<pad name="4" x="-21.59" y="1.27" drill="1" diameter="1.778"/>
<pad name="5" x="-19.05" y="-1.27" drill="1" diameter="1.778"/>
<pad name="6" x="-19.05" y="1.27" drill="1" diameter="1.778"/>
<pad name="7" x="-16.51" y="-1.27" drill="1" diameter="1.778"/>
<pad name="8" x="-16.51" y="1.27" drill="1" diameter="1.778"/>
<pad name="9" x="-13.97" y="-1.27" drill="1" diameter="1.778"/>
<pad name="10" x="-13.97" y="1.27" drill="1" diameter="1.778"/>
<pad name="11" x="-11.43" y="-1.27" drill="1" diameter="1.778"/>
<pad name="12" x="-11.43" y="1.27" drill="1" diameter="1.778"/>
<pad name="13" x="-8.89" y="-1.27" drill="1" diameter="1.778"/>
<pad name="14" x="-8.89" y="1.27" drill="1" diameter="1.778"/>
<pad name="15" x="-6.35" y="-1.27" drill="1" diameter="1.778"/>
<pad name="16" x="-6.35" y="1.27" drill="1" diameter="1.778"/>
<pad name="17" x="-3.81" y="-1.27" drill="1" diameter="1.778"/>
<pad name="18" x="-3.81" y="1.27" drill="1" diameter="1.778"/>
<pad name="19" x="-1.27" y="-1.27" drill="1" diameter="1.778"/>
<pad name="20" x="-1.27" y="1.27" drill="1" diameter="1.778"/>
<pad name="21" x="1.27" y="-1.27" drill="1" diameter="1.778"/>
<pad name="22" x="1.27" y="1.27" drill="1" diameter="1.778"/>
<pad name="23" x="3.81" y="-1.27" drill="1" diameter="1.778"/>
<pad name="24" x="3.81" y="1.27" drill="1" diameter="1.778"/>
<pad name="25" x="6.35" y="-1.27" drill="1" diameter="1.778"/>
<pad name="26" x="6.35" y="1.27" drill="1" diameter="1.778"/>
<text x="-24.4475" y="-4.1275" size="1.016" layer="21" font="vector" ratio="10" rot="SR0">1</text>
<text x="-19.05" y="-3.81" size="1.016" layer="25" font="vector" ratio="10" rot="SR0">&gt;NAME</text>
<pad name="27" x="8.89" y="-1.27" drill="1" diameter="1.778"/>
<pad name="28" x="8.89" y="1.27" drill="1" diameter="1.778"/>
<pad name="29" x="11.43" y="-1.27" drill="1" diameter="1.778"/>
<pad name="30" x="11.43" y="1.27" drill="1" diameter="1.778"/>
<pad name="31" x="13.97" y="-1.27" drill="1" diameter="1.778"/>
<pad name="32" x="13.97" y="1.27" drill="1" diameter="1.778"/>
<pad name="33" x="16.51" y="-1.27" drill="1" diameter="1.778"/>
<pad name="34" x="16.51" y="1.27" drill="1" diameter="1.778"/>
<pad name="35" x="19.05" y="-1.27" drill="1" diameter="1.778"/>
<pad name="36" x="19.05" y="1.27" drill="1" diameter="1.778"/>
<pad name="37" x="21.59" y="-1.27" drill="1" diameter="1.778"/>
<pad name="38" x="21.59" y="1.27" drill="1" diameter="1.778"/>
<pad name="39" x="24.13" y="-1.27" drill="1" diameter="1.778"/>
<pad name="40" x="24.13" y="1.27" drill="1" diameter="1.778"/>
<wire x1="7.62" y1="-2.54" x2="25.4" y2="-2.54" width="0.127" layer="25"/>
<wire x1="25.4" y1="-2.54" x2="25.4" y2="2.54" width="0.127" layer="25"/>
<wire x1="25.4" y1="2.54" x2="7.62" y2="2.54" width="0.127" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="RASPI_GPIO_B+#">
<description>Generic schematic symbol for the Raspberry Pi GPIO connector&lt;br/&gt;
Model B+ &amp;nbsp; all pins connected</description>
<wire x1="-12.7" y1="25.4" x2="12.7" y2="25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="25.4" x2="12.7" y2="-38.1" width="0.254" layer="94"/>
<wire x1="12.7" y1="-38.1" x2="-12.7" y2="-38.1" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-38.1" x2="-12.7" y2="25.4" width="0.254" layer="94"/>
<text x="13.97" y="22.86" size="1.778" layer="97" ratio="10">Raspberry Pi</text>
<text x="13.97" y="20.32" size="1.778" layer="97" ratio="10">GPIO Port</text>
<pin name="5V0A" x="-7.62" y="27.94" length="short" direction="pwr" rot="R270"/>
<pin name="3V3A" x="5.08" y="27.94" length="short" direction="pwr" rot="R270"/>
<pin name="GND_A" x="15.24" y="-7.62" length="short" direction="pwr" rot="R180"/>
<pin name="SDA" x="-15.24" y="-35.56" length="short"/>
<pin name="SCL" x="-15.24" y="-33.02" length="short"/>
<pin name="GPIO17" x="-15.24" y="15.24" length="short"/>
<pin name="GPIO18" x="-15.24" y="12.7" length="short"/>
<pin name="GPIO27" x="-15.24" y="10.16" length="short"/>
<pin name="GPIO22" x="-15.24" y="7.62" length="short"/>
<pin name="GPIO23" x="-15.24" y="5.08" length="short"/>
<pin name="GPIO24" x="-15.24" y="2.54" length="short"/>
<pin name="GPIO25" x="-15.24" y="0" length="short"/>
<pin name="GPIO04" x="-15.24" y="-2.54" length="short"/>
<pin name="TXD" x="15.24" y="0" length="short" rot="R180"/>
<pin name="RXD" x="15.24" y="-2.54" length="short" rot="R180"/>
<pin name="SPI_MOSI" x="15.24" y="15.24" length="short" rot="R180"/>
<pin name="SPI_MISO" x="15.24" y="12.7" length="short" rot="R180"/>
<pin name="SPI_SCLK" x="15.24" y="10.16" length="short" rot="R180"/>
<pin name="SPI_CE0" x="15.24" y="7.62" length="short" rot="R180"/>
<pin name="SPI_CE1" x="15.24" y="5.08" length="short" rot="R180"/>
<pin name="5V0B" x="-5.08" y="27.94" length="short" direction="pwr" rot="R270"/>
<pin name="3V3B" x="7.62" y="27.94" length="short" direction="pwr" rot="R270"/>
<pin name="GND_B" x="15.24" y="-10.16" length="short" direction="pwr" rot="R180"/>
<pin name="GND_C" x="15.24" y="-12.7" length="short" direction="pwr" rot="R180"/>
<pin name="GND_D" x="15.24" y="-15.24" length="short" direction="pwr" rot="R180"/>
<pin name="GND_E" x="15.24" y="-17.78" length="short" direction="pwr" rot="R180"/>
<text x="13.97" y="17.78" size="1.778" layer="97" ratio="10">Model B+</text>
<pin name="ID_SC" x="15.24" y="-33.02" length="short" direction="nc" rot="R180"/>
<pin name="ID_SD" x="15.24" y="-35.56" length="short" direction="nc" rot="R180"/>
<pin name="GPIO05" x="-15.24" y="-7.62" length="short" direction="nc"/>
<pin name="GPIO06" x="-15.24" y="-10.16" length="short" direction="nc"/>
<pin name="GPIO12" x="-15.24" y="-12.7" length="short" direction="nc"/>
<pin name="GPIO13" x="-15.24" y="-15.24" length="short" direction="nc"/>
<pin name="GPIO19" x="-15.24" y="-17.78" length="short" direction="nc"/>
<pin name="GPIO16" x="-15.24" y="-20.32" length="short" direction="nc"/>
<pin name="GPIO26" x="-15.24" y="-22.86" length="short" direction="nc"/>
<pin name="GPIO20" x="-15.24" y="-25.4" length="short" direction="nc"/>
<pin name="GPIO21" x="-15.24" y="-27.94" length="short" direction="nc"/>
<pin name="GND_F" x="15.24" y="-20.32" length="short" direction="pwr" rot="R180"/>
<pin name="GND_G" x="15.24" y="-22.86" length="short" direction="pwr" rot="R180"/>
<pin name="GND_H" x="15.24" y="-25.4" length="short" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RASPI_GPIO_B+#" prefix="X">
<description>2x20 header connector, all pins connected</description>
<gates>
<gate name="G$1" symbol="RASPI_GPIO_B+#" x="0" y="0"/>
</gates>
<devices>
<device name="_BOX" package="RASPI_GPIO_B+_BOX">
<connects>
<connect gate="G$1" pin="3V3A" pad="1"/>
<connect gate="G$1" pin="3V3B" pad="17"/>
<connect gate="G$1" pin="5V0A" pad="2"/>
<connect gate="G$1" pin="5V0B" pad="4"/>
<connect gate="G$1" pin="GND_A" pad="6"/>
<connect gate="G$1" pin="GND_B" pad="9"/>
<connect gate="G$1" pin="GND_C" pad="14"/>
<connect gate="G$1" pin="GND_D" pad="20"/>
<connect gate="G$1" pin="GND_E" pad="25"/>
<connect gate="G$1" pin="GND_F" pad="30"/>
<connect gate="G$1" pin="GND_G" pad="34"/>
<connect gate="G$1" pin="GND_H" pad="39"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_PIN" package="RASPI_GPIO_B+_PIN">
<connects>
<connect gate="G$1" pin="3V3A" pad="1"/>
<connect gate="G$1" pin="3V3B" pad="17"/>
<connect gate="G$1" pin="5V0A" pad="2"/>
<connect gate="G$1" pin="5V0B" pad="4"/>
<connect gate="G$1" pin="GND_A" pad="6"/>
<connect gate="G$1" pin="GND_B" pad="9"/>
<connect gate="G$1" pin="GND_C" pad="14"/>
<connect gate="G$1" pin="GND_D" pad="20"/>
<connect gate="G$1" pin="GND_E" pad="25"/>
<connect gate="G$1" pin="GND_F" pad="30"/>
<connect gate="G$1" pin="GND_G" pad="34"/>
<connect gate="G$1" pin="GND_H" pad="39"/>
<connect gate="G$1" pin="GPIO04" pad="7"/>
<connect gate="G$1" pin="GPIO05" pad="29"/>
<connect gate="G$1" pin="GPIO06" pad="31"/>
<connect gate="G$1" pin="GPIO12" pad="32"/>
<connect gate="G$1" pin="GPIO13" pad="33"/>
<connect gate="G$1" pin="GPIO16" pad="36"/>
<connect gate="G$1" pin="GPIO17" pad="11"/>
<connect gate="G$1" pin="GPIO18" pad="12"/>
<connect gate="G$1" pin="GPIO19" pad="35"/>
<connect gate="G$1" pin="GPIO20" pad="38"/>
<connect gate="G$1" pin="GPIO21" pad="40"/>
<connect gate="G$1" pin="GPIO22" pad="15"/>
<connect gate="G$1" pin="GPIO23" pad="16"/>
<connect gate="G$1" pin="GPIO24" pad="18"/>
<connect gate="G$1" pin="GPIO25" pad="22"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="ID_SC" pad="28"/>
<connect gate="G$1" pin="ID_SD" pad="27"/>
<connect gate="G$1" pin="RXD" pad="10"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="3"/>
<connect gate="G$1" pin="SPI_CE0" pad="24"/>
<connect gate="G$1" pin="SPI_CE1" pad="26"/>
<connect gate="G$1" pin="SPI_MISO" pad="21"/>
<connect gate="G$1" pin="SPI_MOSI" pad="19"/>
<connect gate="G$1" pin="SPI_SCLK" pad="23"/>
<connect gate="G$1" pin="TXD" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-stocko">
<description>&lt;b&gt;STOCKO Connector&lt;/b&gt;&lt;p&gt;
http://www.stocko.de&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MKS1854-6-0-404">
<description>&lt;b&gt;Serie MKS 1850&lt;/b&gt; Lötstifte In-line, Raster 2.5 mm, Stiftwannen, stehend, mit Rastlasche&lt;p&gt;
Source: http://www.stocko.de/de/index.php?seite=ka_rfk2_mks1850.html&amp;rubrik=Katalog+-+RFK+2&lt;br&gt;
rfk_1850.pdf</description>
<wire x1="-5.2283" y1="-3.6954" x2="-5.9912" y2="-3.6954" width="0.2032" layer="21"/>
<wire x1="-5.9912" y1="-3.6954" x2="-7.231" y2="-2.4556" width="0.2032" layer="21" curve="-90"/>
<wire x1="-7.231" y1="-2.4556" x2="-7.231" y2="2.4558" width="0.2032" layer="21"/>
<wire x1="-7.231" y1="2.4558" x2="-5.9912" y2="3.6956" width="0.2032" layer="21" curve="-90"/>
<wire x1="-5.9912" y1="3.6956" x2="5.9672" y2="3.6956" width="0.2032" layer="21"/>
<wire x1="5.9672" y1="3.6956" x2="7.2547" y2="2.4081" width="0.2032" layer="21" curve="-90"/>
<wire x1="7.2547" y1="2.4081" x2="7.2547" y2="-2.4079" width="0.2032" layer="21"/>
<wire x1="7.2547" y1="-2.4079" x2="5.9672" y2="-3.6954" width="0.2032" layer="21" curve="-90"/>
<wire x1="5.9672" y1="-3.6954" x2="5.2281" y2="-3.6954" width="0.2032" layer="21"/>
<wire x1="5.2281" y1="-3.6954" x2="5.2281" y2="-2.1695" width="0.2032" layer="21"/>
<wire x1="5.2281" y1="-2.1695" x2="4.7036" y2="-1.645" width="0.2032" layer="21" curve="90"/>
<wire x1="4.7036" y1="-1.645" x2="-4.7038" y2="-1.645" width="0.2032" layer="21"/>
<wire x1="-4.7038" y1="-1.645" x2="-5.2283" y2="-2.1695" width="0.2032" layer="21" curve="90"/>
<wire x1="-5.2283" y1="-2.1695" x2="-5.2283" y2="-3.6954" width="0.2032" layer="21"/>
<wire x1="-5.2521" y1="-2.6702" x2="-5.9674" y2="-2.6702" width="0.2032" layer="21"/>
<wire x1="-5.9674" y1="-2.6702" x2="-6.325" y2="-2.3126" width="0.2032" layer="21" curve="-90"/>
<wire x1="-6.325" y1="-2.3126" x2="-6.325" y2="2.3605" width="0.2032" layer="21"/>
<wire x1="-6.325" y1="2.3605" x2="-6.0151" y2="2.6704" width="0.2032" layer="21" curve="-90"/>
<wire x1="-6.0151" y1="2.6704" x2="5.9911" y2="2.6704" width="0.2032" layer="21"/>
<wire x1="5.9911" y1="2.6704" x2="6.3249" y2="2.3366" width="0.2032" layer="21" curve="-90"/>
<wire x1="6.3249" y1="2.3366" x2="6.3249" y2="-2.3364" width="0.2032" layer="21"/>
<wire x1="6.3249" y1="-2.3364" x2="5.9911" y2="-2.6702" width="0.2032" layer="21" curve="-90"/>
<wire x1="5.9911" y1="-2.6702" x2="5.3235" y2="-2.6702" width="0.2032" layer="21"/>
<wire x1="-3.481" y1="3.6479" x2="-3.481" y2="2.7419" width="0.2032" layer="21"/>
<wire x1="3.457" y1="3.6241" x2="3.457" y2="2.7419" width="0.2032" layer="21"/>
<wire x1="2.9563" y1="3.6717" x2="2.9563" y2="3.1472" width="0.2032" layer="21"/>
<wire x1="2.9563" y1="3.1472" x2="-2.9803" y2="3.1472" width="0.2032" layer="21"/>
<wire x1="-2.9803" y1="3.1472" x2="-2.9803" y2="3.6241" width="0.2032" layer="21"/>
<wire x1="-3.0042" y1="3.1234" x2="-3.3856" y2="2.7419" width="0.2032" layer="21"/>
<wire x1="2.9802" y1="3.1234" x2="3.314" y2="2.7658" width="0.2032" layer="21"/>
<wire x1="-5.0853" y1="-1.7165" x2="-5.0853" y2="1.4544" width="0.2032" layer="21"/>
<wire x1="-5.0853" y1="1.4544" x2="5.1089" y2="1.4544" width="0.2032" layer="21"/>
<wire x1="5.1089" y1="1.4544" x2="5.1089" y2="-1.7404" width="0.2032" layer="21"/>
<pad name="1" x="-3.75" y="0" drill="1" diameter="1.4224"/>
<pad name="2" x="-1.25" y="0" drill="1" diameter="1.4224"/>
<pad name="3" x="1.25" y="0" drill="1" diameter="1.4224"/>
<pad name="4" x="3.75" y="0" drill="1" diameter="1.4224"/>
<text x="-3.81" y="-3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="4.445" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MKS1852-6-0-202">
<description>&lt;b&gt;Serie MKS 1850&lt;/b&gt; Lötstifte In-line, Raster 2.5 mm, Stiftwannen, stehend, mit Rastlasche&lt;p&gt;
Source: http://www.stocko.de/de/index.php?seite=ka_rfk2_mks1850.html&amp;rubrik=Katalog+-+RFK+2&lt;br&gt;
rfk_1850.pdf</description>
<wire x1="-2.7283" y1="-3.6954" x2="-3.4912" y2="-3.6954" width="0.2032" layer="21"/>
<wire x1="-3.4912" y1="-3.6954" x2="-4.731" y2="-2.4556" width="0.2032" layer="21" curve="-90"/>
<wire x1="-4.731" y1="-2.4556" x2="-4.731" y2="2.4558" width="0.2032" layer="21"/>
<wire x1="-4.731" y1="2.4558" x2="-3.4912" y2="3.6956" width="0.2032" layer="21" curve="-90"/>
<wire x1="-3.4912" y1="3.6956" x2="3.4672" y2="3.6956" width="0.2032" layer="21"/>
<wire x1="3.4672" y1="3.6956" x2="4.7547" y2="2.4081" width="0.2032" layer="21" curve="-90"/>
<wire x1="4.7547" y1="2.4081" x2="4.7547" y2="-2.4079" width="0.2032" layer="21"/>
<wire x1="4.7547" y1="-2.4079" x2="3.4672" y2="-3.6954" width="0.2032" layer="21" curve="-90"/>
<wire x1="3.4672" y1="-3.6954" x2="2.7281" y2="-3.6954" width="0.2032" layer="21"/>
<wire x1="2.7281" y1="-3.6954" x2="2.7281" y2="-2.1695" width="0.2032" layer="21"/>
<wire x1="2.7281" y1="-2.1695" x2="2.2036" y2="-1.645" width="0.2032" layer="21" curve="90"/>
<wire x1="2.2036" y1="-1.645" x2="-2.2038" y2="-1.645" width="0.2032" layer="21"/>
<wire x1="-2.2038" y1="-1.645" x2="-2.7283" y2="-2.1695" width="0.2032" layer="21" curve="90"/>
<wire x1="-2.7283" y1="-2.1695" x2="-2.7283" y2="-3.6954" width="0.2032" layer="21"/>
<wire x1="-2.7521" y1="-2.6702" x2="-3.4674" y2="-2.6702" width="0.2032" layer="21"/>
<wire x1="-3.4674" y1="-2.6702" x2="-3.825" y2="-2.3126" width="0.2032" layer="21" curve="-90"/>
<wire x1="-3.825" y1="-2.3126" x2="-3.825" y2="2.3605" width="0.2032" layer="21"/>
<wire x1="-3.825" y1="2.3605" x2="-3.5151" y2="2.6704" width="0.2032" layer="21" curve="-90"/>
<wire x1="-3.5151" y1="2.6704" x2="3.4911" y2="2.6704" width="0.2032" layer="21"/>
<wire x1="3.4911" y1="2.6704" x2="3.8249" y2="2.3366" width="0.2032" layer="21" curve="-90"/>
<wire x1="3.8249" y1="2.3366" x2="3.8249" y2="-2.3364" width="0.2032" layer="21"/>
<wire x1="3.8249" y1="-2.3364" x2="3.4911" y2="-2.6702" width="0.2032" layer="21" curve="-90"/>
<wire x1="3.4911" y1="-2.6702" x2="2.8235" y2="-2.6702" width="0.2032" layer="21"/>
<wire x1="-3.481" y1="3.6479" x2="-3.481" y2="2.7419" width="0.2032" layer="21"/>
<wire x1="3.457" y1="3.6241" x2="3.457" y2="2.7419" width="0.2032" layer="21"/>
<wire x1="2.9563" y1="3.6717" x2="2.9563" y2="3.1472" width="0.2032" layer="21"/>
<wire x1="2.9563" y1="3.1472" x2="-2.9803" y2="3.1472" width="0.2032" layer="21"/>
<wire x1="-2.9803" y1="3.1472" x2="-2.9803" y2="3.6241" width="0.2032" layer="21"/>
<wire x1="-3.0042" y1="3.1234" x2="-3.3856" y2="2.7419" width="0.2032" layer="21"/>
<wire x1="2.9802" y1="3.1234" x2="3.314" y2="2.7658" width="0.2032" layer="21"/>
<wire x1="-2.5853" y1="-1.7165" x2="-2.5853" y2="1.4544" width="0.2032" layer="21"/>
<wire x1="-2.5853" y1="1.4544" x2="2.6089" y2="1.4544" width="0.2032" layer="21"/>
<wire x1="2.6089" y1="1.4544" x2="2.6089" y2="-1.7404" width="0.2032" layer="21"/>
<pad name="1" x="-1.25" y="0" drill="1" diameter="1.4224"/>
<pad name="2" x="1.25" y="0" drill="1" diameter="1.4224"/>
<text x="-2.54" y="-5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="4.445" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="PIN4">
<wire x1="-2.54" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="-2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<text x="-2.54" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="pin" length="short" direction="in"/>
<pin name="2" x="-5.08" y="-2.54" visible="pin" length="short" direction="in"/>
<pin name="3" x="-5.08" y="-5.08" visible="pin" length="short" direction="in"/>
<pin name="4" x="-5.08" y="-7.62" visible="pin" length="short" direction="in"/>
</symbol>
<symbol name="PIN2">
<wire x1="-2.54" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<text x="-2.54" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="pin" length="short" direction="in"/>
<pin name="2" x="-5.08" y="-2.54" visible="pin" length="short" direction="in"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MKS1854-6-0-404" prefix="X">
<description>&lt;b&gt;Serie MKS 1850&lt;/b&gt; Lötstifte In-line, Raster 2.5 mm, Stiftwannen, stehend, mit Rastlasche&lt;p&gt;
Source: http://www.stocko.de/de/index.php?seite=ka_rfk2_mks1850.html&amp;rubrik=Katalog+-+RFK+2&lt;br&gt;
rfk_1850.pdf</description>
<gates>
<gate name="G$1" symbol="PIN4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MKS1854-6-0-404">
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
<attribute name="OC_FARNELL" value="1141862" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MKS1852-6-0-202" prefix="X">
<description>&lt;b&gt;Serie MKS 1850&lt;/b&gt; Lötstifte In-line, Raster 2.5 mm, Stiftwannen, stehend, mit Rastlasche&lt;p&gt;
Source: http://www.stocko.de/de/index.php?seite=ka_rfk2_mks1850.html&amp;rubrik=Katalog+-+RFK+2&lt;br&gt;
rfk_1850.pdf</description>
<gates>
<gate name="G$1" symbol="PIN2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MKS1852-6-0-202">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
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
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
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
<class number="0" name="default" width="1" drill="0">
</class>
</classes>
<parts>
<part name="X2" library="raspberrypi_Bastelstube_v13" deviceset="RASPI_GPIO_B+#" device="_PIN"/>
<part name="CONNECTEUR_I²C_2" library="con-stocko" deviceset="MKS1854-6-0-404" device=""/>
<part name="CONNECTEUR_I²C" library="con-stocko" deviceset="MKS1854-6-0-404" device=""/>
<part name="ECRAN" library="con-stocko" deviceset="MKS1854-6-0-404" device=""/>
<part name="X5" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="PAD11" library="wirepad" deviceset="1,6/0,9" device=""/>
<part name="PAD12" library="wirepad" deviceset="1,6/0,9" device=""/>
<part name="PAD13" library="wirepad" deviceset="1,6/0,9" device=""/>
<part name="PAD14" library="wirepad" deviceset="1,6/0,9" device=""/>
<part name="PAD15" library="wirepad" deviceset="1,6/0,9" device=""/>
<part name="PAD16" library="wirepad" deviceset="1,6/0,9" device=""/>
<part name="PAD17" library="wirepad" deviceset="1,6/0,9" device=""/>
<part name="PAD18" library="wirepad" deviceset="1,6/0,9" device=""/>
<part name="X1" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="X3" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="X4" library="con-stocko" deviceset="MKS1852-6-0-202" device=""/>
<part name="RTC" library="con-stocko" deviceset="MKS1854-6-0-404" device=""/>
<part name="X6" library="con-stocko" deviceset="MKS1852-6-0-202" device=""/>
<part name="X7" library="con-stocko" deviceset="MKS1852-6-0-202" device=""/>
<part name="X8" library="con-stocko" deviceset="MKS1852-6-0-202" device=""/>
<part name="X9" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="ROUTEUR" library="con-stocko" deviceset="MKS1852-6-0-202" device=""/>
<part name="ALIMENTATION" library="con-stocko" deviceset="MKS1852-6-0-202" device=""/>
<part name="ROUTEUR1" library="con-stocko" deviceset="MKS1852-6-0-202" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X2" gate="G$1" x="17.78" y="63.5"/>
<instance part="CONNECTEUR_I²C_2" gate="G$1" x="114.3" y="60.96"/>
<instance part="CONNECTEUR_I²C" gate="G$1" x="114.3" y="81.28"/>
<instance part="ECRAN" gate="G$1" x="114.3" y="40.64"/>
<instance part="X5" gate="G$1" x="60.96" y="20.32" rot="R180"/>
<instance part="PAD11" gate="1" x="60.96" y="83.82" rot="R180"/>
<instance part="PAD12" gate="1" x="60.96" y="88.9" rot="R180"/>
<instance part="PAD13" gate="1" x="68.58" y="88.9"/>
<instance part="PAD14" gate="1" x="68.58" y="83.82"/>
<instance part="PAD15" gate="1" x="60.96" y="76.2" rot="R180"/>
<instance part="PAD16" gate="1" x="68.58" y="76.2"/>
<instance part="PAD17" gate="1" x="68.58" y="68.58"/>
<instance part="PAD18" gate="1" x="60.96" y="68.58" rot="R180"/>
<instance part="X1" gate="G$1" x="60.96" y="10.16" rot="R180"/>
<instance part="X3" gate="G$1" x="60.96" y="0" rot="R180"/>
<instance part="X4" gate="G$1" x="76.2" y="-10.16"/>
<instance part="RTC" gate="G$1" x="114.3" y="101.6"/>
<instance part="X6" gate="G$1" x="76.2" y="0"/>
<instance part="X7" gate="G$1" x="76.2" y="10.16"/>
<instance part="X8" gate="G$1" x="76.2" y="20.32"/>
<instance part="X9" gate="G$1" x="60.96" y="-10.16" rot="R180"/>
<instance part="ROUTEUR" gate="G$1" x="114.3" y="20.32"/>
<instance part="ALIMENTATION" gate="G$1" x="0" y="109.22" rot="R180"/>
<instance part="ROUTEUR1" gate="G$1" x="114.3" y="7.62"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$13" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="SDA"/>
<pinref part="PAD15" gate="1" pin="P"/>
<wire x1="58.42" y1="76.2" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
<wire x1="48.26" y1="76.2" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
<wire x1="48.26" y1="93.98" x2="-7.62" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="93.98" x2="-7.62" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="27.94" x2="2.54" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="SCL"/>
<wire x1="-5.08" y1="30.48" x2="2.54" y2="30.48" width="0.1524" layer="91"/>
<pinref part="PAD11" gate="1" pin="P"/>
<wire x1="58.42" y1="83.82" x2="50.8" y2="83.82" width="0.1524" layer="91"/>
<wire x1="50.8" y1="83.82" x2="50.8" y2="96.52" width="0.1524" layer="91"/>
<wire x1="50.8" y1="96.52" x2="-5.08" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="96.52" x2="-5.08" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="PAD12" gate="1" pin="P"/>
<wire x1="58.42" y1="88.9" x2="53.34" y2="88.9" width="0.1524" layer="91"/>
<wire x1="53.34" y1="88.9" x2="53.34" y2="101.6" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="3V3A"/>
<wire x1="53.34" y1="101.6" x2="22.86" y2="101.6" width="0.1524" layer="91"/>
<wire x1="22.86" y1="101.6" x2="22.86" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="PAD13" gate="1" pin="P"/>
<wire x1="71.12" y1="88.9" x2="78.74" y2="88.9" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="5V0A"/>
<wire x1="10.16" y1="104.14" x2="10.16" y2="91.44" width="0.1524" layer="91"/>
<wire x1="104.14" y1="104.14" x2="78.74" y2="104.14" width="0.1524" layer="91"/>
<wire x1="78.74" y1="104.14" x2="17.78" y2="104.14" width="0.1524" layer="91"/>
<wire x1="17.78" y1="104.14" x2="10.16" y2="104.14" width="0.1524" layer="91"/>
<wire x1="104.14" y1="7.62" x2="104.14" y2="20.32" width="0.1524" layer="91"/>
<wire x1="104.14" y1="20.32" x2="104.14" y2="40.64" width="0.1524" layer="91"/>
<wire x1="104.14" y1="40.64" x2="104.14" y2="60.96" width="0.1524" layer="91"/>
<wire x1="104.14" y1="60.96" x2="104.14" y2="81.28" width="0.1524" layer="91"/>
<wire x1="104.14" y1="81.28" x2="104.14" y2="101.6" width="0.1524" layer="91"/>
<wire x1="104.14" y1="101.6" x2="104.14" y2="104.14" width="0.1524" layer="91"/>
<wire x1="78.74" y1="88.9" x2="78.74" y2="104.14" width="0.1524" layer="91"/>
<junction x="78.74" y="104.14"/>
<pinref part="RTC" gate="G$1" pin="1"/>
<wire x1="109.22" y1="101.6" x2="104.14" y2="101.6" width="0.1524" layer="91"/>
<junction x="104.14" y="101.6"/>
<pinref part="CONNECTEUR_I²C" gate="G$1" pin="1"/>
<wire x1="109.22" y1="81.28" x2="104.14" y2="81.28" width="0.1524" layer="91"/>
<junction x="104.14" y="81.28"/>
<pinref part="CONNECTEUR_I²C_2" gate="G$1" pin="1"/>
<wire x1="109.22" y1="60.96" x2="104.14" y2="60.96" width="0.1524" layer="91"/>
<junction x="104.14" y="60.96"/>
<pinref part="ECRAN" gate="G$1" pin="1"/>
<wire x1="104.14" y1="40.64" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<junction x="104.14" y="40.64"/>
<pinref part="ALIMENTATION" gate="G$1" pin="1"/>
<wire x1="5.08" y1="109.22" x2="17.78" y2="109.22" width="0.1524" layer="91"/>
<wire x1="17.78" y1="109.22" x2="17.78" y2="104.14" width="0.1524" layer="91"/>
<junction x="17.78" y="104.14"/>
<pinref part="ROUTEUR" gate="G$1" pin="1"/>
<wire x1="109.22" y1="20.32" x2="104.14" y2="20.32" width="0.1524" layer="91"/>
<junction x="104.14" y="20.32"/>
<pinref part="ROUTEUR1" gate="G$1" pin="1"/>
<wire x1="109.22" y1="7.62" x2="104.14" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X8" gate="G$1" pin="1"/>
<pinref part="X5" gate="G$1" pin="2"/>
<wire x1="71.12" y1="20.32" x2="63.5" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="1"/>
<pinref part="X8" gate="G$1" pin="2"/>
<wire x1="63.5" y1="17.78" x2="71.12" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="1"/>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="71.12" y1="10.16" x2="63.5" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="1"/>
<pinref part="X7" gate="G$1" pin="2"/>
<wire x1="63.5" y1="7.62" x2="71.12" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="1"/>
<pinref part="X3" gate="G$1" pin="2"/>
<wire x1="71.12" y1="0" x2="63.5" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="1"/>
<pinref part="X6" gate="G$1" pin="2"/>
<wire x1="63.5" y1="-2.54" x2="71.12" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="1"/>
<pinref part="X9" gate="G$1" pin="2"/>
<wire x1="71.12" y1="-10.16" x2="63.5" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X9" gate="G$1" pin="1"/>
<pinref part="X4" gate="G$1" pin="2"/>
<wire x1="63.5" y1="-12.7" x2="71.12" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="PAD16" gate="1" pin="P"/>
<wire x1="71.12" y1="76.2" x2="93.98" y2="76.2" width="0.1524" layer="91"/>
<wire x1="93.98" y1="35.56" x2="93.98" y2="55.88" width="0.1524" layer="91"/>
<pinref part="RTC" gate="G$1" pin="3"/>
<wire x1="93.98" y1="55.88" x2="93.98" y2="76.2" width="0.1524" layer="91"/>
<wire x1="93.98" y1="96.52" x2="93.98" y2="76.2" width="0.1524" layer="91"/>
<wire x1="93.98" y1="96.52" x2="109.22" y2="96.52" width="0.1524" layer="91"/>
<pinref part="CONNECTEUR_I²C" gate="G$1" pin="3"/>
<wire x1="109.22" y1="76.2" x2="93.98" y2="76.2" width="0.1524" layer="91"/>
<junction x="93.98" y="76.2"/>
<pinref part="CONNECTEUR_I²C_2" gate="G$1" pin="3"/>
<wire x1="109.22" y1="55.88" x2="93.98" y2="55.88" width="0.1524" layer="91"/>
<junction x="93.98" y="55.88"/>
<pinref part="ECRAN" gate="G$1" pin="3"/>
<wire x1="93.98" y1="35.56" x2="109.22" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="CONNECTEUR_I²C" gate="G$1" pin="2"/>
<wire x1="109.22" y1="78.74" x2="91.44" y2="78.74" width="0.1524" layer="91"/>
<pinref part="PAD14" gate="1" pin="P"/>
<wire x1="71.12" y1="83.82" x2="91.44" y2="83.82" width="0.1524" layer="91"/>
<junction x="91.44" y="83.82"/>
<wire x1="91.44" y1="78.74" x2="91.44" y2="83.82" width="0.1524" layer="91"/>
<wire x1="91.44" y1="38.1" x2="91.44" y2="58.42" width="0.1524" layer="91"/>
<pinref part="RTC" gate="G$1" pin="2"/>
<wire x1="91.44" y1="58.42" x2="91.44" y2="78.74" width="0.1524" layer="91"/>
<wire x1="91.44" y1="99.06" x2="91.44" y2="83.82" width="0.1524" layer="91"/>
<wire x1="109.22" y1="99.06" x2="91.44" y2="99.06" width="0.1524" layer="91"/>
<junction x="91.44" y="78.74"/>
<pinref part="CONNECTEUR_I²C_2" gate="G$1" pin="2"/>
<wire x1="109.22" y1="58.42" x2="91.44" y2="58.42" width="0.1524" layer="91"/>
<junction x="91.44" y="58.42"/>
<pinref part="ECRAN" gate="G$1" pin="2"/>
<wire x1="109.22" y1="38.1" x2="91.44" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="CONNECTEUR_I²C" gate="G$1" pin="4"/>
<wire x1="101.6" y1="73.66" x2="109.22" y2="73.66" width="0.1524" layer="91"/>
<wire x1="101.6" y1="73.66" x2="101.6" y2="53.34" width="0.1524" layer="91"/>
<wire x1="81.28" y1="73.66" x2="53.34" y2="73.66" width="0.1524" layer="91"/>
<wire x1="53.34" y1="73.66" x2="53.34" y2="55.88" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="GND_A"/>
<wire x1="53.34" y1="55.88" x2="40.64" y2="55.88" width="0.1524" layer="91"/>
<wire x1="40.64" y1="55.88" x2="38.1" y2="55.88" width="0.1524" layer="91"/>
<pinref part="PAD18" gate="1" pin="P"/>
<wire x1="38.1" y1="55.88" x2="33.02" y2="55.88" width="0.1524" layer="91"/>
<wire x1="58.42" y1="68.58" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
<wire x1="40.64" y1="68.58" x2="40.64" y2="55.88" width="0.1524" layer="91"/>
<junction x="40.64" y="55.88"/>
<pinref part="PAD17" gate="1" pin="P"/>
<wire x1="71.12" y1="68.58" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<wire x1="76.2" y1="68.58" x2="81.28" y2="68.58" width="0.1524" layer="91"/>
<wire x1="81.28" y1="68.58" x2="83.82" y2="68.58" width="0.1524" layer="91"/>
<wire x1="83.82" y1="33.02" x2="83.82" y2="53.34" width="0.1524" layer="91"/>
<wire x1="83.82" y1="53.34" x2="83.82" y2="68.58" width="0.1524" layer="91"/>
<wire x1="81.28" y1="68.58" x2="81.28" y2="73.66" width="0.1524" layer="91"/>
<junction x="81.28" y="68.58"/>
<wire x1="83.82" y1="93.98" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<wire x1="83.82" y1="86.36" x2="76.2" y2="86.36" width="0.1524" layer="91"/>
<wire x1="76.2" y1="86.36" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<junction x="76.2" y="68.58"/>
<wire x1="38.1" y1="111.76" x2="38.1" y2="55.88" width="0.1524" layer="91"/>
<junction x="38.1" y="55.88"/>
<pinref part="RTC" gate="G$1" pin="4"/>
<wire x1="83.82" y1="93.98" x2="109.22" y2="93.98" width="0.1524" layer="91"/>
<wire x1="101.6" y1="53.34" x2="83.82" y2="53.34" width="0.1524" layer="91"/>
<junction x="83.82" y="53.34"/>
<pinref part="CONNECTEUR_I²C_2" gate="G$1" pin="4"/>
<wire x1="101.6" y1="53.34" x2="109.22" y2="53.34" width="0.1524" layer="91"/>
<junction x="101.6" y="53.34"/>
<pinref part="ECRAN" gate="G$1" pin="4"/>
<wire x1="109.22" y1="33.02" x2="101.6" y2="33.02" width="0.1524" layer="91"/>
<wire x1="83.82" y1="33.02" x2="101.6" y2="33.02" width="0.1524" layer="91"/>
<junction x="101.6" y="33.02"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="17.78" width="0.1524" layer="91"/>
<pinref part="ALIMENTATION" gate="G$1" pin="2"/>
<wire x1="101.6" y1="17.78" x2="101.6" y2="33.02" width="0.1524" layer="91"/>
<wire x1="5.08" y1="111.76" x2="38.1" y2="111.76" width="0.1524" layer="91"/>
<pinref part="ROUTEUR" gate="G$1" pin="2"/>
<wire x1="109.22" y1="17.78" x2="101.6" y2="17.78" width="0.1524" layer="91"/>
<junction x="101.6" y="17.78"/>
<pinref part="ROUTEUR1" gate="G$1" pin="2"/>
<wire x1="109.22" y1="5.08" x2="101.6" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
