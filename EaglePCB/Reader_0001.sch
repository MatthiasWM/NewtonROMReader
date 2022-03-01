<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="9" visible="no" active="no"/>
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="no" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="no" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="no" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="no" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="no" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="no" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="no" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="no" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="no" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="no" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="no" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="no" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="no" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="no" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="no" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="no" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="no" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="no" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="no" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="no" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="no" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-amp">
<description>&lt;b&gt;AMP Connectors&lt;/b&gt;&lt;p&gt;
RJ45 Jack connectors&lt;br&gt;
 Based on the previous libraris:
 &lt;ul&gt;
 &lt;li&gt;amp.lbr
 &lt;li&gt;amp-j.lbr
 &lt;li&gt;amp-mta.lbr
 &lt;li&gt;amp-nlok.lbr
 &lt;li&gt;amp-sim.lbr
 &lt;li&gt;amp-micro-match.lbr
 &lt;/ul&gt;
 Sources :
 &lt;ul&gt;
 &lt;li&gt;Catalog 82066 Revised 11-95 
 &lt;li&gt;Product Guide 296785 Rev. 8-99
 &lt;li&gt;Product Guide CD-ROM 1999
 &lt;li&gt;www.amp.com
 &lt;/ul&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="177827-1">
<description>&lt;b&gt;DIMM Mini Memory Module M3&lt;/b&gt;</description>
<wire x1="-31.877" y1="2.1844" x2="-29.7942" y2="2.1844" width="0.254" layer="21"/>
<wire x1="-29.7942" y1="2.1844" x2="-29.7942" y2="0.381" width="0.254" layer="21"/>
<wire x1="-29.7942" y1="0.381" x2="-23.749" y2="0.381" width="0.254" layer="21"/>
<wire x1="-23.749" y1="0.381" x2="23.368" y2="0.381" width="0.254" layer="51"/>
<wire x1="23.368" y1="0.381" x2="29.7942" y2="0.381" width="0.254" layer="21"/>
<wire x1="29.7942" y1="0.381" x2="29.7942" y2="2.1844" width="0.254" layer="21"/>
<wire x1="29.7942" y1="2.1844" x2="31.877" y2="2.1844" width="0.254" layer="21"/>
<wire x1="31.877" y1="2.1844" x2="31.877" y2="-19.05" width="0.254" layer="21"/>
<wire x1="31.877" y1="-19.05" x2="31.877" y2="-23.2156" width="0.254" layer="51"/>
<wire x1="31.877" y1="-23.2156" x2="29.845" y2="-23.2156" width="0.254" layer="51"/>
<wire x1="29.845" y1="-28.7782" x2="28.067" y2="-28.7782" width="0.254" layer="21"/>
<wire x1="-28.067" y1="-28.7782" x2="-29.845" y2="-28.7782" width="0.254" layer="21"/>
<wire x1="-29.845" y1="-23.2156" x2="-31.877" y2="-23.2156" width="0.254" layer="51"/>
<wire x1="-31.877" y1="-23.2156" x2="-31.877" y2="-19.05" width="0.254" layer="51"/>
<wire x1="-31.877" y1="-19.05" x2="-31.877" y2="2.1844" width="0.254" layer="21"/>
<wire x1="-28.067" y1="-28.7782" x2="-28.067" y2="-12.0142" width="0.254" layer="21"/>
<wire x1="-28.067" y1="-12.0142" x2="-27.305" y2="-10.8204" width="0.254" layer="21"/>
<wire x1="-27.305" y1="-10.8204" x2="-27.305" y2="-6.3754" width="0.254" layer="21"/>
<wire x1="-27.305" y1="-6.3754" x2="27.305" y2="-6.3754" width="0.254" layer="21"/>
<wire x1="27.305" y1="-6.3754" x2="27.305" y2="-10.795" width="0.254" layer="21"/>
<wire x1="27.305" y1="-10.795" x2="28.067" y2="-12.0142" width="0.254" layer="21"/>
<wire x1="28.067" y1="-12.0142" x2="28.067" y2="-28.7782" width="0.254" layer="21"/>
<wire x1="-29.845" y1="-28.7782" x2="-29.845" y2="-4.8768" width="0.254" layer="21"/>
<wire x1="-29.845" y1="-4.8768" x2="28.448" y2="-4.8768" width="0.254" layer="21"/>
<wire x1="29.845" y1="-6.3246" x2="29.845" y2="-6.35" width="0.254" layer="21"/>
<wire x1="29.845" y1="-6.35" x2="29.845" y2="-7.1119" width="0.254" layer="21"/>
<wire x1="29.845" y1="-7.1119" x2="29.845" y2="-28.7782" width="0.254" layer="21"/>
<wire x1="24.257" y1="-2.667" x2="23.241" y2="-4.826" width="0.254" layer="21"/>
<wire x1="23.241" y1="-4.826" x2="25.273" y2="-4.826" width="0.254" layer="21"/>
<wire x1="25.273" y1="-4.826" x2="24.257" y2="-2.667" width="0.254" layer="21"/>
<wire x1="28.448" y1="-4.826" x2="29.845" y2="-6.35" width="0.254" layer="21" curve="94.979106"/>
<wire x1="27.686" y1="-4.826" x2="29.845" y2="-7.1119" width="0.254" layer="21" curve="93.270652"/>
<wire x1="-32.766" y1="-26.797" x2="-30.099" y2="-24.13" width="0.254" layer="21" curve="90"/>
<wire x1="-32.766" y1="-26.797" x2="-32.766" y2="-26.416" width="0.254" layer="21" curve="-180"/>
<wire x1="-32.766" y1="-26.416" x2="-30.48" y2="-24.13" width="0.254" layer="21" curve="90"/>
<wire x1="-30.48" y1="-24.13" x2="-30.48" y2="-23.495" width="0.254" layer="21"/>
<wire x1="-30.099" y1="-24.13" x2="-30.099" y2="-23.495" width="0.254" layer="21"/>
<wire x1="-32.893" y1="-22.352" x2="-32.004" y2="-23.241" width="0.254" layer="51" curve="90"/>
<wire x1="-32.893" y1="-20.32" x2="-32.004" y2="-19.431" width="0.254" layer="51" curve="-90"/>
<wire x1="-32.893" y1="-20.32" x2="-32.893" y2="-22.352" width="0.254" layer="51"/>
<wire x1="32.004" y1="-23.241" x2="32.893" y2="-22.352" width="0.254" layer="51" curve="90"/>
<wire x1="32.004" y1="-19.431" x2="32.893" y2="-20.32" width="0.254" layer="51" curve="-90"/>
<wire x1="32.893" y1="-20.32" x2="32.893" y2="-22.352" width="0.254" layer="51"/>
<wire x1="30.099" y1="-24.13" x2="32.766" y2="-26.797" width="0.254" layer="21" curve="90"/>
<wire x1="32.766" y1="-26.797" x2="32.766" y2="-26.416" width="0.254" layer="21" curve="180"/>
<wire x1="30.48" y1="-24.13" x2="32.766" y2="-26.416" width="0.254" layer="21" curve="90"/>
<wire x1="30.48" y1="-24.13" x2="30.48" y2="-23.495" width="0.254" layer="21"/>
<wire x1="30.099" y1="-24.13" x2="30.099" y2="-23.495" width="0.254" layer="21"/>
<smd name="1" x="22.225" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="2" x="21.59" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="3" x="20.955" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="4" x="20.32" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="5" x="19.685" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="6" x="19.05" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="7" x="18.415" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="8" x="17.78" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="9" x="17.145" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="10" x="16.51" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="11" x="15.875" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="12" x="15.24" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="13" x="14.605" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="14" x="13.97" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="15" x="13.335" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="16" x="12.7" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="17" x="12.065" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="18" x="11.43" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="19" x="10.795" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="20" x="10.16" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="21" x="9.525" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="22" x="8.89" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="23" x="8.255" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="24" x="7.62" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="25" x="6.985" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="26" x="6.35" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="27" x="5.715" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="28" x="5.08" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="29" x="4.445" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="30" x="3.81" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="31" x="3.175" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="32" x="2.54" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="33" x="1.905" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="34" x="1.27" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="35" x="0.635" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="36" x="0" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="37" x="-0.635" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="38" x="-1.27" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="39" x="-1.905" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="40" x="-2.54" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="41" x="-3.175" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="42" x="-3.81" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="43" x="-4.445" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="44" x="-5.08" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="45" x="-5.715" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="46" x="-6.35" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="47" x="-6.985" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="48" x="-7.62" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="49" x="-8.255" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="50" x="-8.89" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="51" x="-9.525" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="52" x="-10.16" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="53" x="-10.795" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="54" x="-11.43" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="55" x="-12.065" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="56" x="-12.7" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="57" x="-13.335" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="58" x="-13.97" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="59" x="-14.605" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="60" x="-15.24" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="61" x="-15.875" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="62" x="-16.51" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="63" x="-17.145" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="64" x="-17.78" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="65" x="-18.415" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="66" x="-19.05" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="67" x="-19.685" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="68" x="-20.32" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="69" x="-20.955" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="70" x="-21.59" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="71" x="-22.225" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<smd name="72" x="-22.86" y="1.27" dx="0.508" dy="2.54" layer="1"/>
<text x="-22.86" y="3.81" size="2.54" layer="25">&gt;NAME</text>
<text x="3.175" y="3.81" size="2.54" layer="27">&gt;VALUE</text>
<rectangle x1="-33.3502" y1="-23.368" x2="-30.3784" y2="-19.304" layer="1"/>
<rectangle x1="30.3784" y1="-23.368" x2="33.3502" y2="-19.304" layer="1"/>
<rectangle x1="-33.4" y1="-23.4" x2="-30.325" y2="-19.25" layer="29"/>
<rectangle x1="30.325" y1="-23.425" x2="33.4" y2="-19.275" layer="29"/>
<rectangle x1="31.125" y1="-23.075" x2="33" y2="-19.5" layer="31"/>
<rectangle x1="-33.025" y1="-23.1" x2="-31.15" y2="-19.525" layer="31"/>
<hole x="-30.861" y="0" drill="1.016"/>
<hole x="30.861" y="0" drill="1.016"/>
<polygon width="0.254" layer="21">
<vertex x="24.257" y="-2.667"/>
<vertex x="23.241" y="-4.826"/>
<vertex x="25.273" y="-4.826"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="SIMM72">
<wire x1="3.81" y1="-182.88" x2="-5.08" y2="-182.88" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-182.88" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-182.88" x2="-5.08" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<wire x1="1.143" y1="0.508" x2="2.54" y2="0.254" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.254" x2="2.54" y2="-0.254" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.254" x2="1.143" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.143" y1="-2.032" x2="2.54" y2="-2.286" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.286" x2="2.54" y2="-2.794" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.794" x2="1.143" y2="-3.048" width="0.254" layer="94"/>
<wire x1="1.143" y1="-4.572" x2="2.54" y2="-4.826" width="0.254" layer="94"/>
<wire x1="2.54" y1="-4.826" x2="2.54" y2="-5.334" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.334" x2="1.143" y2="-5.588" width="0.254" layer="94"/>
<wire x1="1.143" y1="-7.112" x2="2.54" y2="-7.366" width="0.254" layer="94"/>
<wire x1="2.54" y1="-7.366" x2="2.54" y2="-7.874" width="0.254" layer="94"/>
<wire x1="2.54" y1="-7.874" x2="1.143" y2="-8.128" width="0.254" layer="94"/>
<wire x1="1.143" y1="-9.652" x2="2.54" y2="-9.906" width="0.254" layer="94"/>
<wire x1="2.54" y1="-9.906" x2="2.54" y2="-10.414" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.414" x2="1.143" y2="-10.668" width="0.254" layer="94"/>
<wire x1="1.143" y1="-12.192" x2="2.54" y2="-12.446" width="0.254" layer="94"/>
<wire x1="2.54" y1="-12.446" x2="2.54" y2="-12.954" width="0.254" layer="94"/>
<wire x1="2.54" y1="-12.954" x2="1.143" y2="-13.208" width="0.254" layer="94"/>
<wire x1="1.143" y1="-14.732" x2="2.54" y2="-14.986" width="0.254" layer="94"/>
<wire x1="2.54" y1="-14.986" x2="2.54" y2="-15.494" width="0.254" layer="94"/>
<wire x1="2.54" y1="-15.494" x2="1.143" y2="-15.748" width="0.254" layer="94"/>
<wire x1="1.143" y1="-17.272" x2="2.54" y2="-17.526" width="0.254" layer="94"/>
<wire x1="2.54" y1="-17.526" x2="2.54" y2="-18.034" width="0.254" layer="94"/>
<wire x1="2.54" y1="-18.034" x2="1.143" y2="-18.288" width="0.254" layer="94"/>
<wire x1="1.143" y1="-19.812" x2="2.54" y2="-20.066" width="0.254" layer="94"/>
<wire x1="2.54" y1="-20.066" x2="2.54" y2="-20.574" width="0.254" layer="94"/>
<wire x1="2.54" y1="-20.574" x2="1.143" y2="-20.828" width="0.254" layer="94"/>
<wire x1="1.143" y1="-22.352" x2="2.54" y2="-22.606" width="0.254" layer="94"/>
<wire x1="2.54" y1="-22.606" x2="2.54" y2="-23.114" width="0.254" layer="94"/>
<wire x1="2.54" y1="-23.114" x2="1.143" y2="-23.368" width="0.254" layer="94"/>
<wire x1="1.143" y1="-24.892" x2="2.54" y2="-25.146" width="0.254" layer="94"/>
<wire x1="2.54" y1="-25.146" x2="2.54" y2="-25.654" width="0.254" layer="94"/>
<wire x1="2.54" y1="-25.654" x2="1.143" y2="-25.908" width="0.254" layer="94"/>
<wire x1="1.143" y1="-27.432" x2="2.54" y2="-27.686" width="0.254" layer="94"/>
<wire x1="2.54" y1="-27.686" x2="2.54" y2="-28.194" width="0.254" layer="94"/>
<wire x1="2.54" y1="-28.194" x2="1.143" y2="-28.448" width="0.254" layer="94"/>
<wire x1="1.143" y1="-29.972" x2="2.54" y2="-30.226" width="0.254" layer="94"/>
<wire x1="2.54" y1="-30.226" x2="2.54" y2="-30.734" width="0.254" layer="94"/>
<wire x1="2.54" y1="-30.734" x2="1.143" y2="-30.988" width="0.254" layer="94"/>
<wire x1="1.143" y1="-32.512" x2="2.54" y2="-32.766" width="0.254" layer="94"/>
<wire x1="2.54" y1="-32.766" x2="2.54" y2="-33.274" width="0.254" layer="94"/>
<wire x1="2.54" y1="-33.274" x2="1.143" y2="-33.528" width="0.254" layer="94"/>
<wire x1="1.143" y1="-35.052" x2="2.54" y2="-35.306" width="0.254" layer="94"/>
<wire x1="2.54" y1="-35.306" x2="2.54" y2="-35.814" width="0.254" layer="94"/>
<wire x1="2.54" y1="-35.814" x2="1.143" y2="-36.068" width="0.254" layer="94"/>
<wire x1="1.143" y1="-37.592" x2="2.54" y2="-37.846" width="0.254" layer="94"/>
<wire x1="2.54" y1="-37.846" x2="2.54" y2="-38.354" width="0.254" layer="94"/>
<wire x1="2.54" y1="-38.354" x2="1.143" y2="-38.608" width="0.254" layer="94"/>
<wire x1="1.143" y1="-40.132" x2="2.54" y2="-40.386" width="0.254" layer="94"/>
<wire x1="2.54" y1="-40.386" x2="2.54" y2="-40.894" width="0.254" layer="94"/>
<wire x1="2.54" y1="-40.894" x2="1.143" y2="-41.148" width="0.254" layer="94"/>
<wire x1="1.143" y1="-42.672" x2="2.54" y2="-42.926" width="0.254" layer="94"/>
<wire x1="2.54" y1="-42.926" x2="2.54" y2="-43.434" width="0.254" layer="94"/>
<wire x1="2.54" y1="-43.434" x2="1.143" y2="-43.688" width="0.254" layer="94"/>
<wire x1="1.143" y1="-45.212" x2="2.54" y2="-45.466" width="0.254" layer="94"/>
<wire x1="2.54" y1="-45.466" x2="2.54" y2="-45.974" width="0.254" layer="94"/>
<wire x1="2.54" y1="-45.974" x2="1.143" y2="-46.228" width="0.254" layer="94"/>
<wire x1="1.143" y1="-47.752" x2="2.54" y2="-48.006" width="0.254" layer="94"/>
<wire x1="2.54" y1="-48.006" x2="2.54" y2="-48.514" width="0.254" layer="94"/>
<wire x1="2.54" y1="-48.514" x2="1.143" y2="-48.768" width="0.254" layer="94"/>
<wire x1="1.143" y1="-50.292" x2="2.54" y2="-50.546" width="0.254" layer="94"/>
<wire x1="2.54" y1="-50.546" x2="2.54" y2="-51.054" width="0.254" layer="94"/>
<wire x1="2.54" y1="-51.054" x2="1.143" y2="-51.308" width="0.254" layer="94"/>
<wire x1="1.143" y1="-52.832" x2="2.54" y2="-53.086" width="0.254" layer="94"/>
<wire x1="2.54" y1="-53.086" x2="2.54" y2="-53.594" width="0.254" layer="94"/>
<wire x1="2.54" y1="-53.594" x2="1.143" y2="-53.848" width="0.254" layer="94"/>
<wire x1="1.143" y1="-55.372" x2="2.54" y2="-55.626" width="0.254" layer="94"/>
<wire x1="2.54" y1="-55.626" x2="2.54" y2="-56.134" width="0.254" layer="94"/>
<wire x1="2.54" y1="-56.134" x2="1.143" y2="-56.388" width="0.254" layer="94"/>
<wire x1="1.143" y1="-57.912" x2="2.54" y2="-58.166" width="0.254" layer="94"/>
<wire x1="2.54" y1="-58.166" x2="2.54" y2="-58.674" width="0.254" layer="94"/>
<wire x1="2.54" y1="-58.674" x2="1.143" y2="-58.928" width="0.254" layer="94"/>
<wire x1="1.143" y1="-60.452" x2="2.54" y2="-60.706" width="0.254" layer="94"/>
<wire x1="2.54" y1="-60.706" x2="2.54" y2="-61.214" width="0.254" layer="94"/>
<wire x1="2.54" y1="-61.214" x2="1.143" y2="-61.468" width="0.254" layer="94"/>
<wire x1="1.143" y1="-62.992" x2="2.54" y2="-63.246" width="0.254" layer="94"/>
<wire x1="2.54" y1="-63.246" x2="2.54" y2="-63.754" width="0.254" layer="94"/>
<wire x1="2.54" y1="-63.754" x2="1.143" y2="-64.008" width="0.254" layer="94"/>
<wire x1="1.143" y1="-65.532" x2="2.54" y2="-65.786" width="0.254" layer="94"/>
<wire x1="2.54" y1="-65.786" x2="2.54" y2="-66.294" width="0.254" layer="94"/>
<wire x1="2.54" y1="-66.294" x2="1.143" y2="-66.548" width="0.254" layer="94"/>
<wire x1="1.143" y1="-68.072" x2="2.54" y2="-68.326" width="0.254" layer="94"/>
<wire x1="2.54" y1="-68.326" x2="2.54" y2="-68.834" width="0.254" layer="94"/>
<wire x1="2.54" y1="-68.834" x2="1.143" y2="-69.088" width="0.254" layer="94"/>
<wire x1="1.143" y1="-70.612" x2="2.54" y2="-70.866" width="0.254" layer="94"/>
<wire x1="2.54" y1="-70.866" x2="2.54" y2="-71.374" width="0.254" layer="94"/>
<wire x1="2.54" y1="-71.374" x2="1.143" y2="-71.628" width="0.254" layer="94"/>
<wire x1="1.143" y1="-73.152" x2="2.54" y2="-73.406" width="0.254" layer="94"/>
<wire x1="2.54" y1="-73.406" x2="2.54" y2="-73.914" width="0.254" layer="94"/>
<wire x1="2.54" y1="-73.914" x2="1.143" y2="-74.168" width="0.254" layer="94"/>
<wire x1="1.143" y1="-75.692" x2="2.54" y2="-75.946" width="0.254" layer="94"/>
<wire x1="2.54" y1="-75.946" x2="2.54" y2="-76.454" width="0.254" layer="94"/>
<wire x1="2.54" y1="-76.454" x2="1.143" y2="-76.708" width="0.254" layer="94"/>
<wire x1="1.143" y1="-78.232" x2="2.54" y2="-78.486" width="0.254" layer="94"/>
<wire x1="2.54" y1="-78.486" x2="2.54" y2="-78.994" width="0.254" layer="94"/>
<wire x1="2.54" y1="-78.994" x2="1.143" y2="-79.248" width="0.254" layer="94"/>
<wire x1="1.143" y1="-80.772" x2="2.54" y2="-81.026" width="0.254" layer="94"/>
<wire x1="2.54" y1="-81.026" x2="2.54" y2="-81.534" width="0.254" layer="94"/>
<wire x1="2.54" y1="-81.534" x2="1.143" y2="-81.788" width="0.254" layer="94"/>
<wire x1="1.143" y1="-83.312" x2="2.54" y2="-83.566" width="0.254" layer="94"/>
<wire x1="2.54" y1="-83.566" x2="2.54" y2="-84.074" width="0.254" layer="94"/>
<wire x1="2.54" y1="-84.074" x2="1.143" y2="-84.328" width="0.254" layer="94"/>
<wire x1="1.143" y1="-85.852" x2="2.54" y2="-86.106" width="0.254" layer="94"/>
<wire x1="2.54" y1="-86.106" x2="2.54" y2="-86.614" width="0.254" layer="94"/>
<wire x1="2.54" y1="-86.614" x2="1.143" y2="-86.868" width="0.254" layer="94"/>
<wire x1="1.143" y1="-88.392" x2="2.54" y2="-88.646" width="0.254" layer="94"/>
<wire x1="2.54" y1="-88.646" x2="2.54" y2="-89.154" width="0.254" layer="94"/>
<wire x1="2.54" y1="-89.154" x2="1.143" y2="-89.408" width="0.254" layer="94"/>
<wire x1="1.143" y1="-90.932" x2="2.54" y2="-91.186" width="0.254" layer="94"/>
<wire x1="2.54" y1="-91.186" x2="2.54" y2="-91.694" width="0.254" layer="94"/>
<wire x1="2.54" y1="-91.694" x2="1.143" y2="-91.948" width="0.254" layer="94"/>
<wire x1="1.143" y1="-93.472" x2="2.54" y2="-93.726" width="0.254" layer="94"/>
<wire x1="2.54" y1="-93.726" x2="2.54" y2="-94.234" width="0.254" layer="94"/>
<wire x1="2.54" y1="-94.234" x2="1.143" y2="-94.488" width="0.254" layer="94"/>
<wire x1="1.143" y1="-96.012" x2="2.54" y2="-96.266" width="0.254" layer="94"/>
<wire x1="2.54" y1="-96.266" x2="2.54" y2="-96.774" width="0.254" layer="94"/>
<wire x1="2.54" y1="-96.774" x2="1.143" y2="-97.028" width="0.254" layer="94"/>
<wire x1="1.143" y1="-98.552" x2="2.54" y2="-98.806" width="0.254" layer="94"/>
<wire x1="2.54" y1="-98.806" x2="2.54" y2="-99.314" width="0.254" layer="94"/>
<wire x1="2.54" y1="-99.314" x2="1.143" y2="-99.568" width="0.254" layer="94"/>
<wire x1="1.143" y1="-101.092" x2="2.54" y2="-101.346" width="0.254" layer="94"/>
<wire x1="2.54" y1="-101.346" x2="2.54" y2="-101.854" width="0.254" layer="94"/>
<wire x1="2.54" y1="-101.854" x2="1.143" y2="-102.108" width="0.254" layer="94"/>
<wire x1="1.143" y1="-103.632" x2="2.54" y2="-103.886" width="0.254" layer="94"/>
<wire x1="2.54" y1="-103.886" x2="2.54" y2="-104.394" width="0.254" layer="94"/>
<wire x1="2.54" y1="-104.394" x2="1.143" y2="-104.648" width="0.254" layer="94"/>
<wire x1="1.143" y1="-106.172" x2="2.54" y2="-106.426" width="0.254" layer="94"/>
<wire x1="2.54" y1="-106.426" x2="2.54" y2="-106.934" width="0.254" layer="94"/>
<wire x1="2.54" y1="-106.934" x2="1.143" y2="-107.188" width="0.254" layer="94"/>
<wire x1="1.143" y1="-108.712" x2="2.54" y2="-108.966" width="0.254" layer="94"/>
<wire x1="2.54" y1="-108.966" x2="2.54" y2="-109.474" width="0.254" layer="94"/>
<wire x1="2.54" y1="-109.474" x2="1.143" y2="-109.728" width="0.254" layer="94"/>
<wire x1="1.143" y1="-111.252" x2="2.54" y2="-111.506" width="0.254" layer="94"/>
<wire x1="2.54" y1="-111.506" x2="2.54" y2="-112.014" width="0.254" layer="94"/>
<wire x1="2.54" y1="-112.014" x2="1.143" y2="-112.268" width="0.254" layer="94"/>
<wire x1="1.143" y1="-113.792" x2="2.54" y2="-114.046" width="0.254" layer="94"/>
<wire x1="2.54" y1="-114.046" x2="2.54" y2="-114.554" width="0.254" layer="94"/>
<wire x1="2.54" y1="-114.554" x2="1.143" y2="-114.808" width="0.254" layer="94"/>
<wire x1="1.143" y1="-116.332" x2="2.54" y2="-116.586" width="0.254" layer="94"/>
<wire x1="2.54" y1="-116.586" x2="2.54" y2="-117.094" width="0.254" layer="94"/>
<wire x1="2.54" y1="-117.094" x2="1.143" y2="-117.348" width="0.254" layer="94"/>
<wire x1="1.143" y1="-118.872" x2="2.54" y2="-119.126" width="0.254" layer="94"/>
<wire x1="2.54" y1="-119.126" x2="2.54" y2="-119.634" width="0.254" layer="94"/>
<wire x1="2.54" y1="-119.634" x2="1.143" y2="-119.888" width="0.254" layer="94"/>
<wire x1="1.143" y1="-121.412" x2="2.54" y2="-121.666" width="0.254" layer="94"/>
<wire x1="2.54" y1="-121.666" x2="2.54" y2="-122.174" width="0.254" layer="94"/>
<wire x1="2.54" y1="-122.174" x2="1.143" y2="-122.428" width="0.254" layer="94"/>
<wire x1="1.143" y1="-123.952" x2="2.54" y2="-124.206" width="0.254" layer="94"/>
<wire x1="2.54" y1="-124.206" x2="2.54" y2="-124.714" width="0.254" layer="94"/>
<wire x1="2.54" y1="-124.714" x2="1.143" y2="-124.968" width="0.254" layer="94"/>
<wire x1="1.143" y1="-126.492" x2="2.54" y2="-126.746" width="0.254" layer="94"/>
<wire x1="2.54" y1="-126.746" x2="2.54" y2="-127.254" width="0.254" layer="94"/>
<wire x1="2.54" y1="-127.254" x2="1.143" y2="-127.508" width="0.254" layer="94"/>
<wire x1="1.143" y1="-129.032" x2="2.54" y2="-129.286" width="0.254" layer="94"/>
<wire x1="2.54" y1="-129.286" x2="2.54" y2="-129.794" width="0.254" layer="94"/>
<wire x1="2.54" y1="-129.794" x2="1.143" y2="-130.048" width="0.254" layer="94"/>
<wire x1="1.143" y1="-131.572" x2="2.54" y2="-131.826" width="0.254" layer="94"/>
<wire x1="2.54" y1="-131.826" x2="2.54" y2="-132.334" width="0.254" layer="94"/>
<wire x1="2.54" y1="-132.334" x2="1.143" y2="-132.588" width="0.254" layer="94"/>
<wire x1="1.143" y1="-134.112" x2="2.54" y2="-134.366" width="0.254" layer="94"/>
<wire x1="2.54" y1="-134.366" x2="2.54" y2="-134.874" width="0.254" layer="94"/>
<wire x1="2.54" y1="-134.874" x2="1.143" y2="-135.128" width="0.254" layer="94"/>
<wire x1="1.143" y1="-136.652" x2="2.54" y2="-136.906" width="0.254" layer="94"/>
<wire x1="2.54" y1="-136.906" x2="2.54" y2="-137.414" width="0.254" layer="94"/>
<wire x1="2.54" y1="-137.414" x2="1.143" y2="-137.668" width="0.254" layer="94"/>
<wire x1="1.143" y1="-139.192" x2="2.54" y2="-139.446" width="0.254" layer="94"/>
<wire x1="2.54" y1="-139.446" x2="2.54" y2="-139.954" width="0.254" layer="94"/>
<wire x1="2.54" y1="-139.954" x2="1.143" y2="-140.208" width="0.254" layer="94"/>
<wire x1="1.143" y1="-141.732" x2="2.54" y2="-141.986" width="0.254" layer="94"/>
<wire x1="2.54" y1="-141.986" x2="2.54" y2="-142.494" width="0.254" layer="94"/>
<wire x1="2.54" y1="-142.494" x2="1.143" y2="-142.748" width="0.254" layer="94"/>
<wire x1="1.143" y1="-144.272" x2="2.54" y2="-144.526" width="0.254" layer="94"/>
<wire x1="2.54" y1="-144.526" x2="2.54" y2="-145.034" width="0.254" layer="94"/>
<wire x1="2.54" y1="-145.034" x2="1.143" y2="-145.288" width="0.254" layer="94"/>
<wire x1="1.143" y1="-146.812" x2="2.54" y2="-147.066" width="0.254" layer="94"/>
<wire x1="2.54" y1="-147.066" x2="2.54" y2="-147.574" width="0.254" layer="94"/>
<wire x1="2.54" y1="-147.574" x2="1.143" y2="-147.828" width="0.254" layer="94"/>
<wire x1="1.143" y1="-149.352" x2="2.54" y2="-149.606" width="0.254" layer="94"/>
<wire x1="2.54" y1="-149.606" x2="2.54" y2="-150.114" width="0.254" layer="94"/>
<wire x1="2.54" y1="-150.114" x2="1.143" y2="-150.368" width="0.254" layer="94"/>
<wire x1="1.143" y1="-151.892" x2="2.54" y2="-152.146" width="0.254" layer="94"/>
<wire x1="2.54" y1="-152.146" x2="2.54" y2="-152.654" width="0.254" layer="94"/>
<wire x1="2.54" y1="-152.654" x2="1.143" y2="-152.908" width="0.254" layer="94"/>
<wire x1="1.143" y1="-154.432" x2="2.54" y2="-154.686" width="0.254" layer="94"/>
<wire x1="2.54" y1="-154.686" x2="2.54" y2="-155.194" width="0.254" layer="94"/>
<wire x1="2.54" y1="-155.194" x2="1.143" y2="-155.448" width="0.254" layer="94"/>
<wire x1="1.143" y1="-156.972" x2="2.54" y2="-157.226" width="0.254" layer="94"/>
<wire x1="2.54" y1="-157.226" x2="2.54" y2="-157.734" width="0.254" layer="94"/>
<wire x1="2.54" y1="-157.734" x2="1.143" y2="-157.988" width="0.254" layer="94"/>
<wire x1="1.143" y1="-159.512" x2="2.54" y2="-159.766" width="0.254" layer="94"/>
<wire x1="2.54" y1="-159.766" x2="2.54" y2="-160.274" width="0.254" layer="94"/>
<wire x1="2.54" y1="-160.274" x2="1.143" y2="-160.528" width="0.254" layer="94"/>
<wire x1="1.143" y1="-162.052" x2="2.54" y2="-162.306" width="0.254" layer="94"/>
<wire x1="2.54" y1="-162.306" x2="2.54" y2="-162.814" width="0.254" layer="94"/>
<wire x1="2.54" y1="-162.814" x2="1.143" y2="-163.068" width="0.254" layer="94"/>
<wire x1="1.143" y1="-164.592" x2="2.54" y2="-164.846" width="0.254" layer="94"/>
<wire x1="2.54" y1="-164.846" x2="2.54" y2="-165.354" width="0.254" layer="94"/>
<wire x1="2.54" y1="-165.354" x2="1.143" y2="-165.608" width="0.254" layer="94"/>
<wire x1="1.143" y1="-167.132" x2="2.54" y2="-167.386" width="0.254" layer="94"/>
<wire x1="2.54" y1="-167.386" x2="2.54" y2="-167.894" width="0.254" layer="94"/>
<wire x1="2.54" y1="-167.894" x2="1.143" y2="-168.148" width="0.254" layer="94"/>
<wire x1="1.143" y1="-169.672" x2="2.54" y2="-169.926" width="0.254" layer="94"/>
<wire x1="2.54" y1="-169.926" x2="2.54" y2="-170.434" width="0.254" layer="94"/>
<wire x1="2.54" y1="-170.434" x2="1.143" y2="-170.688" width="0.254" layer="94"/>
<wire x1="1.143" y1="-172.212" x2="2.54" y2="-172.466" width="0.254" layer="94"/>
<wire x1="2.54" y1="-172.466" x2="2.54" y2="-172.974" width="0.254" layer="94"/>
<wire x1="2.54" y1="-172.974" x2="1.143" y2="-173.228" width="0.254" layer="94"/>
<wire x1="1.143" y1="-174.752" x2="2.54" y2="-175.006" width="0.254" layer="94"/>
<wire x1="2.54" y1="-175.006" x2="2.54" y2="-175.514" width="0.254" layer="94"/>
<wire x1="2.54" y1="-175.514" x2="1.143" y2="-175.768" width="0.254" layer="94"/>
<wire x1="1.143" y1="-177.292" x2="2.54" y2="-177.546" width="0.254" layer="94"/>
<wire x1="2.54" y1="-177.546" x2="2.54" y2="-178.054" width="0.254" layer="94"/>
<wire x1="2.54" y1="-178.054" x2="1.143" y2="-178.308" width="0.254" layer="94"/>
<wire x1="1.143" y1="-179.832" x2="2.54" y2="-180.086" width="0.254" layer="94"/>
<wire x1="2.54" y1="-180.086" x2="2.54" y2="-180.594" width="0.254" layer="94"/>
<wire x1="2.54" y1="-180.594" x2="1.143" y2="-180.848" width="0.254" layer="94"/>
<text x="-5.08" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-185.42" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="7.62" y="0" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-5.08" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-7.62" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-10.16" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="-12.7" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="-15.24" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="-17.78" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="-20.32" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="-22.86" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="7.62" y="-25.4" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="7.62" y="-27.94" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="-30.48" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="-33.02" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="-35.56" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="-38.1" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="17" x="7.62" y="-40.64" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="7.62" y="-43.18" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="7.62" y="-45.72" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="20" x="7.62" y="-48.26" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="21" x="7.62" y="-50.8" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="22" x="7.62" y="-53.34" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="23" x="7.62" y="-55.88" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="24" x="7.62" y="-58.42" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="25" x="7.62" y="-60.96" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="26" x="7.62" y="-63.5" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="27" x="7.62" y="-66.04" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="28" x="7.62" y="-68.58" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="29" x="7.62" y="-71.12" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="30" x="7.62" y="-73.66" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="31" x="7.62" y="-76.2" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="32" x="7.62" y="-78.74" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="33" x="7.62" y="-81.28" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="34" x="7.62" y="-83.82" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="35" x="7.62" y="-86.36" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="36" x="7.62" y="-88.9" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="37" x="7.62" y="-91.44" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="38" x="7.62" y="-93.98" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="39" x="7.62" y="-96.52" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="40" x="7.62" y="-99.06" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="41" x="7.62" y="-101.6" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="42" x="7.62" y="-104.14" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="43" x="7.62" y="-106.68" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="44" x="7.62" y="-109.22" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="45" x="7.62" y="-111.76" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="46" x="7.62" y="-114.3" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="47" x="7.62" y="-116.84" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="48" x="7.62" y="-119.38" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="49" x="7.62" y="-121.92" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="50" x="7.62" y="-124.46" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="51" x="7.62" y="-127" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="52" x="7.62" y="-129.54" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="53" x="7.62" y="-132.08" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="54" x="7.62" y="-134.62" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="55" x="7.62" y="-137.16" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="56" x="7.62" y="-139.7" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="57" x="7.62" y="-142.24" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="58" x="7.62" y="-144.78" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="59" x="7.62" y="-147.32" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="60" x="7.62" y="-149.86" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="61" x="7.62" y="-152.4" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="62" x="7.62" y="-154.94" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="63" x="7.62" y="-157.48" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="64" x="7.62" y="-160.02" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="65" x="7.62" y="-162.56" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="66" x="7.62" y="-165.1" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="67" x="7.62" y="-167.64" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="68" x="7.62" y="-170.18" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="69" x="7.62" y="-172.72" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="70" x="7.62" y="-175.26" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="71" x="7.62" y="-177.8" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="72" x="7.62" y="-180.34" visible="pin" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DIMM-M3" prefix="CON" uservalue="yes">
<description>&lt;b&gt;AMP connector&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="SIMM72" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="177827-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="41" pad="41"/>
<connect gate="G$1" pin="42" pad="42"/>
<connect gate="G$1" pin="43" pad="43"/>
<connect gate="G$1" pin="44" pad="44"/>
<connect gate="G$1" pin="45" pad="45"/>
<connect gate="G$1" pin="46" pad="46"/>
<connect gate="G$1" pin="47" pad="47"/>
<connect gate="G$1" pin="48" pad="48"/>
<connect gate="G$1" pin="49" pad="49"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="50" pad="50"/>
<connect gate="G$1" pin="51" pad="51"/>
<connect gate="G$1" pin="52" pad="52"/>
<connect gate="G$1" pin="53" pad="53"/>
<connect gate="G$1" pin="54" pad="54"/>
<connect gate="G$1" pin="55" pad="55"/>
<connect gate="G$1" pin="56" pad="56"/>
<connect gate="G$1" pin="57" pad="57"/>
<connect gate="G$1" pin="58" pad="58"/>
<connect gate="G$1" pin="59" pad="59"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="60" pad="60"/>
<connect gate="G$1" pin="61" pad="61"/>
<connect gate="G$1" pin="62" pad="62"/>
<connect gate="G$1" pin="63" pad="63"/>
<connect gate="G$1" pin="64" pad="64"/>
<connect gate="G$1" pin="65" pad="65"/>
<connect gate="G$1" pin="66" pad="66"/>
<connect gate="G$1" pin="67" pad="67"/>
<connect gate="G$1" pin="68" pad="68"/>
<connect gate="G$1" pin="69" pad="69"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="70" pad="70"/>
<connect gate="G$1" pin="71" pad="71"/>
<connect gate="G$1" pin="72" pad="72"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Boards">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find boards and modules: Arduino footprints, breadboards, non-RF modules, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="ARDUINO_MEGA">
<description>Full Arduino MEGA footprint</description>
<wire x1="0" y1="53.34" x2="96.52" y2="53.34" width="0.2032" layer="20"/>
<wire x1="96.52" y1="53.34" x2="99.06" y2="50.8" width="0.2032" layer="20"/>
<wire x1="99.06" y1="40.64" x2="101.6" y2="38.1" width="0.2032" layer="20"/>
<wire x1="101.6" y1="38.1" x2="101.6" y2="3.81" width="0.2032" layer="20"/>
<wire x1="101.6" y1="3.81" x2="99.06" y2="1.27" width="0.2032" layer="20"/>
<wire x1="99.06" y1="1.27" x2="99.06" y2="0" width="0.2032" layer="20"/>
<wire x1="99.06" y1="0" x2="0" y2="0" width="0.2032" layer="20"/>
<wire x1="0" y1="0" x2="0" y2="53.34" width="0.2032" layer="20"/>
<wire x1="99.06" y1="50.8" x2="99.06" y2="40.64" width="0.2032" layer="20"/>
<wire x1="88.265" y1="3.81" x2="89.535" y2="3.81" width="0.2032" layer="21"/>
<wire x1="89.535" y1="3.81" x2="90.17" y2="3.175" width="0.2032" layer="21"/>
<wire x1="90.17" y1="1.905" x2="89.535" y2="1.27" width="0.2032" layer="21"/>
<wire x1="85.09" y1="3.175" x2="85.725" y2="3.81" width="0.2032" layer="21"/>
<wire x1="85.725" y1="3.81" x2="86.995" y2="3.81" width="0.2032" layer="21"/>
<wire x1="86.995" y1="3.81" x2="87.63" y2="3.175" width="0.2032" layer="21"/>
<wire x1="87.63" y1="1.905" x2="86.995" y2="1.27" width="0.2032" layer="21"/>
<wire x1="86.995" y1="1.27" x2="85.725" y2="1.27" width="0.2032" layer="21"/>
<wire x1="85.725" y1="1.27" x2="85.09" y2="1.905" width="0.2032" layer="21"/>
<wire x1="88.265" y1="3.81" x2="87.63" y2="3.175" width="0.2032" layer="21"/>
<wire x1="87.63" y1="1.905" x2="88.265" y2="1.27" width="0.2032" layer="21"/>
<wire x1="89.535" y1="1.27" x2="88.265" y2="1.27" width="0.2032" layer="21"/>
<wire x1="80.645" y1="3.81" x2="81.915" y2="3.81" width="0.2032" layer="21"/>
<wire x1="81.915" y1="3.81" x2="82.55" y2="3.175" width="0.2032" layer="21"/>
<wire x1="82.55" y1="1.905" x2="81.915" y2="1.27" width="0.2032" layer="21"/>
<wire x1="82.55" y1="3.175" x2="83.185" y2="3.81" width="0.2032" layer="21"/>
<wire x1="83.185" y1="3.81" x2="84.455" y2="3.81" width="0.2032" layer="21"/>
<wire x1="84.455" y1="3.81" x2="85.09" y2="3.175" width="0.2032" layer="21"/>
<wire x1="85.09" y1="1.905" x2="84.455" y2="1.27" width="0.2032" layer="21"/>
<wire x1="84.455" y1="1.27" x2="83.185" y2="1.27" width="0.2032" layer="21"/>
<wire x1="83.185" y1="1.27" x2="82.55" y2="1.905" width="0.2032" layer="21"/>
<wire x1="77.47" y1="3.175" x2="78.105" y2="3.81" width="0.2032" layer="21"/>
<wire x1="78.105" y1="3.81" x2="79.375" y2="3.81" width="0.2032" layer="21"/>
<wire x1="79.375" y1="3.81" x2="80.01" y2="3.175" width="0.2032" layer="21"/>
<wire x1="80.01" y1="1.905" x2="79.375" y2="1.27" width="0.2032" layer="21"/>
<wire x1="79.375" y1="1.27" x2="78.105" y2="1.27" width="0.2032" layer="21"/>
<wire x1="78.105" y1="1.27" x2="77.47" y2="1.905" width="0.2032" layer="21"/>
<wire x1="80.645" y1="3.81" x2="80.01" y2="3.175" width="0.2032" layer="21"/>
<wire x1="80.01" y1="1.905" x2="80.645" y2="1.27" width="0.2032" layer="21"/>
<wire x1="81.915" y1="1.27" x2="80.645" y2="1.27" width="0.2032" layer="21"/>
<wire x1="73.025" y1="3.81" x2="74.295" y2="3.81" width="0.2032" layer="21"/>
<wire x1="74.295" y1="3.81" x2="74.93" y2="3.175" width="0.2032" layer="21"/>
<wire x1="74.93" y1="1.905" x2="74.295" y2="1.27" width="0.2032" layer="21"/>
<wire x1="74.93" y1="3.175" x2="75.565" y2="3.81" width="0.2032" layer="21"/>
<wire x1="75.565" y1="3.81" x2="76.835" y2="3.81" width="0.2032" layer="21"/>
<wire x1="76.835" y1="3.81" x2="77.47" y2="3.175" width="0.2032" layer="21"/>
<wire x1="77.47" y1="1.905" x2="76.835" y2="1.27" width="0.2032" layer="21"/>
<wire x1="76.835" y1="1.27" x2="75.565" y2="1.27" width="0.2032" layer="21"/>
<wire x1="75.565" y1="1.27" x2="74.93" y2="1.905" width="0.2032" layer="21"/>
<wire x1="72.39" y1="3.175" x2="72.39" y2="1.905" width="0.2032" layer="21"/>
<wire x1="73.025" y1="3.81" x2="72.39" y2="3.175" width="0.2032" layer="21"/>
<wire x1="72.39" y1="1.905" x2="73.025" y2="1.27" width="0.2032" layer="21"/>
<wire x1="74.295" y1="1.27" x2="73.025" y2="1.27" width="0.2032" layer="21"/>
<wire x1="90.805" y1="3.81" x2="92.075" y2="3.81" width="0.2032" layer="21"/>
<wire x1="92.075" y1="3.81" x2="92.71" y2="3.175" width="0.2032" layer="21"/>
<wire x1="92.71" y1="3.175" x2="92.71" y2="1.905" width="0.2032" layer="21"/>
<wire x1="92.71" y1="1.905" x2="92.075" y2="1.27" width="0.2032" layer="21"/>
<wire x1="90.805" y1="3.81" x2="90.17" y2="3.175" width="0.2032" layer="21"/>
<wire x1="90.17" y1="1.905" x2="90.805" y2="1.27" width="0.2032" layer="21"/>
<wire x1="92.075" y1="1.27" x2="90.805" y2="1.27" width="0.2032" layer="21"/>
<wire x1="83.185" y1="52.07" x2="84.455" y2="52.07" width="0.2032" layer="21"/>
<wire x1="84.455" y1="52.07" x2="85.09" y2="51.435" width="0.2032" layer="21"/>
<wire x1="85.09" y1="50.165" x2="84.455" y2="49.53" width="0.2032" layer="21"/>
<wire x1="80.01" y1="51.435" x2="80.645" y2="52.07" width="0.2032" layer="21"/>
<wire x1="80.645" y1="52.07" x2="81.915" y2="52.07" width="0.2032" layer="21"/>
<wire x1="81.915" y1="52.07" x2="82.55" y2="51.435" width="0.2032" layer="21"/>
<wire x1="82.55" y1="50.165" x2="81.915" y2="49.53" width="0.2032" layer="21"/>
<wire x1="81.915" y1="49.53" x2="80.645" y2="49.53" width="0.2032" layer="21"/>
<wire x1="80.645" y1="49.53" x2="80.01" y2="50.165" width="0.2032" layer="21"/>
<wire x1="83.185" y1="52.07" x2="82.55" y2="51.435" width="0.2032" layer="21"/>
<wire x1="82.55" y1="50.165" x2="83.185" y2="49.53" width="0.2032" layer="21"/>
<wire x1="84.455" y1="49.53" x2="83.185" y2="49.53" width="0.2032" layer="21"/>
<wire x1="75.565" y1="52.07" x2="76.835" y2="52.07" width="0.2032" layer="21"/>
<wire x1="76.835" y1="52.07" x2="77.47" y2="51.435" width="0.2032" layer="21"/>
<wire x1="77.47" y1="50.165" x2="76.835" y2="49.53" width="0.2032" layer="21"/>
<wire x1="77.47" y1="51.435" x2="78.105" y2="52.07" width="0.2032" layer="21"/>
<wire x1="78.105" y1="52.07" x2="79.375" y2="52.07" width="0.2032" layer="21"/>
<wire x1="79.375" y1="52.07" x2="80.01" y2="51.435" width="0.2032" layer="21"/>
<wire x1="80.01" y1="50.165" x2="79.375" y2="49.53" width="0.2032" layer="21"/>
<wire x1="79.375" y1="49.53" x2="78.105" y2="49.53" width="0.2032" layer="21"/>
<wire x1="78.105" y1="49.53" x2="77.47" y2="50.165" width="0.2032" layer="21"/>
<wire x1="72.39" y1="51.435" x2="73.025" y2="52.07" width="0.2032" layer="21"/>
<wire x1="73.025" y1="52.07" x2="74.295" y2="52.07" width="0.2032" layer="21"/>
<wire x1="74.295" y1="52.07" x2="74.93" y2="51.435" width="0.2032" layer="21"/>
<wire x1="74.93" y1="50.165" x2="74.295" y2="49.53" width="0.2032" layer="21"/>
<wire x1="74.295" y1="49.53" x2="73.025" y2="49.53" width="0.2032" layer="21"/>
<wire x1="73.025" y1="49.53" x2="72.39" y2="50.165" width="0.2032" layer="21"/>
<wire x1="75.565" y1="52.07" x2="74.93" y2="51.435" width="0.2032" layer="21"/>
<wire x1="74.93" y1="50.165" x2="75.565" y2="49.53" width="0.2032" layer="21"/>
<wire x1="76.835" y1="49.53" x2="75.565" y2="49.53" width="0.2032" layer="21"/>
<wire x1="67.945" y1="52.07" x2="69.215" y2="52.07" width="0.2032" layer="21"/>
<wire x1="69.215" y1="52.07" x2="69.85" y2="51.435" width="0.2032" layer="21"/>
<wire x1="69.85" y1="50.165" x2="69.215" y2="49.53" width="0.2032" layer="21"/>
<wire x1="69.85" y1="51.435" x2="70.485" y2="52.07" width="0.2032" layer="21"/>
<wire x1="70.485" y1="52.07" x2="71.755" y2="52.07" width="0.2032" layer="21"/>
<wire x1="71.755" y1="52.07" x2="72.39" y2="51.435" width="0.2032" layer="21"/>
<wire x1="72.39" y1="50.165" x2="71.755" y2="49.53" width="0.2032" layer="21"/>
<wire x1="71.755" y1="49.53" x2="70.485" y2="49.53" width="0.2032" layer="21"/>
<wire x1="70.485" y1="49.53" x2="69.85" y2="50.165" width="0.2032" layer="21"/>
<wire x1="67.31" y1="51.435" x2="67.31" y2="50.165" width="0.2032" layer="21"/>
<wire x1="67.945" y1="52.07" x2="67.31" y2="51.435" width="0.2032" layer="21"/>
<wire x1="67.31" y1="50.165" x2="67.945" y2="49.53" width="0.2032" layer="21"/>
<wire x1="69.215" y1="49.53" x2="67.945" y2="49.53" width="0.2032" layer="21"/>
<wire x1="85.725" y1="52.07" x2="86.995" y2="52.07" width="0.2032" layer="21"/>
<wire x1="86.995" y1="52.07" x2="87.63" y2="51.435" width="0.2032" layer="21"/>
<wire x1="87.63" y1="51.435" x2="87.63" y2="50.165" width="0.2032" layer="21"/>
<wire x1="87.63" y1="50.165" x2="86.995" y2="49.53" width="0.2032" layer="21"/>
<wire x1="85.725" y1="52.07" x2="85.09" y2="51.435" width="0.2032" layer="21"/>
<wire x1="85.09" y1="50.165" x2="85.725" y2="49.53" width="0.2032" layer="21"/>
<wire x1="86.995" y1="49.53" x2="85.725" y2="49.53" width="0.2032" layer="21"/>
<wire x1="65.405" y1="3.81" x2="66.675" y2="3.81" width="0.2032" layer="21"/>
<wire x1="66.675" y1="3.81" x2="67.31" y2="3.175" width="0.2032" layer="21"/>
<wire x1="67.31" y1="1.905" x2="66.675" y2="1.27" width="0.2032" layer="21"/>
<wire x1="62.23" y1="3.175" x2="62.865" y2="3.81" width="0.2032" layer="21"/>
<wire x1="62.865" y1="3.81" x2="64.135" y2="3.81" width="0.2032" layer="21"/>
<wire x1="64.135" y1="3.81" x2="64.77" y2="3.175" width="0.2032" layer="21"/>
<wire x1="64.77" y1="1.905" x2="64.135" y2="1.27" width="0.2032" layer="21"/>
<wire x1="64.135" y1="1.27" x2="62.865" y2="1.27" width="0.2032" layer="21"/>
<wire x1="62.865" y1="1.27" x2="62.23" y2="1.905" width="0.2032" layer="21"/>
<wire x1="65.405" y1="3.81" x2="64.77" y2="3.175" width="0.2032" layer="21"/>
<wire x1="64.77" y1="1.905" x2="65.405" y2="1.27" width="0.2032" layer="21"/>
<wire x1="66.675" y1="1.27" x2="65.405" y2="1.27" width="0.2032" layer="21"/>
<wire x1="57.785" y1="3.81" x2="59.055" y2="3.81" width="0.2032" layer="21"/>
<wire x1="59.055" y1="3.81" x2="59.69" y2="3.175" width="0.2032" layer="21"/>
<wire x1="59.69" y1="1.905" x2="59.055" y2="1.27" width="0.2032" layer="21"/>
<wire x1="59.69" y1="3.175" x2="60.325" y2="3.81" width="0.2032" layer="21"/>
<wire x1="60.325" y1="3.81" x2="61.595" y2="3.81" width="0.2032" layer="21"/>
<wire x1="61.595" y1="3.81" x2="62.23" y2="3.175" width="0.2032" layer="21"/>
<wire x1="62.23" y1="1.905" x2="61.595" y2="1.27" width="0.2032" layer="21"/>
<wire x1="61.595" y1="1.27" x2="60.325" y2="1.27" width="0.2032" layer="21"/>
<wire x1="60.325" y1="1.27" x2="59.69" y2="1.905" width="0.2032" layer="21"/>
<wire x1="54.61" y1="3.175" x2="55.245" y2="3.81" width="0.2032" layer="21"/>
<wire x1="55.245" y1="3.81" x2="56.515" y2="3.81" width="0.2032" layer="21"/>
<wire x1="56.515" y1="3.81" x2="57.15" y2="3.175" width="0.2032" layer="21"/>
<wire x1="57.15" y1="1.905" x2="56.515" y2="1.27" width="0.2032" layer="21"/>
<wire x1="56.515" y1="1.27" x2="55.245" y2="1.27" width="0.2032" layer="21"/>
<wire x1="55.245" y1="1.27" x2="54.61" y2="1.905" width="0.2032" layer="21"/>
<wire x1="57.785" y1="3.81" x2="57.15" y2="3.175" width="0.2032" layer="21"/>
<wire x1="57.15" y1="1.905" x2="57.785" y2="1.27" width="0.2032" layer="21"/>
<wire x1="59.055" y1="1.27" x2="57.785" y2="1.27" width="0.2032" layer="21"/>
<wire x1="50.165" y1="3.81" x2="51.435" y2="3.81" width="0.2032" layer="21"/>
<wire x1="51.435" y1="3.81" x2="52.07" y2="3.175" width="0.2032" layer="21"/>
<wire x1="52.07" y1="1.905" x2="51.435" y2="1.27" width="0.2032" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.705" y2="3.81" width="0.2032" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.975" y2="3.81" width="0.2032" layer="21"/>
<wire x1="53.975" y1="3.81" x2="54.61" y2="3.175" width="0.2032" layer="21"/>
<wire x1="54.61" y1="1.905" x2="53.975" y2="1.27" width="0.2032" layer="21"/>
<wire x1="53.975" y1="1.27" x2="52.705" y2="1.27" width="0.2032" layer="21"/>
<wire x1="52.705" y1="1.27" x2="52.07" y2="1.905" width="0.2032" layer="21"/>
<wire x1="49.53" y1="3.175" x2="49.53" y2="1.905" width="0.2032" layer="21"/>
<wire x1="50.165" y1="3.81" x2="49.53" y2="3.175" width="0.2032" layer="21"/>
<wire x1="49.53" y1="1.905" x2="50.165" y2="1.27" width="0.2032" layer="21"/>
<wire x1="51.435" y1="1.27" x2="50.165" y2="1.27" width="0.2032" layer="21"/>
<wire x1="67.945" y1="3.81" x2="69.215" y2="3.81" width="0.2032" layer="21"/>
<wire x1="69.215" y1="3.81" x2="69.85" y2="3.175" width="0.2032" layer="21"/>
<wire x1="69.85" y1="3.175" x2="69.85" y2="1.905" width="0.2032" layer="21"/>
<wire x1="69.85" y1="1.905" x2="69.215" y2="1.27" width="0.2032" layer="21"/>
<wire x1="67.945" y1="3.81" x2="67.31" y2="3.175" width="0.2032" layer="21"/>
<wire x1="67.31" y1="1.905" x2="67.945" y2="1.27" width="0.2032" layer="21"/>
<wire x1="69.215" y1="1.27" x2="67.945" y2="1.27" width="0.2032" layer="21"/>
<wire x1="60.325" y1="52.07" x2="61.595" y2="52.07" width="0.2032" layer="21"/>
<wire x1="61.595" y1="52.07" x2="62.23" y2="51.435" width="0.2032" layer="21"/>
<wire x1="62.23" y1="50.165" x2="61.595" y2="49.53" width="0.2032" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.785" y2="52.07" width="0.2032" layer="21"/>
<wire x1="57.785" y1="52.07" x2="59.055" y2="52.07" width="0.2032" layer="21"/>
<wire x1="59.055" y1="52.07" x2="59.69" y2="51.435" width="0.2032" layer="21"/>
<wire x1="59.69" y1="50.165" x2="59.055" y2="49.53" width="0.2032" layer="21"/>
<wire x1="59.055" y1="49.53" x2="57.785" y2="49.53" width="0.2032" layer="21"/>
<wire x1="57.785" y1="49.53" x2="57.15" y2="50.165" width="0.2032" layer="21"/>
<wire x1="60.325" y1="52.07" x2="59.69" y2="51.435" width="0.2032" layer="21"/>
<wire x1="59.69" y1="50.165" x2="60.325" y2="49.53" width="0.2032" layer="21"/>
<wire x1="61.595" y1="49.53" x2="60.325" y2="49.53" width="0.2032" layer="21"/>
<wire x1="52.705" y1="52.07" x2="53.975" y2="52.07" width="0.2032" layer="21"/>
<wire x1="53.975" y1="52.07" x2="54.61" y2="51.435" width="0.2032" layer="21"/>
<wire x1="54.61" y1="50.165" x2="53.975" y2="49.53" width="0.2032" layer="21"/>
<wire x1="54.61" y1="51.435" x2="55.245" y2="52.07" width="0.2032" layer="21"/>
<wire x1="55.245" y1="52.07" x2="56.515" y2="52.07" width="0.2032" layer="21"/>
<wire x1="56.515" y1="52.07" x2="57.15" y2="51.435" width="0.2032" layer="21"/>
<wire x1="57.15" y1="50.165" x2="56.515" y2="49.53" width="0.2032" layer="21"/>
<wire x1="56.515" y1="49.53" x2="55.245" y2="49.53" width="0.2032" layer="21"/>
<wire x1="55.245" y1="49.53" x2="54.61" y2="50.165" width="0.2032" layer="21"/>
<wire x1="49.53" y1="51.435" x2="50.165" y2="52.07" width="0.2032" layer="21"/>
<wire x1="50.165" y1="52.07" x2="51.435" y2="52.07" width="0.2032" layer="21"/>
<wire x1="51.435" y1="52.07" x2="52.07" y2="51.435" width="0.2032" layer="21"/>
<wire x1="52.07" y1="50.165" x2="51.435" y2="49.53" width="0.2032" layer="21"/>
<wire x1="51.435" y1="49.53" x2="50.165" y2="49.53" width="0.2032" layer="21"/>
<wire x1="50.165" y1="49.53" x2="49.53" y2="50.165" width="0.2032" layer="21"/>
<wire x1="52.705" y1="52.07" x2="52.07" y2="51.435" width="0.2032" layer="21"/>
<wire x1="52.07" y1="50.165" x2="52.705" y2="49.53" width="0.2032" layer="21"/>
<wire x1="53.975" y1="49.53" x2="52.705" y2="49.53" width="0.2032" layer="21"/>
<wire x1="45.085" y1="52.07" x2="46.355" y2="52.07" width="0.2032" layer="21"/>
<wire x1="46.355" y1="52.07" x2="46.99" y2="51.435" width="0.2032" layer="21"/>
<wire x1="46.99" y1="50.165" x2="46.355" y2="49.53" width="0.2032" layer="21"/>
<wire x1="46.99" y1="51.435" x2="47.625" y2="52.07" width="0.2032" layer="21"/>
<wire x1="47.625" y1="52.07" x2="48.895" y2="52.07" width="0.2032" layer="21"/>
<wire x1="48.895" y1="52.07" x2="49.53" y2="51.435" width="0.2032" layer="21"/>
<wire x1="49.53" y1="50.165" x2="48.895" y2="49.53" width="0.2032" layer="21"/>
<wire x1="48.895" y1="49.53" x2="47.625" y2="49.53" width="0.2032" layer="21"/>
<wire x1="47.625" y1="49.53" x2="46.99" y2="50.165" width="0.2032" layer="21"/>
<wire x1="44.45" y1="51.435" x2="44.45" y2="50.165" width="0.2032" layer="21"/>
<wire x1="45.085" y1="52.07" x2="44.45" y2="51.435" width="0.2032" layer="21"/>
<wire x1="44.45" y1="50.165" x2="45.085" y2="49.53" width="0.2032" layer="21"/>
<wire x1="46.355" y1="49.53" x2="45.085" y2="49.53" width="0.2032" layer="21"/>
<wire x1="62.865" y1="52.07" x2="64.135" y2="52.07" width="0.2032" layer="21"/>
<wire x1="64.135" y1="52.07" x2="64.77" y2="51.435" width="0.2032" layer="21"/>
<wire x1="64.77" y1="51.435" x2="64.77" y2="50.165" width="0.2032" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.135" y2="49.53" width="0.2032" layer="21"/>
<wire x1="62.865" y1="52.07" x2="62.23" y2="51.435" width="0.2032" layer="21"/>
<wire x1="62.23" y1="50.165" x2="62.865" y2="49.53" width="0.2032" layer="21"/>
<wire x1="64.135" y1="49.53" x2="62.865" y2="49.53" width="0.2032" layer="21"/>
<wire x1="38.481" y1="52.07" x2="39.751" y2="52.07" width="0.2032" layer="21"/>
<wire x1="39.751" y1="52.07" x2="40.386" y2="51.435" width="0.2032" layer="21"/>
<wire x1="40.386" y1="50.165" x2="39.751" y2="49.53" width="0.2032" layer="21"/>
<wire x1="35.306" y1="51.435" x2="35.941" y2="52.07" width="0.2032" layer="21"/>
<wire x1="35.941" y1="52.07" x2="37.211" y2="52.07" width="0.2032" layer="21"/>
<wire x1="37.211" y1="52.07" x2="37.846" y2="51.435" width="0.2032" layer="21"/>
<wire x1="37.846" y1="50.165" x2="37.211" y2="49.53" width="0.2032" layer="21"/>
<wire x1="37.211" y1="49.53" x2="35.941" y2="49.53" width="0.2032" layer="21"/>
<wire x1="35.941" y1="49.53" x2="35.306" y2="50.165" width="0.2032" layer="21"/>
<wire x1="38.481" y1="52.07" x2="37.846" y2="51.435" width="0.2032" layer="21"/>
<wire x1="37.846" y1="50.165" x2="38.481" y2="49.53" width="0.2032" layer="21"/>
<wire x1="39.751" y1="49.53" x2="38.481" y2="49.53" width="0.2032" layer="21"/>
<wire x1="30.861" y1="52.07" x2="32.131" y2="52.07" width="0.2032" layer="21"/>
<wire x1="32.131" y1="52.07" x2="32.766" y2="51.435" width="0.2032" layer="21"/>
<wire x1="32.766" y1="50.165" x2="32.131" y2="49.53" width="0.2032" layer="21"/>
<wire x1="32.766" y1="51.435" x2="33.401" y2="52.07" width="0.2032" layer="21"/>
<wire x1="33.401" y1="52.07" x2="34.671" y2="52.07" width="0.2032" layer="21"/>
<wire x1="34.671" y1="52.07" x2="35.306" y2="51.435" width="0.2032" layer="21"/>
<wire x1="35.306" y1="50.165" x2="34.671" y2="49.53" width="0.2032" layer="21"/>
<wire x1="34.671" y1="49.53" x2="33.401" y2="49.53" width="0.2032" layer="21"/>
<wire x1="33.401" y1="49.53" x2="32.766" y2="50.165" width="0.2032" layer="21"/>
<wire x1="27.686" y1="51.435" x2="28.321" y2="52.07" width="0.2032" layer="21"/>
<wire x1="28.321" y1="52.07" x2="29.591" y2="52.07" width="0.2032" layer="21"/>
<wire x1="29.591" y1="52.07" x2="30.226" y2="51.435" width="0.2032" layer="21"/>
<wire x1="30.226" y1="50.165" x2="29.591" y2="49.53" width="0.2032" layer="21"/>
<wire x1="29.591" y1="49.53" x2="28.321" y2="49.53" width="0.2032" layer="21"/>
<wire x1="28.321" y1="49.53" x2="27.686" y2="50.165" width="0.2032" layer="21"/>
<wire x1="30.861" y1="52.07" x2="30.226" y2="51.435" width="0.2032" layer="21"/>
<wire x1="30.226" y1="50.165" x2="30.861" y2="49.53" width="0.2032" layer="21"/>
<wire x1="32.131" y1="49.53" x2="30.861" y2="49.53" width="0.2032" layer="21"/>
<wire x1="23.241" y1="52.07" x2="24.511" y2="52.07" width="0.2032" layer="21"/>
<wire x1="24.511" y1="52.07" x2="25.146" y2="51.435" width="0.2032" layer="21"/>
<wire x1="25.146" y1="50.165" x2="24.511" y2="49.53" width="0.2032" layer="21"/>
<wire x1="25.146" y1="51.435" x2="25.781" y2="52.07" width="0.2032" layer="21"/>
<wire x1="25.781" y1="52.07" x2="27.051" y2="52.07" width="0.2032" layer="21"/>
<wire x1="27.051" y1="52.07" x2="27.686" y2="51.435" width="0.2032" layer="21"/>
<wire x1="27.686" y1="50.165" x2="27.051" y2="49.53" width="0.2032" layer="21"/>
<wire x1="27.051" y1="49.53" x2="25.781" y2="49.53" width="0.2032" layer="21"/>
<wire x1="25.781" y1="49.53" x2="25.146" y2="50.165" width="0.2032" layer="21"/>
<wire x1="22.606" y1="51.435" x2="22.606" y2="50.165" width="0.2032" layer="21"/>
<wire x1="23.241" y1="52.07" x2="22.606" y2="51.435" width="0.2032" layer="21"/>
<wire x1="22.606" y1="50.165" x2="23.241" y2="49.53" width="0.2032" layer="21"/>
<wire x1="24.511" y1="49.53" x2="23.241" y2="49.53" width="0.2032" layer="21"/>
<wire x1="41.021" y1="52.07" x2="42.291" y2="52.07" width="0.2032" layer="21"/>
<wire x1="42.291" y1="52.07" x2="42.926" y2="51.435" width="0.2032" layer="21"/>
<wire x1="42.926" y1="51.435" x2="42.926" y2="50.165" width="0.2032" layer="21"/>
<wire x1="42.926" y1="50.165" x2="42.291" y2="49.53" width="0.2032" layer="21"/>
<wire x1="41.021" y1="52.07" x2="40.386" y2="51.435" width="0.2032" layer="21"/>
<wire x1="40.386" y1="50.165" x2="41.021" y2="49.53" width="0.2032" layer="21"/>
<wire x1="42.291" y1="49.53" x2="41.021" y2="49.53" width="0.2032" layer="21"/>
<wire x1="62.992" y1="31.75" x2="62.357" y2="31.115" width="0.2032" layer="51"/>
<wire x1="62.357" y1="29.845" x2="62.992" y2="29.21" width="0.2032" layer="51"/>
<wire x1="62.992" y1="29.21" x2="62.357" y2="28.575" width="0.2032" layer="51"/>
<wire x1="62.357" y1="27.305" x2="62.992" y2="26.67" width="0.2032" layer="51"/>
<wire x1="62.992" y1="26.67" x2="62.357" y2="26.035" width="0.2032" layer="51"/>
<wire x1="62.357" y1="24.765" x2="62.992" y2="24.13" width="0.2032" layer="51"/>
<wire x1="62.992" y1="31.75" x2="66.802" y2="31.75" width="0.2032" layer="51"/>
<wire x1="66.802" y1="31.75" x2="67.437" y2="31.115" width="0.2032" layer="51"/>
<wire x1="67.437" y1="31.115" x2="67.437" y2="29.845" width="0.2032" layer="51"/>
<wire x1="67.437" y1="29.845" x2="66.802" y2="29.21" width="0.2032" layer="51"/>
<wire x1="66.802" y1="29.21" x2="67.437" y2="28.575" width="0.2032" layer="51"/>
<wire x1="67.437" y1="28.575" x2="67.437" y2="27.305" width="0.2032" layer="51"/>
<wire x1="67.437" y1="27.305" x2="66.802" y2="26.67" width="0.2032" layer="51"/>
<wire x1="66.802" y1="26.67" x2="67.437" y2="26.035" width="0.2032" layer="51"/>
<wire x1="67.437" y1="26.035" x2="67.437" y2="24.765" width="0.2032" layer="51"/>
<wire x1="67.437" y1="24.765" x2="66.802" y2="24.13" width="0.2032" layer="51"/>
<wire x1="66.802" y1="29.21" x2="62.992" y2="29.21" width="0.2032" layer="51"/>
<wire x1="66.802" y1="26.67" x2="62.992" y2="26.67" width="0.2032" layer="51"/>
<wire x1="66.802" y1="24.13" x2="62.992" y2="24.13" width="0.2032" layer="51"/>
<wire x1="62.357" y1="26.035" x2="62.357" y2="24.765" width="0.2032" layer="51"/>
<wire x1="62.357" y1="28.575" x2="62.357" y2="27.305" width="0.2032" layer="51"/>
<wire x1="62.357" y1="31.115" x2="62.357" y2="29.845" width="0.2032" layer="51"/>
<wire x1="62.022" y1="29.845" x2="62.022" y2="31.115" width="0.2032" layer="51"/>
<wire x1="97.155" y1="29.21" x2="97.79" y2="29.845" width="0.1524" layer="21"/>
<wire x1="97.79" y1="31.115" x2="97.155" y2="31.75" width="0.1524" layer="21"/>
<wire x1="97.155" y1="31.75" x2="97.79" y2="32.385" width="0.1524" layer="21"/>
<wire x1="97.79" y1="33.655" x2="97.155" y2="34.29" width="0.1524" layer="21"/>
<wire x1="97.155" y1="34.29" x2="97.79" y2="34.925" width="0.1524" layer="21"/>
<wire x1="97.79" y1="36.195" x2="97.155" y2="36.83" width="0.1524" layer="21"/>
<wire x1="97.155" y1="36.83" x2="97.79" y2="37.465" width="0.1524" layer="21"/>
<wire x1="97.79" y1="38.735" x2="97.155" y2="39.37" width="0.1524" layer="21"/>
<wire x1="97.155" y1="39.37" x2="97.79" y2="40.005" width="0.1524" layer="21"/>
<wire x1="97.79" y1="41.275" x2="97.155" y2="41.91" width="0.1524" layer="21"/>
<wire x1="97.155" y1="41.91" x2="97.79" y2="42.545" width="0.1524" layer="21"/>
<wire x1="97.79" y1="43.815" x2="97.155" y2="44.45" width="0.1524" layer="21"/>
<wire x1="93.345" y1="29.21" x2="92.71" y2="29.845" width="0.1524" layer="21"/>
<wire x1="92.71" y1="29.845" x2="92.71" y2="31.115" width="0.1524" layer="21"/>
<wire x1="92.71" y1="31.115" x2="93.345" y2="31.75" width="0.1524" layer="21"/>
<wire x1="93.345" y1="31.75" x2="92.71" y2="32.385" width="0.1524" layer="21"/>
<wire x1="92.71" y1="32.385" x2="92.71" y2="33.655" width="0.1524" layer="21"/>
<wire x1="92.71" y1="33.655" x2="93.345" y2="34.29" width="0.1524" layer="21"/>
<wire x1="93.345" y1="34.29" x2="92.71" y2="34.925" width="0.1524" layer="21"/>
<wire x1="92.71" y1="34.925" x2="92.71" y2="36.195" width="0.1524" layer="21"/>
<wire x1="92.71" y1="36.195" x2="93.345" y2="36.83" width="0.1524" layer="21"/>
<wire x1="93.345" y1="36.83" x2="92.71" y2="37.465" width="0.1524" layer="21"/>
<wire x1="92.71" y1="37.465" x2="92.71" y2="38.735" width="0.1524" layer="21"/>
<wire x1="92.71" y1="38.735" x2="93.345" y2="39.37" width="0.1524" layer="21"/>
<wire x1="93.345" y1="39.37" x2="92.71" y2="40.005" width="0.1524" layer="21"/>
<wire x1="92.71" y1="40.005" x2="92.71" y2="41.275" width="0.1524" layer="21"/>
<wire x1="92.71" y1="41.275" x2="93.345" y2="41.91" width="0.1524" layer="21"/>
<wire x1="93.345" y1="41.91" x2="92.71" y2="42.545" width="0.1524" layer="21"/>
<wire x1="92.71" y1="42.545" x2="92.71" y2="43.815" width="0.1524" layer="21"/>
<wire x1="92.71" y1="43.815" x2="93.345" y2="44.45" width="0.1524" layer="21"/>
<wire x1="93.345" y1="44.45" x2="92.71" y2="45.085" width="0.1524" layer="21"/>
<wire x1="92.71" y1="45.085" x2="92.71" y2="46.355" width="0.1524" layer="21"/>
<wire x1="92.71" y1="46.355" x2="93.345" y2="46.99" width="0.1524" layer="21"/>
<wire x1="93.345" y1="46.99" x2="92.71" y2="47.625" width="0.1524" layer="21"/>
<wire x1="92.71" y1="47.625" x2="92.71" y2="48.895" width="0.1524" layer="21"/>
<wire x1="92.71" y1="48.895" x2="93.345" y2="49.53" width="0.1524" layer="21"/>
<wire x1="97.155" y1="49.53" x2="97.79" y2="48.895" width="0.1524" layer="21"/>
<wire x1="97.155" y1="46.99" x2="97.79" y2="47.625" width="0.1524" layer="21"/>
<wire x1="97.155" y1="46.99" x2="97.79" y2="46.355" width="0.1524" layer="21"/>
<wire x1="97.155" y1="44.45" x2="97.79" y2="45.085" width="0.1524" layer="21"/>
<wire x1="93.345" y1="31.75" x2="97.155" y2="31.75" width="0.1524" layer="21"/>
<wire x1="93.345" y1="34.29" x2="97.155" y2="34.29" width="0.1524" layer="21"/>
<wire x1="93.345" y1="36.83" x2="97.155" y2="36.83" width="0.1524" layer="21"/>
<wire x1="93.345" y1="39.37" x2="97.155" y2="39.37" width="0.1524" layer="21"/>
<wire x1="93.345" y1="41.91" x2="97.155" y2="41.91" width="0.1524" layer="21"/>
<wire x1="93.345" y1="44.45" x2="97.155" y2="44.45" width="0.1524" layer="21"/>
<wire x1="93.345" y1="46.99" x2="97.155" y2="46.99" width="0.1524" layer="21"/>
<wire x1="97.79" y1="47.625" x2="97.79" y2="48.895" width="0.1524" layer="21"/>
<wire x1="97.79" y1="45.085" x2="97.79" y2="46.355" width="0.1524" layer="21"/>
<wire x1="97.79" y1="42.545" x2="97.79" y2="43.815" width="0.1524" layer="21"/>
<wire x1="97.79" y1="40.005" x2="97.79" y2="41.275" width="0.1524" layer="21"/>
<wire x1="97.79" y1="37.465" x2="97.79" y2="38.735" width="0.1524" layer="21"/>
<wire x1="97.79" y1="34.925" x2="97.79" y2="36.195" width="0.1524" layer="21"/>
<wire x1="97.79" y1="32.385" x2="97.79" y2="33.655" width="0.1524" layer="21"/>
<wire x1="97.79" y1="29.845" x2="97.79" y2="31.115" width="0.1524" layer="21"/>
<wire x1="97.155" y1="8.89" x2="97.79" y2="9.525" width="0.1524" layer="21"/>
<wire x1="97.79" y1="10.795" x2="97.155" y2="11.43" width="0.1524" layer="21"/>
<wire x1="97.155" y1="11.43" x2="97.79" y2="12.065" width="0.1524" layer="21"/>
<wire x1="97.79" y1="13.335" x2="97.155" y2="13.97" width="0.1524" layer="21"/>
<wire x1="97.155" y1="13.97" x2="97.79" y2="14.605" width="0.1524" layer="21"/>
<wire x1="97.79" y1="15.875" x2="97.155" y2="16.51" width="0.1524" layer="21"/>
<wire x1="97.155" y1="16.51" x2="97.79" y2="17.145" width="0.1524" layer="21"/>
<wire x1="97.79" y1="18.415" x2="97.155" y2="19.05" width="0.1524" layer="21"/>
<wire x1="97.155" y1="19.05" x2="97.79" y2="19.685" width="0.1524" layer="21"/>
<wire x1="97.79" y1="20.955" x2="97.155" y2="21.59" width="0.1524" layer="21"/>
<wire x1="97.155" y1="21.59" x2="97.79" y2="22.225" width="0.1524" layer="21"/>
<wire x1="97.79" y1="23.495" x2="97.155" y2="24.13" width="0.1524" layer="21"/>
<wire x1="93.345" y1="8.89" x2="92.71" y2="9.525" width="0.1524" layer="21"/>
<wire x1="92.71" y1="9.525" x2="92.71" y2="10.795" width="0.1524" layer="21"/>
<wire x1="92.71" y1="10.795" x2="93.345" y2="11.43" width="0.1524" layer="21"/>
<wire x1="93.345" y1="11.43" x2="92.71" y2="12.065" width="0.1524" layer="21"/>
<wire x1="92.71" y1="12.065" x2="92.71" y2="13.335" width="0.1524" layer="21"/>
<wire x1="92.71" y1="13.335" x2="93.345" y2="13.97" width="0.1524" layer="21"/>
<wire x1="93.345" y1="13.97" x2="92.71" y2="14.605" width="0.1524" layer="21"/>
<wire x1="92.71" y1="14.605" x2="92.71" y2="15.875" width="0.1524" layer="21"/>
<wire x1="92.71" y1="15.875" x2="93.345" y2="16.51" width="0.1524" layer="21"/>
<wire x1="93.345" y1="16.51" x2="92.71" y2="17.145" width="0.1524" layer="21"/>
<wire x1="92.71" y1="17.145" x2="92.71" y2="18.415" width="0.1524" layer="21"/>
<wire x1="92.71" y1="18.415" x2="93.345" y2="19.05" width="0.1524" layer="21"/>
<wire x1="93.345" y1="19.05" x2="92.71" y2="19.685" width="0.1524" layer="21"/>
<wire x1="92.71" y1="19.685" x2="92.71" y2="20.955" width="0.1524" layer="21"/>
<wire x1="92.71" y1="20.955" x2="93.345" y2="21.59" width="0.1524" layer="21"/>
<wire x1="93.345" y1="21.59" x2="92.71" y2="22.225" width="0.1524" layer="21"/>
<wire x1="92.71" y1="22.225" x2="92.71" y2="23.495" width="0.1524" layer="21"/>
<wire x1="92.71" y1="23.495" x2="93.345" y2="24.13" width="0.1524" layer="21"/>
<wire x1="93.345" y1="24.13" x2="92.71" y2="24.765" width="0.1524" layer="21"/>
<wire x1="92.71" y1="24.765" x2="92.71" y2="26.035" width="0.1524" layer="21"/>
<wire x1="92.71" y1="26.035" x2="93.345" y2="26.67" width="0.1524" layer="21"/>
<wire x1="93.345" y1="26.67" x2="92.71" y2="27.305" width="0.1524" layer="21"/>
<wire x1="92.71" y1="27.305" x2="92.71" y2="28.575" width="0.1524" layer="21"/>
<wire x1="92.71" y1="28.575" x2="93.345" y2="29.21" width="0.1524" layer="21"/>
<wire x1="97.155" y1="29.21" x2="97.79" y2="28.575" width="0.1524" layer="21"/>
<wire x1="97.155" y1="26.67" x2="97.79" y2="27.305" width="0.1524" layer="21"/>
<wire x1="97.155" y1="26.67" x2="97.79" y2="26.035" width="0.1524" layer="21"/>
<wire x1="97.155" y1="24.13" x2="97.79" y2="24.765" width="0.1524" layer="21"/>
<wire x1="93.345" y1="11.43" x2="97.155" y2="11.43" width="0.1524" layer="21"/>
<wire x1="93.345" y1="13.97" x2="97.155" y2="13.97" width="0.1524" layer="21"/>
<wire x1="93.345" y1="16.51" x2="97.155" y2="16.51" width="0.1524" layer="21"/>
<wire x1="93.345" y1="19.05" x2="97.155" y2="19.05" width="0.1524" layer="21"/>
<wire x1="93.345" y1="21.59" x2="97.155" y2="21.59" width="0.1524" layer="21"/>
<wire x1="93.345" y1="24.13" x2="97.155" y2="24.13" width="0.1524" layer="21"/>
<wire x1="93.345" y1="26.67" x2="97.155" y2="26.67" width="0.1524" layer="21"/>
<wire x1="93.345" y1="29.21" x2="97.155" y2="29.21" width="0.1524" layer="21"/>
<wire x1="97.79" y1="27.305" x2="97.79" y2="28.575" width="0.1524" layer="21"/>
<wire x1="97.79" y1="24.765" x2="97.79" y2="26.035" width="0.1524" layer="21"/>
<wire x1="97.79" y1="22.225" x2="97.79" y2="23.495" width="0.1524" layer="21"/>
<wire x1="97.79" y1="19.685" x2="97.79" y2="20.955" width="0.1524" layer="21"/>
<wire x1="97.79" y1="17.145" x2="97.79" y2="18.415" width="0.1524" layer="21"/>
<wire x1="97.79" y1="14.605" x2="97.79" y2="15.875" width="0.1524" layer="21"/>
<wire x1="97.79" y1="12.065" x2="97.79" y2="13.335" width="0.1524" layer="21"/>
<wire x1="97.79" y1="9.525" x2="97.79" y2="10.795" width="0.1524" layer="21"/>
<wire x1="97.155" y1="8.89" x2="97.79" y2="8.255" width="0.2032" layer="21"/>
<wire x1="97.79" y1="6.985" x2="97.155" y2="6.35" width="0.2032" layer="21"/>
<wire x1="92.71" y1="8.255" x2="92.71" y2="6.985" width="0.2032" layer="21"/>
<wire x1="93.345" y1="8.89" x2="92.71" y2="8.255" width="0.2032" layer="21"/>
<wire x1="92.71" y1="6.985" x2="93.345" y2="6.35" width="0.2032" layer="21"/>
<wire x1="97.79" y1="8.255" x2="97.79" y2="6.985" width="0.2032" layer="21"/>
<wire x1="93.345" y1="8.89" x2="97.155" y2="8.89" width="0.2032" layer="21"/>
<wire x1="97.155" y1="6.35" x2="93.345" y2="6.35" width="0.2032" layer="21"/>
<wire x1="97.155" y1="52.07" x2="97.79" y2="51.435" width="0.2032" layer="21"/>
<wire x1="97.79" y1="50.165" x2="97.155" y2="49.53" width="0.2032" layer="21"/>
<wire x1="92.71" y1="51.435" x2="92.71" y2="50.165" width="0.2032" layer="21"/>
<wire x1="93.345" y1="52.07" x2="92.71" y2="51.435" width="0.2032" layer="21"/>
<wire x1="92.71" y1="50.165" x2="93.345" y2="49.53" width="0.2032" layer="21"/>
<wire x1="97.79" y1="51.435" x2="97.79" y2="50.165" width="0.2032" layer="21"/>
<wire x1="93.345" y1="52.07" x2="97.155" y2="52.07" width="0.2032" layer="21"/>
<wire x1="97.155" y1="49.53" x2="93.345" y2="49.53" width="0.2032" layer="21"/>
<wire x1="59.436" y1="43.053" x2="28.067" y2="43.053" width="0.3048" layer="21"/>
<wire x1="59.944" y1="39.751" x2="85.471" y2="39.751" width="0.3048" layer="21"/>
<wire x1="86.2584" y1="39.5478" x2="86.2584" y2="11.43" width="0.3048" layer="21"/>
<wire x1="88.2904" y1="41.5798" x2="88.2904" y2="48.641" width="0.3048" layer="21"/>
<wire x1="93.98" y1="52.1462" x2="93.98" y2="52.7812" width="0.3048" layer="21"/>
<wire x1="93.98" y1="52.7812" x2="96.52" y2="52.7812" width="0.3048" layer="21"/>
<wire x1="96.52" y1="52.7812" x2="96.52" y2="52.1208" width="0.3048" layer="21"/>
<wire x1="93.98" y1="6.2738" x2="93.98" y2="5.5372" width="0.3048" layer="21"/>
<wire x1="93.98" y1="5.5372" x2="96.52" y2="5.5372" width="0.3048" layer="21"/>
<wire x1="96.52" y1="5.5372" x2="96.52" y2="6.2992" width="0.3048" layer="21"/>
<wire x1="86.233" y1="10.5664" x2="49.911" y2="10.5664" width="0.3048" layer="21"/>
<wire x1="86.233" y1="10.5664" x2="87.9348" y2="8.8646" width="0.3048" layer="21"/>
<wire x1="87.9348" y1="8.8646" x2="100.8126" y2="8.8646" width="0.3048" layer="21"/>
<wire x1="86.2584" y1="39.5478" x2="88.2904" y2="41.5798" width="0.3048" layer="21"/>
<wire x1="97.79" y1="6.35" x2="100.7872" y2="6.35" width="0.3048" layer="21"/>
<wire x1="60.833" y1="45.72" x2="60.833" y2="46.99" width="0.2032" layer="21"/>
<wire x1="60.325" y1="46.482" x2="60.833" y2="46.99" width="0.2032" layer="21"/>
<wire x1="60.833" y1="46.99" x2="61.341" y2="46.482" width="0.2032" layer="21"/>
<wire x1="63.373" y1="46.99" x2="63.373" y2="45.72" width="0.2032" layer="21"/>
<wire x1="63.881" y1="46.228" x2="63.373" y2="45.72" width="0.2032" layer="21"/>
<wire x1="63.373" y1="45.72" x2="62.865" y2="46.228" width="0.2032" layer="21"/>
<wire x1="46.609" y1="10.5664" x2="32.131" y2="10.5664" width="0.3048" layer="21"/>
<wire x1="44.45" y1="3.175" x2="45.085" y2="3.81" width="0.2032" layer="21"/>
<wire x1="45.085" y1="3.81" x2="46.355" y2="3.81" width="0.2032" layer="21"/>
<wire x1="46.355" y1="3.81" x2="46.99" y2="3.175" width="0.2032" layer="21"/>
<wire x1="46.99" y1="1.905" x2="46.355" y2="1.27" width="0.2032" layer="21"/>
<wire x1="46.355" y1="1.27" x2="45.085" y2="1.27" width="0.2032" layer="21"/>
<wire x1="45.085" y1="1.27" x2="44.45" y2="1.905" width="0.2032" layer="21"/>
<wire x1="40.005" y1="3.81" x2="41.275" y2="3.81" width="0.2032" layer="21"/>
<wire x1="41.275" y1="3.81" x2="41.91" y2="3.175" width="0.2032" layer="21"/>
<wire x1="41.91" y1="1.905" x2="41.275" y2="1.27" width="0.2032" layer="21"/>
<wire x1="41.91" y1="3.175" x2="42.545" y2="3.81" width="0.2032" layer="21"/>
<wire x1="42.545" y1="3.81" x2="43.815" y2="3.81" width="0.2032" layer="21"/>
<wire x1="43.815" y1="3.81" x2="44.45" y2="3.175" width="0.2032" layer="21"/>
<wire x1="44.45" y1="1.905" x2="43.815" y2="1.27" width="0.2032" layer="21"/>
<wire x1="43.815" y1="1.27" x2="42.545" y2="1.27" width="0.2032" layer="21"/>
<wire x1="42.545" y1="1.27" x2="41.91" y2="1.905" width="0.2032" layer="21"/>
<wire x1="36.83" y1="3.175" x2="37.465" y2="3.81" width="0.2032" layer="21"/>
<wire x1="37.465" y1="3.81" x2="38.735" y2="3.81" width="0.2032" layer="21"/>
<wire x1="38.735" y1="3.81" x2="39.37" y2="3.175" width="0.2032" layer="21"/>
<wire x1="39.37" y1="1.905" x2="38.735" y2="1.27" width="0.2032" layer="21"/>
<wire x1="38.735" y1="1.27" x2="37.465" y2="1.27" width="0.2032" layer="21"/>
<wire x1="37.465" y1="1.27" x2="36.83" y2="1.905" width="0.2032" layer="21"/>
<wire x1="40.005" y1="3.81" x2="39.37" y2="3.175" width="0.2032" layer="21"/>
<wire x1="39.37" y1="1.905" x2="40.005" y2="1.27" width="0.2032" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.005" y2="1.27" width="0.2032" layer="21"/>
<wire x1="32.385" y1="3.81" x2="33.655" y2="3.81" width="0.2032" layer="21"/>
<wire x1="33.655" y1="3.81" x2="34.29" y2="3.175" width="0.2032" layer="21"/>
<wire x1="34.29" y1="1.905" x2="33.655" y2="1.27" width="0.2032" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.925" y2="3.81" width="0.2032" layer="21"/>
<wire x1="34.925" y1="3.81" x2="36.195" y2="3.81" width="0.2032" layer="21"/>
<wire x1="36.195" y1="3.81" x2="36.83" y2="3.175" width="0.2032" layer="21"/>
<wire x1="36.83" y1="1.905" x2="36.195" y2="1.27" width="0.2032" layer="21"/>
<wire x1="36.195" y1="1.27" x2="34.925" y2="1.27" width="0.2032" layer="21"/>
<wire x1="34.925" y1="1.27" x2="34.29" y2="1.905" width="0.2032" layer="21"/>
<wire x1="31.75" y1="3.175" x2="31.75" y2="1.905" width="0.2032" layer="21"/>
<wire x1="32.385" y1="3.81" x2="31.75" y2="3.175" width="0.2032" layer="21"/>
<wire x1="31.75" y1="1.905" x2="32.385" y2="1.27" width="0.2032" layer="21"/>
<wire x1="33.655" y1="1.27" x2="32.385" y2="1.27" width="0.2032" layer="21"/>
<wire x1="46.99" y1="3.175" x2="46.99" y2="1.905" width="0.2032" layer="21"/>
<wire x1="93.218" y1="52.7812" x2="93.98" y2="52.7812" width="0.3048" layer="21"/>
<pad name="A9" x="76.2" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A10" x="78.74" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A11" x="81.28" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A12" x="83.82" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A13" x="86.36" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A14" x="88.9" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A15" x="91.44" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A8" x="73.66" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="15" x="71.12" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="16" x="73.66" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="17" x="76.2" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="18" x="78.74" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="19" x="81.28" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="20" x="83.82" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="21" x="86.36" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="14" x="68.58" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A1" x="53.34" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="55.88" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="58.42" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="60.96" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="63.5" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A6" x="66.04" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A7" x="68.58" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="50.8" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="6" x="48.26" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="50.8" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="53.34" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="55.88" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="58.42" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="1" x="60.96" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="0" x="63.5" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="7" x="45.72" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@4" x="26.416" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="13" x="28.956" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="12" x="31.496" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="11" x="34.036" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="10" x="36.576" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="9" x="39.116" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="8" x="41.656" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="23.876" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="37" x="96.52" y="30.48" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="36" x="93.98" y="30.48" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="35" x="96.52" y="33.02" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="34" x="93.98" y="33.02" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="33" x="96.52" y="35.56" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="32" x="93.98" y="35.56" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="31" x="96.52" y="38.1" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="30" x="93.98" y="38.1" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="29" x="96.52" y="40.64" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="28" x="93.98" y="40.64" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="27" x="96.52" y="43.18" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="26" x="93.98" y="43.18" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="25" x="96.52" y="45.72" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="24" x="93.98" y="45.72" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="23" x="96.52" y="48.26" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="22" x="93.98" y="48.26" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="53" x="96.52" y="10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="52" x="93.98" y="10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="51" x="96.52" y="12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="50" x="93.98" y="12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="49" x="96.52" y="15.24" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="48" x="93.98" y="15.24" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="47" x="96.52" y="17.78" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="46" x="93.98" y="17.78" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="45" x="96.52" y="20.32" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="44" x="93.98" y="20.32" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="43" x="96.52" y="22.86" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="42" x="93.98" y="22.86" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="41" x="96.52" y="25.4" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="40" x="93.98" y="25.4" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="39" x="96.52" y="27.94" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="38" x="93.98" y="27.94" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="GND@2" x="93.98" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@3" x="96.52" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@1" x="93.98" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@2" x="96.52" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RESET" x="33.02" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="35.56" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@0" x="38.1" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@0" x="40.64" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@1" x="43.18" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="45.72" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="63.881" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">0</text>
<text x="61.341" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">1</text>
<text x="58.801" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">2</text>
<text x="56.261" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">3</text>
<text x="53.721" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">4</text>
<text x="51.181" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">5</text>
<text x="48.641" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">6</text>
<text x="46.101" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">7</text>
<text x="42.291" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">8</text>
<text x="39.751" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">9</text>
<text x="37.211" y="46.482" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">10</text>
<text x="34.671" y="46.482" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">11</text>
<text x="32.131" y="46.482" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">12</text>
<text x="29.591" y="46.482" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">13</text>
<text x="68.961" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">14</text>
<text x="71.501" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">15</text>
<text x="74.041" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">16</text>
<text x="76.581" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">17</text>
<text x="79.121" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">18</text>
<text x="81.661" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">19</text>
<text x="84.201" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">20</text>
<text x="86.741" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">21</text>
<text x="89.6874" y="47.498" size="1.4224" layer="21" font="vector" ratio="15">22</text>
<text x="89.6874" y="44.958" size="1.4224" layer="21" font="vector" ratio="15">24</text>
<text x="89.6874" y="42.418" size="1.4224" layer="21" font="vector" ratio="15">26</text>
<text x="89.6874" y="39.878" size="1.4224" layer="21" font="vector" ratio="15">28</text>
<text x="89.6874" y="37.338" size="1.4224" layer="21" font="vector" ratio="15">30</text>
<text x="89.6874" y="34.798" size="1.4224" layer="21" font="vector" ratio="15">32</text>
<text x="89.6874" y="32.258" size="1.4224" layer="21" font="vector" ratio="15">34</text>
<text x="89.6874" y="29.718" size="1.4224" layer="21" font="vector" ratio="15">36</text>
<text x="89.6874" y="27.178" size="1.4224" layer="21" font="vector" ratio="15">38</text>
<text x="89.6874" y="24.638" size="1.4224" layer="21" font="vector" ratio="15">40</text>
<text x="89.6874" y="22.098" size="1.4224" layer="21" font="vector" ratio="15">42</text>
<text x="89.6874" y="19.558" size="1.4224" layer="21" font="vector" ratio="15">44</text>
<text x="89.6874" y="17.018" size="1.4224" layer="21" font="vector" ratio="15">46</text>
<text x="89.6874" y="11.938" size="1.4224" layer="21" font="vector" ratio="15">50</text>
<text x="89.6874" y="14.478" size="1.4224" layer="21" font="vector" ratio="15">48</text>
<text x="89.6874" y="9.398" size="1.4224" layer="21" font="vector" ratio="15">52</text>
<text x="98.425" y="37.3634" size="1.4224" layer="21" font="vector" ratio="15">31</text>
<text x="98.425" y="34.8234" size="1.4224" layer="21" font="vector" ratio="15">33</text>
<text x="98.425" y="32.2834" size="1.4224" layer="21" font="vector" ratio="15">35</text>
<text x="98.425" y="29.7434" size="1.4224" layer="21" font="vector" ratio="15">37</text>
<text x="98.425" y="27.2034" size="1.4224" layer="21" font="vector" ratio="15">39</text>
<text x="98.425" y="24.6634" size="1.4224" layer="21" font="vector" ratio="15">41</text>
<text x="98.425" y="22.1234" size="1.4224" layer="21" font="vector" ratio="15">43</text>
<text x="98.425" y="19.5834" size="1.4224" layer="21" font="vector" ratio="15">45</text>
<text x="98.425" y="17.0434" size="1.4224" layer="21" font="vector" ratio="15">47</text>
<text x="98.425" y="14.5034" size="1.4224" layer="21" font="vector" ratio="15">49</text>
<text x="98.425" y="11.9634" size="1.4224" layer="21" font="vector" ratio="15">51</text>
<text x="98.425" y="9.4234" size="1.4224" layer="21" font="vector" ratio="15">53</text>
<text x="51.562" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A0</text>
<text x="53.848" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A1</text>
<text x="56.642" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A2</text>
<text x="59.182" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A3</text>
<text x="61.722" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A4</text>
<text x="64.135" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A5</text>
<text x="66.675" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">6</text>
<text x="69.342" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A7</text>
<text x="74.422" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A8</text>
<text x="76.962" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A9</text>
<text x="79.502" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A10</text>
<text x="82.042" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A11</text>
<text x="84.582" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A12</text>
<text x="87.122" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A13</text>
<text x="89.662" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A14</text>
<text x="92.075" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A15</text>
<text x="51.054" y="8.128" size="1.524" layer="21" font="vector" ratio="15">ANALOG IN</text>
<text x="60.452" y="40.259" size="1.524" layer="21" font="vector" ratio="15">COMMUNICATION</text>
<text x="88.519" y="11.684" size="1.524" layer="21" font="vector" ratio="15" rot="R90">DIGITAL</text>
<text x="98.425" y="6.8834" size="1.016" layer="21" font="vector" ratio="15">GND</text>
<text x="61.341" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX0</text>
<text x="63.881" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX0</text>
<text x="29.21" y="43.815" size="1.524" layer="21" font="vector" ratio="15">PWM</text>
<text x="68.961" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX3</text>
<text x="71.501" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX3</text>
<text x="74.041" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX2</text>
<text x="76.581" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX2</text>
<text x="79.121" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX1</text>
<text x="81.661" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX1</text>
<text x="84.201" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">SDA</text>
<text x="86.741" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">SCL</text>
<text x="39.624" y="8.128" size="1.524" layer="21" font="vector" ratio="15">POWER</text>
<text x="33.528" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RESET</text>
<text x="36.068" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">3.3V</text>
<text x="38.608" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">5V</text>
<text x="41.148" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="43.688" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="46.228" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">Vin</text>
<text x="25.654" y="49.022" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">GND</text>
<text x="23.241" y="49.022" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">AREF</text>
<text x="91.44" y="52.07" size="0.889" layer="21" font="vector" ratio="15">5V</text>
<rectangle x1="88.646" y1="2.286" x2="89.154" y2="2.794" layer="51"/>
<rectangle x1="86.106" y1="2.286" x2="86.614" y2="2.794" layer="51"/>
<rectangle x1="83.566" y1="2.286" x2="84.074" y2="2.794" layer="51"/>
<rectangle x1="81.026" y1="2.286" x2="81.534" y2="2.794" layer="51"/>
<rectangle x1="78.486" y1="2.286" x2="78.994" y2="2.794" layer="51"/>
<rectangle x1="75.946" y1="2.286" x2="76.454" y2="2.794" layer="51"/>
<rectangle x1="73.406" y1="2.286" x2="73.914" y2="2.794" layer="51"/>
<rectangle x1="91.186" y1="2.286" x2="91.694" y2="2.794" layer="51"/>
<rectangle x1="83.566" y1="50.546" x2="84.074" y2="51.054" layer="51"/>
<rectangle x1="81.026" y1="50.546" x2="81.534" y2="51.054" layer="51"/>
<rectangle x1="78.486" y1="50.546" x2="78.994" y2="51.054" layer="51"/>
<rectangle x1="75.946" y1="50.546" x2="76.454" y2="51.054" layer="51"/>
<rectangle x1="73.406" y1="50.546" x2="73.914" y2="51.054" layer="51"/>
<rectangle x1="70.866" y1="50.546" x2="71.374" y2="51.054" layer="51"/>
<rectangle x1="68.326" y1="50.546" x2="68.834" y2="51.054" layer="51"/>
<rectangle x1="86.106" y1="50.546" x2="86.614" y2="51.054" layer="51"/>
<rectangle x1="65.786" y1="2.286" x2="66.294" y2="2.794" layer="51"/>
<rectangle x1="63.246" y1="2.286" x2="63.754" y2="2.794" layer="51"/>
<rectangle x1="60.706" y1="2.286" x2="61.214" y2="2.794" layer="51"/>
<rectangle x1="58.166" y1="2.286" x2="58.674" y2="2.794" layer="51"/>
<rectangle x1="55.626" y1="2.286" x2="56.134" y2="2.794" layer="51"/>
<rectangle x1="53.086" y1="2.286" x2="53.594" y2="2.794" layer="51"/>
<rectangle x1="50.546" y1="2.286" x2="51.054" y2="2.794" layer="51"/>
<rectangle x1="68.326" y1="2.286" x2="68.834" y2="2.794" layer="51"/>
<rectangle x1="60.706" y1="50.546" x2="61.214" y2="51.054" layer="51"/>
<rectangle x1="58.166" y1="50.546" x2="58.674" y2="51.054" layer="51"/>
<rectangle x1="55.626" y1="50.546" x2="56.134" y2="51.054" layer="51"/>
<rectangle x1="53.086" y1="50.546" x2="53.594" y2="51.054" layer="51"/>
<rectangle x1="50.546" y1="50.546" x2="51.054" y2="51.054" layer="51"/>
<rectangle x1="48.006" y1="50.546" x2="48.514" y2="51.054" layer="51"/>
<rectangle x1="45.466" y1="50.546" x2="45.974" y2="51.054" layer="51"/>
<rectangle x1="63.246" y1="50.546" x2="63.754" y2="51.054" layer="51"/>
<rectangle x1="38.862" y1="50.546" x2="39.37" y2="51.054" layer="51"/>
<rectangle x1="36.322" y1="50.546" x2="36.83" y2="51.054" layer="51"/>
<rectangle x1="33.782" y1="50.546" x2="34.29" y2="51.054" layer="51"/>
<rectangle x1="31.242" y1="50.546" x2="31.75" y2="51.054" layer="51"/>
<rectangle x1="28.702" y1="50.546" x2="29.21" y2="51.054" layer="51"/>
<rectangle x1="26.162" y1="50.546" x2="26.67" y2="51.054" layer="51"/>
<rectangle x1="23.622" y1="50.546" x2="24.13" y2="51.054" layer="51"/>
<rectangle x1="41.402" y1="50.546" x2="41.91" y2="51.054" layer="51"/>
<rectangle x1="63.373" y1="30.226" x2="63.881" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="65.913" y1="30.226" x2="66.421" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="65.913" y1="27.686" x2="66.421" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="63.373" y1="27.686" x2="63.881" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="65.913" y1="25.146" x2="66.421" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="63.373" y1="25.146" x2="63.881" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="96.266" y1="30.226" x2="96.774" y2="30.734" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="30.226" x2="94.234" y2="30.734" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="32.766" x2="94.234" y2="33.274" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="32.766" x2="96.774" y2="33.274" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="35.306" x2="94.234" y2="35.814" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="35.306" x2="96.774" y2="35.814" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="37.846" x2="94.234" y2="38.354" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="40.386" x2="94.234" y2="40.894" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="42.926" x2="94.234" y2="43.434" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="37.846" x2="96.774" y2="38.354" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="40.386" x2="96.774" y2="40.894" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="42.926" x2="96.774" y2="43.434" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="45.466" x2="94.234" y2="45.974" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="45.466" x2="96.774" y2="45.974" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="48.006" x2="94.234" y2="48.514" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="48.006" x2="96.774" y2="48.514" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="9.906" x2="96.774" y2="10.414" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="9.906" x2="94.234" y2="10.414" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="12.446" x2="94.234" y2="12.954" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="12.446" x2="96.774" y2="12.954" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="14.986" x2="94.234" y2="15.494" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="14.986" x2="96.774" y2="15.494" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="17.526" x2="94.234" y2="18.034" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="20.066" x2="94.234" y2="20.574" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="22.606" x2="94.234" y2="23.114" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="17.526" x2="96.774" y2="18.034" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="20.066" x2="96.774" y2="20.574" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="22.606" x2="96.774" y2="23.114" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="25.146" x2="94.234" y2="25.654" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="25.146" x2="96.774" y2="25.654" layer="51" rot="R90"/>
<rectangle x1="93.726" y1="27.686" x2="94.234" y2="28.194" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="27.686" x2="96.774" y2="28.194" layer="51" rot="R90"/>
<rectangle x1="96.266" y1="7.366" x2="96.774" y2="7.874" layer="51"/>
<rectangle x1="93.726" y1="7.366" x2="94.234" y2="7.874" layer="51"/>
<rectangle x1="96.266" y1="50.546" x2="96.774" y2="51.054" layer="51"/>
<rectangle x1="93.726" y1="50.546" x2="94.234" y2="51.054" layer="51"/>
<rectangle x1="45.466" y1="2.286" x2="45.974" y2="2.794" layer="51"/>
<rectangle x1="42.926" y1="2.286" x2="43.434" y2="2.794" layer="51"/>
<rectangle x1="40.386" y1="2.286" x2="40.894" y2="2.794" layer="51"/>
<rectangle x1="37.846" y1="2.286" x2="38.354" y2="2.794" layer="51"/>
<rectangle x1="35.306" y1="2.286" x2="35.814" y2="2.794" layer="51"/>
<rectangle x1="32.766" y1="2.286" x2="33.274" y2="2.794" layer="51"/>
<hole x="15.24" y="50.8" drill="3.2"/>
<hole x="13.97" y="2.54" drill="3.2"/>
<hole x="66.04" y="35.56" drill="3.2"/>
<hole x="66.04" y="7.62" drill="3.2"/>
<hole x="90.17" y="50.8" drill="3.2"/>
<hole x="96.52" y="2.54" drill="3.2"/>
</package>
<package name="ARDUINO_MEGA-PRO-3.3V">
<description>Arduino Mega Pro footprint</description>
<wire x1="1.27" y1="53.34" x2="85.09" y2="53.34" width="0.2032" layer="20"/>
<wire x1="85.09" y1="53.34" x2="87.63" y2="50.8" width="0.2032" layer="20"/>
<wire x1="87.63" y1="40.64" x2="90.17" y2="38.1" width="0.2032" layer="20"/>
<wire x1="90.17" y1="38.1" x2="90.17" y2="3.81" width="0.2032" layer="20"/>
<wire x1="90.17" y1="3.81" x2="87.63" y2="1.27" width="0.2032" layer="20"/>
<wire x1="87.63" y1="1.27" x2="87.63" y2="0" width="0.2032" layer="20"/>
<wire x1="87.63" y1="0" x2="1.27" y2="0" width="0.2032" layer="20"/>
<wire x1="1.27" y1="0" x2="0" y2="1.27" width="0.2032" layer="20"/>
<wire x1="0" y1="1.27" x2="0" y2="52.07" width="0.2032" layer="20"/>
<wire x1="0" y1="52.07" x2="1.27" y2="53.34" width="0.2032" layer="20"/>
<wire x1="87.63" y1="50.8" x2="87.63" y2="40.64" width="0.2032" layer="20"/>
<wire x1="76.835" y1="3.81" x2="78.105" y2="3.81" width="0.2032" layer="21"/>
<wire x1="78.105" y1="3.81" x2="78.74" y2="3.175" width="0.2032" layer="21"/>
<wire x1="78.74" y1="1.905" x2="78.105" y2="1.27" width="0.2032" layer="21"/>
<wire x1="73.66" y1="3.175" x2="74.295" y2="3.81" width="0.2032" layer="21"/>
<wire x1="74.295" y1="3.81" x2="75.565" y2="3.81" width="0.2032" layer="21"/>
<wire x1="75.565" y1="3.81" x2="76.2" y2="3.175" width="0.2032" layer="21"/>
<wire x1="76.2" y1="1.905" x2="75.565" y2="1.27" width="0.2032" layer="21"/>
<wire x1="75.565" y1="1.27" x2="74.295" y2="1.27" width="0.2032" layer="21"/>
<wire x1="74.295" y1="1.27" x2="73.66" y2="1.905" width="0.2032" layer="21"/>
<wire x1="76.835" y1="3.81" x2="76.2" y2="3.175" width="0.2032" layer="21"/>
<wire x1="76.2" y1="1.905" x2="76.835" y2="1.27" width="0.2032" layer="21"/>
<wire x1="78.105" y1="1.27" x2="76.835" y2="1.27" width="0.2032" layer="21"/>
<wire x1="69.215" y1="3.81" x2="70.485" y2="3.81" width="0.2032" layer="21"/>
<wire x1="70.485" y1="3.81" x2="71.12" y2="3.175" width="0.2032" layer="21"/>
<wire x1="71.12" y1="1.905" x2="70.485" y2="1.27" width="0.2032" layer="21"/>
<wire x1="71.12" y1="3.175" x2="71.755" y2="3.81" width="0.2032" layer="21"/>
<wire x1="71.755" y1="3.81" x2="73.025" y2="3.81" width="0.2032" layer="21"/>
<wire x1="73.025" y1="3.81" x2="73.66" y2="3.175" width="0.2032" layer="21"/>
<wire x1="73.66" y1="1.905" x2="73.025" y2="1.27" width="0.2032" layer="21"/>
<wire x1="73.025" y1="1.27" x2="71.755" y2="1.27" width="0.2032" layer="21"/>
<wire x1="71.755" y1="1.27" x2="71.12" y2="1.905" width="0.2032" layer="21"/>
<wire x1="66.04" y1="3.175" x2="66.675" y2="3.81" width="0.2032" layer="21"/>
<wire x1="66.675" y1="3.81" x2="67.945" y2="3.81" width="0.2032" layer="21"/>
<wire x1="67.945" y1="3.81" x2="68.58" y2="3.175" width="0.2032" layer="21"/>
<wire x1="68.58" y1="1.905" x2="67.945" y2="1.27" width="0.2032" layer="21"/>
<wire x1="67.945" y1="1.27" x2="66.675" y2="1.27" width="0.2032" layer="21"/>
<wire x1="66.675" y1="1.27" x2="66.04" y2="1.905" width="0.2032" layer="21"/>
<wire x1="69.215" y1="3.81" x2="68.58" y2="3.175" width="0.2032" layer="21"/>
<wire x1="68.58" y1="1.905" x2="69.215" y2="1.27" width="0.2032" layer="21"/>
<wire x1="70.485" y1="1.27" x2="69.215" y2="1.27" width="0.2032" layer="21"/>
<wire x1="61.595" y1="3.81" x2="62.865" y2="3.81" width="0.2032" layer="21"/>
<wire x1="62.865" y1="3.81" x2="63.5" y2="3.175" width="0.2032" layer="21"/>
<wire x1="63.5" y1="1.905" x2="62.865" y2="1.27" width="0.2032" layer="21"/>
<wire x1="63.5" y1="3.175" x2="64.135" y2="3.81" width="0.2032" layer="21"/>
<wire x1="64.135" y1="3.81" x2="65.405" y2="3.81" width="0.2032" layer="21"/>
<wire x1="65.405" y1="3.81" x2="66.04" y2="3.175" width="0.2032" layer="21"/>
<wire x1="66.04" y1="1.905" x2="65.405" y2="1.27" width="0.2032" layer="21"/>
<wire x1="65.405" y1="1.27" x2="64.135" y2="1.27" width="0.2032" layer="21"/>
<wire x1="64.135" y1="1.27" x2="63.5" y2="1.905" width="0.2032" layer="21"/>
<wire x1="60.96" y1="3.175" x2="60.96" y2="1.905" width="0.2032" layer="21"/>
<wire x1="61.595" y1="3.81" x2="60.96" y2="3.175" width="0.2032" layer="21"/>
<wire x1="60.96" y1="1.905" x2="61.595" y2="1.27" width="0.2032" layer="21"/>
<wire x1="62.865" y1="1.27" x2="61.595" y2="1.27" width="0.2032" layer="21"/>
<wire x1="79.375" y1="3.81" x2="80.645" y2="3.81" width="0.2032" layer="21"/>
<wire x1="80.645" y1="3.81" x2="81.28" y2="3.175" width="0.2032" layer="21"/>
<wire x1="81.28" y1="3.175" x2="81.28" y2="1.905" width="0.2032" layer="21"/>
<wire x1="81.28" y1="1.905" x2="80.645" y2="1.27" width="0.2032" layer="21"/>
<wire x1="79.375" y1="3.81" x2="78.74" y2="3.175" width="0.2032" layer="21"/>
<wire x1="78.74" y1="1.905" x2="79.375" y2="1.27" width="0.2032" layer="21"/>
<wire x1="80.645" y1="1.27" x2="79.375" y2="1.27" width="0.2032" layer="21"/>
<wire x1="71.755" y1="52.07" x2="73.025" y2="52.07" width="0.2032" layer="21"/>
<wire x1="73.025" y1="52.07" x2="73.66" y2="51.435" width="0.2032" layer="21"/>
<wire x1="73.66" y1="50.165" x2="73.025" y2="49.53" width="0.2032" layer="21"/>
<wire x1="68.58" y1="51.435" x2="69.215" y2="52.07" width="0.2032" layer="21"/>
<wire x1="69.215" y1="52.07" x2="70.485" y2="52.07" width="0.2032" layer="21"/>
<wire x1="70.485" y1="52.07" x2="71.12" y2="51.435" width="0.2032" layer="21"/>
<wire x1="71.12" y1="50.165" x2="70.485" y2="49.53" width="0.2032" layer="21"/>
<wire x1="70.485" y1="49.53" x2="69.215" y2="49.53" width="0.2032" layer="21"/>
<wire x1="69.215" y1="49.53" x2="68.58" y2="50.165" width="0.2032" layer="21"/>
<wire x1="71.755" y1="52.07" x2="71.12" y2="51.435" width="0.2032" layer="21"/>
<wire x1="71.12" y1="50.165" x2="71.755" y2="49.53" width="0.2032" layer="21"/>
<wire x1="73.025" y1="49.53" x2="71.755" y2="49.53" width="0.2032" layer="21"/>
<wire x1="64.135" y1="52.07" x2="65.405" y2="52.07" width="0.2032" layer="21"/>
<wire x1="65.405" y1="52.07" x2="66.04" y2="51.435" width="0.2032" layer="21"/>
<wire x1="66.04" y1="50.165" x2="65.405" y2="49.53" width="0.2032" layer="21"/>
<wire x1="66.04" y1="51.435" x2="66.675" y2="52.07" width="0.2032" layer="21"/>
<wire x1="66.675" y1="52.07" x2="67.945" y2="52.07" width="0.2032" layer="21"/>
<wire x1="67.945" y1="52.07" x2="68.58" y2="51.435" width="0.2032" layer="21"/>
<wire x1="68.58" y1="50.165" x2="67.945" y2="49.53" width="0.2032" layer="21"/>
<wire x1="67.945" y1="49.53" x2="66.675" y2="49.53" width="0.2032" layer="21"/>
<wire x1="66.675" y1="49.53" x2="66.04" y2="50.165" width="0.2032" layer="21"/>
<wire x1="60.96" y1="51.435" x2="61.595" y2="52.07" width="0.2032" layer="21"/>
<wire x1="61.595" y1="52.07" x2="62.865" y2="52.07" width="0.2032" layer="21"/>
<wire x1="62.865" y1="52.07" x2="63.5" y2="51.435" width="0.2032" layer="21"/>
<wire x1="63.5" y1="50.165" x2="62.865" y2="49.53" width="0.2032" layer="21"/>
<wire x1="62.865" y1="49.53" x2="61.595" y2="49.53" width="0.2032" layer="21"/>
<wire x1="61.595" y1="49.53" x2="60.96" y2="50.165" width="0.2032" layer="21"/>
<wire x1="64.135" y1="52.07" x2="63.5" y2="51.435" width="0.2032" layer="21"/>
<wire x1="63.5" y1="50.165" x2="64.135" y2="49.53" width="0.2032" layer="21"/>
<wire x1="65.405" y1="49.53" x2="64.135" y2="49.53" width="0.2032" layer="21"/>
<wire x1="56.515" y1="52.07" x2="57.785" y2="52.07" width="0.2032" layer="21"/>
<wire x1="57.785" y1="52.07" x2="58.42" y2="51.435" width="0.2032" layer="21"/>
<wire x1="58.42" y1="50.165" x2="57.785" y2="49.53" width="0.2032" layer="21"/>
<wire x1="58.42" y1="51.435" x2="59.055" y2="52.07" width="0.2032" layer="21"/>
<wire x1="59.055" y1="52.07" x2="60.325" y2="52.07" width="0.2032" layer="21"/>
<wire x1="60.325" y1="52.07" x2="60.96" y2="51.435" width="0.2032" layer="21"/>
<wire x1="60.96" y1="50.165" x2="60.325" y2="49.53" width="0.2032" layer="21"/>
<wire x1="60.325" y1="49.53" x2="59.055" y2="49.53" width="0.2032" layer="21"/>
<wire x1="59.055" y1="49.53" x2="58.42" y2="50.165" width="0.2032" layer="21"/>
<wire x1="55.88" y1="51.435" x2="55.88" y2="50.165" width="0.2032" layer="21"/>
<wire x1="56.515" y1="52.07" x2="55.88" y2="51.435" width="0.2032" layer="21"/>
<wire x1="55.88" y1="50.165" x2="56.515" y2="49.53" width="0.2032" layer="21"/>
<wire x1="57.785" y1="49.53" x2="56.515" y2="49.53" width="0.2032" layer="21"/>
<wire x1="74.295" y1="52.07" x2="75.565" y2="52.07" width="0.2032" layer="21"/>
<wire x1="75.565" y1="52.07" x2="76.2" y2="51.435" width="0.2032" layer="21"/>
<wire x1="76.2" y1="51.435" x2="76.2" y2="50.165" width="0.2032" layer="21"/>
<wire x1="76.2" y1="50.165" x2="75.565" y2="49.53" width="0.2032" layer="21"/>
<wire x1="74.295" y1="52.07" x2="73.66" y2="51.435" width="0.2032" layer="21"/>
<wire x1="73.66" y1="50.165" x2="74.295" y2="49.53" width="0.2032" layer="21"/>
<wire x1="75.565" y1="49.53" x2="74.295" y2="49.53" width="0.2032" layer="21"/>
<wire x1="53.975" y1="3.81" x2="55.245" y2="3.81" width="0.2032" layer="21"/>
<wire x1="55.245" y1="3.81" x2="55.88" y2="3.175" width="0.2032" layer="21"/>
<wire x1="55.88" y1="1.905" x2="55.245" y2="1.27" width="0.2032" layer="21"/>
<wire x1="50.8" y1="3.175" x2="51.435" y2="3.81" width="0.2032" layer="21"/>
<wire x1="51.435" y1="3.81" x2="52.705" y2="3.81" width="0.2032" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.34" y2="3.175" width="0.2032" layer="21"/>
<wire x1="53.34" y1="1.905" x2="52.705" y2="1.27" width="0.2032" layer="21"/>
<wire x1="52.705" y1="1.27" x2="51.435" y2="1.27" width="0.2032" layer="21"/>
<wire x1="51.435" y1="1.27" x2="50.8" y2="1.905" width="0.2032" layer="21"/>
<wire x1="53.975" y1="3.81" x2="53.34" y2="3.175" width="0.2032" layer="21"/>
<wire x1="53.34" y1="1.905" x2="53.975" y2="1.27" width="0.2032" layer="21"/>
<wire x1="55.245" y1="1.27" x2="53.975" y2="1.27" width="0.2032" layer="21"/>
<wire x1="46.355" y1="3.81" x2="47.625" y2="3.81" width="0.2032" layer="21"/>
<wire x1="47.625" y1="3.81" x2="48.26" y2="3.175" width="0.2032" layer="21"/>
<wire x1="48.26" y1="1.905" x2="47.625" y2="1.27" width="0.2032" layer="21"/>
<wire x1="48.26" y1="3.175" x2="48.895" y2="3.81" width="0.2032" layer="21"/>
<wire x1="48.895" y1="3.81" x2="50.165" y2="3.81" width="0.2032" layer="21"/>
<wire x1="50.165" y1="3.81" x2="50.8" y2="3.175" width="0.2032" layer="21"/>
<wire x1="50.8" y1="1.905" x2="50.165" y2="1.27" width="0.2032" layer="21"/>
<wire x1="50.165" y1="1.27" x2="48.895" y2="1.27" width="0.2032" layer="21"/>
<wire x1="48.895" y1="1.27" x2="48.26" y2="1.905" width="0.2032" layer="21"/>
<wire x1="43.18" y1="3.175" x2="43.815" y2="3.81" width="0.2032" layer="21"/>
<wire x1="43.815" y1="3.81" x2="45.085" y2="3.81" width="0.2032" layer="21"/>
<wire x1="45.085" y1="3.81" x2="45.72" y2="3.175" width="0.2032" layer="21"/>
<wire x1="45.72" y1="1.905" x2="45.085" y2="1.27" width="0.2032" layer="21"/>
<wire x1="45.085" y1="1.27" x2="43.815" y2="1.27" width="0.2032" layer="21"/>
<wire x1="43.815" y1="1.27" x2="43.18" y2="1.905" width="0.2032" layer="21"/>
<wire x1="46.355" y1="3.81" x2="45.72" y2="3.175" width="0.2032" layer="21"/>
<wire x1="45.72" y1="1.905" x2="46.355" y2="1.27" width="0.2032" layer="21"/>
<wire x1="47.625" y1="1.27" x2="46.355" y2="1.27" width="0.2032" layer="21"/>
<wire x1="38.735" y1="3.81" x2="40.005" y2="3.81" width="0.2032" layer="21"/>
<wire x1="40.005" y1="3.81" x2="40.64" y2="3.175" width="0.2032" layer="21"/>
<wire x1="40.64" y1="1.905" x2="40.005" y2="1.27" width="0.2032" layer="21"/>
<wire x1="40.64" y1="3.175" x2="41.275" y2="3.81" width="0.2032" layer="21"/>
<wire x1="41.275" y1="3.81" x2="42.545" y2="3.81" width="0.2032" layer="21"/>
<wire x1="42.545" y1="3.81" x2="43.18" y2="3.175" width="0.2032" layer="21"/>
<wire x1="43.18" y1="1.905" x2="42.545" y2="1.27" width="0.2032" layer="21"/>
<wire x1="42.545" y1="1.27" x2="41.275" y2="1.27" width="0.2032" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.64" y2="1.905" width="0.2032" layer="21"/>
<wire x1="38.1" y1="3.175" x2="38.1" y2="1.905" width="0.2032" layer="21"/>
<wire x1="38.735" y1="3.81" x2="38.1" y2="3.175" width="0.2032" layer="21"/>
<wire x1="38.1" y1="1.905" x2="38.735" y2="1.27" width="0.2032" layer="21"/>
<wire x1="40.005" y1="1.27" x2="38.735" y2="1.27" width="0.2032" layer="21"/>
<wire x1="56.515" y1="3.81" x2="57.785" y2="3.81" width="0.2032" layer="21"/>
<wire x1="57.785" y1="3.81" x2="58.42" y2="3.175" width="0.2032" layer="21"/>
<wire x1="58.42" y1="3.175" x2="58.42" y2="1.905" width="0.2032" layer="21"/>
<wire x1="58.42" y1="1.905" x2="57.785" y2="1.27" width="0.2032" layer="21"/>
<wire x1="56.515" y1="3.81" x2="55.88" y2="3.175" width="0.2032" layer="21"/>
<wire x1="55.88" y1="1.905" x2="56.515" y2="1.27" width="0.2032" layer="21"/>
<wire x1="57.785" y1="1.27" x2="56.515" y2="1.27" width="0.2032" layer="21"/>
<wire x1="48.895" y1="52.07" x2="50.165" y2="52.07" width="0.2032" layer="21"/>
<wire x1="50.165" y1="52.07" x2="50.8" y2="51.435" width="0.2032" layer="21"/>
<wire x1="50.8" y1="50.165" x2="50.165" y2="49.53" width="0.2032" layer="21"/>
<wire x1="45.72" y1="51.435" x2="46.355" y2="52.07" width="0.2032" layer="21"/>
<wire x1="46.355" y1="52.07" x2="47.625" y2="52.07" width="0.2032" layer="21"/>
<wire x1="47.625" y1="52.07" x2="48.26" y2="51.435" width="0.2032" layer="21"/>
<wire x1="48.26" y1="50.165" x2="47.625" y2="49.53" width="0.2032" layer="21"/>
<wire x1="47.625" y1="49.53" x2="46.355" y2="49.53" width="0.2032" layer="21"/>
<wire x1="46.355" y1="49.53" x2="45.72" y2="50.165" width="0.2032" layer="21"/>
<wire x1="48.895" y1="52.07" x2="48.26" y2="51.435" width="0.2032" layer="21"/>
<wire x1="48.26" y1="50.165" x2="48.895" y2="49.53" width="0.2032" layer="21"/>
<wire x1="50.165" y1="49.53" x2="48.895" y2="49.53" width="0.2032" layer="21"/>
<wire x1="41.275" y1="52.07" x2="42.545" y2="52.07" width="0.2032" layer="21"/>
<wire x1="42.545" y1="52.07" x2="43.18" y2="51.435" width="0.2032" layer="21"/>
<wire x1="43.18" y1="50.165" x2="42.545" y2="49.53" width="0.2032" layer="21"/>
<wire x1="43.18" y1="51.435" x2="43.815" y2="52.07" width="0.2032" layer="21"/>
<wire x1="43.815" y1="52.07" x2="45.085" y2="52.07" width="0.2032" layer="21"/>
<wire x1="45.085" y1="52.07" x2="45.72" y2="51.435" width="0.2032" layer="21"/>
<wire x1="45.72" y1="50.165" x2="45.085" y2="49.53" width="0.2032" layer="21"/>
<wire x1="45.085" y1="49.53" x2="43.815" y2="49.53" width="0.2032" layer="21"/>
<wire x1="43.815" y1="49.53" x2="43.18" y2="50.165" width="0.2032" layer="21"/>
<wire x1="38.1" y1="51.435" x2="38.735" y2="52.07" width="0.2032" layer="21"/>
<wire x1="38.735" y1="52.07" x2="40.005" y2="52.07" width="0.2032" layer="21"/>
<wire x1="40.005" y1="52.07" x2="40.64" y2="51.435" width="0.2032" layer="21"/>
<wire x1="40.64" y1="50.165" x2="40.005" y2="49.53" width="0.2032" layer="21"/>
<wire x1="40.005" y1="49.53" x2="38.735" y2="49.53" width="0.2032" layer="21"/>
<wire x1="38.735" y1="49.53" x2="38.1" y2="50.165" width="0.2032" layer="21"/>
<wire x1="41.275" y1="52.07" x2="40.64" y2="51.435" width="0.2032" layer="21"/>
<wire x1="40.64" y1="50.165" x2="41.275" y2="49.53" width="0.2032" layer="21"/>
<wire x1="42.545" y1="49.53" x2="41.275" y2="49.53" width="0.2032" layer="21"/>
<wire x1="33.655" y1="52.07" x2="34.925" y2="52.07" width="0.2032" layer="21"/>
<wire x1="34.925" y1="52.07" x2="35.56" y2="51.435" width="0.2032" layer="21"/>
<wire x1="35.56" y1="50.165" x2="34.925" y2="49.53" width="0.2032" layer="21"/>
<wire x1="35.56" y1="51.435" x2="36.195" y2="52.07" width="0.2032" layer="21"/>
<wire x1="36.195" y1="52.07" x2="37.465" y2="52.07" width="0.2032" layer="21"/>
<wire x1="37.465" y1="52.07" x2="38.1" y2="51.435" width="0.2032" layer="21"/>
<wire x1="38.1" y1="50.165" x2="37.465" y2="49.53" width="0.2032" layer="21"/>
<wire x1="37.465" y1="49.53" x2="36.195" y2="49.53" width="0.2032" layer="21"/>
<wire x1="36.195" y1="49.53" x2="35.56" y2="50.165" width="0.2032" layer="21"/>
<wire x1="33.02" y1="51.435" x2="33.02" y2="50.165" width="0.2032" layer="21"/>
<wire x1="33.655" y1="52.07" x2="33.02" y2="51.435" width="0.2032" layer="21"/>
<wire x1="33.02" y1="50.165" x2="33.655" y2="49.53" width="0.2032" layer="21"/>
<wire x1="34.925" y1="49.53" x2="33.655" y2="49.53" width="0.2032" layer="21"/>
<wire x1="51.435" y1="52.07" x2="52.705" y2="52.07" width="0.2032" layer="21"/>
<wire x1="52.705" y1="52.07" x2="53.34" y2="51.435" width="0.2032" layer="21"/>
<wire x1="53.34" y1="51.435" x2="53.34" y2="50.165" width="0.2032" layer="21"/>
<wire x1="53.34" y1="50.165" x2="52.705" y2="49.53" width="0.2032" layer="21"/>
<wire x1="51.435" y1="52.07" x2="50.8" y2="51.435" width="0.2032" layer="21"/>
<wire x1="50.8" y1="50.165" x2="51.435" y2="49.53" width="0.2032" layer="21"/>
<wire x1="52.705" y1="49.53" x2="51.435" y2="49.53" width="0.2032" layer="21"/>
<wire x1="27.051" y1="52.07" x2="28.321" y2="52.07" width="0.2032" layer="21"/>
<wire x1="28.321" y1="52.07" x2="28.956" y2="51.435" width="0.2032" layer="21"/>
<wire x1="28.956" y1="50.165" x2="28.321" y2="49.53" width="0.2032" layer="21"/>
<wire x1="23.876" y1="51.435" x2="24.511" y2="52.07" width="0.2032" layer="21"/>
<wire x1="24.511" y1="52.07" x2="25.781" y2="52.07" width="0.2032" layer="21"/>
<wire x1="25.781" y1="52.07" x2="26.416" y2="51.435" width="0.2032" layer="21"/>
<wire x1="26.416" y1="50.165" x2="25.781" y2="49.53" width="0.2032" layer="21"/>
<wire x1="25.781" y1="49.53" x2="24.511" y2="49.53" width="0.2032" layer="21"/>
<wire x1="24.511" y1="49.53" x2="23.876" y2="50.165" width="0.2032" layer="21"/>
<wire x1="27.051" y1="52.07" x2="26.416" y2="51.435" width="0.2032" layer="21"/>
<wire x1="26.416" y1="50.165" x2="27.051" y2="49.53" width="0.2032" layer="21"/>
<wire x1="28.321" y1="49.53" x2="27.051" y2="49.53" width="0.2032" layer="21"/>
<wire x1="19.431" y1="52.07" x2="20.701" y2="52.07" width="0.2032" layer="21"/>
<wire x1="20.701" y1="52.07" x2="21.336" y2="51.435" width="0.2032" layer="21"/>
<wire x1="21.336" y1="50.165" x2="20.701" y2="49.53" width="0.2032" layer="21"/>
<wire x1="21.336" y1="51.435" x2="21.971" y2="52.07" width="0.2032" layer="21"/>
<wire x1="21.971" y1="52.07" x2="23.241" y2="52.07" width="0.2032" layer="21"/>
<wire x1="23.241" y1="52.07" x2="23.876" y2="51.435" width="0.2032" layer="21"/>
<wire x1="23.876" y1="50.165" x2="23.241" y2="49.53" width="0.2032" layer="21"/>
<wire x1="23.241" y1="49.53" x2="21.971" y2="49.53" width="0.2032" layer="21"/>
<wire x1="21.971" y1="49.53" x2="21.336" y2="50.165" width="0.2032" layer="21"/>
<wire x1="16.256" y1="51.435" x2="16.891" y2="52.07" width="0.2032" layer="21"/>
<wire x1="16.891" y1="52.07" x2="18.161" y2="52.07" width="0.2032" layer="21"/>
<wire x1="18.161" y1="52.07" x2="18.796" y2="51.435" width="0.2032" layer="21"/>
<wire x1="18.796" y1="50.165" x2="18.161" y2="49.53" width="0.2032" layer="21"/>
<wire x1="18.161" y1="49.53" x2="16.891" y2="49.53" width="0.2032" layer="21"/>
<wire x1="16.891" y1="49.53" x2="16.256" y2="50.165" width="0.2032" layer="21"/>
<wire x1="19.431" y1="52.07" x2="18.796" y2="51.435" width="0.2032" layer="21"/>
<wire x1="18.796" y1="50.165" x2="19.431" y2="49.53" width="0.2032" layer="21"/>
<wire x1="20.701" y1="49.53" x2="19.431" y2="49.53" width="0.2032" layer="21"/>
<wire x1="11.811" y1="52.07" x2="13.081" y2="52.07" width="0.2032" layer="21"/>
<wire x1="13.081" y1="52.07" x2="13.716" y2="51.435" width="0.2032" layer="21"/>
<wire x1="13.716" y1="50.165" x2="13.081" y2="49.53" width="0.2032" layer="21"/>
<wire x1="13.716" y1="51.435" x2="14.351" y2="52.07" width="0.2032" layer="21"/>
<wire x1="14.351" y1="52.07" x2="15.621" y2="52.07" width="0.2032" layer="21"/>
<wire x1="15.621" y1="52.07" x2="16.256" y2="51.435" width="0.2032" layer="21"/>
<wire x1="16.256" y1="50.165" x2="15.621" y2="49.53" width="0.2032" layer="21"/>
<wire x1="15.621" y1="49.53" x2="14.351" y2="49.53" width="0.2032" layer="21"/>
<wire x1="14.351" y1="49.53" x2="13.716" y2="50.165" width="0.2032" layer="21"/>
<wire x1="11.176" y1="51.435" x2="11.176" y2="50.165" width="0.2032" layer="21"/>
<wire x1="11.811" y1="52.07" x2="11.176" y2="51.435" width="0.2032" layer="21"/>
<wire x1="11.176" y1="50.165" x2="11.811" y2="49.53" width="0.2032" layer="21"/>
<wire x1="13.081" y1="49.53" x2="11.811" y2="49.53" width="0.2032" layer="21"/>
<wire x1="29.591" y1="52.07" x2="30.861" y2="52.07" width="0.2032" layer="21"/>
<wire x1="30.861" y1="52.07" x2="31.496" y2="51.435" width="0.2032" layer="21"/>
<wire x1="31.496" y1="51.435" x2="31.496" y2="50.165" width="0.2032" layer="21"/>
<wire x1="31.496" y1="50.165" x2="30.861" y2="49.53" width="0.2032" layer="21"/>
<wire x1="29.591" y1="52.07" x2="28.956" y2="51.435" width="0.2032" layer="21"/>
<wire x1="28.956" y1="50.165" x2="29.591" y2="49.53" width="0.2032" layer="21"/>
<wire x1="30.861" y1="49.53" x2="29.591" y2="49.53" width="0.2032" layer="21"/>
<wire x1="51.562" y1="31.75" x2="50.927" y2="31.115" width="0.2032" layer="51"/>
<wire x1="50.927" y1="29.845" x2="51.562" y2="29.21" width="0.2032" layer="51"/>
<wire x1="51.562" y1="29.21" x2="50.927" y2="28.575" width="0.2032" layer="51"/>
<wire x1="50.927" y1="27.305" x2="51.562" y2="26.67" width="0.2032" layer="51"/>
<wire x1="51.562" y1="26.67" x2="50.927" y2="26.035" width="0.2032" layer="51"/>
<wire x1="50.927" y1="24.765" x2="51.562" y2="24.13" width="0.2032" layer="51"/>
<wire x1="51.562" y1="31.75" x2="55.372" y2="31.75" width="0.2032" layer="51"/>
<wire x1="55.372" y1="31.75" x2="56.007" y2="31.115" width="0.2032" layer="51"/>
<wire x1="56.007" y1="31.115" x2="56.007" y2="29.845" width="0.2032" layer="51"/>
<wire x1="56.007" y1="29.845" x2="55.372" y2="29.21" width="0.2032" layer="51"/>
<wire x1="55.372" y1="29.21" x2="56.007" y2="28.575" width="0.2032" layer="51"/>
<wire x1="56.007" y1="28.575" x2="56.007" y2="27.305" width="0.2032" layer="51"/>
<wire x1="56.007" y1="27.305" x2="55.372" y2="26.67" width="0.2032" layer="51"/>
<wire x1="55.372" y1="26.67" x2="56.007" y2="26.035" width="0.2032" layer="51"/>
<wire x1="56.007" y1="26.035" x2="56.007" y2="24.765" width="0.2032" layer="51"/>
<wire x1="56.007" y1="24.765" x2="55.372" y2="24.13" width="0.2032" layer="51"/>
<wire x1="55.372" y1="29.21" x2="51.562" y2="29.21" width="0.2032" layer="51"/>
<wire x1="55.372" y1="26.67" x2="51.562" y2="26.67" width="0.2032" layer="51"/>
<wire x1="55.372" y1="24.13" x2="51.562" y2="24.13" width="0.2032" layer="51"/>
<wire x1="50.927" y1="26.035" x2="50.927" y2="24.765" width="0.2032" layer="51"/>
<wire x1="50.927" y1="28.575" x2="50.927" y2="27.305" width="0.2032" layer="51"/>
<wire x1="50.927" y1="31.115" x2="50.927" y2="29.845" width="0.2032" layer="51"/>
<wire x1="50.592" y1="29.845" x2="50.592" y2="31.115" width="0.2032" layer="51"/>
<wire x1="85.725" y1="29.21" x2="86.36" y2="29.845" width="0.1524" layer="21"/>
<wire x1="86.36" y1="31.115" x2="85.725" y2="31.75" width="0.1524" layer="21"/>
<wire x1="85.725" y1="31.75" x2="86.36" y2="32.385" width="0.1524" layer="21"/>
<wire x1="86.36" y1="33.655" x2="85.725" y2="34.29" width="0.1524" layer="21"/>
<wire x1="85.725" y1="34.29" x2="86.36" y2="34.925" width="0.1524" layer="21"/>
<wire x1="86.36" y1="36.195" x2="85.725" y2="36.83" width="0.1524" layer="21"/>
<wire x1="85.725" y1="36.83" x2="86.36" y2="37.465" width="0.1524" layer="21"/>
<wire x1="86.36" y1="38.735" x2="85.725" y2="39.37" width="0.1524" layer="21"/>
<wire x1="85.725" y1="39.37" x2="86.36" y2="40.005" width="0.1524" layer="21"/>
<wire x1="86.36" y1="41.275" x2="85.725" y2="41.91" width="0.1524" layer="21"/>
<wire x1="85.725" y1="41.91" x2="86.36" y2="42.545" width="0.1524" layer="21"/>
<wire x1="86.36" y1="43.815" x2="85.725" y2="44.45" width="0.1524" layer="21"/>
<wire x1="81.915" y1="29.21" x2="81.28" y2="29.845" width="0.1524" layer="21"/>
<wire x1="81.28" y1="29.845" x2="81.28" y2="31.115" width="0.1524" layer="21"/>
<wire x1="81.28" y1="31.115" x2="81.915" y2="31.75" width="0.1524" layer="21"/>
<wire x1="81.915" y1="31.75" x2="81.28" y2="32.385" width="0.1524" layer="21"/>
<wire x1="81.28" y1="32.385" x2="81.28" y2="33.655" width="0.1524" layer="21"/>
<wire x1="81.28" y1="33.655" x2="81.915" y2="34.29" width="0.1524" layer="21"/>
<wire x1="81.915" y1="34.29" x2="81.28" y2="34.925" width="0.1524" layer="21"/>
<wire x1="81.28" y1="34.925" x2="81.28" y2="36.195" width="0.1524" layer="21"/>
<wire x1="81.28" y1="36.195" x2="81.915" y2="36.83" width="0.1524" layer="21"/>
<wire x1="81.915" y1="36.83" x2="81.28" y2="37.465" width="0.1524" layer="21"/>
<wire x1="81.28" y1="37.465" x2="81.28" y2="38.735" width="0.1524" layer="21"/>
<wire x1="81.28" y1="38.735" x2="81.915" y2="39.37" width="0.1524" layer="21"/>
<wire x1="81.915" y1="39.37" x2="81.28" y2="40.005" width="0.1524" layer="21"/>
<wire x1="81.28" y1="40.005" x2="81.28" y2="41.275" width="0.1524" layer="21"/>
<wire x1="81.28" y1="41.275" x2="81.915" y2="41.91" width="0.1524" layer="21"/>
<wire x1="81.915" y1="41.91" x2="81.28" y2="42.545" width="0.1524" layer="21"/>
<wire x1="81.28" y1="42.545" x2="81.28" y2="43.815" width="0.1524" layer="21"/>
<wire x1="81.28" y1="43.815" x2="81.915" y2="44.45" width="0.1524" layer="21"/>
<wire x1="81.915" y1="44.45" x2="81.28" y2="45.085" width="0.1524" layer="21"/>
<wire x1="81.28" y1="45.085" x2="81.28" y2="46.355" width="0.1524" layer="21"/>
<wire x1="81.28" y1="46.355" x2="81.915" y2="46.99" width="0.1524" layer="21"/>
<wire x1="81.915" y1="46.99" x2="81.28" y2="47.625" width="0.1524" layer="21"/>
<wire x1="81.28" y1="47.625" x2="81.28" y2="48.895" width="0.1524" layer="21"/>
<wire x1="81.28" y1="48.895" x2="81.915" y2="49.53" width="0.1524" layer="21"/>
<wire x1="85.725" y1="49.53" x2="86.36" y2="48.895" width="0.1524" layer="21"/>
<wire x1="85.725" y1="46.99" x2="86.36" y2="47.625" width="0.1524" layer="21"/>
<wire x1="85.725" y1="46.99" x2="86.36" y2="46.355" width="0.1524" layer="21"/>
<wire x1="85.725" y1="44.45" x2="86.36" y2="45.085" width="0.1524" layer="21"/>
<wire x1="81.915" y1="31.75" x2="85.725" y2="31.75" width="0.1524" layer="21"/>
<wire x1="81.915" y1="34.29" x2="85.725" y2="34.29" width="0.1524" layer="21"/>
<wire x1="81.915" y1="36.83" x2="85.725" y2="36.83" width="0.1524" layer="21"/>
<wire x1="81.915" y1="39.37" x2="85.725" y2="39.37" width="0.1524" layer="21"/>
<wire x1="81.915" y1="41.91" x2="85.725" y2="41.91" width="0.1524" layer="21"/>
<wire x1="81.915" y1="44.45" x2="85.725" y2="44.45" width="0.1524" layer="21"/>
<wire x1="81.915" y1="46.99" x2="85.725" y2="46.99" width="0.1524" layer="21"/>
<wire x1="86.36" y1="47.625" x2="86.36" y2="48.895" width="0.1524" layer="21"/>
<wire x1="86.36" y1="45.085" x2="86.36" y2="46.355" width="0.1524" layer="21"/>
<wire x1="86.36" y1="42.545" x2="86.36" y2="43.815" width="0.1524" layer="21"/>
<wire x1="86.36" y1="40.005" x2="86.36" y2="41.275" width="0.1524" layer="21"/>
<wire x1="86.36" y1="37.465" x2="86.36" y2="38.735" width="0.1524" layer="21"/>
<wire x1="86.36" y1="34.925" x2="86.36" y2="36.195" width="0.1524" layer="21"/>
<wire x1="86.36" y1="32.385" x2="86.36" y2="33.655" width="0.1524" layer="21"/>
<wire x1="86.36" y1="29.845" x2="86.36" y2="31.115" width="0.1524" layer="21"/>
<wire x1="85.725" y1="8.89" x2="86.36" y2="9.525" width="0.1524" layer="21"/>
<wire x1="86.36" y1="10.795" x2="85.725" y2="11.43" width="0.1524" layer="21"/>
<wire x1="85.725" y1="11.43" x2="86.36" y2="12.065" width="0.1524" layer="21"/>
<wire x1="86.36" y1="13.335" x2="85.725" y2="13.97" width="0.1524" layer="21"/>
<wire x1="85.725" y1="13.97" x2="86.36" y2="14.605" width="0.1524" layer="21"/>
<wire x1="86.36" y1="15.875" x2="85.725" y2="16.51" width="0.1524" layer="21"/>
<wire x1="85.725" y1="16.51" x2="86.36" y2="17.145" width="0.1524" layer="21"/>
<wire x1="86.36" y1="18.415" x2="85.725" y2="19.05" width="0.1524" layer="21"/>
<wire x1="85.725" y1="19.05" x2="86.36" y2="19.685" width="0.1524" layer="21"/>
<wire x1="86.36" y1="20.955" x2="85.725" y2="21.59" width="0.1524" layer="21"/>
<wire x1="85.725" y1="21.59" x2="86.36" y2="22.225" width="0.1524" layer="21"/>
<wire x1="86.36" y1="23.495" x2="85.725" y2="24.13" width="0.1524" layer="21"/>
<wire x1="81.915" y1="8.89" x2="81.28" y2="9.525" width="0.1524" layer="21"/>
<wire x1="81.28" y1="9.525" x2="81.28" y2="10.795" width="0.1524" layer="21"/>
<wire x1="81.28" y1="10.795" x2="81.915" y2="11.43" width="0.1524" layer="21"/>
<wire x1="81.915" y1="11.43" x2="81.28" y2="12.065" width="0.1524" layer="21"/>
<wire x1="81.28" y1="12.065" x2="81.28" y2="13.335" width="0.1524" layer="21"/>
<wire x1="81.28" y1="13.335" x2="81.915" y2="13.97" width="0.1524" layer="21"/>
<wire x1="81.915" y1="13.97" x2="81.28" y2="14.605" width="0.1524" layer="21"/>
<wire x1="81.28" y1="14.605" x2="81.28" y2="15.875" width="0.1524" layer="21"/>
<wire x1="81.28" y1="15.875" x2="81.915" y2="16.51" width="0.1524" layer="21"/>
<wire x1="81.915" y1="16.51" x2="81.28" y2="17.145" width="0.1524" layer="21"/>
<wire x1="81.28" y1="17.145" x2="81.28" y2="18.415" width="0.1524" layer="21"/>
<wire x1="81.28" y1="18.415" x2="81.915" y2="19.05" width="0.1524" layer="21"/>
<wire x1="81.915" y1="19.05" x2="81.28" y2="19.685" width="0.1524" layer="21"/>
<wire x1="81.28" y1="19.685" x2="81.28" y2="20.955" width="0.1524" layer="21"/>
<wire x1="81.28" y1="20.955" x2="81.915" y2="21.59" width="0.1524" layer="21"/>
<wire x1="81.915" y1="21.59" x2="81.28" y2="22.225" width="0.1524" layer="21"/>
<wire x1="81.28" y1="22.225" x2="81.28" y2="23.495" width="0.1524" layer="21"/>
<wire x1="81.28" y1="23.495" x2="81.915" y2="24.13" width="0.1524" layer="21"/>
<wire x1="81.915" y1="24.13" x2="81.28" y2="24.765" width="0.1524" layer="21"/>
<wire x1="81.28" y1="24.765" x2="81.28" y2="26.035" width="0.1524" layer="21"/>
<wire x1="81.28" y1="26.035" x2="81.915" y2="26.67" width="0.1524" layer="21"/>
<wire x1="81.915" y1="26.67" x2="81.28" y2="27.305" width="0.1524" layer="21"/>
<wire x1="81.28" y1="27.305" x2="81.28" y2="28.575" width="0.1524" layer="21"/>
<wire x1="81.28" y1="28.575" x2="81.915" y2="29.21" width="0.1524" layer="21"/>
<wire x1="85.725" y1="29.21" x2="86.36" y2="28.575" width="0.1524" layer="21"/>
<wire x1="85.725" y1="26.67" x2="86.36" y2="27.305" width="0.1524" layer="21"/>
<wire x1="85.725" y1="26.67" x2="86.36" y2="26.035" width="0.1524" layer="21"/>
<wire x1="85.725" y1="24.13" x2="86.36" y2="24.765" width="0.1524" layer="21"/>
<wire x1="81.915" y1="11.43" x2="85.725" y2="11.43" width="0.1524" layer="21"/>
<wire x1="81.915" y1="13.97" x2="85.725" y2="13.97" width="0.1524" layer="21"/>
<wire x1="81.915" y1="16.51" x2="85.725" y2="16.51" width="0.1524" layer="21"/>
<wire x1="81.915" y1="19.05" x2="85.725" y2="19.05" width="0.1524" layer="21"/>
<wire x1="81.915" y1="21.59" x2="85.725" y2="21.59" width="0.1524" layer="21"/>
<wire x1="81.915" y1="24.13" x2="85.725" y2="24.13" width="0.1524" layer="21"/>
<wire x1="81.915" y1="26.67" x2="85.725" y2="26.67" width="0.1524" layer="21"/>
<wire x1="81.915" y1="29.21" x2="85.725" y2="29.21" width="0.1524" layer="21"/>
<wire x1="86.36" y1="27.305" x2="86.36" y2="28.575" width="0.1524" layer="21"/>
<wire x1="86.36" y1="24.765" x2="86.36" y2="26.035" width="0.1524" layer="21"/>
<wire x1="86.36" y1="22.225" x2="86.36" y2="23.495" width="0.1524" layer="21"/>
<wire x1="86.36" y1="19.685" x2="86.36" y2="20.955" width="0.1524" layer="21"/>
<wire x1="86.36" y1="17.145" x2="86.36" y2="18.415" width="0.1524" layer="21"/>
<wire x1="86.36" y1="14.605" x2="86.36" y2="15.875" width="0.1524" layer="21"/>
<wire x1="86.36" y1="12.065" x2="86.36" y2="13.335" width="0.1524" layer="21"/>
<wire x1="86.36" y1="9.525" x2="86.36" y2="10.795" width="0.1524" layer="21"/>
<wire x1="85.725" y1="8.89" x2="86.36" y2="8.255" width="0.2032" layer="21"/>
<wire x1="86.36" y1="6.985" x2="85.725" y2="6.35" width="0.2032" layer="21"/>
<wire x1="81.28" y1="8.255" x2="81.28" y2="6.985" width="0.2032" layer="21"/>
<wire x1="81.915" y1="8.89" x2="81.28" y2="8.255" width="0.2032" layer="21"/>
<wire x1="81.28" y1="6.985" x2="81.915" y2="6.35" width="0.2032" layer="21"/>
<wire x1="86.36" y1="8.255" x2="86.36" y2="6.985" width="0.2032" layer="21"/>
<wire x1="81.915" y1="8.89" x2="85.725" y2="8.89" width="0.2032" layer="21"/>
<wire x1="85.725" y1="6.35" x2="81.915" y2="6.35" width="0.2032" layer="21"/>
<wire x1="85.725" y1="52.07" x2="86.36" y2="51.435" width="0.2032" layer="21"/>
<wire x1="86.36" y1="50.165" x2="85.725" y2="49.53" width="0.2032" layer="21"/>
<wire x1="81.28" y1="51.435" x2="81.28" y2="50.165" width="0.2032" layer="21"/>
<wire x1="81.915" y1="52.07" x2="81.28" y2="51.435" width="0.2032" layer="21"/>
<wire x1="81.28" y1="50.165" x2="81.915" y2="49.53" width="0.2032" layer="21"/>
<wire x1="86.36" y1="51.435" x2="86.36" y2="50.165" width="0.2032" layer="21"/>
<wire x1="81.915" y1="52.07" x2="85.725" y2="52.07" width="0.2032" layer="21"/>
<wire x1="85.725" y1="49.53" x2="81.915" y2="49.53" width="0.2032" layer="21"/>
<wire x1="48.006" y1="43.053" x2="16.637" y2="43.053" width="0.3048" layer="21"/>
<wire x1="48.514" y1="39.751" x2="74.041" y2="39.751" width="0.3048" layer="21"/>
<wire x1="74.8284" y1="39.5478" x2="74.8284" y2="11.43" width="0.3048" layer="21"/>
<wire x1="76.8604" y1="41.5798" x2="76.8604" y2="48.641" width="0.3048" layer="21"/>
<wire x1="82.55" y1="52.1462" x2="82.55" y2="52.7812" width="0.3048" layer="21"/>
<wire x1="82.55" y1="52.7812" x2="85.09" y2="52.7812" width="0.3048" layer="21"/>
<wire x1="85.09" y1="52.7812" x2="85.09" y2="52.1208" width="0.3048" layer="21"/>
<wire x1="82.55" y1="6.2738" x2="82.55" y2="5.5372" width="0.3048" layer="21"/>
<wire x1="82.55" y1="5.5372" x2="85.09" y2="5.5372" width="0.3048" layer="21"/>
<wire x1="85.09" y1="5.5372" x2="85.09" y2="6.2992" width="0.3048" layer="21"/>
<wire x1="74.803" y1="10.5664" x2="38.481" y2="10.5664" width="0.3048" layer="21"/>
<wire x1="74.803" y1="10.5664" x2="76.5048" y2="8.8646" width="0.3048" layer="21"/>
<wire x1="76.5048" y1="8.8646" x2="89.3826" y2="8.8646" width="0.3048" layer="21"/>
<wire x1="74.8284" y1="39.5478" x2="76.8604" y2="41.5798" width="0.3048" layer="21"/>
<wire x1="86.36" y1="6.35" x2="89.3572" y2="6.35" width="0.3048" layer="21"/>
<wire x1="49.403" y1="45.72" x2="49.403" y2="46.99" width="0.2032" layer="21"/>
<wire x1="48.895" y1="46.482" x2="49.403" y2="46.99" width="0.2032" layer="21"/>
<wire x1="49.403" y1="46.99" x2="49.911" y2="46.482" width="0.2032" layer="21"/>
<wire x1="51.943" y1="46.99" x2="51.943" y2="45.72" width="0.2032" layer="21"/>
<wire x1="52.451" y1="46.228" x2="51.943" y2="45.72" width="0.2032" layer="21"/>
<wire x1="51.943" y1="45.72" x2="51.435" y2="46.228" width="0.2032" layer="21"/>
<wire x1="35.179" y1="10.5664" x2="20.701" y2="10.5664" width="0.3048" layer="21"/>
<wire x1="33.02" y1="3.175" x2="33.655" y2="3.81" width="0.2032" layer="21"/>
<wire x1="33.655" y1="3.81" x2="34.925" y2="3.81" width="0.2032" layer="21"/>
<wire x1="34.925" y1="3.81" x2="35.56" y2="3.175" width="0.2032" layer="21"/>
<wire x1="35.56" y1="1.905" x2="34.925" y2="1.27" width="0.2032" layer="21"/>
<wire x1="34.925" y1="1.27" x2="33.655" y2="1.27" width="0.2032" layer="21"/>
<wire x1="33.655" y1="1.27" x2="33.02" y2="1.905" width="0.2032" layer="21"/>
<wire x1="28.575" y1="3.81" x2="29.845" y2="3.81" width="0.2032" layer="21"/>
<wire x1="29.845" y1="3.81" x2="30.48" y2="3.175" width="0.2032" layer="21"/>
<wire x1="30.48" y1="1.905" x2="29.845" y2="1.27" width="0.2032" layer="21"/>
<wire x1="30.48" y1="3.175" x2="31.115" y2="3.81" width="0.2032" layer="21"/>
<wire x1="31.115" y1="3.81" x2="32.385" y2="3.81" width="0.2032" layer="21"/>
<wire x1="32.385" y1="3.81" x2="33.02" y2="3.175" width="0.2032" layer="21"/>
<wire x1="33.02" y1="1.905" x2="32.385" y2="1.27" width="0.2032" layer="21"/>
<wire x1="32.385" y1="1.27" x2="31.115" y2="1.27" width="0.2032" layer="21"/>
<wire x1="31.115" y1="1.27" x2="30.48" y2="1.905" width="0.2032" layer="21"/>
<wire x1="25.4" y1="3.175" x2="26.035" y2="3.81" width="0.2032" layer="21"/>
<wire x1="26.035" y1="3.81" x2="27.305" y2="3.81" width="0.2032" layer="21"/>
<wire x1="27.305" y1="3.81" x2="27.94" y2="3.175" width="0.2032" layer="21"/>
<wire x1="27.94" y1="1.905" x2="27.305" y2="1.27" width="0.2032" layer="21"/>
<wire x1="27.305" y1="1.27" x2="26.035" y2="1.27" width="0.2032" layer="21"/>
<wire x1="26.035" y1="1.27" x2="25.4" y2="1.905" width="0.2032" layer="21"/>
<wire x1="28.575" y1="3.81" x2="27.94" y2="3.175" width="0.2032" layer="21"/>
<wire x1="27.94" y1="1.905" x2="28.575" y2="1.27" width="0.2032" layer="21"/>
<wire x1="29.845" y1="1.27" x2="28.575" y2="1.27" width="0.2032" layer="21"/>
<wire x1="20.955" y1="3.81" x2="22.225" y2="3.81" width="0.2032" layer="21"/>
<wire x1="22.225" y1="3.81" x2="22.86" y2="3.175" width="0.2032" layer="21"/>
<wire x1="22.86" y1="1.905" x2="22.225" y2="1.27" width="0.2032" layer="21"/>
<wire x1="22.86" y1="3.175" x2="23.495" y2="3.81" width="0.2032" layer="21"/>
<wire x1="23.495" y1="3.81" x2="24.765" y2="3.81" width="0.2032" layer="21"/>
<wire x1="24.765" y1="3.81" x2="25.4" y2="3.175" width="0.2032" layer="21"/>
<wire x1="25.4" y1="1.905" x2="24.765" y2="1.27" width="0.2032" layer="21"/>
<wire x1="24.765" y1="1.27" x2="23.495" y2="1.27" width="0.2032" layer="21"/>
<wire x1="23.495" y1="1.27" x2="22.86" y2="1.905" width="0.2032" layer="21"/>
<wire x1="20.32" y1="3.175" x2="20.32" y2="1.905" width="0.2032" layer="21"/>
<wire x1="20.955" y1="3.81" x2="20.32" y2="3.175" width="0.2032" layer="21"/>
<wire x1="20.32" y1="1.905" x2="20.955" y2="1.27" width="0.2032" layer="21"/>
<wire x1="22.225" y1="1.27" x2="20.955" y2="1.27" width="0.2032" layer="21"/>
<wire x1="35.56" y1="3.175" x2="35.56" y2="1.905" width="0.2032" layer="21"/>
<pad name="A9" x="64.77" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A10" x="67.31" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A11" x="69.85" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A12" x="72.39" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A13" x="74.93" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A14" x="77.47" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A15" x="80.01" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A8" x="62.23" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="15" x="59.69" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="16" x="62.23" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="17" x="64.77" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="18" x="67.31" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="19" x="69.85" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="20" x="72.39" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="21" x="74.93" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="14" x="57.15" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A1" x="41.91" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="44.45" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="46.99" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="49.53" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="52.07" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A6" x="54.61" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A7" x="57.15" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="39.37" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="6" x="36.83" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="39.37" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="41.91" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="44.45" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="46.99" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="1" x="49.53" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="0" x="52.07" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="7" x="34.29" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@4" x="14.986" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="13" x="17.526" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="12" x="20.066" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="11" x="22.606" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="10" x="25.146" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="9" x="27.686" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="8" x="30.226" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="12.446" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="37" x="85.09" y="30.48" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="36" x="82.55" y="30.48" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="35" x="85.09" y="33.02" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="34" x="82.55" y="33.02" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="33" x="85.09" y="35.56" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="32" x="82.55" y="35.56" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="31" x="85.09" y="38.1" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="30" x="82.55" y="38.1" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="29" x="85.09" y="40.64" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="28" x="82.55" y="40.64" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="27" x="85.09" y="43.18" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="26" x="82.55" y="43.18" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="25" x="85.09" y="45.72" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="24" x="82.55" y="45.72" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="23" x="85.09" y="48.26" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="22" x="82.55" y="48.26" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="53" x="85.09" y="10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="52" x="82.55" y="10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="51" x="85.09" y="12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="50" x="82.55" y="12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="49" x="85.09" y="15.24" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="48" x="82.55" y="15.24" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="47" x="85.09" y="17.78" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="46" x="82.55" y="17.78" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="45" x="85.09" y="20.32" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="44" x="82.55" y="20.32" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="43" x="85.09" y="22.86" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="42" x="82.55" y="22.86" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="41" x="85.09" y="25.4" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="40" x="82.55" y="25.4" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="39" x="85.09" y="27.94" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="38" x="82.55" y="27.94" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="GND@2" x="82.55" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@3" x="85.09" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@1" x="82.55" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@2" x="85.09" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RESET" x="21.59" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="24.13" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@0" x="26.67" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@0" x="29.21" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@1" x="31.75" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="34.29" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="52.451" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">0</text>
<text x="49.911" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">1</text>
<text x="47.371" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">2</text>
<text x="44.831" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">3</text>
<text x="42.291" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">4</text>
<text x="39.751" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">5</text>
<text x="37.211" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">6</text>
<text x="34.671" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">7</text>
<text x="30.861" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">8</text>
<text x="28.321" y="47.752" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">9</text>
<text x="25.781" y="46.482" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">10</text>
<text x="23.241" y="46.482" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">11</text>
<text x="20.701" y="46.482" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">12</text>
<text x="18.161" y="46.482" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">13</text>
<text x="57.531" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">14</text>
<text x="60.071" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">15</text>
<text x="62.611" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">16</text>
<text x="65.151" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">17</text>
<text x="67.691" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">18</text>
<text x="70.231" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">19</text>
<text x="72.771" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">20</text>
<text x="75.311" y="46.863" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">21</text>
<text x="78.2574" y="47.498" size="1.4224" layer="21" font="vector" ratio="15">22</text>
<text x="78.2574" y="44.958" size="1.4224" layer="21" font="vector" ratio="15">24</text>
<text x="78.2574" y="42.418" size="1.4224" layer="21" font="vector" ratio="15">26</text>
<text x="78.2574" y="39.878" size="1.4224" layer="21" font="vector" ratio="15">28</text>
<text x="78.2574" y="37.338" size="1.4224" layer="21" font="vector" ratio="15">30</text>
<text x="78.2574" y="34.798" size="1.4224" layer="21" font="vector" ratio="15">32</text>
<text x="78.2574" y="32.258" size="1.4224" layer="21" font="vector" ratio="15">34</text>
<text x="78.2574" y="29.718" size="1.4224" layer="21" font="vector" ratio="15">36</text>
<text x="78.2574" y="27.178" size="1.4224" layer="21" font="vector" ratio="15">38</text>
<text x="78.2574" y="24.638" size="1.4224" layer="21" font="vector" ratio="15">40</text>
<text x="78.2574" y="22.098" size="1.4224" layer="21" font="vector" ratio="15">42</text>
<text x="78.2574" y="19.558" size="1.4224" layer="21" font="vector" ratio="15">44</text>
<text x="78.2574" y="17.018" size="1.4224" layer="21" font="vector" ratio="15">46</text>
<text x="78.2574" y="11.938" size="1.4224" layer="21" font="vector" ratio="15">50</text>
<text x="78.2574" y="14.478" size="1.4224" layer="21" font="vector" ratio="15">48</text>
<text x="78.2574" y="9.398" size="1.4224" layer="21" font="vector" ratio="15">52</text>
<text x="86.995" y="37.3634" size="1.4224" layer="21" font="vector" ratio="15">31</text>
<text x="86.995" y="34.8234" size="1.4224" layer="21" font="vector" ratio="15">33</text>
<text x="86.995" y="32.2834" size="1.4224" layer="21" font="vector" ratio="15">35</text>
<text x="86.995" y="29.7434" size="1.4224" layer="21" font="vector" ratio="15">37</text>
<text x="86.995" y="27.2034" size="1.4224" layer="21" font="vector" ratio="15">39</text>
<text x="86.995" y="24.6634" size="1.4224" layer="21" font="vector" ratio="15">41</text>
<text x="86.995" y="22.1234" size="1.4224" layer="21" font="vector" ratio="15">43</text>
<text x="86.995" y="19.5834" size="1.4224" layer="21" font="vector" ratio="15">45</text>
<text x="86.995" y="17.0434" size="1.4224" layer="21" font="vector" ratio="15">47</text>
<text x="86.995" y="14.5034" size="1.4224" layer="21" font="vector" ratio="15">49</text>
<text x="86.995" y="11.9634" size="1.4224" layer="21" font="vector" ratio="15">51</text>
<text x="86.995" y="9.4234" size="1.4224" layer="21" font="vector" ratio="15">53</text>
<text x="40.132" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A0</text>
<text x="42.418" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A1</text>
<text x="45.212" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A2</text>
<text x="47.752" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A3</text>
<text x="50.292" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A4</text>
<text x="52.705" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A5</text>
<text x="55.245" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">6</text>
<text x="57.912" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A7</text>
<text x="62.992" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A8</text>
<text x="65.532" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A9</text>
<text x="68.072" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A10</text>
<text x="70.612" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A11</text>
<text x="73.152" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A12</text>
<text x="75.692" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A13</text>
<text x="78.232" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A14</text>
<text x="80.645" y="4.5974" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A15</text>
<text x="39.624" y="8.128" size="1.524" layer="21" font="vector" ratio="15">ANALOG IN</text>
<text x="49.022" y="40.259" size="1.524" layer="21" font="vector" ratio="15">COMMUNICATION</text>
<text x="77.089" y="11.684" size="1.524" layer="21" font="vector" ratio="15" rot="R90">DIGITAL</text>
<text x="86.995" y="6.8834" size="1.016" layer="21" font="vector" ratio="15">GND</text>
<text x="49.911" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX0</text>
<text x="52.451" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX0</text>
<text x="17.78" y="43.815" size="1.524" layer="21" font="vector" ratio="15">PWM</text>
<text x="57.531" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX3</text>
<text x="60.071" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX3</text>
<text x="62.611" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX2</text>
<text x="65.151" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX2</text>
<text x="67.691" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX1</text>
<text x="70.231" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX1</text>
<text x="72.771" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">SDA</text>
<text x="75.311" y="42.672" size="1.016" layer="21" font="vector" ratio="15" rot="R90">SCL</text>
<text x="28.194" y="8.128" size="1.524" layer="21" font="vector" ratio="15">POWER</text>
<text x="22.098" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RESET</text>
<text x="24.638" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">3.3V</text>
<text x="27.178" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">3.3V</text>
<text x="29.718" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="32.258" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="34.798" y="4.5974" size="1.016" layer="21" font="vector" ratio="15" rot="R90">Vin</text>
<text x="14.224" y="49.022" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">GND</text>
<text x="11.811" y="49.022" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">AREF</text>
<text x="80.01" y="52.07" size="0.889" layer="21" font="vector" ratio="15">3.3</text>
<rectangle x1="77.216" y1="2.286" x2="77.724" y2="2.794" layer="51"/>
<rectangle x1="74.676" y1="2.286" x2="75.184" y2="2.794" layer="51"/>
<rectangle x1="72.136" y1="2.286" x2="72.644" y2="2.794" layer="51"/>
<rectangle x1="69.596" y1="2.286" x2="70.104" y2="2.794" layer="51"/>
<rectangle x1="67.056" y1="2.286" x2="67.564" y2="2.794" layer="51"/>
<rectangle x1="64.516" y1="2.286" x2="65.024" y2="2.794" layer="51"/>
<rectangle x1="61.976" y1="2.286" x2="62.484" y2="2.794" layer="51"/>
<rectangle x1="79.756" y1="2.286" x2="80.264" y2="2.794" layer="51"/>
<rectangle x1="72.136" y1="50.546" x2="72.644" y2="51.054" layer="51"/>
<rectangle x1="69.596" y1="50.546" x2="70.104" y2="51.054" layer="51"/>
<rectangle x1="67.056" y1="50.546" x2="67.564" y2="51.054" layer="51"/>
<rectangle x1="64.516" y1="50.546" x2="65.024" y2="51.054" layer="51"/>
<rectangle x1="61.976" y1="50.546" x2="62.484" y2="51.054" layer="51"/>
<rectangle x1="59.436" y1="50.546" x2="59.944" y2="51.054" layer="51"/>
<rectangle x1="56.896" y1="50.546" x2="57.404" y2="51.054" layer="51"/>
<rectangle x1="74.676" y1="50.546" x2="75.184" y2="51.054" layer="51"/>
<rectangle x1="54.356" y1="2.286" x2="54.864" y2="2.794" layer="51"/>
<rectangle x1="51.816" y1="2.286" x2="52.324" y2="2.794" layer="51"/>
<rectangle x1="49.276" y1="2.286" x2="49.784" y2="2.794" layer="51"/>
<rectangle x1="46.736" y1="2.286" x2="47.244" y2="2.794" layer="51"/>
<rectangle x1="44.196" y1="2.286" x2="44.704" y2="2.794" layer="51"/>
<rectangle x1="41.656" y1="2.286" x2="42.164" y2="2.794" layer="51"/>
<rectangle x1="39.116" y1="2.286" x2="39.624" y2="2.794" layer="51"/>
<rectangle x1="56.896" y1="2.286" x2="57.404" y2="2.794" layer="51"/>
<rectangle x1="49.276" y1="50.546" x2="49.784" y2="51.054" layer="51"/>
<rectangle x1="46.736" y1="50.546" x2="47.244" y2="51.054" layer="51"/>
<rectangle x1="44.196" y1="50.546" x2="44.704" y2="51.054" layer="51"/>
<rectangle x1="41.656" y1="50.546" x2="42.164" y2="51.054" layer="51"/>
<rectangle x1="39.116" y1="50.546" x2="39.624" y2="51.054" layer="51"/>
<rectangle x1="36.576" y1="50.546" x2="37.084" y2="51.054" layer="51"/>
<rectangle x1="34.036" y1="50.546" x2="34.544" y2="51.054" layer="51"/>
<rectangle x1="51.816" y1="50.546" x2="52.324" y2="51.054" layer="51"/>
<rectangle x1="27.432" y1="50.546" x2="27.94" y2="51.054" layer="51"/>
<rectangle x1="24.892" y1="50.546" x2="25.4" y2="51.054" layer="51"/>
<rectangle x1="22.352" y1="50.546" x2="22.86" y2="51.054" layer="51"/>
<rectangle x1="19.812" y1="50.546" x2="20.32" y2="51.054" layer="51"/>
<rectangle x1="17.272" y1="50.546" x2="17.78" y2="51.054" layer="51"/>
<rectangle x1="14.732" y1="50.546" x2="15.24" y2="51.054" layer="51"/>
<rectangle x1="12.192" y1="50.546" x2="12.7" y2="51.054" layer="51"/>
<rectangle x1="29.972" y1="50.546" x2="30.48" y2="51.054" layer="51"/>
<rectangle x1="51.943" y1="30.226" x2="52.451" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="54.483" y1="30.226" x2="54.991" y2="30.734" layer="51" rot="R270"/>
<rectangle x1="54.483" y1="27.686" x2="54.991" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="51.943" y1="27.686" x2="52.451" y2="28.194" layer="51" rot="R270"/>
<rectangle x1="54.483" y1="25.146" x2="54.991" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="51.943" y1="25.146" x2="52.451" y2="25.654" layer="51" rot="R270"/>
<rectangle x1="84.836" y1="30.226" x2="85.344" y2="30.734" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="30.226" x2="82.804" y2="30.734" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="32.766" x2="82.804" y2="33.274" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="32.766" x2="85.344" y2="33.274" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="35.306" x2="82.804" y2="35.814" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="35.306" x2="85.344" y2="35.814" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="37.846" x2="82.804" y2="38.354" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="40.386" x2="82.804" y2="40.894" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="42.926" x2="82.804" y2="43.434" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="37.846" x2="85.344" y2="38.354" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="40.386" x2="85.344" y2="40.894" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="42.926" x2="85.344" y2="43.434" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="45.466" x2="82.804" y2="45.974" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="45.466" x2="85.344" y2="45.974" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="48.006" x2="82.804" y2="48.514" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="48.006" x2="85.344" y2="48.514" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="9.906" x2="85.344" y2="10.414" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="9.906" x2="82.804" y2="10.414" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="12.446" x2="82.804" y2="12.954" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="12.446" x2="85.344" y2="12.954" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="14.986" x2="82.804" y2="15.494" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="14.986" x2="85.344" y2="15.494" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="17.526" x2="82.804" y2="18.034" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="20.066" x2="82.804" y2="20.574" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="22.606" x2="82.804" y2="23.114" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="17.526" x2="85.344" y2="18.034" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="20.066" x2="85.344" y2="20.574" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="22.606" x2="85.344" y2="23.114" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="25.146" x2="82.804" y2="25.654" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="25.146" x2="85.344" y2="25.654" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="27.686" x2="82.804" y2="28.194" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="27.686" x2="85.344" y2="28.194" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="7.366" x2="85.344" y2="7.874" layer="51"/>
<rectangle x1="82.296" y1="7.366" x2="82.804" y2="7.874" layer="51"/>
<rectangle x1="84.836" y1="50.546" x2="85.344" y2="51.054" layer="51"/>
<rectangle x1="82.296" y1="50.546" x2="82.804" y2="51.054" layer="51"/>
<rectangle x1="34.036" y1="2.286" x2="34.544" y2="2.794" layer="51"/>
<rectangle x1="31.496" y1="2.286" x2="32.004" y2="2.794" layer="51"/>
<rectangle x1="28.956" y1="2.286" x2="29.464" y2="2.794" layer="51"/>
<rectangle x1="26.416" y1="2.286" x2="26.924" y2="2.794" layer="51"/>
<rectangle x1="23.876" y1="2.286" x2="24.384" y2="2.794" layer="51"/>
<rectangle x1="21.336" y1="2.286" x2="21.844" y2="2.794" layer="51"/>
<hole x="3.81" y="50.8" drill="3.2"/>
<hole x="2.54" y="2.54" drill="3.2"/>
<hole x="54.61" y="35.56" drill="3.2"/>
<hole x="54.61" y="7.62" drill="3.2"/>
<hole x="78.74" y="50.8" drill="3.2"/>
<hole x="85.09" y="2.54" drill="3.2"/>
</package>
<package name="ARDUINO_MEGA_SHIELD">
<wire x1="37.465" y1="-22.86" x2="38.735" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="38.735" y1="-22.86" x2="39.37" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="39.37" y1="-24.765" x2="38.735" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="34.29" y1="-23.495" x2="34.925" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="34.925" y1="-22.86" x2="36.195" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="36.195" y1="-22.86" x2="36.83" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="36.83" y1="-24.765" x2="36.195" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="36.195" y1="-25.4" x2="34.925" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="34.925" y1="-25.4" x2="34.29" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="37.465" y1="-22.86" x2="36.83" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="36.83" y1="-24.765" x2="37.465" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="38.735" y1="-25.4" x2="37.465" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="29.845" y1="-22.86" x2="31.115" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="31.115" y1="-22.86" x2="31.75" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="31.75" y1="-24.765" x2="31.115" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="31.75" y1="-23.495" x2="32.385" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="32.385" y1="-22.86" x2="33.655" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="33.655" y1="-22.86" x2="34.29" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="34.29" y1="-24.765" x2="33.655" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="33.655" y1="-25.4" x2="32.385" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="32.385" y1="-25.4" x2="31.75" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="26.67" y1="-23.495" x2="27.305" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="27.305" y1="-22.86" x2="28.575" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="28.575" y1="-22.86" x2="29.21" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="29.21" y1="-24.765" x2="28.575" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="28.575" y1="-25.4" x2="27.305" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="27.305" y1="-25.4" x2="26.67" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="29.845" y1="-22.86" x2="29.21" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="29.21" y1="-24.765" x2="29.845" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="31.115" y1="-25.4" x2="29.845" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="22.225" y1="-22.86" x2="23.495" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="23.495" y1="-22.86" x2="24.13" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="24.13" y1="-24.765" x2="23.495" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="24.13" y1="-23.495" x2="24.765" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="24.765" y1="-22.86" x2="26.035" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="26.035" y1="-22.86" x2="26.67" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="26.67" y1="-24.765" x2="26.035" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="26.035" y1="-25.4" x2="24.765" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="24.765" y1="-25.4" x2="24.13" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="21.59" y1="-23.495" x2="21.59" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="22.225" y1="-22.86" x2="21.59" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="21.59" y1="-24.765" x2="22.225" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="23.495" y1="-25.4" x2="22.225" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="40.005" y1="-22.86" x2="41.275" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="41.275" y1="-22.86" x2="41.91" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="41.91" y1="-23.495" x2="41.91" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="41.91" y1="-24.765" x2="41.275" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="40.005" y1="-22.86" x2="39.37" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="39.37" y1="-24.765" x2="40.005" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="41.275" y1="-25.4" x2="40.005" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="32.385" y1="25.4" x2="33.655" y2="25.4" width="0.2032" layer="21"/>
<wire x1="33.655" y1="25.4" x2="34.29" y2="24.765" width="0.2032" layer="21"/>
<wire x1="34.29" y1="23.495" x2="33.655" y2="22.86" width="0.2032" layer="21"/>
<wire x1="29.21" y1="24.765" x2="29.845" y2="25.4" width="0.2032" layer="21"/>
<wire x1="29.845" y1="25.4" x2="31.115" y2="25.4" width="0.2032" layer="21"/>
<wire x1="31.115" y1="25.4" x2="31.75" y2="24.765" width="0.2032" layer="21"/>
<wire x1="31.75" y1="23.495" x2="31.115" y2="22.86" width="0.2032" layer="21"/>
<wire x1="31.115" y1="22.86" x2="29.845" y2="22.86" width="0.2032" layer="21"/>
<wire x1="29.845" y1="22.86" x2="29.21" y2="23.495" width="0.2032" layer="21"/>
<wire x1="32.385" y1="25.4" x2="31.75" y2="24.765" width="0.2032" layer="21"/>
<wire x1="31.75" y1="23.495" x2="32.385" y2="22.86" width="0.2032" layer="21"/>
<wire x1="33.655" y1="22.86" x2="32.385" y2="22.86" width="0.2032" layer="21"/>
<wire x1="24.765" y1="25.4" x2="26.035" y2="25.4" width="0.2032" layer="21"/>
<wire x1="26.035" y1="25.4" x2="26.67" y2="24.765" width="0.2032" layer="21"/>
<wire x1="26.67" y1="23.495" x2="26.035" y2="22.86" width="0.2032" layer="21"/>
<wire x1="26.67" y1="24.765" x2="27.305" y2="25.4" width="0.2032" layer="21"/>
<wire x1="27.305" y1="25.4" x2="28.575" y2="25.4" width="0.2032" layer="21"/>
<wire x1="28.575" y1="25.4" x2="29.21" y2="24.765" width="0.2032" layer="21"/>
<wire x1="29.21" y1="23.495" x2="28.575" y2="22.86" width="0.2032" layer="21"/>
<wire x1="28.575" y1="22.86" x2="27.305" y2="22.86" width="0.2032" layer="21"/>
<wire x1="27.305" y1="22.86" x2="26.67" y2="23.495" width="0.2032" layer="21"/>
<wire x1="21.59" y1="24.765" x2="22.225" y2="25.4" width="0.2032" layer="21"/>
<wire x1="22.225" y1="25.4" x2="23.495" y2="25.4" width="0.2032" layer="21"/>
<wire x1="23.495" y1="25.4" x2="24.13" y2="24.765" width="0.2032" layer="21"/>
<wire x1="24.13" y1="23.495" x2="23.495" y2="22.86" width="0.2032" layer="21"/>
<wire x1="23.495" y1="22.86" x2="22.225" y2="22.86" width="0.2032" layer="21"/>
<wire x1="22.225" y1="22.86" x2="21.59" y2="23.495" width="0.2032" layer="21"/>
<wire x1="24.765" y1="25.4" x2="24.13" y2="24.765" width="0.2032" layer="21"/>
<wire x1="24.13" y1="23.495" x2="24.765" y2="22.86" width="0.2032" layer="21"/>
<wire x1="26.035" y1="22.86" x2="24.765" y2="22.86" width="0.2032" layer="21"/>
<wire x1="17.145" y1="25.4" x2="18.415" y2="25.4" width="0.2032" layer="21"/>
<wire x1="18.415" y1="25.4" x2="19.05" y2="24.765" width="0.2032" layer="21"/>
<wire x1="19.05" y1="23.495" x2="18.415" y2="22.86" width="0.2032" layer="21"/>
<wire x1="19.05" y1="24.765" x2="19.685" y2="25.4" width="0.2032" layer="21"/>
<wire x1="19.685" y1="25.4" x2="20.955" y2="25.4" width="0.2032" layer="21"/>
<wire x1="20.955" y1="25.4" x2="21.59" y2="24.765" width="0.2032" layer="21"/>
<wire x1="21.59" y1="23.495" x2="20.955" y2="22.86" width="0.2032" layer="21"/>
<wire x1="20.955" y1="22.86" x2="19.685" y2="22.86" width="0.2032" layer="21"/>
<wire x1="19.685" y1="22.86" x2="19.05" y2="23.495" width="0.2032" layer="21"/>
<wire x1="16.51" y1="24.765" x2="16.51" y2="23.495" width="0.2032" layer="21"/>
<wire x1="17.145" y1="25.4" x2="16.51" y2="24.765" width="0.2032" layer="21"/>
<wire x1="16.51" y1="23.495" x2="17.145" y2="22.86" width="0.2032" layer="21"/>
<wire x1="18.415" y1="22.86" x2="17.145" y2="22.86" width="0.2032" layer="21"/>
<wire x1="34.925" y1="25.4" x2="36.195" y2="25.4" width="0.2032" layer="21"/>
<wire x1="36.195" y1="25.4" x2="36.83" y2="24.765" width="0.2032" layer="21"/>
<wire x1="36.83" y1="24.765" x2="36.83" y2="23.495" width="0.2032" layer="21"/>
<wire x1="36.83" y1="23.495" x2="36.195" y2="22.86" width="0.2032" layer="21"/>
<wire x1="34.925" y1="25.4" x2="34.29" y2="24.765" width="0.2032" layer="21"/>
<wire x1="34.29" y1="23.495" x2="34.925" y2="22.86" width="0.2032" layer="21"/>
<wire x1="36.195" y1="22.86" x2="34.925" y2="22.86" width="0.2032" layer="21"/>
<wire x1="14.605" y1="-22.86" x2="15.875" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="15.875" y1="-22.86" x2="16.51" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="16.51" y1="-24.765" x2="15.875" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-23.495" x2="12.065" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="12.065" y1="-22.86" x2="13.335" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="13.335" y1="-22.86" x2="13.97" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="13.97" y1="-24.765" x2="13.335" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="13.335" y1="-25.4" x2="12.065" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="12.065" y1="-25.4" x2="11.43" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="14.605" y1="-22.86" x2="13.97" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="13.97" y1="-24.765" x2="14.605" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="15.875" y1="-25.4" x2="14.605" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="6.985" y1="-22.86" x2="8.255" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-22.86" x2="8.89" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-24.765" x2="8.255" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-23.495" x2="9.525" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="9.525" y1="-22.86" x2="10.795" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="10.795" y1="-22.86" x2="11.43" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-24.765" x2="10.795" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="10.795" y1="-25.4" x2="9.525" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="9.525" y1="-25.4" x2="8.89" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-23.495" x2="4.445" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-22.86" x2="5.715" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-22.86" x2="6.35" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-24.765" x2="5.715" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-25.4" x2="4.445" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-25.4" x2="3.81" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="6.985" y1="-22.86" x2="6.35" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-24.765" x2="6.985" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-25.4" x2="6.985" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-22.86" x2="0.635" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-22.86" x2="1.27" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-24.765" x2="0.635" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-23.495" x2="1.905" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-22.86" x2="3.175" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-22.86" x2="3.81" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-24.765" x2="3.175" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-25.4" x2="1.905" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-25.4" x2="1.27" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-23.495" x2="-1.27" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-22.86" x2="-1.27" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-24.765" x2="-0.635" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-25.4" x2="-0.635" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="17.145" y1="-22.86" x2="18.415" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="18.415" y1="-22.86" x2="19.05" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="19.05" y1="-23.495" x2="19.05" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="19.05" y1="-24.765" x2="18.415" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="17.145" y1="-22.86" x2="16.51" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="16.51" y1="-24.765" x2="17.145" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="18.415" y1="-25.4" x2="17.145" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="9.525" y1="25.4" x2="10.795" y2="25.4" width="0.2032" layer="21"/>
<wire x1="10.795" y1="25.4" x2="11.43" y2="24.765" width="0.2032" layer="21"/>
<wire x1="11.43" y1="23.495" x2="10.795" y2="22.86" width="0.2032" layer="21"/>
<wire x1="6.35" y1="24.765" x2="6.985" y2="25.4" width="0.2032" layer="21"/>
<wire x1="6.985" y1="25.4" x2="8.255" y2="25.4" width="0.2032" layer="21"/>
<wire x1="8.255" y1="25.4" x2="8.89" y2="24.765" width="0.2032" layer="21"/>
<wire x1="8.89" y1="23.495" x2="8.255" y2="22.86" width="0.2032" layer="21"/>
<wire x1="8.255" y1="22.86" x2="6.985" y2="22.86" width="0.2032" layer="21"/>
<wire x1="6.985" y1="22.86" x2="6.35" y2="23.495" width="0.2032" layer="21"/>
<wire x1="9.525" y1="25.4" x2="8.89" y2="24.765" width="0.2032" layer="21"/>
<wire x1="8.89" y1="23.495" x2="9.525" y2="22.86" width="0.2032" layer="21"/>
<wire x1="10.795" y1="22.86" x2="9.525" y2="22.86" width="0.2032" layer="21"/>
<wire x1="1.905" y1="25.4" x2="3.175" y2="25.4" width="0.2032" layer="21"/>
<wire x1="3.175" y1="25.4" x2="3.81" y2="24.765" width="0.2032" layer="21"/>
<wire x1="3.81" y1="23.495" x2="3.175" y2="22.86" width="0.2032" layer="21"/>
<wire x1="3.81" y1="24.765" x2="4.445" y2="25.4" width="0.2032" layer="21"/>
<wire x1="4.445" y1="25.4" x2="5.715" y2="25.4" width="0.2032" layer="21"/>
<wire x1="5.715" y1="25.4" x2="6.35" y2="24.765" width="0.2032" layer="21"/>
<wire x1="6.35" y1="23.495" x2="5.715" y2="22.86" width="0.2032" layer="21"/>
<wire x1="5.715" y1="22.86" x2="4.445" y2="22.86" width="0.2032" layer="21"/>
<wire x1="4.445" y1="22.86" x2="3.81" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="24.765" x2="-0.635" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="25.4" x2="0.635" y2="25.4" width="0.2032" layer="21"/>
<wire x1="0.635" y1="25.4" x2="1.27" y2="24.765" width="0.2032" layer="21"/>
<wire x1="1.27" y1="23.495" x2="0.635" y2="22.86" width="0.2032" layer="21"/>
<wire x1="0.635" y1="22.86" x2="-0.635" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="22.86" x2="-1.27" y2="23.495" width="0.2032" layer="21"/>
<wire x1="1.905" y1="25.4" x2="1.27" y2="24.765" width="0.2032" layer="21"/>
<wire x1="1.27" y1="23.495" x2="1.905" y2="22.86" width="0.2032" layer="21"/>
<wire x1="3.175" y1="22.86" x2="1.905" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-5.715" y1="25.4" x2="-4.445" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-4.445" y1="25.4" x2="-3.81" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-3.81" y1="23.495" x2="-4.445" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-3.81" y1="24.765" x2="-3.175" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-3.175" y1="25.4" x2="-1.905" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="25.4" x2="-1.27" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="23.495" x2="-1.905" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="22.86" x2="-3.175" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-3.175" y1="22.86" x2="-3.81" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-6.35" y1="24.765" x2="-6.35" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-5.715" y1="25.4" x2="-6.35" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-6.35" y1="23.495" x2="-5.715" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-4.445" y1="22.86" x2="-5.715" y2="22.86" width="0.2032" layer="21"/>
<wire x1="12.065" y1="25.4" x2="13.335" y2="25.4" width="0.2032" layer="21"/>
<wire x1="13.335" y1="25.4" x2="13.97" y2="24.765" width="0.2032" layer="21"/>
<wire x1="13.97" y1="24.765" x2="13.97" y2="23.495" width="0.2032" layer="21"/>
<wire x1="13.97" y1="23.495" x2="13.335" y2="22.86" width="0.2032" layer="21"/>
<wire x1="12.065" y1="25.4" x2="11.43" y2="24.765" width="0.2032" layer="21"/>
<wire x1="11.43" y1="23.495" x2="12.065" y2="22.86" width="0.2032" layer="21"/>
<wire x1="13.335" y1="22.86" x2="12.065" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-12.319" y1="25.4" x2="-11.049" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-11.049" y1="25.4" x2="-10.414" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-10.414" y1="23.495" x2="-11.049" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-15.494" y1="24.765" x2="-14.859" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-14.859" y1="25.4" x2="-13.589" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-13.589" y1="25.4" x2="-12.954" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-12.954" y1="23.495" x2="-13.589" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-13.589" y1="22.86" x2="-14.859" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-14.859" y1="22.86" x2="-15.494" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-12.319" y1="25.4" x2="-12.954" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-12.954" y1="23.495" x2="-12.319" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-11.049" y1="22.86" x2="-12.319" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-19.939" y1="25.4" x2="-18.669" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-18.669" y1="25.4" x2="-18.034" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-18.034" y1="23.495" x2="-18.669" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-18.034" y1="24.765" x2="-17.399" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-17.399" y1="25.4" x2="-16.129" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-16.129" y1="25.4" x2="-15.494" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-15.494" y1="23.495" x2="-16.129" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-16.129" y1="22.86" x2="-17.399" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-17.399" y1="22.86" x2="-18.034" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-23.114" y1="24.765" x2="-22.479" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-22.479" y1="25.4" x2="-21.209" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-21.209" y1="25.4" x2="-20.574" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-20.574" y1="23.495" x2="-21.209" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-21.209" y1="22.86" x2="-22.479" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-22.479" y1="22.86" x2="-23.114" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-19.939" y1="25.4" x2="-20.574" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-20.574" y1="23.495" x2="-19.939" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-18.669" y1="22.86" x2="-19.939" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-27.559" y1="25.4" x2="-26.289" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-26.289" y1="25.4" x2="-25.654" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-25.654" y1="23.495" x2="-26.289" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-25.654" y1="24.765" x2="-25.019" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-25.019" y1="25.4" x2="-23.749" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-23.749" y1="25.4" x2="-23.114" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-23.114" y1="23.495" x2="-23.749" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-23.749" y1="22.86" x2="-25.019" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-25.019" y1="22.86" x2="-25.654" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-28.194" y1="24.765" x2="-28.194" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-27.559" y1="25.4" x2="-28.194" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-28.194" y1="23.495" x2="-27.559" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-26.289" y1="22.86" x2="-27.559" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-9.779" y1="25.4" x2="-8.509" y2="25.4" width="0.2032" layer="21"/>
<wire x1="-8.509" y1="25.4" x2="-7.874" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-7.874" y1="24.765" x2="-7.874" y2="23.495" width="0.2032" layer="21"/>
<wire x1="-7.874" y1="23.495" x2="-8.509" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-9.779" y1="25.4" x2="-10.414" y2="24.765" width="0.2032" layer="21"/>
<wire x1="-10.414" y1="23.495" x2="-9.779" y2="22.86" width="0.2032" layer="21"/>
<wire x1="-8.509" y1="22.86" x2="-9.779" y2="22.86" width="0.2032" layer="21"/>
<wire x1="46.355" y1="2.54" x2="46.99" y2="3.175" width="0.1524" layer="21"/>
<wire x1="46.99" y1="4.445" x2="46.355" y2="5.08" width="0.1524" layer="21"/>
<wire x1="46.355" y1="5.08" x2="46.99" y2="5.715" width="0.1524" layer="21"/>
<wire x1="46.99" y1="6.985" x2="46.355" y2="7.62" width="0.1524" layer="21"/>
<wire x1="46.355" y1="7.62" x2="46.99" y2="8.255" width="0.1524" layer="21"/>
<wire x1="46.99" y1="9.525" x2="46.355" y2="10.16" width="0.1524" layer="21"/>
<wire x1="46.355" y1="10.16" x2="46.99" y2="10.795" width="0.1524" layer="21"/>
<wire x1="46.99" y1="12.065" x2="46.355" y2="12.7" width="0.1524" layer="21"/>
<wire x1="46.355" y1="12.7" x2="46.99" y2="13.335" width="0.1524" layer="21"/>
<wire x1="46.99" y1="14.605" x2="46.355" y2="15.24" width="0.1524" layer="21"/>
<wire x1="46.355" y1="15.24" x2="46.99" y2="15.875" width="0.1524" layer="21"/>
<wire x1="46.99" y1="17.145" x2="46.355" y2="17.78" width="0.1524" layer="21"/>
<wire x1="42.545" y1="2.54" x2="41.91" y2="3.175" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="41.91" y2="4.445" width="0.1524" layer="21"/>
<wire x1="41.91" y1="4.445" x2="42.545" y2="5.08" width="0.1524" layer="21"/>
<wire x1="42.545" y1="5.08" x2="41.91" y2="5.715" width="0.1524" layer="21"/>
<wire x1="41.91" y1="5.715" x2="41.91" y2="6.985" width="0.1524" layer="21"/>
<wire x1="41.91" y1="6.985" x2="42.545" y2="7.62" width="0.1524" layer="21"/>
<wire x1="42.545" y1="7.62" x2="41.91" y2="8.255" width="0.1524" layer="21"/>
<wire x1="41.91" y1="8.255" x2="41.91" y2="9.525" width="0.1524" layer="21"/>
<wire x1="41.91" y1="9.525" x2="42.545" y2="10.16" width="0.1524" layer="21"/>
<wire x1="42.545" y1="10.16" x2="41.91" y2="10.795" width="0.1524" layer="21"/>
<wire x1="41.91" y1="10.795" x2="41.91" y2="12.065" width="0.1524" layer="21"/>
<wire x1="41.91" y1="12.065" x2="42.545" y2="12.7" width="0.1524" layer="21"/>
<wire x1="42.545" y1="12.7" x2="41.91" y2="13.335" width="0.1524" layer="21"/>
<wire x1="41.91" y1="13.335" x2="41.91" y2="14.605" width="0.1524" layer="21"/>
<wire x1="41.91" y1="14.605" x2="42.545" y2="15.24" width="0.1524" layer="21"/>
<wire x1="42.545" y1="15.24" x2="41.91" y2="15.875" width="0.1524" layer="21"/>
<wire x1="41.91" y1="15.875" x2="41.91" y2="17.145" width="0.1524" layer="21"/>
<wire x1="41.91" y1="17.145" x2="42.545" y2="17.78" width="0.1524" layer="21"/>
<wire x1="42.545" y1="17.78" x2="41.91" y2="18.415" width="0.1524" layer="21"/>
<wire x1="41.91" y1="18.415" x2="41.91" y2="19.685" width="0.1524" layer="21"/>
<wire x1="41.91" y1="19.685" x2="42.545" y2="20.32" width="0.1524" layer="21"/>
<wire x1="42.545" y1="20.32" x2="41.91" y2="20.955" width="0.1524" layer="21"/>
<wire x1="41.91" y1="20.955" x2="41.91" y2="22.225" width="0.1524" layer="21"/>
<wire x1="41.91" y1="22.225" x2="42.545" y2="22.86" width="0.1524" layer="21"/>
<wire x1="46.355" y1="22.86" x2="46.99" y2="22.225" width="0.1524" layer="21"/>
<wire x1="46.355" y1="20.32" x2="46.99" y2="20.955" width="0.1524" layer="21"/>
<wire x1="46.355" y1="20.32" x2="46.99" y2="19.685" width="0.1524" layer="21"/>
<wire x1="46.355" y1="17.78" x2="46.99" y2="18.415" width="0.1524" layer="21"/>
<wire x1="42.545" y1="5.08" x2="46.355" y2="5.08" width="0.1524" layer="21"/>
<wire x1="42.545" y1="7.62" x2="46.355" y2="7.62" width="0.1524" layer="21"/>
<wire x1="42.545" y1="10.16" x2="46.355" y2="10.16" width="0.1524" layer="21"/>
<wire x1="42.545" y1="12.7" x2="46.355" y2="12.7" width="0.1524" layer="21"/>
<wire x1="42.545" y1="15.24" x2="46.355" y2="15.24" width="0.1524" layer="21"/>
<wire x1="42.545" y1="17.78" x2="46.355" y2="17.78" width="0.1524" layer="21"/>
<wire x1="42.545" y1="20.32" x2="46.355" y2="20.32" width="0.1524" layer="21"/>
<wire x1="46.99" y1="20.955" x2="46.99" y2="22.225" width="0.1524" layer="21"/>
<wire x1="46.99" y1="18.415" x2="46.99" y2="19.685" width="0.1524" layer="21"/>
<wire x1="46.99" y1="15.875" x2="46.99" y2="17.145" width="0.1524" layer="21"/>
<wire x1="46.99" y1="13.335" x2="46.99" y2="14.605" width="0.1524" layer="21"/>
<wire x1="46.99" y1="10.795" x2="46.99" y2="12.065" width="0.1524" layer="21"/>
<wire x1="46.99" y1="8.255" x2="46.99" y2="9.525" width="0.1524" layer="21"/>
<wire x1="46.99" y1="5.715" x2="46.99" y2="6.985" width="0.1524" layer="21"/>
<wire x1="46.99" y1="3.175" x2="46.99" y2="4.445" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-17.78" x2="46.99" y2="-17.145" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-15.875" x2="46.355" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-15.24" x2="46.99" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-13.335" x2="46.355" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-12.7" x2="46.99" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-10.795" x2="46.355" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-10.16" x2="46.99" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-8.255" x2="46.355" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-7.62" x2="46.99" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-5.715" x2="46.355" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-5.08" x2="46.99" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-3.175" x2="46.355" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-17.78" x2="41.91" y2="-17.145" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-17.145" x2="41.91" y2="-15.875" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-15.875" x2="42.545" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-15.24" x2="41.91" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-14.605" x2="41.91" y2="-13.335" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-13.335" x2="42.545" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-12.7" x2="41.91" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-12.065" x2="41.91" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-10.795" x2="42.545" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-10.16" x2="41.91" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-9.525" x2="41.91" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-8.255" x2="42.545" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-7.62" x2="41.91" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-6.985" x2="41.91" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-5.715" x2="42.545" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-5.08" x2="41.91" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-4.445" x2="41.91" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-3.175" x2="42.545" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-2.54" x2="41.91" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-1.905" x2="41.91" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="41.91" y1="-0.635" x2="42.545" y2="0" width="0.1524" layer="21"/>
<wire x1="42.545" y1="0" x2="41.91" y2="0.635" width="0.1524" layer="21"/>
<wire x1="41.91" y1="0.635" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="41.91" y1="1.905" x2="42.545" y2="2.54" width="0.1524" layer="21"/>
<wire x1="46.355" y1="2.54" x2="46.99" y2="1.905" width="0.1524" layer="21"/>
<wire x1="46.355" y1="0" x2="46.99" y2="0.635" width="0.1524" layer="21"/>
<wire x1="46.355" y1="0" x2="46.99" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-2.54" x2="46.99" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-15.24" x2="46.355" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-12.7" x2="46.355" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-10.16" x2="46.355" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-7.62" x2="46.355" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-5.08" x2="46.355" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="42.545" y1="-2.54" x2="46.355" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="42.545" y1="0" x2="46.355" y2="0" width="0.1524" layer="21"/>
<wire x1="42.545" y1="2.54" x2="46.355" y2="2.54" width="0.1524" layer="21"/>
<wire x1="46.99" y1="0.635" x2="46.99" y2="1.905" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-1.905" x2="46.99" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-4.445" x2="46.99" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-6.985" x2="46.99" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-9.525" x2="46.99" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-12.065" x2="46.99" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-14.605" x2="46.99" y2="-13.335" width="0.1524" layer="21"/>
<wire x1="46.99" y1="-17.145" x2="46.99" y2="-15.875" width="0.1524" layer="21"/>
<wire x1="46.355" y1="-17.78" x2="46.99" y2="-18.415" width="0.2032" layer="21"/>
<wire x1="46.99" y1="-19.685" x2="46.355" y2="-20.32" width="0.2032" layer="21"/>
<wire x1="41.91" y1="-18.415" x2="41.91" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="42.545" y1="-17.78" x2="41.91" y2="-18.415" width="0.2032" layer="21"/>
<wire x1="41.91" y1="-19.685" x2="42.545" y2="-20.32" width="0.2032" layer="21"/>
<wire x1="46.99" y1="-18.415" x2="46.99" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="42.545" y1="-17.78" x2="46.355" y2="-17.78" width="0.2032" layer="21"/>
<wire x1="46.355" y1="-20.32" x2="42.545" y2="-20.32" width="0.2032" layer="21"/>
<wire x1="46.355" y1="25.4" x2="46.99" y2="24.765" width="0.2032" layer="21"/>
<wire x1="46.99" y1="23.495" x2="46.355" y2="22.86" width="0.2032" layer="21"/>
<wire x1="41.91" y1="24.765" x2="41.91" y2="23.495" width="0.2032" layer="21"/>
<wire x1="42.545" y1="25.4" x2="41.91" y2="24.765" width="0.2032" layer="21"/>
<wire x1="41.91" y1="23.495" x2="42.545" y2="22.86" width="0.2032" layer="21"/>
<wire x1="46.99" y1="24.765" x2="46.99" y2="23.495" width="0.2032" layer="21"/>
<wire x1="42.545" y1="25.4" x2="46.355" y2="25.4" width="0.2032" layer="21"/>
<wire x1="46.355" y1="22.86" x2="42.545" y2="22.86" width="0.2032" layer="21"/>
<wire x1="43.18" y1="25.4762" x2="43.18" y2="26.1112" width="0.3048" layer="21"/>
<wire x1="43.18" y1="26.1112" x2="45.72" y2="26.1112" width="0.3048" layer="21"/>
<wire x1="45.72" y1="26.1112" x2="45.72" y2="25.4508" width="0.3048" layer="21"/>
<wire x1="43.18" y1="-20.3962" x2="43.18" y2="-21.1328" width="0.3048" layer="21"/>
<wire x1="43.18" y1="-21.1328" x2="45.72" y2="-21.1328" width="0.3048" layer="21"/>
<wire x1="45.72" y1="-21.1328" x2="45.72" y2="-20.3708" width="0.3048" layer="21"/>
<wire x1="10.033" y1="19.05" x2="10.033" y2="20.32" width="0.2032" layer="21"/>
<wire x1="9.525" y1="19.812" x2="10.033" y2="20.32" width="0.2032" layer="21"/>
<wire x1="10.033" y1="20.32" x2="10.541" y2="19.812" width="0.2032" layer="21"/>
<wire x1="12.573" y1="20.32" x2="12.573" y2="19.05" width="0.2032" layer="21"/>
<wire x1="13.081" y1="19.558" x2="12.573" y2="19.05" width="0.2032" layer="21"/>
<wire x1="12.573" y1="19.05" x2="12.065" y2="19.558" width="0.2032" layer="21"/>
<wire x1="-6.35" y1="-23.495" x2="-5.715" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-5.715" y1="-22.86" x2="-4.445" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-4.445" y1="-22.86" x2="-3.81" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-3.81" y1="-24.765" x2="-4.445" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-4.445" y1="-25.4" x2="-5.715" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-5.715" y1="-25.4" x2="-6.35" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="-10.795" y1="-22.86" x2="-9.525" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-9.525" y1="-22.86" x2="-8.89" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-8.89" y1="-24.765" x2="-9.525" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-8.89" y1="-23.495" x2="-8.255" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-8.255" y1="-22.86" x2="-6.985" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-6.985" y1="-22.86" x2="-6.35" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-6.35" y1="-24.765" x2="-6.985" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-6.985" y1="-25.4" x2="-8.255" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-8.255" y1="-25.4" x2="-8.89" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="-13.97" y1="-23.495" x2="-13.335" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-13.335" y1="-22.86" x2="-12.065" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-12.065" y1="-22.86" x2="-11.43" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-11.43" y1="-24.765" x2="-12.065" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-12.065" y1="-25.4" x2="-13.335" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-13.335" y1="-25.4" x2="-13.97" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="-10.795" y1="-22.86" x2="-11.43" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-11.43" y1="-24.765" x2="-10.795" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-9.525" y1="-25.4" x2="-10.795" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-18.415" y1="-22.86" x2="-17.145" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-17.145" y1="-22.86" x2="-16.51" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-16.51" y1="-24.765" x2="-17.145" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-16.51" y1="-23.495" x2="-15.875" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-15.875" y1="-22.86" x2="-14.605" y2="-22.86" width="0.2032" layer="21"/>
<wire x1="-14.605" y1="-22.86" x2="-13.97" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-13.97" y1="-24.765" x2="-14.605" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-14.605" y1="-25.4" x2="-15.875" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-15.875" y1="-25.4" x2="-16.51" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="-19.05" y1="-23.495" x2="-19.05" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="-18.415" y1="-22.86" x2="-19.05" y2="-23.495" width="0.2032" layer="21"/>
<wire x1="-19.05" y1="-24.765" x2="-18.415" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-17.145" y1="-25.4" x2="-18.415" y2="-25.4" width="0.2032" layer="21"/>
<wire x1="-3.81" y1="-23.495" x2="-3.81" y2="-24.765" width="0.2032" layer="21"/>
<wire x1="42.418" y1="26.1112" x2="43.18" y2="26.1112" width="0.3048" layer="21"/>
<pad name="A9" x="25.4" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A10" x="27.94" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A11" x="30.48" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A12" x="33.02" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A13" x="35.56" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A14" x="38.1" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A15" x="40.64" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A8" x="22.86" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="15" x="20.32" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="16" x="22.86" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="17" x="25.4" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="18" x="27.94" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="19" x="30.48" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="20" x="33.02" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="21" x="35.56" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="14" x="17.78" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A1" x="2.54" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="5.08" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="7.62" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="10.16" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="12.7" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A6" x="15.24" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A7" x="17.78" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="0" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="6" x="-2.54" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="0" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="2.54" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="7.62" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="1" x="10.16" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="0" x="12.7" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="7" x="-5.08" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@4" x="-24.384" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="13" x="-21.844" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="12" x="-19.304" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="11" x="-16.764" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="10" x="-14.224" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="9" x="-11.684" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="8" x="-9.144" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="-26.924" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="37" x="45.72" y="3.81" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="36" x="43.18" y="3.81" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="35" x="45.72" y="6.35" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="34" x="43.18" y="6.35" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="33" x="45.72" y="8.89" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="32" x="43.18" y="8.89" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="31" x="45.72" y="11.43" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="30" x="43.18" y="11.43" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="29" x="45.72" y="13.97" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="28" x="43.18" y="13.97" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="27" x="45.72" y="16.51" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="26" x="43.18" y="16.51" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="25" x="45.72" y="19.05" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="24" x="43.18" y="19.05" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="23" x="45.72" y="21.59" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="22" x="43.18" y="21.59" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="53" x="45.72" y="-16.51" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="52" x="43.18" y="-16.51" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="51" x="45.72" y="-13.97" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="50" x="43.18" y="-13.97" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="49" x="45.72" y="-11.43" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="48" x="43.18" y="-11.43" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="47" x="45.72" y="-8.89" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="46" x="43.18" y="-8.89" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="45" x="45.72" y="-6.35" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="44" x="43.18" y="-6.35" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="43" x="45.72" y="-3.81" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="42" x="43.18" y="-3.81" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="41" x="45.72" y="-1.27" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="40" x="43.18" y="-1.27" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="39" x="45.72" y="1.27" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="38" x="43.18" y="1.27" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="GND@2" x="43.18" y="-19.05" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@3" x="45.72" y="-19.05" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@1" x="43.18" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@2" x="45.72" y="24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RESET" x="-17.78" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="-15.24" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@0" x="-12.7" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@0" x="-10.16" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@1" x="-7.62" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="-5.08" y="-24.13" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="13.081" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">0</text>
<text x="10.541" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">1</text>
<text x="8.001" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">2</text>
<text x="5.461" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">3</text>
<text x="2.921" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">4</text>
<text x="0.381" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">5</text>
<text x="-2.159" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">6</text>
<text x="-4.699" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">7</text>
<text x="-8.509" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">8</text>
<text x="-11.049" y="21.082" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">9</text>
<text x="-13.589" y="19.812" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">10</text>
<text x="-16.129" y="19.812" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">11</text>
<text x="-18.669" y="19.812" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">12</text>
<text x="-21.209" y="19.812" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">13</text>
<text x="18.161" y="20.193" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">14</text>
<text x="20.701" y="20.193" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">15</text>
<text x="23.241" y="20.193" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">16</text>
<text x="25.781" y="20.193" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">17</text>
<text x="28.321" y="20.193" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">18</text>
<text x="30.861" y="20.193" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">19</text>
<text x="33.401" y="20.193" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">20</text>
<text x="35.941" y="20.193" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">21</text>
<text x="38.8874" y="20.828" size="1.4224" layer="21" font="vector" ratio="15">22</text>
<text x="38.8874" y="18.288" size="1.4224" layer="21" font="vector" ratio="15">24</text>
<text x="38.8874" y="15.748" size="1.4224" layer="21" font="vector" ratio="15">26</text>
<text x="38.8874" y="13.208" size="1.4224" layer="21" font="vector" ratio="15">28</text>
<text x="38.8874" y="10.668" size="1.4224" layer="21" font="vector" ratio="15">30</text>
<text x="38.8874" y="8.128" size="1.4224" layer="21" font="vector" ratio="15">32</text>
<text x="38.8874" y="5.588" size="1.4224" layer="21" font="vector" ratio="15">34</text>
<text x="38.8874" y="3.048" size="1.4224" layer="21" font="vector" ratio="15">36</text>
<text x="38.8874" y="0.508" size="1.4224" layer="21" font="vector" ratio="15">38</text>
<text x="38.8874" y="-2.032" size="1.4224" layer="21" font="vector" ratio="15">40</text>
<text x="38.8874" y="-4.572" size="1.4224" layer="21" font="vector" ratio="15">42</text>
<text x="38.8874" y="-7.112" size="1.4224" layer="21" font="vector" ratio="15">44</text>
<text x="38.8874" y="-9.652" size="1.4224" layer="21" font="vector" ratio="15">46</text>
<text x="38.8874" y="-14.732" size="1.4224" layer="21" font="vector" ratio="15">50</text>
<text x="38.8874" y="-12.192" size="1.4224" layer="21" font="vector" ratio="15">48</text>
<text x="38.8874" y="-17.272" size="1.4224" layer="21" font="vector" ratio="15">52</text>
<text x="47.625" y="10.6934" size="1.4224" layer="21" font="vector" ratio="15">31</text>
<text x="47.625" y="8.1534" size="1.4224" layer="21" font="vector" ratio="15">33</text>
<text x="47.625" y="5.6134" size="1.4224" layer="21" font="vector" ratio="15">35</text>
<text x="47.625" y="3.0734" size="1.4224" layer="21" font="vector" ratio="15">37</text>
<text x="47.625" y="0.5334" size="1.4224" layer="21" font="vector" ratio="15">39</text>
<text x="47.625" y="-2.0066" size="1.4224" layer="21" font="vector" ratio="15">41</text>
<text x="47.625" y="-4.5466" size="1.4224" layer="21" font="vector" ratio="15">43</text>
<text x="47.625" y="-7.0866" size="1.4224" layer="21" font="vector" ratio="15">45</text>
<text x="47.625" y="-9.6266" size="1.4224" layer="21" font="vector" ratio="15">47</text>
<text x="47.625" y="-12.1666" size="1.4224" layer="21" font="vector" ratio="15">49</text>
<text x="47.625" y="-14.7066" size="1.4224" layer="21" font="vector" ratio="15">51</text>
<text x="47.625" y="-17.2466" size="1.4224" layer="21" font="vector" ratio="15">53</text>
<text x="0.762" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A0</text>
<text x="3.048" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A1</text>
<text x="5.842" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A2</text>
<text x="8.382" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A3</text>
<text x="10.922" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A4</text>
<text x="13.335" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A5</text>
<text x="15.875" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">6</text>
<text x="18.542" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A7</text>
<text x="23.622" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A8</text>
<text x="26.162" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A9</text>
<text x="28.702" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A10</text>
<text x="31.242" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A11</text>
<text x="33.782" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A12</text>
<text x="36.322" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A13</text>
<text x="38.862" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A14</text>
<text x="41.275" y="-22.0726" size="1.4224" layer="21" font="vector" ratio="15" rot="R90">A15</text>
<text x="47.625" y="-19.7866" size="1.016" layer="21" font="vector" ratio="15">GND</text>
<text x="10.541" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX0</text>
<text x="13.081" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX0</text>
<text x="18.161" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX3</text>
<text x="20.701" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX3</text>
<text x="23.241" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX2</text>
<text x="25.781" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX2</text>
<text x="28.321" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">TX1</text>
<text x="30.861" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RX1</text>
<text x="33.401" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">SDA</text>
<text x="35.941" y="16.002" size="1.016" layer="21" font="vector" ratio="15" rot="R90">SCL</text>
<text x="-17.272" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">RESET</text>
<text x="-14.732" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">3.3V</text>
<text x="-12.192" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">5V</text>
<text x="-9.652" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="-7.112" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="-4.572" y="-22.0726" size="1.016" layer="21" font="vector" ratio="15" rot="R90">Vin</text>
<text x="-25.146" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">GND</text>
<text x="-27.559" y="22.352" size="1.4224" layer="21" font="vector" ratio="15" rot="R270">AREF</text>
<text x="40.64" y="25.4" size="0.889" layer="21" font="vector" ratio="15">5V</text>
<rectangle x1="37.846" y1="-24.384" x2="38.354" y2="-23.876" layer="51"/>
<rectangle x1="35.306" y1="-24.384" x2="35.814" y2="-23.876" layer="51"/>
<rectangle x1="32.766" y1="-24.384" x2="33.274" y2="-23.876" layer="51"/>
<rectangle x1="30.226" y1="-24.384" x2="30.734" y2="-23.876" layer="51"/>
<rectangle x1="27.686" y1="-24.384" x2="28.194" y2="-23.876" layer="51"/>
<rectangle x1="25.146" y1="-24.384" x2="25.654" y2="-23.876" layer="51"/>
<rectangle x1="22.606" y1="-24.384" x2="23.114" y2="-23.876" layer="51"/>
<rectangle x1="40.386" y1="-24.384" x2="40.894" y2="-23.876" layer="51"/>
<rectangle x1="32.766" y1="23.876" x2="33.274" y2="24.384" layer="51"/>
<rectangle x1="30.226" y1="23.876" x2="30.734" y2="24.384" layer="51"/>
<rectangle x1="27.686" y1="23.876" x2="28.194" y2="24.384" layer="51"/>
<rectangle x1="25.146" y1="23.876" x2="25.654" y2="24.384" layer="51"/>
<rectangle x1="22.606" y1="23.876" x2="23.114" y2="24.384" layer="51"/>
<rectangle x1="20.066" y1="23.876" x2="20.574" y2="24.384" layer="51"/>
<rectangle x1="17.526" y1="23.876" x2="18.034" y2="24.384" layer="51"/>
<rectangle x1="35.306" y1="23.876" x2="35.814" y2="24.384" layer="51"/>
<rectangle x1="14.986" y1="-24.384" x2="15.494" y2="-23.876" layer="51"/>
<rectangle x1="12.446" y1="-24.384" x2="12.954" y2="-23.876" layer="51"/>
<rectangle x1="9.906" y1="-24.384" x2="10.414" y2="-23.876" layer="51"/>
<rectangle x1="7.366" y1="-24.384" x2="7.874" y2="-23.876" layer="51"/>
<rectangle x1="4.826" y1="-24.384" x2="5.334" y2="-23.876" layer="51"/>
<rectangle x1="2.286" y1="-24.384" x2="2.794" y2="-23.876" layer="51"/>
<rectangle x1="-0.254" y1="-24.384" x2="0.254" y2="-23.876" layer="51"/>
<rectangle x1="17.526" y1="-24.384" x2="18.034" y2="-23.876" layer="51"/>
<rectangle x1="9.906" y1="23.876" x2="10.414" y2="24.384" layer="51"/>
<rectangle x1="7.366" y1="23.876" x2="7.874" y2="24.384" layer="51"/>
<rectangle x1="4.826" y1="23.876" x2="5.334" y2="24.384" layer="51"/>
<rectangle x1="2.286" y1="23.876" x2="2.794" y2="24.384" layer="51"/>
<rectangle x1="-0.254" y1="23.876" x2="0.254" y2="24.384" layer="51"/>
<rectangle x1="-2.794" y1="23.876" x2="-2.286" y2="24.384" layer="51"/>
<rectangle x1="-5.334" y1="23.876" x2="-4.826" y2="24.384" layer="51"/>
<rectangle x1="12.446" y1="23.876" x2="12.954" y2="24.384" layer="51"/>
<rectangle x1="-11.938" y1="23.876" x2="-11.43" y2="24.384" layer="51"/>
<rectangle x1="-14.478" y1="23.876" x2="-13.97" y2="24.384" layer="51"/>
<rectangle x1="-17.018" y1="23.876" x2="-16.51" y2="24.384" layer="51"/>
<rectangle x1="-19.558" y1="23.876" x2="-19.05" y2="24.384" layer="51"/>
<rectangle x1="-22.098" y1="23.876" x2="-21.59" y2="24.384" layer="51"/>
<rectangle x1="-24.638" y1="23.876" x2="-24.13" y2="24.384" layer="51"/>
<rectangle x1="-27.178" y1="23.876" x2="-26.67" y2="24.384" layer="51"/>
<rectangle x1="-9.398" y1="23.876" x2="-8.89" y2="24.384" layer="51"/>
<rectangle x1="45.466" y1="3.556" x2="45.974" y2="4.064" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="3.556" x2="43.434" y2="4.064" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="6.096" x2="43.434" y2="6.604" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="6.096" x2="45.974" y2="6.604" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="8.636" x2="43.434" y2="9.144" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="8.636" x2="45.974" y2="9.144" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="11.176" x2="43.434" y2="11.684" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="13.716" x2="43.434" y2="14.224" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="16.256" x2="43.434" y2="16.764" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="11.176" x2="45.974" y2="11.684" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="13.716" x2="45.974" y2="14.224" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="16.256" x2="45.974" y2="16.764" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="18.796" x2="43.434" y2="19.304" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="18.796" x2="45.974" y2="19.304" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="21.336" x2="43.434" y2="21.844" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="21.336" x2="45.974" y2="21.844" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="-16.764" x2="45.974" y2="-16.256" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="-16.764" x2="43.434" y2="-16.256" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="-14.224" x2="43.434" y2="-13.716" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="-14.224" x2="45.974" y2="-13.716" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="-11.684" x2="43.434" y2="-11.176" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="-11.684" x2="45.974" y2="-11.176" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="-9.144" x2="43.434" y2="-8.636" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="-6.604" x2="43.434" y2="-6.096" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="-4.064" x2="43.434" y2="-3.556" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="-9.144" x2="45.974" y2="-8.636" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="-6.604" x2="45.974" y2="-6.096" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="-4.064" x2="45.974" y2="-3.556" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="-1.524" x2="43.434" y2="-1.016" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="-1.524" x2="45.974" y2="-1.016" layer="51" rot="R90"/>
<rectangle x1="42.926" y1="1.016" x2="43.434" y2="1.524" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="1.016" x2="45.974" y2="1.524" layer="51" rot="R90"/>
<rectangle x1="45.466" y1="-19.304" x2="45.974" y2="-18.796" layer="51"/>
<rectangle x1="42.926" y1="-19.304" x2="43.434" y2="-18.796" layer="51"/>
<rectangle x1="45.466" y1="23.876" x2="45.974" y2="24.384" layer="51"/>
<rectangle x1="42.926" y1="23.876" x2="43.434" y2="24.384" layer="51"/>
<rectangle x1="-5.334" y1="-24.384" x2="-4.826" y2="-23.876" layer="51"/>
<rectangle x1="-7.874" y1="-24.384" x2="-7.366" y2="-23.876" layer="51"/>
<rectangle x1="-10.414" y1="-24.384" x2="-9.906" y2="-23.876" layer="51"/>
<rectangle x1="-12.954" y1="-24.384" x2="-12.446" y2="-23.876" layer="51"/>
<rectangle x1="-15.494" y1="-24.384" x2="-14.986" y2="-23.876" layer="51"/>
<rectangle x1="-18.034" y1="-24.384" x2="-17.526" y2="-23.876" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="ARDUINO-MEGA">
<wire x1="-15.24" y1="-53.34" x2="15.24" y2="-53.34" width="0.254" layer="94"/>
<wire x1="15.24" y1="-53.34" x2="15.24" y2="53.34" width="0.254" layer="94"/>
<wire x1="15.24" y1="53.34" x2="-15.24" y2="53.34" width="0.254" layer="94"/>
<wire x1="-15.24" y1="53.34" x2="-15.24" y2="-53.34" width="0.254" layer="94"/>
<text x="-15.24" y="54.102" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-55.88" size="1.778" layer="96">&gt;VALUE</text>
<pin name="5V@0" x="-20.32" y="48.26" length="middle"/>
<pin name="RESET" x="-20.32" y="35.56" length="middle"/>
<pin name="5V@1" x="-20.32" y="45.72" length="middle"/>
<pin name="A0(RX0)" x="-20.32" y="33.02" length="middle"/>
<pin name="A1(TX0)" x="-20.32" y="30.48" length="middle"/>
<pin name="A2" x="-20.32" y="27.94" length="middle"/>
<pin name="A3" x="-20.32" y="25.4" length="middle"/>
<pin name="A4" x="-20.32" y="22.86" length="middle"/>
<pin name="A5" x="-20.32" y="20.32" length="middle"/>
<pin name="A6" x="-20.32" y="17.78" length="middle"/>
<pin name="A7" x="-20.32" y="15.24" length="middle"/>
<pin name="A8" x="-20.32" y="12.7" length="middle"/>
<pin name="A9" x="-20.32" y="10.16" length="middle"/>
<pin name="A10" x="-20.32" y="7.62" length="middle"/>
<pin name="A11" x="-20.32" y="5.08" length="middle"/>
<pin name="A12" x="-20.32" y="2.54" length="middle"/>
<pin name="A13" x="-20.32" y="0" length="middle"/>
<pin name="A14" x="-20.32" y="-2.54" length="middle"/>
<pin name="A15" x="-20.32" y="-5.08" length="middle"/>
<pin name="1(TX0)" x="-20.32" y="-10.16" length="middle"/>
<pin name="2" x="-20.32" y="-12.7" length="middle"/>
<pin name="3" x="-20.32" y="-15.24" length="middle"/>
<pin name="4" x="-20.32" y="-17.78" length="middle"/>
<pin name="5" x="-20.32" y="-20.32" length="middle"/>
<pin name="6" x="-20.32" y="-22.86" length="middle"/>
<pin name="7" x="-20.32" y="-25.4" length="middle"/>
<pin name="8" x="-20.32" y="-27.94" length="middle"/>
<pin name="9" x="-20.32" y="-30.48" length="middle"/>
<pin name="10" x="-20.32" y="-33.02" length="middle"/>
<pin name="GND@4" x="-20.32" y="-50.8" length="middle"/>
<pin name="16(TX2)" x="20.32" y="43.18" length="middle" rot="R180"/>
<pin name="17(RX2)" x="20.32" y="40.64" length="middle" rot="R180"/>
<pin name="18(TX1)" x="20.32" y="38.1" length="middle" rot="R180"/>
<pin name="22" x="20.32" y="27.94" length="middle" rot="R180"/>
<pin name="23" x="20.32" y="25.4" length="middle" rot="R180"/>
<pin name="24" x="20.32" y="22.86" length="middle" rot="R180"/>
<pin name="25" x="20.32" y="20.32" length="middle" rot="R180"/>
<pin name="26" x="20.32" y="17.78" length="middle" rot="R180"/>
<pin name="27" x="20.32" y="15.24" length="middle" rot="R180"/>
<pin name="28" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="29" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="30" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="31" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="32" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="33" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="34" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="35" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="36" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="37" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="38" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="40" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="39" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="41" x="20.32" y="-20.32" length="middle" rot="R180"/>
<pin name="42" x="20.32" y="-22.86" length="middle" rot="R180"/>
<pin name="43" x="20.32" y="-25.4" length="middle" rot="R180"/>
<pin name="44" x="20.32" y="-27.94" length="middle" rot="R180"/>
<pin name="45" x="20.32" y="-30.48" length="middle" rot="R180"/>
<pin name="46" x="20.32" y="-33.02" length="middle" rot="R180"/>
<pin name="47" x="20.32" y="-35.56" length="middle" rot="R180"/>
<pin name="48" x="20.32" y="-38.1" length="middle" rot="R180"/>
<pin name="11" x="-20.32" y="-35.56" length="middle"/>
<pin name="12" x="-20.32" y="-38.1" length="middle"/>
<pin name="13" x="20.32" y="50.8" length="middle" rot="R180"/>
<pin name="15(RX3)" x="20.32" y="45.72" length="middle" rot="R180"/>
<pin name="14(TX3)" x="20.32" y="48.26" length="middle" rot="R180"/>
<pin name="GND@0" x="-20.32" y="-40.64" length="middle"/>
<pin name="GND@1" x="-20.32" y="-43.18" length="middle"/>
<pin name="GND@2" x="-20.32" y="-45.72" length="middle"/>
<pin name="GND@3" x="-20.32" y="-48.26" length="middle"/>
<pin name="53" x="20.32" y="-50.8" length="middle" rot="R180"/>
<pin name="52" x="20.32" y="-48.26" length="middle" rot="R180"/>
<pin name="51" x="20.32" y="-45.72" length="middle" rot="R180"/>
<pin name="50" x="20.32" y="-43.18" length="middle" rot="R180"/>
<pin name="49" x="20.32" y="-40.64" length="middle" rot="R180"/>
<pin name="5V@2" x="-20.32" y="43.18" length="middle"/>
<pin name="3.3V" x="-20.32" y="40.64" length="middle"/>
<pin name="AREF" x="-20.32" y="38.1" length="middle"/>
<pin name="21(SCL)" x="20.32" y="30.48" length="middle" rot="R180"/>
<pin name="20(SDA)" x="20.32" y="33.02" length="middle" rot="R180"/>
<pin name="19(RX1)" x="20.32" y="35.56" length="middle" rot="R180"/>
<pin name="VIN" x="-20.32" y="50.8" length="middle"/>
<pin name="0(RX0)" x="-20.32" y="-7.62" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO-MEGA" prefix="U">
<description>Arduino Mega board footprint</description>
<gates>
<gate name="G$1" symbol="ARDUINO-MEGA" x="0" y="0"/>
</gates>
<devices>
<device name="FULL" package="ARDUINO_MEGA">
<connects>
<connect gate="G$1" pin="0(RX0)" pad="0"/>
<connect gate="G$1" pin="1(TX0)" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14(TX3)" pad="14"/>
<connect gate="G$1" pin="15(RX3)" pad="15"/>
<connect gate="G$1" pin="16(TX2)" pad="16"/>
<connect gate="G$1" pin="17(RX2)" pad="17"/>
<connect gate="G$1" pin="18(TX1)" pad="18"/>
<connect gate="G$1" pin="19(RX1)" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20(SDA)" pad="20"/>
<connect gate="G$1" pin="21(SCL)" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="41" pad="41"/>
<connect gate="G$1" pin="42" pad="42"/>
<connect gate="G$1" pin="43" pad="43"/>
<connect gate="G$1" pin="44" pad="44"/>
<connect gate="G$1" pin="45" pad="45"/>
<connect gate="G$1" pin="46" pad="46"/>
<connect gate="G$1" pin="47" pad="47"/>
<connect gate="G$1" pin="48" pad="48"/>
<connect gate="G$1" pin="49" pad="49"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="50" pad="50"/>
<connect gate="G$1" pin="51" pad="51"/>
<connect gate="G$1" pin="52" pad="52"/>
<connect gate="G$1" pin="53" pad="53"/>
<connect gate="G$1" pin="5V@0" pad="5V@0"/>
<connect gate="G$1" pin="5V@1" pad="5V@1"/>
<connect gate="G$1" pin="5V@2" pad="5V@2"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A0(RX0)" pad="A0"/>
<connect gate="G$1" pin="A1(TX0)" pad="A1"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A11" pad="A11"/>
<connect gate="G$1" pin="A12" pad="A12"/>
<connect gate="G$1" pin="A13" pad="A13"/>
<connect gate="G$1" pin="A14" pad="A14"/>
<connect gate="G$1" pin="A15" pad="A15"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="A9" pad="A9"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="GND@0" pad="GND@0"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="GND@3" pad="GND@3"/>
<connect gate="G$1" pin="GND@4" pad="GND@4"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PRO" package="ARDUINO_MEGA-PRO-3.3V">
<connects>
<connect gate="G$1" pin="0(RX0)" pad="0"/>
<connect gate="G$1" pin="1(TX0)" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14(TX3)" pad="14"/>
<connect gate="G$1" pin="15(RX3)" pad="15"/>
<connect gate="G$1" pin="16(TX2)" pad="16"/>
<connect gate="G$1" pin="17(RX2)" pad="17"/>
<connect gate="G$1" pin="18(TX1)" pad="18"/>
<connect gate="G$1" pin="19(RX1)" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20(SDA)" pad="20"/>
<connect gate="G$1" pin="21(SCL)" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="41" pad="41"/>
<connect gate="G$1" pin="42" pad="42"/>
<connect gate="G$1" pin="43" pad="43"/>
<connect gate="G$1" pin="44" pad="44"/>
<connect gate="G$1" pin="45" pad="45"/>
<connect gate="G$1" pin="46" pad="46"/>
<connect gate="G$1" pin="47" pad="47"/>
<connect gate="G$1" pin="48" pad="48"/>
<connect gate="G$1" pin="49" pad="49"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="50" pad="50"/>
<connect gate="G$1" pin="51" pad="51"/>
<connect gate="G$1" pin="52" pad="52"/>
<connect gate="G$1" pin="53" pad="53"/>
<connect gate="G$1" pin="5V@0" pad="5V@0"/>
<connect gate="G$1" pin="5V@1" pad="5V@1"/>
<connect gate="G$1" pin="5V@2" pad="5V@2"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A0(RX0)" pad="A0"/>
<connect gate="G$1" pin="A1(TX0)" pad="A1"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A11" pad="A11"/>
<connect gate="G$1" pin="A12" pad="A12"/>
<connect gate="G$1" pin="A13" pad="A13"/>
<connect gate="G$1" pin="A14" pad="A14"/>
<connect gate="G$1" pin="A15" pad="A15"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="A9" pad="A9"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="GND@0" pad="GND@0"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="GND@3" pad="GND@3"/>
<connect gate="G$1" pin="GND@4" pad="GND@4"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SHIELD" package="ARDUINO_MEGA_SHIELD">
<connects>
<connect gate="G$1" pin="0(RX0)" pad="0"/>
<connect gate="G$1" pin="1(TX0)" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14(TX3)" pad="14"/>
<connect gate="G$1" pin="15(RX3)" pad="15"/>
<connect gate="G$1" pin="16(TX2)" pad="16"/>
<connect gate="G$1" pin="17(RX2)" pad="17"/>
<connect gate="G$1" pin="18(TX1)" pad="18"/>
<connect gate="G$1" pin="19(RX1)" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20(SDA)" pad="20"/>
<connect gate="G$1" pin="21(SCL)" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="41" pad="41"/>
<connect gate="G$1" pin="42" pad="42"/>
<connect gate="G$1" pin="43" pad="43"/>
<connect gate="G$1" pin="44" pad="44"/>
<connect gate="G$1" pin="45" pad="45"/>
<connect gate="G$1" pin="46" pad="46"/>
<connect gate="G$1" pin="47" pad="47"/>
<connect gate="G$1" pin="48" pad="48"/>
<connect gate="G$1" pin="49" pad="49"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="50" pad="50"/>
<connect gate="G$1" pin="51" pad="51"/>
<connect gate="G$1" pin="52" pad="52"/>
<connect gate="G$1" pin="53" pad="53"/>
<connect gate="G$1" pin="5V@0" pad="5V@0"/>
<connect gate="G$1" pin="5V@1" pad="5V@1"/>
<connect gate="G$1" pin="5V@2" pad="5V@2"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A0(RX0)" pad="A0"/>
<connect gate="G$1" pin="A1(TX0)" pad="A1"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A11" pad="A11"/>
<connect gate="G$1" pin="A12" pad="A12"/>
<connect gate="G$1" pin="A13" pad="A13"/>
<connect gate="G$1" pin="A14" pad="A14"/>
<connect gate="G$1" pin="A15" pad="A15"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="A9" pad="A9"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="GND@0" pad="GND@0"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="GND@3" pad="GND@3"/>
<connect gate="G$1" pin="GND@4" pad="GND@4"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
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
<package name="1X03">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.8862" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="1X03/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-4.445" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.715" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD3">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X3" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X03">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X03/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="card_adapters">
<description>&lt;H1&gt;Card Adapters&lt;/H1&gt;&lt;br&gt;
MMC&lt;br&gt;
SD&lt;br&gt;
CF&lt;br&gt;</description>
<packages>
<package name="SDCMF-109XXW010">
<description>&lt;H1&gt;KingFont&lt;/h1&gt;&lt;br&gt;
SD-CARD Connector Type C&lt;br&gt;
SDCMF-109XXW010</description>
<wire x1="-13.25" y1="0" x2="11.05" y2="0" width="0.127" layer="21"/>
<wire x1="-13.25" y1="0" x2="-13.25" y2="-25" width="0.127" layer="21"/>
<wire x1="11.05" y1="0" x2="11.05" y2="-5" width="0.127" layer="21"/>
<wire x1="-13.25" y1="-25" x2="13.25" y2="-25" width="0.127" layer="21"/>
<wire x1="13.25" y1="-25" x2="13.25" y2="-7.39" width="0.127" layer="21"/>
<wire x1="11.05" y1="-5" x2="13.25" y2="-7.39" width="0.127" layer="21"/>
<wire x1="-13" y1="-25" x2="-12.5" y2="-25" width="0.127" layer="51"/>
<wire x1="-12.5" y1="-25" x2="-12.5" y2="-35" width="0.127" layer="51"/>
<wire x1="-12.5" y1="-35" x2="12.5" y2="-35" width="0.127" layer="51"/>
<wire x1="12.5" y1="-35" x2="12.5" y2="-25" width="0.127" layer="51"/>
<wire x1="-11" y1="-25" x2="-11" y2="-20.5" width="0.127" layer="51"/>
<wire x1="11" y1="-25" x2="11" y2="-20.5" width="0.127" layer="51"/>
<wire x1="-11" y1="-20.5" x2="-8.5" y2="-20.5" width="0.127" layer="51"/>
<wire x1="11" y1="-20.5" x2="8.5" y2="-20.5" width="0.127" layer="51"/>
<wire x1="-6" y1="-14" x2="6" y2="-14" width="0.127" layer="51"/>
<wire x1="-6" y1="-14" x2="-8.5" y2="-20.5" width="0.127" layer="51"/>
<wire x1="6" y1="-14" x2="8.5" y2="-20.5" width="0.127" layer="51"/>
<smd name="P9" x="9.375" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P1" x="6.875" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P2" x="4.375" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P3" x="1.875" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P4" x="-0.625" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P5" x="-3.125" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P6" x="-5.625" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P7" x="-8.125" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P8" x="-9.75" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="PCDI" x="-11.05" y="0.85" dx="0.7" dy="1.5" layer="1"/>
<smd name="WP" x="-12.25" y="0.85" dx="0.7" dy="1.5" layer="1"/>
<smd name="F3" x="-14" y="-22.9" dx="1.5" dy="2.8" layer="1"/>
<smd name="F1" x="-14" y="-1.4" dx="1.5" dy="2.8" layer="1"/>
<smd name="F4" x="14" y="-22.9" dx="1.5" dy="2.8" layer="1"/>
<smd name="F2" x="11.8" y="-1.4" dx="1.5" dy="2.8" layer="1"/>
<text x="-5" y="-34.5" size="1.27" layer="51">Außenkante</text>
<hole x="9.5" y="-2.4" drill="1.6"/>
<hole x="-11.5" y="-2.4" drill="1.2"/>
</package>
<package name="SDCMF-10915W0T1">
<wire x1="-13.25" y1="0" x2="11.05" y2="0" width="0.127" layer="21"/>
<wire x1="-13.25" y1="0" x2="-13.25" y2="-25" width="0.127" layer="21"/>
<wire x1="11.05" y1="0" x2="11.05" y2="-5" width="0.127" layer="21"/>
<wire x1="-13.25" y1="-25" x2="13.25" y2="-25" width="0.127" layer="21"/>
<wire x1="13.25" y1="-25" x2="13.25" y2="-7.39" width="0.127" layer="21"/>
<wire x1="11.05" y1="-5" x2="13.25" y2="-7.39" width="0.127" layer="21"/>
<wire x1="-13" y1="-25" x2="-12.5" y2="-25" width="0.127" layer="51"/>
<wire x1="-12.5" y1="-25" x2="-12.5" y2="-35" width="0.127" layer="51"/>
<wire x1="-12.5" y1="-35" x2="12.5" y2="-35" width="0.127" layer="51"/>
<wire x1="12.5" y1="-35" x2="12.5" y2="-25" width="0.127" layer="51"/>
<wire x1="-11" y1="-25" x2="-11" y2="-20.5" width="0.127" layer="51"/>
<wire x1="11" y1="-25" x2="11" y2="-20.5" width="0.127" layer="51"/>
<wire x1="-11" y1="-20.5" x2="-8.5" y2="-20.5" width="0.127" layer="51"/>
<wire x1="11" y1="-20.5" x2="8.5" y2="-20.5" width="0.127" layer="51"/>
<wire x1="-6" y1="-14" x2="6" y2="-14" width="0.127" layer="51"/>
<wire x1="-6" y1="-14" x2="-8.5" y2="-20.5" width="0.127" layer="51"/>
<wire x1="6" y1="-14" x2="8.5" y2="-20.5" width="0.127" layer="51"/>
<smd name="P9" x="9.375" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P1" x="6.875" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P2" x="4.375" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P3" x="1.875" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P4" x="-0.625" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P5" x="-3.125" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P6" x="-5.625" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P7" x="-8.125" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="P8" x="-9.75" y="0.85" dx="1" dy="1.5" layer="1"/>
<smd name="PCDI" x="-11.05" y="0.85" dx="0.7" dy="1.5" layer="1"/>
<smd name="WP" x="-12.25" y="0.85" dx="0.7" dy="1.5" layer="1"/>
<smd name="F3" x="-14" y="-22.9" dx="1.5" dy="2.8" layer="1"/>
<smd name="F1" x="-14" y="-1.4" dx="1.5" dy="2.8" layer="1"/>
<smd name="F4" x="14" y="-22.9" dx="1.5" dy="2.8" layer="1"/>
<smd name="F2" x="11.8" y="-1.4" dx="1.5" dy="2.8" layer="1"/>
<text x="-5" y="-34.5" size="1.27" layer="51">Außenkante</text>
<rectangle x1="-15.24" y1="-25.4" x2="-10.16" y2="-20.32" layer="39"/>
<rectangle x1="10.16" y1="-25.4" x2="15.24" y2="-20.32" layer="39"/>
<rectangle x1="-15.24" y1="-3.81" x2="12.7" y2="2.54" layer="39"/>
<hole x="9.5" y="-2.4" drill="1.6"/>
<hole x="-11.5" y="-2.4" drill="1.2"/>
</package>
</packages>
<symbols>
<symbol name="SDCMF-109XXW010_SPI">
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="-5.08" y="-10.16" size="1.27" layer="96">&gt;VALUE</text>
<text x="-5.08" y="15.24" size="1.6764" layer="95">&gt;NAME</text>
<pin name="#CS" x="-10.16" y="10.16" length="middle" direction="in"/>
<pin name="DI" x="-10.16" y="7.62" length="middle" direction="in"/>
<pin name="SCLK" x="-10.16" y="5.08" length="middle" direction="in"/>
<pin name="DO" x="-10.16" y="2.54" length="middle" direction="out"/>
<pin name="CD" x="-10.16" y="-2.54" length="middle" direction="oc"/>
<pin name="WP" x="-10.16" y="-5.08" length="middle" direction="oc"/>
</symbol>
<symbol name="SDCMF-109XXW010_VCC_GND">
<text x="-2.54" y="0" size="1.27" layer="95">&gt;NAME</text>
<text x="5.08" y="2.54" size="1.27" layer="95" rot="R90">Vcc</text>
<text x="5.08" y="-7.62" size="1.27" layer="95" rot="R90">GND</text>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
<pin name="GND@1" x="-2.54" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="GND@2" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SDCMF-109XXW010" prefix="CON">
<description>&lt;H1&gt; KingFont&lt;/h1&gt;&lt;br&gt;
SD-CARD SDCMF-109XXW010&lt;br&gt;
SPI -MODE</description>
<gates>
<gate name="'CONTROL" symbol="SDCMF-109XXW010_SPI" x="-2.54" y="-2.54"/>
<gate name="'POWER" symbol="SDCMF-109XXW010_VCC_GND" x="10.16" y="0"/>
</gates>
<devices>
<device name="SMD" package="SDCMF-109XXW010">
<connects>
<connect gate="'CONTROL" pin="#CS" pad="P1"/>
<connect gate="'CONTROL" pin="CD" pad="PCDI"/>
<connect gate="'CONTROL" pin="DI" pad="P2"/>
<connect gate="'CONTROL" pin="DO" pad="P7"/>
<connect gate="'CONTROL" pin="SCLK" pad="P5"/>
<connect gate="'CONTROL" pin="WP" pad="WP"/>
<connect gate="'POWER" pin="GND@1" pad="P3"/>
<connect gate="'POWER" pin="GND@2" pad="P6"/>
<connect gate="'POWER" pin="VCC" pad="P4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SDCMF-10915W0T1_SO" package="SDCMF-10915W0T1">
<connects>
<connect gate="'CONTROL" pin="#CS" pad="P1"/>
<connect gate="'CONTROL" pin="CD" pad="PCDI"/>
<connect gate="'CONTROL" pin="DI" pad="P2"/>
<connect gate="'CONTROL" pin="DO" pad="P7"/>
<connect gate="'CONTROL" pin="SCLK" pad="P5"/>
<connect gate="'CONTROL" pin="WP" pad="WP"/>
<connect gate="'POWER" pin="GND@1" pad="P3"/>
<connect gate="'POWER" pin="GND@2" pad="P6"/>
<connect gate="'POWER" pin="VCC" pad="P4"/>
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
<part name="J1" library="con-amp" deviceset="DIMM-M3" device=""/>
<part name="U1" library="SparkFun-Boards" deviceset="ARDUINO-MEGA" device="SHIELD"/>
<part name="JP1" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP4" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP3" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="CON1" library="card_adapters" deviceset="SDCMF-109XXW010" device="SDCMF-10915W0T1_SO"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="36.83" y="130.556" size="1.778" layer="91">Data Bus</text>
<text x="42.164" y="125.476" size="1.778" layer="91">Address Bus</text>
<text x="46.736" y="120.396" size="1.778" layer="91">Control Bus</text>
<text x="52.07" y="115.57" size="1.778" layer="91">Power Bus</text>
</plain>
<instances>
<instance part="J1" gate="G$1" x="17.78" y="99.06"/>
<instance part="U1" gate="G$1" x="134.62" y="48.26"/>
<instance part="JP1" gate="A" x="71.12" y="76.2" rot="R180"/>
<instance part="JP4" gate="A" x="60.96" y="93.98" rot="R180"/>
<instance part="JP3" gate="A" x="71.12" y="93.98" rot="R180"/>
<instance part="JP2" gate="A" x="60.96" y="76.2" rot="R180"/>
<instance part="CON1" gate="'CONTROL" x="124.46" y="-48.26"/>
<instance part="CON1" gate="'POWER" x="119.38" y="-71.12"/>
</instances>
<busses>
<bus name="D[0..31]">
<segment>
<wire x1="35.56" y1="-76.2" x2="35.56" y2="129.54" width="0.762" layer="92"/>
<wire x1="35.56" y1="129.54" x2="109.22" y2="129.54" width="0.762" layer="92"/>
<wire x1="109.22" y1="129.54" x2="109.22" y2="10.16" width="0.762" layer="92"/>
<wire x1="109.22" y1="129.54" x2="160.02" y2="129.54" width="0.762" layer="92"/>
<wire x1="160.02" y1="129.54" x2="160.02" y2="7.62" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="A[0..31]">
<segment>
<wire x1="40.64" y1="-78.74" x2="40.64" y2="124.46" width="0.762" layer="92"/>
<wire x1="40.64" y1="124.46" x2="104.14" y2="124.46" width="0.762" layer="92"/>
<wire x1="104.14" y1="124.46" x2="165.1" y2="124.46" width="0.762" layer="92"/>
<wire x1="165.1" y1="124.46" x2="165.1" y2="10.16" width="0.762" layer="92"/>
<wire x1="104.14" y1="124.46" x2="104.14" y2="27.94" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="ROM_IO_RDY,ROM_IO_INT,~ROM_CS_0,~ROM_CS_1,~RESET,ROM_IO_RD,ROM_IO_WR,POWER_ENABLE,SCLK">
<segment>
<wire x1="45.72" y1="-81.28" x2="45.72" y2="119.38" width="0.762" layer="92"/>
<wire x1="45.72" y1="119.38" x2="99.06" y2="119.38" width="0.762" layer="92"/>
<wire x1="99.06" y1="119.38" x2="170.18" y2="119.38" width="0.762" layer="92"/>
<wire x1="170.18" y1="119.38" x2="170.18" y2="27.94" width="0.762" layer="92"/>
<wire x1="99.06" y1="119.38" x2="99.06" y2="12.7" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="DVCC,DGND,D12VCC,D5VCC">
<segment>
<wire x1="50.8" y1="-35.56" x2="50.8" y2="114.3" width="0.762" layer="92"/>
<wire x1="50.8" y1="114.3" x2="93.98" y2="114.3" width="0.762" layer="92"/>
<wire x1="93.98" y1="114.3" x2="175.26" y2="114.3" width="0.762" layer="92"/>
<wire x1="175.26" y1="114.3" x2="175.26" y2="-5.08" width="0.762" layer="92"/>
<wire x1="93.98" y1="114.3" x2="93.98" y2="-81.28" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="SD_CS,SD_DI,SD_DO,SD_CLCK,SD_CD,SD_WP">
<segment>
<wire x1="88.9" y1="-53.34" x2="88.9" y2="109.22" width="0.762" layer="92"/>
<wire x1="88.9" y1="109.22" x2="180.34" y2="109.22" width="0.762" layer="92"/>
<wire x1="180.34" y1="109.22" x2="180.34" y2="-2.54" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="DVCC" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="35"/>
<label x="25.4" y="12.7" size="1.778" layer="95"/>
<wire x1="25.4" y1="12.7" x2="50.8" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="53"/>
<label x="25.4" y="-33.02" size="1.778" layer="95"/>
<wire x1="25.4" y1="-33.02" x2="50.8" y2="-33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="17"/>
<label x="25.4" y="58.42" size="1.778" layer="95"/>
<wire x1="25.4" y1="58.42" x2="50.8" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="93.98" y1="-60.96" x2="119.38" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="CON1" gate="'POWER" pin="VCC"/>
<wire x1="119.38" y1="-60.96" x2="119.38" y2="-63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="2"/>
<wire x1="93.98" y1="93.98" x2="73.66" y2="93.98" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="2"/>
<wire x1="73.66" y1="93.98" x2="63.5" y2="93.98" width="0.1524" layer="91"/>
<junction x="73.66" y="93.98"/>
</segment>
</net>
<net name="ROM_IO_RDY" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="1"/>
<label x="25.4" y="99.06" size="1.778" layer="95"/>
<wire x1="25.4" y1="99.06" x2="45.72" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="13"/>
<wire x1="154.94" y1="99.06" x2="170.18" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D0" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="25.4" y1="96.52" x2="35.56" y2="96.52" width="0.1524" layer="91"/>
<label x="25.4" y="96.52" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="12"/>
<wire x1="114.3" y1="10.16" x2="109.22" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ROM_IO_INT" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<label x="25.4" y="93.98" size="1.778" layer="95"/>
<wire x1="25.4" y1="93.98" x2="45.72" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="11"/>
<wire x1="114.3" y1="12.7" x2="99.06" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D1" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="25.4" y1="91.44" x2="35.56" y2="91.44" width="0.1524" layer="91"/>
<label x="25.4" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="10"/>
<wire x1="114.3" y1="15.24" x2="109.22" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="~ROM_CS_0" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<label x="25.4" y="88.9" size="1.778" layer="95"/>
<wire x1="25.4" y1="88.9" x2="45.72" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="9"/>
<wire x1="114.3" y1="17.78" x2="99.06" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D2" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="6"/>
<wire x1="25.4" y1="86.36" x2="35.56" y2="86.36" width="0.1524" layer="91"/>
<label x="25.4" y="86.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="8"/>
<wire x1="114.3" y1="20.32" x2="109.22" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="~ROM_CS_1" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="7"/>
<label x="25.4" y="83.82" size="1.778" layer="95"/>
<wire x1="25.4" y1="83.82" x2="45.72" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="7"/>
<wire x1="114.3" y1="22.86" x2="99.06" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D3" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="8"/>
<wire x1="25.4" y1="81.28" x2="35.56" y2="81.28" width="0.1524" layer="91"/>
<label x="25.4" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="6"/>
<wire x1="114.3" y1="25.4" x2="109.22" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="9"/>
<label x="25.4" y="78.74" size="1.778" layer="95"/>
<wire x1="25.4" y1="78.74" x2="40.64" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="5"/>
<wire x1="114.3" y1="27.94" x2="104.14" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D4" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="10"/>
<wire x1="25.4" y1="76.2" x2="35.56" y2="76.2" width="0.1524" layer="91"/>
<label x="25.4" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="4"/>
<wire x1="114.3" y1="30.48" x2="109.22" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="11"/>
<label x="25.4" y="73.66" size="1.778" layer="95"/>
<wire x1="25.4" y1="73.66" x2="40.64" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="3"/>
<wire x1="114.3" y1="33.02" x2="104.14" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D5" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="12"/>
<wire x1="25.4" y1="71.12" x2="35.56" y2="71.12" width="0.1524" layer="91"/>
<label x="25.4" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="2"/>
<wire x1="114.3" y1="35.56" x2="109.22" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A4" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="13"/>
<label x="25.4" y="68.58" size="1.778" layer="95"/>
<wire x1="25.4" y1="68.58" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A0(RX0)"/>
<wire x1="114.3" y1="81.28" x2="104.14" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D6" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="14"/>
<wire x1="25.4" y1="66.04" x2="35.56" y2="66.04" width="0.1524" layer="91"/>
<label x="25.4" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A1(TX0)"/>
<wire x1="114.3" y1="78.74" x2="109.22" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A5" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="15"/>
<label x="25.4" y="63.5" size="1.778" layer="95"/>
<wire x1="25.4" y1="63.5" x2="40.64" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A2"/>
<wire x1="114.3" y1="76.2" x2="104.14" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D7" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="16"/>
<wire x1="25.4" y1="60.96" x2="35.56" y2="60.96" width="0.1524" layer="91"/>
<label x="25.4" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A3"/>
<wire x1="114.3" y1="73.66" x2="109.22" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DGND" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="18"/>
<label x="25.4" y="55.88" size="1.778" layer="95"/>
<wire x1="25.4" y1="55.88" x2="50.8" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="36"/>
<label x="25.4" y="10.16" size="1.778" layer="95"/>
<wire x1="25.4" y1="10.16" x2="50.8" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="54"/>
<label x="25.4" y="-35.56" size="1.778" layer="95"/>
<wire x1="25.4" y1="-35.56" x2="50.8" y2="-35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND@0"/>
<wire x1="114.3" y1="7.62" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="93.98" y1="-81.28" x2="116.84" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="CON1" gate="'POWER" pin="GND@1"/>
<wire x1="116.84" y1="-81.28" x2="116.84" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-81.28" x2="119.38" y2="-81.28" width="0.1524" layer="91"/>
<junction x="116.84" y="-81.28"/>
<pinref part="CON1" gate="'POWER" pin="GND@2"/>
<wire x1="119.38" y1="-81.28" x2="119.38" y2="-78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D5VCC" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="19"/>
<label x="25.4" y="53.34" size="1.778" layer="95"/>
<wire x1="25.4" y1="53.34" x2="50.8" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="93.98" y1="76.2" x2="73.66" y2="76.2" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="73.66" y1="76.2" x2="63.5" y2="76.2" width="0.1524" layer="91"/>
<junction x="73.66" y="76.2"/>
</segment>
</net>
<net name="D8" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="20"/>
<wire x1="25.4" y1="50.8" x2="35.56" y2="50.8" width="0.1524" layer="91"/>
<label x="25.4" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A4"/>
<wire x1="114.3" y1="71.12" x2="109.22" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D12VCC" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="21"/>
<label x="25.4" y="48.26" size="1.778" layer="95"/>
<wire x1="25.4" y1="48.26" x2="50.8" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D9" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="22"/>
<wire x1="25.4" y1="45.72" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
<label x="25.4" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A5"/>
<wire x1="114.3" y1="68.58" x2="109.22" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="~RESET" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="23"/>
<label x="25.4" y="43.18" size="1.778" layer="95"/>
<wire x1="25.4" y1="43.18" x2="45.72" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A6"/>
<wire x1="114.3" y1="66.04" x2="99.06" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D10" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="24"/>
<wire x1="25.4" y1="40.64" x2="35.56" y2="40.64" width="0.1524" layer="91"/>
<label x="25.4" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A7"/>
<wire x1="114.3" y1="63.5" x2="109.22" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A6" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="25"/>
<label x="25.4" y="38.1" size="1.778" layer="95"/>
<wire x1="25.4" y1="38.1" x2="40.64" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="14(TX3)"/>
<wire x1="154.94" y1="96.52" x2="165.1" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D11" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="26"/>
<wire x1="25.4" y1="35.56" x2="35.56" y2="35.56" width="0.1524" layer="91"/>
<label x="25.4" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="15(RX3)"/>
<wire x1="154.94" y1="93.98" x2="160.02" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A7" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="27"/>
<label x="25.4" y="33.02" size="1.778" layer="95"/>
<wire x1="25.4" y1="33.02" x2="40.64" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="16(TX2)"/>
<wire x1="154.94" y1="91.44" x2="165.1" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D12" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="28"/>
<wire x1="25.4" y1="30.48" x2="35.56" y2="30.48" width="0.1524" layer="91"/>
<label x="25.4" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="17(RX2)"/>
<wire x1="154.94" y1="88.9" x2="160.02" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A8" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="29"/>
<label x="25.4" y="27.94" size="1.778" layer="95"/>
<wire x1="25.4" y1="27.94" x2="40.64" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="18(TX1)"/>
<wire x1="154.94" y1="86.36" x2="165.1" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D13" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="30"/>
<wire x1="25.4" y1="25.4" x2="35.56" y2="25.4" width="0.1524" layer="91"/>
<label x="25.4" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="19(RX1)"/>
<wire x1="154.94" y1="83.82" x2="160.02" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A9" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="31"/>
<label x="25.4" y="22.86" size="1.778" layer="95"/>
<wire x1="25.4" y1="22.86" x2="40.64" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="20(SDA)"/>
<wire x1="154.94" y1="81.28" x2="165.1" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D14" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="32"/>
<wire x1="25.4" y1="20.32" x2="35.56" y2="20.32" width="0.1524" layer="91"/>
<label x="25.4" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="21(SCL)"/>
<wire x1="154.94" y1="78.74" x2="160.02" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A10" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="33"/>
<label x="25.4" y="17.78" size="1.778" layer="95"/>
<wire x1="25.4" y1="17.78" x2="40.64" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A8"/>
<wire x1="114.3" y1="60.96" x2="104.14" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D15" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="34"/>
<wire x1="25.4" y1="15.24" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
<label x="25.4" y="15.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A9"/>
<wire x1="114.3" y1="58.42" x2="109.22" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A11" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="37"/>
<label x="25.4" y="7.62" size="1.778" layer="95"/>
<wire x1="25.4" y1="7.62" x2="40.64" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A10"/>
<wire x1="114.3" y1="55.88" x2="104.14" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D16" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="38"/>
<wire x1="25.4" y1="5.08" x2="35.56" y2="5.08" width="0.1524" layer="91"/>
<label x="25.4" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A11"/>
<wire x1="114.3" y1="53.34" x2="109.22" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ROM_IO_RD" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="39"/>
<label x="25.4" y="2.54" size="1.778" layer="95"/>
<wire x1="25.4" y1="2.54" x2="45.72" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A12"/>
<wire x1="114.3" y1="50.8" x2="99.06" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D17" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="40"/>
<wire x1="25.4" y1="0" x2="35.56" y2="0" width="0.1524" layer="91"/>
<label x="25.4" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A13"/>
<wire x1="114.3" y1="48.26" x2="109.22" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ROM_IO_WR" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="41"/>
<label x="25.4" y="-2.54" size="1.778" layer="95"/>
<wire x1="25.4" y1="-2.54" x2="45.72" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A14"/>
<wire x1="114.3" y1="45.72" x2="99.06" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D18" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="42"/>
<wire x1="25.4" y1="-5.08" x2="35.56" y2="-5.08" width="0.1524" layer="91"/>
<label x="25.4" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A15"/>
<wire x1="114.3" y1="43.18" x2="109.22" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A12" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="43"/>
<label x="25.4" y="-7.62" size="1.778" layer="95"/>
<wire x1="25.4" y1="-7.62" x2="40.64" y2="-7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="22"/>
<wire x1="154.94" y1="76.2" x2="165.1" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D19" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="44"/>
<wire x1="25.4" y1="-10.16" x2="35.56" y2="-10.16" width="0.1524" layer="91"/>
<label x="25.4" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="23"/>
<wire x1="154.94" y1="73.66" x2="160.02" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A13" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="45"/>
<label x="25.4" y="-12.7" size="1.778" layer="95"/>
<wire x1="25.4" y1="-12.7" x2="40.64" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="24"/>
<wire x1="154.94" y1="71.12" x2="165.1" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D20" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="46"/>
<wire x1="25.4" y1="-15.24" x2="35.56" y2="-15.24" width="0.1524" layer="91"/>
<label x="25.4" y="-15.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="25"/>
<wire x1="154.94" y1="68.58" x2="160.02" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A14" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="47"/>
<label x="25.4" y="-17.78" size="1.778" layer="95"/>
<wire x1="25.4" y1="-17.78" x2="40.64" y2="-17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="26"/>
<wire x1="154.94" y1="66.04" x2="165.1" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D21" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="48"/>
<wire x1="25.4" y1="-20.32" x2="35.56" y2="-20.32" width="0.1524" layer="91"/>
<label x="25.4" y="-20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="27"/>
<wire x1="154.94" y1="63.5" x2="160.02" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A15" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="49"/>
<label x="25.4" y="-22.86" size="1.778" layer="95"/>
<wire x1="25.4" y1="-22.86" x2="40.64" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="28"/>
<wire x1="154.94" y1="60.96" x2="165.1" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D22" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="50"/>
<wire x1="25.4" y1="-25.4" x2="35.56" y2="-25.4" width="0.1524" layer="91"/>
<label x="25.4" y="-25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="29"/>
<wire x1="154.94" y1="58.42" x2="160.02" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A16" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="51"/>
<label x="25.4" y="-27.94" size="1.778" layer="95"/>
<wire x1="25.4" y1="-27.94" x2="40.64" y2="-27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="30"/>
<wire x1="154.94" y1="55.88" x2="165.1" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D23" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="52"/>
<wire x1="25.4" y1="-30.48" x2="35.56" y2="-30.48" width="0.1524" layer="91"/>
<label x="25.4" y="-30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="31"/>
<wire x1="154.94" y1="53.34" x2="160.02" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCLK" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="55"/>
<label x="25.4" y="-38.1" size="1.778" layer="95"/>
<wire x1="25.4" y1="-38.1" x2="45.72" y2="-38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="32"/>
<wire x1="154.94" y1="50.8" x2="170.18" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D24" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="56"/>
<wire x1="25.4" y1="-40.64" x2="35.56" y2="-40.64" width="0.1524" layer="91"/>
<label x="25.4" y="-40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="33"/>
<wire x1="154.94" y1="48.26" x2="160.02" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A24" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="57"/>
<label x="25.4" y="-43.18" size="1.778" layer="95"/>
<wire x1="25.4" y1="-43.18" x2="40.64" y2="-43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="34"/>
<wire x1="154.94" y1="45.72" x2="165.1" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D25" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="58"/>
<wire x1="25.4" y1="-45.72" x2="35.56" y2="-45.72" width="0.1524" layer="91"/>
<label x="25.4" y="-45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="35"/>
<wire x1="154.94" y1="43.18" x2="160.02" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A17" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="59"/>
<label x="25.4" y="-48.26" size="1.778" layer="95"/>
<wire x1="25.4" y1="-48.26" x2="40.64" y2="-48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="36"/>
<wire x1="154.94" y1="40.64" x2="165.1" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D26" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="60"/>
<wire x1="25.4" y1="-50.8" x2="35.56" y2="-50.8" width="0.1524" layer="91"/>
<label x="25.4" y="-50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="37"/>
<wire x1="154.94" y1="38.1" x2="160.02" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A18" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="61"/>
<label x="25.4" y="-53.34" size="1.778" layer="95"/>
<wire x1="25.4" y1="-53.34" x2="40.64" y2="-53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="38"/>
<wire x1="154.94" y1="35.56" x2="165.1" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D27" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="62"/>
<wire x1="25.4" y1="-55.88" x2="35.56" y2="-55.88" width="0.1524" layer="91"/>
<label x="25.4" y="-55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="39"/>
<wire x1="154.94" y1="33.02" x2="160.02" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A19" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="63"/>
<label x="25.4" y="-58.42" size="1.778" layer="95"/>
<wire x1="25.4" y1="-58.42" x2="40.64" y2="-58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="40"/>
<wire x1="154.94" y1="30.48" x2="165.1" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D28" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="64"/>
<wire x1="25.4" y1="-60.96" x2="35.56" y2="-60.96" width="0.1524" layer="91"/>
<label x="25.4" y="-60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="49"/>
<wire x1="154.94" y1="7.62" x2="160.02" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A20" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="65"/>
<label x="25.4" y="-63.5" size="1.778" layer="95"/>
<wire x1="25.4" y1="-63.5" x2="40.64" y2="-63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="48"/>
<wire x1="154.94" y1="10.16" x2="165.1" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D29" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="66"/>
<wire x1="25.4" y1="-66.04" x2="35.56" y2="-66.04" width="0.1524" layer="91"/>
<label x="25.4" y="-66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="47"/>
<wire x1="154.94" y1="12.7" x2="160.02" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A21" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="67"/>
<label x="25.4" y="-68.58" size="1.778" layer="95"/>
<wire x1="25.4" y1="-68.58" x2="40.64" y2="-68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="46"/>
<wire x1="154.94" y1="15.24" x2="165.1" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D30" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="68"/>
<wire x1="25.4" y1="-71.12" x2="35.56" y2="-71.12" width="0.1524" layer="91"/>
<label x="25.4" y="-71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="45"/>
<wire x1="154.94" y1="17.78" x2="160.02" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A22" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="69"/>
<label x="25.4" y="-73.66" size="1.778" layer="95"/>
<wire x1="25.4" y1="-73.66" x2="40.64" y2="-73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="44"/>
<wire x1="154.94" y1="20.32" x2="165.1" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D31" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="70"/>
<wire x1="25.4" y1="-76.2" x2="35.56" y2="-76.2" width="0.1524" layer="91"/>
<label x="25.4" y="-76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="43"/>
<wire x1="154.94" y1="22.86" x2="160.02" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A23" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="71"/>
<label x="25.4" y="-78.74" size="1.778" layer="95"/>
<wire x1="25.4" y1="-78.74" x2="40.64" y2="-78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="42"/>
<wire x1="154.94" y1="25.4" x2="165.1" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="POWER_ENABLE" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="72"/>
<label x="25.4" y="-81.28" size="1.778" layer="95"/>
<wire x1="25.4" y1="-81.28" x2="45.72" y2="-81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="41"/>
<wire x1="154.94" y1="27.94" x2="170.18" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SD_CS" class="0">
<segment>
<pinref part="CON1" gate="'CONTROL" pin="#CS"/>
<wire x1="114.3" y1="-38.1" x2="88.9" y2="-38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="53"/>
<wire x1="154.94" y1="-2.54" x2="180.34" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SD_CD" class="0">
<segment>
<pinref part="CON1" gate="'CONTROL" pin="CD"/>
<wire x1="114.3" y1="-50.8" x2="88.9" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SD_WP" class="0">
<segment>
<pinref part="CON1" gate="'CONTROL" pin="WP"/>
<wire x1="114.3" y1="-53.34" x2="88.9" y2="-53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SD_DI" class="0">
<segment>
<pinref part="CON1" gate="'CONTROL" pin="DI"/>
<wire x1="114.3" y1="-40.64" x2="88.9" y2="-40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="51"/>
<wire x1="154.94" y1="2.54" x2="180.34" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="88.9" y1="83.82" x2="66.04" y2="83.82" width="0.1524" layer="91"/>
<wire x1="66.04" y1="83.82" x2="66.04" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="66.04" y1="78.74" x2="63.5" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SD_CLCK" class="0">
<segment>
<pinref part="CON1" gate="'CONTROL" pin="SCLK"/>
<wire x1="114.3" y1="-43.18" x2="88.9" y2="-43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="52"/>
<wire x1="154.94" y1="0" x2="180.34" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SD_DO" class="0">
<segment>
<pinref part="CON1" gate="'CONTROL" pin="DO"/>
<wire x1="114.3" y1="-45.72" x2="88.9" y2="-45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="50"/>
<wire x1="154.94" y1="5.08" x2="180.34" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="88.9" y1="101.6" x2="66.04" y2="101.6" width="0.1524" layer="91"/>
<wire x1="66.04" y1="101.6" x2="66.04" y2="96.52" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="3"/>
<wire x1="66.04" y1="96.52" x2="63.5" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="5V@0"/>
<pinref part="JP3" gate="A" pin="3"/>
<wire x1="114.3" y1="96.52" x2="81.28" y2="96.52" width="0.1524" layer="91"/>
<wire x1="81.28" y1="96.52" x2="73.66" y2="96.52" width="0.1524" layer="91"/>
<wire x1="81.28" y1="96.52" x2="81.28" y2="78.74" width="0.1524" layer="91"/>
<junction x="81.28" y="96.52"/>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="81.28" y1="78.74" x2="73.66" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="3.3V"/>
<wire x1="114.3" y1="88.9" x2="83.82" y2="88.9" width="0.1524" layer="91"/>
<wire x1="83.82" y1="88.9" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="83.82" y1="73.66" x2="73.66" y2="73.66" width="0.1524" layer="91"/>
<wire x1="83.82" y1="88.9" x2="83.82" y2="91.44" width="0.1524" layer="91"/>
<junction x="83.82" y="88.9"/>
<pinref part="JP3" gate="A" pin="1"/>
<wire x1="83.82" y1="91.44" x2="73.66" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,119.38,-63.5,CON1'POWER,VCC,DVCC,,,"/>
<approved hash="104,1,116.84,-78.74,CON1'POWER,GND,DGND,,,"/>
<approved hash="104,1,119.38,-78.74,CON1'POWER,GND,DGND,,,"/>
<approved hash="106,1,25.4,48.26,D12VCC,,,,,"/>
<approved hash="106,1,114.3,-50.8,SD_CD,,,,,"/>
<approved hash="106,1,114.3,-53.34,SD_WP,,,,,"/>
<approved hash="113,1,20.9127,10.2912,J1,,,,,"/>
<approved hash="113,1,73.4229,74.7988,JP1,,,,,"/>
<approved hash="113,1,63.2629,92.5788,JP4,,,,,"/>
<approved hash="113,1,73.4229,92.5788,JP3,,,,,"/>
<approved hash="113,1,63.2629,74.7988,JP2,,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
