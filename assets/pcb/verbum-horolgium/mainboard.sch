<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="mil" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
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
<library name="myLibrary">
<packages>
<package name="DC-JACK_5.5X2.1MM">
<wire x1="-4.5" y1="-7.62" x2="4.5" y2="-7.62" width="0.127" layer="21"/>
<wire x1="4.5" y1="-7.62" x2="4.5" y2="6.38" width="0.127" layer="21"/>
<wire x1="4.5" y1="6.38" x2="-4.5" y2="6.38" width="0.127" layer="21"/>
<wire x1="-4.5" y1="6.38" x2="-4.5" y2="-7.62" width="0.127" layer="21"/>
<text x="0" y="-6.35" size="1.016" layer="25" align="center">&gt;NAME</text>
<text x="5.715" y="-7.62" size="1.016" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
<pad name="SLEEVE_A" x="0" y="-0.12" drill="1" diameter="2" shape="long" rot="R180"/>
<pad name="CENTER" x="0" y="6.08" drill="1" diameter="2.3" shape="long" rot="R180"/>
<pad name="SLEEVE_B" x="4.7" y="3.38" drill="1" diameter="2" shape="long" rot="R270"/>
<wire x1="1.016" y1="-0.127" x2="-0.984" y2="-0.127" width="1" layer="46"/>
<wire x1="4.714" y1="4.445" x2="4.714" y2="2.445" width="1" layer="46"/>
<wire x1="1.5" y1="6.08" x2="-1.5" y2="6.08" width="1" layer="46"/>
</package>
<package name="HEADER_2-PIN">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="-1.27" y="-1.27" radius="0.254" width="0.127" layer="21"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="-0.635" y1="3.81" x2="0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="1.27" width="0.127" layer="21"/>
<text x="-1.905" y="-1.27" size="0.8128" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
</package>
<package name="R5210_2-PIN">
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="square"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="-2.54" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-2.54" y2="2.54" width="0.1524" layer="21"/>
<text x="-1.27" y="-3.937" size="0.8128" layer="27" align="center-left">&gt;VALUE</text>
<circle x="-1.27" y="-3.175" radius="0.254" width="0.127" layer="21"/>
</package>
<package name="SCREW-TERMINAL_2-WAY">
<pad name="1" x="-2.54" y="0" drill="1.27" diameter="2.032" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.27" diameter="2.032"/>
<wire x1="-5.08" y1="-3.81" x2="5.08" y2="-3.81" width="0.127" layer="21"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="3.81" width="0.127" layer="21"/>
<wire x1="5.08" y1="3.81" x2="-5.08" y2="3.81" width="0.127" layer="21"/>
<wire x1="-5.08" y1="3.81" x2="-5.08" y2="-3.81" width="0.127" layer="21"/>
<circle x="-2.54" y="-3.81" radius="0.254" width="0.127" layer="21"/>
<text x="0" y="4.699" size="0.8128" layer="27" align="center">&gt;VALUE</text>
</package>
<package name="HEADER_3-PIN">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="-1.27" y="-1.27" radius="0.254" width="0.127" layer="21"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="1.27" width="0.127" layer="21"/>
<pad name="3" x="0" y="5.08" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="3.81" x2="-1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="-0.635" y1="6.35" x2="0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="0.635" y1="6.35" x2="1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="3.81" width="0.127" layer="21"/>
<text x="-1.905" y="-1.27" size="0.8128" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
</package>
<package name="R5210_3-PIN">
<pad name="1" x="-2.54" y="0" drill="1.016" diameter="1.778" shape="square"/>
<pad name="2" x="0" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-3.81" y1="2.54" x2="3.81" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.175" x2="-3.81" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.175" x2="-3.81" y2="2.54" width="0.1524" layer="21"/>
<text x="-2.54" y="-3.937" size="0.8128" layer="27" align="center-left">&gt;VALUE</text>
<pad name="3" x="2.54" y="0" drill="1.016" diameter="1.778"/>
<circle x="-2.54" y="-3.175" radius="0.254" width="0.127" layer="21"/>
</package>
<package name="SCREW-TERMINAL_3-WAY">
<pad name="1" x="-5.08" y="0" drill="1.27" diameter="2.032" shape="square"/>
<pad name="2" x="0" y="0" drill="1.27" diameter="2.032"/>
<wire x1="-7.62" y1="-3.81" x2="7.62" y2="-3.81" width="0.127" layer="21"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="3.81" width="0.127" layer="21"/>
<wire x1="7.62" y1="3.81" x2="-7.62" y2="3.81" width="0.127" layer="21"/>
<wire x1="-7.62" y1="3.81" x2="-7.62" y2="-3.81" width="0.127" layer="21"/>
<circle x="-5.08" y="-3.81" radius="0.254" width="0.127" layer="21"/>
<text x="0" y="4.699" size="0.8128" layer="27" align="center">&gt;VALUE</text>
<pad name="3" x="5.08" y="0" drill="1.27" diameter="2.032"/>
</package>
<package name="RASPBERRY-PI-PICO">
<pad name="20" x="-8.89" y="-24.13" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="21" x="8.89" y="-24.13" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="19" x="-8.89" y="-21.59" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="22" x="8.89" y="-21.59" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="18" x="-8.89" y="-19.05" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="23" x="8.89" y="-19.05" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="17" x="-8.89" y="-16.51" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="24" x="8.89" y="-16.51" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="16" x="-8.89" y="-13.97" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="25" x="8.89" y="-13.97" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="15" x="-8.89" y="-11.43" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="26" x="8.89" y="-11.43" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="14" x="-8.89" y="-8.89" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="27" x="8.89" y="-8.89" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="13" x="-8.89" y="-6.35" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="28" x="8.89" y="-6.35" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="12" x="-8.89" y="-3.81" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="29" x="8.89" y="-3.81" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="11" x="-8.89" y="-1.27" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="30" x="8.89" y="-1.27" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="10" x="-8.89" y="1.27" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="31" x="8.89" y="1.27" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="9" x="-8.89" y="3.81" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="32" x="8.89" y="3.81" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="8" x="-8.89" y="6.35" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="33" x="8.89" y="6.35" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="7" x="-8.89" y="8.89" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="34" x="8.89" y="8.89" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="6" x="-8.89" y="11.43" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="35" x="8.89" y="11.43" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="5" x="-8.89" y="13.97" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="36" x="8.89" y="13.97" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="4" x="-8.89" y="16.51" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="37" x="8.89" y="16.51" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="3" x="-8.89" y="19.05" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="38" x="8.89" y="19.05" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="2" x="-8.89" y="21.59" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="39" x="8.89" y="21.59" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="1" x="-8.89" y="24.13" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="40" x="8.89" y="24.13" drill="1.016" diameter="1.778" shape="offset"/>
<wire x1="-8.255" y1="-25.4" x2="-9.525" y2="-25.4" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-25.4" x2="-10.16" y2="-24.765" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-24.765" x2="-10.16" y2="-23.495" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-23.495" x2="-9.525" y2="-22.86" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-22.86" x2="-7.62" y2="-23.495" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-23.495" x2="-7.62" y2="-24.765" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-24.765" x2="-8.255" y2="-25.4" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-22.86" x2="-10.16" y2="-22.225" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-22.225" x2="-10.16" y2="-20.955" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-20.955" x2="-9.525" y2="-20.32" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-20.32" x2="-7.62" y2="-20.955" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-20.955" x2="-7.62" y2="-22.225" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-22.225" x2="-8.255" y2="-22.86" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-20.32" x2="-10.16" y2="-19.685" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-19.685" x2="-10.16" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-18.415" x2="-9.525" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-17.78" x2="-7.62" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-18.415" x2="-7.62" y2="-19.685" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-19.685" x2="-8.255" y2="-20.32" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-17.78" x2="-10.16" y2="-17.145" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-17.145" x2="-10.16" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-15.875" x2="-9.525" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-15.24" x2="-7.62" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-15.875" x2="-7.62" y2="-17.145" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-17.145" x2="-8.255" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-15.24" x2="-10.16" y2="-14.605" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-14.605" x2="-10.16" y2="-13.335" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-13.335" x2="-9.525" y2="-12.7" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-12.7" x2="-7.62" y2="-13.335" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-13.335" x2="-7.62" y2="-14.605" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-14.605" x2="-8.255" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-12.7" x2="-10.16" y2="-12.065" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-12.065" x2="-10.16" y2="-10.795" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-10.795" x2="-9.525" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-10.16" x2="-7.62" y2="-10.795" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-10.795" x2="-7.62" y2="-12.065" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-12.065" x2="-8.255" y2="-12.7" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-10.16" x2="-10.16" y2="-9.525" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-9.525" x2="-10.16" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-8.255" x2="-9.525" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-7.62" x2="-7.62" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-8.255" x2="-7.62" y2="-9.525" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-9.525" x2="-8.255" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-7.62" x2="-10.16" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-6.985" x2="-10.16" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-5.715" x2="-9.525" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-5.08" x2="-7.62" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-5.715" x2="-7.62" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-6.985" x2="-8.255" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-5.08" x2="-10.16" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-4.445" x2="-10.16" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-3.175" x2="-9.525" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-7.62" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-3.175" x2="-7.62" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-4.445" x2="-8.255" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-10.16" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="0" width="0.127" layer="21"/>
<wire x1="-8.255" y1="0" x2="-7.62" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-7.62" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-8.255" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-9.525" y1="0" x2="-10.16" y2="0.635" width="0.127" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="1.905" width="0.127" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-9.525" y2="2.54" width="0.127" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.127" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0.635" width="0.127" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-8.255" y2="0" width="0.127" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-10.16" y2="3.175" width="0.127" layer="21"/>
<wire x1="-10.16" y1="3.175" x2="-10.16" y2="4.445" width="0.127" layer="21"/>
<wire x1="-10.16" y1="4.445" x2="-9.525" y2="5.08" width="0.127" layer="21"/>
<wire x1="-8.255" y1="5.08" x2="-7.62" y2="4.445" width="0.127" layer="21"/>
<wire x1="-7.62" y1="4.445" x2="-7.62" y2="3.175" width="0.127" layer="21"/>
<wire x1="-7.62" y1="3.175" x2="-8.255" y2="2.54" width="0.127" layer="21"/>
<wire x1="-9.525" y1="5.08" x2="-10.16" y2="5.715" width="0.127" layer="21"/>
<wire x1="-10.16" y1="5.715" x2="-10.16" y2="6.985" width="0.127" layer="21"/>
<wire x1="-10.16" y1="6.985" x2="-9.525" y2="7.62" width="0.127" layer="21"/>
<wire x1="-8.255" y1="7.62" x2="-7.62" y2="6.985" width="0.127" layer="21"/>
<wire x1="-7.62" y1="6.985" x2="-7.62" y2="5.715" width="0.127" layer="21"/>
<wire x1="-7.62" y1="5.715" x2="-8.255" y2="5.08" width="0.127" layer="21"/>
<wire x1="-9.525" y1="7.62" x2="-10.16" y2="8.255" width="0.127" layer="21"/>
<wire x1="-10.16" y1="8.255" x2="-10.16" y2="9.525" width="0.127" layer="21"/>
<wire x1="-10.16" y1="9.525" x2="-9.525" y2="10.16" width="0.127" layer="21"/>
<wire x1="-8.255" y1="10.16" x2="-7.62" y2="9.525" width="0.127" layer="21"/>
<wire x1="-7.62" y1="9.525" x2="-7.62" y2="8.255" width="0.127" layer="21"/>
<wire x1="-7.62" y1="8.255" x2="-8.255" y2="7.62" width="0.127" layer="21"/>
<wire x1="-9.525" y1="10.16" x2="-10.16" y2="10.795" width="0.127" layer="21"/>
<wire x1="-10.16" y1="10.795" x2="-10.16" y2="12.065" width="0.127" layer="21"/>
<wire x1="-10.16" y1="12.065" x2="-9.525" y2="12.7" width="0.127" layer="21"/>
<wire x1="-8.255" y1="12.7" x2="-7.62" y2="12.065" width="0.127" layer="21"/>
<wire x1="-7.62" y1="12.065" x2="-7.62" y2="10.795" width="0.127" layer="21"/>
<wire x1="-7.62" y1="10.795" x2="-8.255" y2="10.16" width="0.127" layer="21"/>
<wire x1="-9.525" y1="12.7" x2="-10.16" y2="13.335" width="0.127" layer="21"/>
<wire x1="-10.16" y1="13.335" x2="-10.16" y2="14.605" width="0.127" layer="21"/>
<wire x1="-10.16" y1="14.605" x2="-9.525" y2="15.24" width="0.127" layer="21"/>
<wire x1="-8.255" y1="15.24" x2="-7.62" y2="14.605" width="0.127" layer="21"/>
<wire x1="-7.62" y1="14.605" x2="-7.62" y2="13.335" width="0.127" layer="21"/>
<wire x1="-7.62" y1="13.335" x2="-8.255" y2="12.7" width="0.127" layer="21"/>
<wire x1="-9.525" y1="15.24" x2="-10.16" y2="15.875" width="0.127" layer="21"/>
<wire x1="-10.16" y1="15.875" x2="-10.16" y2="17.145" width="0.127" layer="21"/>
<wire x1="-10.16" y1="17.145" x2="-9.525" y2="17.78" width="0.127" layer="21"/>
<wire x1="-8.255" y1="17.78" x2="-7.62" y2="17.145" width="0.127" layer="21"/>
<wire x1="-7.62" y1="17.145" x2="-7.62" y2="15.875" width="0.127" layer="21"/>
<wire x1="-7.62" y1="15.875" x2="-8.255" y2="15.24" width="0.127" layer="21"/>
<wire x1="-9.525" y1="17.78" x2="-10.16" y2="18.415" width="0.127" layer="21"/>
<wire x1="-10.16" y1="18.415" x2="-10.16" y2="19.685" width="0.127" layer="21"/>
<wire x1="-10.16" y1="19.685" x2="-9.525" y2="20.32" width="0.127" layer="21"/>
<wire x1="-8.255" y1="20.32" x2="-7.62" y2="19.685" width="0.127" layer="21"/>
<wire x1="-7.62" y1="19.685" x2="-7.62" y2="18.415" width="0.127" layer="21"/>
<wire x1="-7.62" y1="18.415" x2="-8.255" y2="17.78" width="0.127" layer="21"/>
<wire x1="-9.525" y1="20.32" x2="-10.16" y2="20.955" width="0.127" layer="21"/>
<wire x1="-10.16" y1="20.955" x2="-10.16" y2="22.225" width="0.127" layer="21"/>
<wire x1="-10.16" y1="22.225" x2="-9.525" y2="22.86" width="0.127" layer="21"/>
<wire x1="-8.255" y1="22.86" x2="-7.62" y2="22.225" width="0.127" layer="21"/>
<wire x1="-7.62" y1="22.225" x2="-7.62" y2="20.955" width="0.127" layer="21"/>
<wire x1="-7.62" y1="20.955" x2="-8.255" y2="20.32" width="0.127" layer="21"/>
<wire x1="-9.525" y1="22.86" x2="-10.16" y2="23.495" width="0.127" layer="21"/>
<wire x1="-10.16" y1="23.495" x2="-10.16" y2="24.765" width="0.127" layer="21"/>
<wire x1="-10.16" y1="24.765" x2="-9.525" y2="25.4" width="0.127" layer="21"/>
<wire x1="-8.255" y1="25.4" x2="-7.62" y2="24.765" width="0.127" layer="21"/>
<wire x1="-7.62" y1="24.765" x2="-7.62" y2="23.495" width="0.127" layer="21"/>
<wire x1="-7.62" y1="23.495" x2="-8.255" y2="22.86" width="0.127" layer="21"/>
<wire x1="-9.525" y1="25.4" x2="-8.255" y2="25.4" width="0.127" layer="21"/>
<wire x1="9.525" y1="-25.4" x2="8.255" y2="-25.4" width="0.127" layer="21"/>
<wire x1="8.255" y1="-25.4" x2="7.62" y2="-24.765" width="0.127" layer="21"/>
<wire x1="7.62" y1="-24.765" x2="7.62" y2="-23.495" width="0.127" layer="21"/>
<wire x1="7.62" y1="-23.495" x2="8.255" y2="-22.86" width="0.127" layer="21"/>
<wire x1="9.525" y1="-22.86" x2="10.16" y2="-23.495" width="0.127" layer="21"/>
<wire x1="10.16" y1="-23.495" x2="10.16" y2="-24.765" width="0.127" layer="21"/>
<wire x1="10.16" y1="-24.765" x2="9.525" y2="-25.4" width="0.127" layer="21"/>
<wire x1="8.255" y1="-22.86" x2="7.62" y2="-22.225" width="0.127" layer="21"/>
<wire x1="7.62" y1="-22.225" x2="7.62" y2="-20.955" width="0.127" layer="21"/>
<wire x1="7.62" y1="-20.955" x2="8.255" y2="-20.32" width="0.127" layer="21"/>
<wire x1="9.525" y1="-20.32" x2="10.16" y2="-20.955" width="0.127" layer="21"/>
<wire x1="10.16" y1="-20.955" x2="10.16" y2="-22.225" width="0.127" layer="21"/>
<wire x1="10.16" y1="-22.225" x2="9.525" y2="-22.86" width="0.127" layer="21"/>
<wire x1="8.255" y1="-20.32" x2="7.62" y2="-19.685" width="0.127" layer="21"/>
<wire x1="7.62" y1="-19.685" x2="7.62" y2="-18.415" width="0.127" layer="21"/>
<wire x1="7.62" y1="-18.415" x2="8.255" y2="-17.78" width="0.127" layer="21"/>
<wire x1="9.525" y1="-17.78" x2="10.16" y2="-18.415" width="0.127" layer="21"/>
<wire x1="10.16" y1="-18.415" x2="10.16" y2="-19.685" width="0.127" layer="21"/>
<wire x1="10.16" y1="-19.685" x2="9.525" y2="-20.32" width="0.127" layer="21"/>
<wire x1="8.255" y1="-17.78" x2="7.62" y2="-17.145" width="0.127" layer="21"/>
<wire x1="7.62" y1="-17.145" x2="7.62" y2="-15.875" width="0.127" layer="21"/>
<wire x1="7.62" y1="-15.875" x2="8.255" y2="-15.24" width="0.127" layer="21"/>
<wire x1="9.525" y1="-15.24" x2="10.16" y2="-15.875" width="0.127" layer="21"/>
<wire x1="10.16" y1="-15.875" x2="10.16" y2="-17.145" width="0.127" layer="21"/>
<wire x1="10.16" y1="-17.145" x2="9.525" y2="-17.78" width="0.127" layer="21"/>
<wire x1="8.255" y1="-15.24" x2="7.62" y2="-14.605" width="0.127" layer="21"/>
<wire x1="7.62" y1="-14.605" x2="7.62" y2="-13.335" width="0.127" layer="21"/>
<wire x1="7.62" y1="-13.335" x2="8.255" y2="-12.7" width="0.127" layer="21"/>
<wire x1="9.525" y1="-12.7" x2="10.16" y2="-13.335" width="0.127" layer="21"/>
<wire x1="10.16" y1="-13.335" x2="10.16" y2="-14.605" width="0.127" layer="21"/>
<wire x1="10.16" y1="-14.605" x2="9.525" y2="-15.24" width="0.127" layer="21"/>
<wire x1="8.255" y1="-12.7" x2="7.62" y2="-12.065" width="0.127" layer="21"/>
<wire x1="7.62" y1="-12.065" x2="7.62" y2="-10.795" width="0.127" layer="21"/>
<wire x1="7.62" y1="-10.795" x2="8.255" y2="-10.16" width="0.127" layer="21"/>
<wire x1="9.525" y1="-10.16" x2="10.16" y2="-10.795" width="0.127" layer="21"/>
<wire x1="10.16" y1="-10.795" x2="10.16" y2="-12.065" width="0.127" layer="21"/>
<wire x1="10.16" y1="-12.065" x2="9.525" y2="-12.7" width="0.127" layer="21"/>
<wire x1="8.255" y1="-10.16" x2="7.62" y2="-9.525" width="0.127" layer="21"/>
<wire x1="7.62" y1="-9.525" x2="7.62" y2="-8.255" width="0.127" layer="21"/>
<wire x1="7.62" y1="-8.255" x2="8.255" y2="-7.62" width="0.127" layer="21"/>
<wire x1="9.525" y1="-7.62" x2="10.16" y2="-8.255" width="0.127" layer="21"/>
<wire x1="10.16" y1="-8.255" x2="10.16" y2="-9.525" width="0.127" layer="21"/>
<wire x1="10.16" y1="-9.525" x2="9.525" y2="-10.16" width="0.127" layer="21"/>
<wire x1="8.255" y1="-7.62" x2="7.62" y2="-6.985" width="0.127" layer="21"/>
<wire x1="7.62" y1="-6.985" x2="7.62" y2="-5.715" width="0.127" layer="21"/>
<wire x1="7.62" y1="-5.715" x2="8.255" y2="-5.08" width="0.127" layer="21"/>
<wire x1="9.525" y1="-5.08" x2="10.16" y2="-5.715" width="0.127" layer="21"/>
<wire x1="10.16" y1="-5.715" x2="10.16" y2="-6.985" width="0.127" layer="21"/>
<wire x1="10.16" y1="-6.985" x2="9.525" y2="-7.62" width="0.127" layer="21"/>
<wire x1="8.255" y1="-5.08" x2="7.62" y2="-4.445" width="0.127" layer="21"/>
<wire x1="7.62" y1="-4.445" x2="7.62" y2="-3.175" width="0.127" layer="21"/>
<wire x1="7.62" y1="-3.175" x2="8.255" y2="-2.54" width="0.127" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="10.16" y2="-3.175" width="0.127" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="10.16" y2="-4.445" width="0.127" layer="21"/>
<wire x1="10.16" y1="-4.445" x2="9.525" y2="-5.08" width="0.127" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="7.62" y2="-1.905" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="-0.635" width="0.127" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="0" width="0.127" layer="21"/>
<wire x1="9.525" y1="0" x2="10.16" y2="-0.635" width="0.127" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.16" y2="-1.905" width="0.127" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.255" y1="0" x2="7.62" y2="0.635" width="0.127" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="1.905" width="0.127" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.127" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.127" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="0.635" width="0.127" layer="21"/>
<wire x1="10.16" y1="0.635" x2="9.525" y2="0" width="0.127" layer="21"/>
<wire x1="8.255" y1="2.54" x2="7.62" y2="3.175" width="0.127" layer="21"/>
<wire x1="7.62" y1="3.175" x2="7.62" y2="4.445" width="0.127" layer="21"/>
<wire x1="7.62" y1="4.445" x2="8.255" y2="5.08" width="0.127" layer="21"/>
<wire x1="9.525" y1="5.08" x2="10.16" y2="4.445" width="0.127" layer="21"/>
<wire x1="10.16" y1="4.445" x2="10.16" y2="3.175" width="0.127" layer="21"/>
<wire x1="10.16" y1="3.175" x2="9.525" y2="2.54" width="0.127" layer="21"/>
<wire x1="8.255" y1="5.08" x2="7.62" y2="5.715" width="0.127" layer="21"/>
<wire x1="7.62" y1="5.715" x2="7.62" y2="6.985" width="0.127" layer="21"/>
<wire x1="7.62" y1="6.985" x2="8.255" y2="7.62" width="0.127" layer="21"/>
<wire x1="9.525" y1="7.62" x2="10.16" y2="6.985" width="0.127" layer="21"/>
<wire x1="10.16" y1="6.985" x2="10.16" y2="5.715" width="0.127" layer="21"/>
<wire x1="10.16" y1="5.715" x2="9.525" y2="5.08" width="0.127" layer="21"/>
<wire x1="8.255" y1="7.62" x2="7.62" y2="8.255" width="0.127" layer="21"/>
<wire x1="7.62" y1="8.255" x2="7.62" y2="9.525" width="0.127" layer="21"/>
<wire x1="7.62" y1="9.525" x2="8.255" y2="10.16" width="0.127" layer="21"/>
<wire x1="9.525" y1="10.16" x2="10.16" y2="9.525" width="0.127" layer="21"/>
<wire x1="10.16" y1="9.525" x2="10.16" y2="8.255" width="0.127" layer="21"/>
<wire x1="10.16" y1="8.255" x2="9.525" y2="7.62" width="0.127" layer="21"/>
<wire x1="8.255" y1="10.16" x2="7.62" y2="10.795" width="0.127" layer="21"/>
<wire x1="7.62" y1="10.795" x2="7.62" y2="12.065" width="0.127" layer="21"/>
<wire x1="7.62" y1="12.065" x2="8.255" y2="12.7" width="0.127" layer="21"/>
<wire x1="9.525" y1="12.7" x2="10.16" y2="12.065" width="0.127" layer="21"/>
<wire x1="10.16" y1="12.065" x2="10.16" y2="10.795" width="0.127" layer="21"/>
<wire x1="10.16" y1="10.795" x2="9.525" y2="10.16" width="0.127" layer="21"/>
<wire x1="8.255" y1="12.7" x2="7.62" y2="13.335" width="0.127" layer="21"/>
<wire x1="7.62" y1="13.335" x2="7.62" y2="14.605" width="0.127" layer="21"/>
<wire x1="7.62" y1="14.605" x2="8.255" y2="15.24" width="0.127" layer="21"/>
<wire x1="9.525" y1="15.24" x2="10.16" y2="14.605" width="0.127" layer="21"/>
<wire x1="10.16" y1="14.605" x2="10.16" y2="13.335" width="0.127" layer="21"/>
<wire x1="10.16" y1="13.335" x2="9.525" y2="12.7" width="0.127" layer="21"/>
<wire x1="8.255" y1="15.24" x2="7.62" y2="15.875" width="0.127" layer="21"/>
<wire x1="7.62" y1="15.875" x2="7.62" y2="17.145" width="0.127" layer="21"/>
<wire x1="7.62" y1="17.145" x2="8.255" y2="17.78" width="0.127" layer="21"/>
<wire x1="9.525" y1="17.78" x2="10.16" y2="17.145" width="0.127" layer="21"/>
<wire x1="10.16" y1="17.145" x2="10.16" y2="15.875" width="0.127" layer="21"/>
<wire x1="10.16" y1="15.875" x2="9.525" y2="15.24" width="0.127" layer="21"/>
<wire x1="8.255" y1="17.78" x2="7.62" y2="18.415" width="0.127" layer="21"/>
<wire x1="7.62" y1="18.415" x2="7.62" y2="19.685" width="0.127" layer="21"/>
<wire x1="7.62" y1="19.685" x2="8.255" y2="20.32" width="0.127" layer="21"/>
<wire x1="9.525" y1="20.32" x2="10.16" y2="19.685" width="0.127" layer="21"/>
<wire x1="10.16" y1="19.685" x2="10.16" y2="18.415" width="0.127" layer="21"/>
<wire x1="10.16" y1="18.415" x2="9.525" y2="17.78" width="0.127" layer="21"/>
<wire x1="8.255" y1="20.32" x2="7.62" y2="20.955" width="0.127" layer="21"/>
<wire x1="7.62" y1="20.955" x2="7.62" y2="22.225" width="0.127" layer="21"/>
<wire x1="7.62" y1="22.225" x2="8.255" y2="22.86" width="0.127" layer="21"/>
<wire x1="9.525" y1="22.86" x2="10.16" y2="22.225" width="0.127" layer="21"/>
<wire x1="10.16" y1="22.225" x2="10.16" y2="20.955" width="0.127" layer="21"/>
<wire x1="10.16" y1="20.955" x2="9.525" y2="20.32" width="0.127" layer="21"/>
<wire x1="8.255" y1="22.86" x2="7.62" y2="23.495" width="0.127" layer="21"/>
<wire x1="7.62" y1="23.495" x2="7.62" y2="24.765" width="0.127" layer="21"/>
<wire x1="7.62" y1="24.765" x2="8.255" y2="25.4" width="0.127" layer="21"/>
<wire x1="9.525" y1="25.4" x2="10.16" y2="24.765" width="0.127" layer="21"/>
<wire x1="10.16" y1="24.765" x2="10.16" y2="23.495" width="0.127" layer="21"/>
<wire x1="10.16" y1="23.495" x2="9.525" y2="22.86" width="0.127" layer="21"/>
<wire x1="8.255" y1="25.4" x2="9.525" y2="25.4" width="0.127" layer="21"/>
<pad name="D_GND" x="0" y="-23.876" drill="1.016" diameter="1.778" shape="offset" rot="R270"/>
<pad name="SWDIO" x="2.54" y="-23.876" drill="1.016" diameter="1.778" shape="offset" rot="R270"/>
<pad name="SWCLK" x="-2.54" y="-23.876" drill="1.016" diameter="1.778" shape="offset" rot="R270"/>
<wire x1="3.81" y1="-23.241" x2="3.81" y2="-24.511" width="0.127" layer="21"/>
<wire x1="3.81" y1="-24.511" x2="3.175" y2="-25.146" width="0.127" layer="21"/>
<wire x1="3.175" y1="-25.146" x2="1.905" y2="-25.146" width="0.127" layer="21"/>
<wire x1="1.905" y1="-25.146" x2="1.27" y2="-24.511" width="0.127" layer="21"/>
<wire x1="1.27" y1="-23.241" x2="1.905" y2="-22.606" width="0.127" layer="21"/>
<wire x1="1.905" y1="-22.606" x2="3.175" y2="-22.606" width="0.127" layer="21"/>
<wire x1="3.175" y1="-22.606" x2="3.81" y2="-23.241" width="0.127" layer="21"/>
<wire x1="1.27" y1="-24.511" x2="0.635" y2="-25.146" width="0.127" layer="21"/>
<wire x1="0.635" y1="-25.146" x2="-0.635" y2="-25.146" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-25.146" x2="-1.27" y2="-24.511" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-23.241" x2="-0.635" y2="-22.606" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-22.606" x2="0.635" y2="-22.606" width="0.127" layer="21"/>
<wire x1="0.635" y1="-22.606" x2="1.27" y2="-23.241" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-24.511" x2="-1.905" y2="-25.146" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-25.146" x2="-3.175" y2="-25.146" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-25.146" x2="-3.81" y2="-24.511" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-24.511" x2="-3.81" y2="-23.241" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-23.241" x2="-3.175" y2="-22.606" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-22.606" x2="-1.905" y2="-22.606" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-22.606" x2="-1.27" y2="-23.241" width="0.127" layer="21"/>
<text x="0" y="-21.59" size="0.8128" layer="21" align="center">Raspberry Pi Pico</text>
<circle x="-7.366" y="24.13" radius="0.254" width="0.127" layer="21"/>
</package>
<package name="RASPBERRY-PI-PICO_W">
<pad name="20" x="-8.89" y="-24.13" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="21" x="8.89" y="-24.13" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="19" x="-8.89" y="-21.59" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="22" x="8.89" y="-21.59" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="18" x="-8.89" y="-19.05" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="23" x="8.89" y="-19.05" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="17" x="-8.89" y="-16.51" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="24" x="8.89" y="-16.51" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="16" x="-8.89" y="-13.97" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="25" x="8.89" y="-13.97" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="15" x="-8.89" y="-11.43" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="26" x="8.89" y="-11.43" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="14" x="-8.89" y="-8.89" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="27" x="8.89" y="-8.89" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="13" x="-8.89" y="-6.35" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="28" x="8.89" y="-6.35" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="12" x="-8.89" y="-3.81" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="29" x="8.89" y="-3.81" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="11" x="-8.89" y="-1.27" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="30" x="8.89" y="-1.27" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="10" x="-8.89" y="1.27" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="31" x="8.89" y="1.27" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="9" x="-8.89" y="3.81" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="32" x="8.89" y="3.81" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="8" x="-8.89" y="6.35" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="33" x="8.89" y="6.35" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="7" x="-8.89" y="8.89" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="34" x="8.89" y="8.89" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="6" x="-8.89" y="11.43" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="35" x="8.89" y="11.43" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="5" x="-8.89" y="13.97" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="36" x="8.89" y="13.97" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="4" x="-8.89" y="16.51" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="37" x="8.89" y="16.51" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="3" x="-8.89" y="19.05" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="38" x="8.89" y="19.05" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="2" x="-8.89" y="21.59" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="39" x="8.89" y="21.59" drill="1.016" diameter="1.778" shape="offset"/>
<pad name="1" x="-8.89" y="24.13" drill="1.016" diameter="1.778" shape="offset" rot="R180"/>
<pad name="40" x="8.89" y="24.13" drill="1.016" diameter="1.778" shape="offset"/>
<wire x1="-8.255" y1="-25.4" x2="-9.525" y2="-25.4" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-25.4" x2="-10.16" y2="-24.765" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-24.765" x2="-10.16" y2="-23.495" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-23.495" x2="-9.525" y2="-22.86" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-22.86" x2="-7.62" y2="-23.495" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-23.495" x2="-7.62" y2="-24.765" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-24.765" x2="-8.255" y2="-25.4" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-22.86" x2="-10.16" y2="-22.225" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-22.225" x2="-10.16" y2="-20.955" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-20.955" x2="-9.525" y2="-20.32" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-20.32" x2="-7.62" y2="-20.955" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-20.955" x2="-7.62" y2="-22.225" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-22.225" x2="-8.255" y2="-22.86" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-20.32" x2="-10.16" y2="-19.685" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-19.685" x2="-10.16" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-18.415" x2="-9.525" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-17.78" x2="-7.62" y2="-18.415" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-18.415" x2="-7.62" y2="-19.685" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-19.685" x2="-8.255" y2="-20.32" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-17.78" x2="-10.16" y2="-17.145" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-17.145" x2="-10.16" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-15.875" x2="-9.525" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-15.24" x2="-7.62" y2="-15.875" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-15.875" x2="-7.62" y2="-17.145" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-17.145" x2="-8.255" y2="-17.78" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-15.24" x2="-10.16" y2="-14.605" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-14.605" x2="-10.16" y2="-13.335" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-13.335" x2="-9.525" y2="-12.7" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-12.7" x2="-7.62" y2="-13.335" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-13.335" x2="-7.62" y2="-14.605" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-14.605" x2="-8.255" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-12.7" x2="-10.16" y2="-12.065" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-12.065" x2="-10.16" y2="-10.795" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-10.795" x2="-9.525" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-10.16" x2="-7.62" y2="-10.795" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-10.795" x2="-7.62" y2="-12.065" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-12.065" x2="-8.255" y2="-12.7" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-10.16" x2="-10.16" y2="-9.525" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-9.525" x2="-10.16" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-8.255" x2="-9.525" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-7.62" x2="-7.62" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-8.255" x2="-7.62" y2="-9.525" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-9.525" x2="-8.255" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-7.62" x2="-10.16" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-6.985" x2="-10.16" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-5.715" x2="-9.525" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-5.08" x2="-7.62" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-5.715" x2="-7.62" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-6.985" x2="-8.255" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-5.08" x2="-10.16" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-4.445" x2="-10.16" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-3.175" x2="-9.525" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-7.62" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-3.175" x2="-7.62" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-4.445" x2="-8.255" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-10.16" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="0" width="0.127" layer="21"/>
<wire x1="-8.255" y1="0" x2="-7.62" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-7.62" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-8.255" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-9.525" y1="0" x2="-10.16" y2="0.635" width="0.127" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="1.905" width="0.127" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-9.525" y2="2.54" width="0.127" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.127" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0.635" width="0.127" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-8.255" y2="0" width="0.127" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-10.16" y2="3.175" width="0.127" layer="21"/>
<wire x1="-10.16" y1="3.175" x2="-10.16" y2="4.445" width="0.127" layer="21"/>
<wire x1="-10.16" y1="4.445" x2="-9.525" y2="5.08" width="0.127" layer="21"/>
<wire x1="-8.255" y1="5.08" x2="-7.62" y2="4.445" width="0.127" layer="21"/>
<wire x1="-7.62" y1="4.445" x2="-7.62" y2="3.175" width="0.127" layer="21"/>
<wire x1="-7.62" y1="3.175" x2="-8.255" y2="2.54" width="0.127" layer="21"/>
<wire x1="-9.525" y1="5.08" x2="-10.16" y2="5.715" width="0.127" layer="21"/>
<wire x1="-10.16" y1="5.715" x2="-10.16" y2="6.985" width="0.127" layer="21"/>
<wire x1="-10.16" y1="6.985" x2="-9.525" y2="7.62" width="0.127" layer="21"/>
<wire x1="-8.255" y1="7.62" x2="-7.62" y2="6.985" width="0.127" layer="21"/>
<wire x1="-7.62" y1="6.985" x2="-7.62" y2="5.715" width="0.127" layer="21"/>
<wire x1="-7.62" y1="5.715" x2="-8.255" y2="5.08" width="0.127" layer="21"/>
<wire x1="-9.525" y1="7.62" x2="-10.16" y2="8.255" width="0.127" layer="21"/>
<wire x1="-10.16" y1="8.255" x2="-10.16" y2="9.525" width="0.127" layer="21"/>
<wire x1="-10.16" y1="9.525" x2="-9.525" y2="10.16" width="0.127" layer="21"/>
<wire x1="-8.255" y1="10.16" x2="-7.62" y2="9.525" width="0.127" layer="21"/>
<wire x1="-7.62" y1="9.525" x2="-7.62" y2="8.255" width="0.127" layer="21"/>
<wire x1="-7.62" y1="8.255" x2="-8.255" y2="7.62" width="0.127" layer="21"/>
<wire x1="-9.525" y1="10.16" x2="-10.16" y2="10.795" width="0.127" layer="21"/>
<wire x1="-10.16" y1="10.795" x2="-10.16" y2="12.065" width="0.127" layer="21"/>
<wire x1="-10.16" y1="12.065" x2="-9.525" y2="12.7" width="0.127" layer="21"/>
<wire x1="-8.255" y1="12.7" x2="-7.62" y2="12.065" width="0.127" layer="21"/>
<wire x1="-7.62" y1="12.065" x2="-7.62" y2="10.795" width="0.127" layer="21"/>
<wire x1="-7.62" y1="10.795" x2="-8.255" y2="10.16" width="0.127" layer="21"/>
<wire x1="-9.525" y1="12.7" x2="-10.16" y2="13.335" width="0.127" layer="21"/>
<wire x1="-10.16" y1="13.335" x2="-10.16" y2="14.605" width="0.127" layer="21"/>
<wire x1="-10.16" y1="14.605" x2="-9.525" y2="15.24" width="0.127" layer="21"/>
<wire x1="-8.255" y1="15.24" x2="-7.62" y2="14.605" width="0.127" layer="21"/>
<wire x1="-7.62" y1="14.605" x2="-7.62" y2="13.335" width="0.127" layer="21"/>
<wire x1="-7.62" y1="13.335" x2="-8.255" y2="12.7" width="0.127" layer="21"/>
<wire x1="-9.525" y1="15.24" x2="-10.16" y2="15.875" width="0.127" layer="21"/>
<wire x1="-10.16" y1="15.875" x2="-10.16" y2="17.145" width="0.127" layer="21"/>
<wire x1="-10.16" y1="17.145" x2="-9.525" y2="17.78" width="0.127" layer="21"/>
<wire x1="-8.255" y1="17.78" x2="-7.62" y2="17.145" width="0.127" layer="21"/>
<wire x1="-7.62" y1="17.145" x2="-7.62" y2="15.875" width="0.127" layer="21"/>
<wire x1="-7.62" y1="15.875" x2="-8.255" y2="15.24" width="0.127" layer="21"/>
<wire x1="-9.525" y1="17.78" x2="-10.16" y2="18.415" width="0.127" layer="21"/>
<wire x1="-10.16" y1="18.415" x2="-10.16" y2="19.685" width="0.127" layer="21"/>
<wire x1="-10.16" y1="19.685" x2="-9.525" y2="20.32" width="0.127" layer="21"/>
<wire x1="-8.255" y1="20.32" x2="-7.62" y2="19.685" width="0.127" layer="21"/>
<wire x1="-7.62" y1="19.685" x2="-7.62" y2="18.415" width="0.127" layer="21"/>
<wire x1="-7.62" y1="18.415" x2="-8.255" y2="17.78" width="0.127" layer="21"/>
<wire x1="-9.525" y1="20.32" x2="-10.16" y2="20.955" width="0.127" layer="21"/>
<wire x1="-10.16" y1="20.955" x2="-10.16" y2="22.225" width="0.127" layer="21"/>
<wire x1="-10.16" y1="22.225" x2="-9.525" y2="22.86" width="0.127" layer="21"/>
<wire x1="-8.255" y1="22.86" x2="-7.62" y2="22.225" width="0.127" layer="21"/>
<wire x1="-7.62" y1="22.225" x2="-7.62" y2="20.955" width="0.127" layer="21"/>
<wire x1="-7.62" y1="20.955" x2="-8.255" y2="20.32" width="0.127" layer="21"/>
<wire x1="-9.525" y1="22.86" x2="-10.16" y2="23.495" width="0.127" layer="21"/>
<wire x1="-10.16" y1="23.495" x2="-10.16" y2="24.765" width="0.127" layer="21"/>
<wire x1="-10.16" y1="24.765" x2="-9.525" y2="25.4" width="0.127" layer="21"/>
<wire x1="-8.255" y1="25.4" x2="-7.62" y2="24.765" width="0.127" layer="21"/>
<wire x1="-7.62" y1="24.765" x2="-7.62" y2="23.495" width="0.127" layer="21"/>
<wire x1="-7.62" y1="23.495" x2="-8.255" y2="22.86" width="0.127" layer="21"/>
<wire x1="-9.525" y1="25.4" x2="-8.255" y2="25.4" width="0.127" layer="21"/>
<wire x1="9.525" y1="-25.4" x2="8.255" y2="-25.4" width="0.127" layer="21"/>
<wire x1="8.255" y1="-25.4" x2="7.62" y2="-24.765" width="0.127" layer="21"/>
<wire x1="7.62" y1="-24.765" x2="7.62" y2="-23.495" width="0.127" layer="21"/>
<wire x1="7.62" y1="-23.495" x2="8.255" y2="-22.86" width="0.127" layer="21"/>
<wire x1="9.525" y1="-22.86" x2="10.16" y2="-23.495" width="0.127" layer="21"/>
<wire x1="10.16" y1="-23.495" x2="10.16" y2="-24.765" width="0.127" layer="21"/>
<wire x1="10.16" y1="-24.765" x2="9.525" y2="-25.4" width="0.127" layer="21"/>
<wire x1="8.255" y1="-22.86" x2="7.62" y2="-22.225" width="0.127" layer="21"/>
<wire x1="7.62" y1="-22.225" x2="7.62" y2="-20.955" width="0.127" layer="21"/>
<wire x1="7.62" y1="-20.955" x2="8.255" y2="-20.32" width="0.127" layer="21"/>
<wire x1="9.525" y1="-20.32" x2="10.16" y2="-20.955" width="0.127" layer="21"/>
<wire x1="10.16" y1="-20.955" x2="10.16" y2="-22.225" width="0.127" layer="21"/>
<wire x1="10.16" y1="-22.225" x2="9.525" y2="-22.86" width="0.127" layer="21"/>
<wire x1="8.255" y1="-20.32" x2="7.62" y2="-19.685" width="0.127" layer="21"/>
<wire x1="7.62" y1="-19.685" x2="7.62" y2="-18.415" width="0.127" layer="21"/>
<wire x1="7.62" y1="-18.415" x2="8.255" y2="-17.78" width="0.127" layer="21"/>
<wire x1="9.525" y1="-17.78" x2="10.16" y2="-18.415" width="0.127" layer="21"/>
<wire x1="10.16" y1="-18.415" x2="10.16" y2="-19.685" width="0.127" layer="21"/>
<wire x1="10.16" y1="-19.685" x2="9.525" y2="-20.32" width="0.127" layer="21"/>
<wire x1="8.255" y1="-17.78" x2="7.62" y2="-17.145" width="0.127" layer="21"/>
<wire x1="7.62" y1="-17.145" x2="7.62" y2="-15.875" width="0.127" layer="21"/>
<wire x1="7.62" y1="-15.875" x2="8.255" y2="-15.24" width="0.127" layer="21"/>
<wire x1="9.525" y1="-15.24" x2="10.16" y2="-15.875" width="0.127" layer="21"/>
<wire x1="10.16" y1="-15.875" x2="10.16" y2="-17.145" width="0.127" layer="21"/>
<wire x1="10.16" y1="-17.145" x2="9.525" y2="-17.78" width="0.127" layer="21"/>
<wire x1="8.255" y1="-15.24" x2="7.62" y2="-14.605" width="0.127" layer="21"/>
<wire x1="7.62" y1="-14.605" x2="7.62" y2="-13.335" width="0.127" layer="21"/>
<wire x1="7.62" y1="-13.335" x2="8.255" y2="-12.7" width="0.127" layer="21"/>
<wire x1="9.525" y1="-12.7" x2="10.16" y2="-13.335" width="0.127" layer="21"/>
<wire x1="10.16" y1="-13.335" x2="10.16" y2="-14.605" width="0.127" layer="21"/>
<wire x1="10.16" y1="-14.605" x2="9.525" y2="-15.24" width="0.127" layer="21"/>
<wire x1="8.255" y1="-12.7" x2="7.62" y2="-12.065" width="0.127" layer="21"/>
<wire x1="7.62" y1="-12.065" x2="7.62" y2="-10.795" width="0.127" layer="21"/>
<wire x1="7.62" y1="-10.795" x2="8.255" y2="-10.16" width="0.127" layer="21"/>
<wire x1="9.525" y1="-10.16" x2="10.16" y2="-10.795" width="0.127" layer="21"/>
<wire x1="10.16" y1="-10.795" x2="10.16" y2="-12.065" width="0.127" layer="21"/>
<wire x1="10.16" y1="-12.065" x2="9.525" y2="-12.7" width="0.127" layer="21"/>
<wire x1="8.255" y1="-10.16" x2="7.62" y2="-9.525" width="0.127" layer="21"/>
<wire x1="7.62" y1="-9.525" x2="7.62" y2="-8.255" width="0.127" layer="21"/>
<wire x1="7.62" y1="-8.255" x2="8.255" y2="-7.62" width="0.127" layer="21"/>
<wire x1="9.525" y1="-7.62" x2="10.16" y2="-8.255" width="0.127" layer="21"/>
<wire x1="10.16" y1="-8.255" x2="10.16" y2="-9.525" width="0.127" layer="21"/>
<wire x1="10.16" y1="-9.525" x2="9.525" y2="-10.16" width="0.127" layer="21"/>
<wire x1="8.255" y1="-7.62" x2="7.62" y2="-6.985" width="0.127" layer="21"/>
<wire x1="7.62" y1="-6.985" x2="7.62" y2="-5.715" width="0.127" layer="21"/>
<wire x1="7.62" y1="-5.715" x2="8.255" y2="-5.08" width="0.127" layer="21"/>
<wire x1="9.525" y1="-5.08" x2="10.16" y2="-5.715" width="0.127" layer="21"/>
<wire x1="10.16" y1="-5.715" x2="10.16" y2="-6.985" width="0.127" layer="21"/>
<wire x1="10.16" y1="-6.985" x2="9.525" y2="-7.62" width="0.127" layer="21"/>
<wire x1="8.255" y1="-5.08" x2="7.62" y2="-4.445" width="0.127" layer="21"/>
<wire x1="7.62" y1="-4.445" x2="7.62" y2="-3.175" width="0.127" layer="21"/>
<wire x1="7.62" y1="-3.175" x2="8.255" y2="-2.54" width="0.127" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="10.16" y2="-3.175" width="0.127" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="10.16" y2="-4.445" width="0.127" layer="21"/>
<wire x1="10.16" y1="-4.445" x2="9.525" y2="-5.08" width="0.127" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="7.62" y2="-1.905" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="-0.635" width="0.127" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="0" width="0.127" layer="21"/>
<wire x1="9.525" y1="0" x2="10.16" y2="-0.635" width="0.127" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.16" y2="-1.905" width="0.127" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.255" y1="0" x2="7.62" y2="0.635" width="0.127" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="1.905" width="0.127" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.127" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.127" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="0.635" width="0.127" layer="21"/>
<wire x1="10.16" y1="0.635" x2="9.525" y2="0" width="0.127" layer="21"/>
<wire x1="8.255" y1="2.54" x2="7.62" y2="3.175" width="0.127" layer="21"/>
<wire x1="7.62" y1="3.175" x2="7.62" y2="4.445" width="0.127" layer="21"/>
<wire x1="7.62" y1="4.445" x2="8.255" y2="5.08" width="0.127" layer="21"/>
<wire x1="9.525" y1="5.08" x2="10.16" y2="4.445" width="0.127" layer="21"/>
<wire x1="10.16" y1="4.445" x2="10.16" y2="3.175" width="0.127" layer="21"/>
<wire x1="10.16" y1="3.175" x2="9.525" y2="2.54" width="0.127" layer="21"/>
<wire x1="8.255" y1="5.08" x2="7.62" y2="5.715" width="0.127" layer="21"/>
<wire x1="7.62" y1="5.715" x2="7.62" y2="6.985" width="0.127" layer="21"/>
<wire x1="7.62" y1="6.985" x2="8.255" y2="7.62" width="0.127" layer="21"/>
<wire x1="9.525" y1="7.62" x2="10.16" y2="6.985" width="0.127" layer="21"/>
<wire x1="10.16" y1="6.985" x2="10.16" y2="5.715" width="0.127" layer="21"/>
<wire x1="10.16" y1="5.715" x2="9.525" y2="5.08" width="0.127" layer="21"/>
<wire x1="8.255" y1="7.62" x2="7.62" y2="8.255" width="0.127" layer="21"/>
<wire x1="7.62" y1="8.255" x2="7.62" y2="9.525" width="0.127" layer="21"/>
<wire x1="7.62" y1="9.525" x2="8.255" y2="10.16" width="0.127" layer="21"/>
<wire x1="9.525" y1="10.16" x2="10.16" y2="9.525" width="0.127" layer="21"/>
<wire x1="10.16" y1="9.525" x2="10.16" y2="8.255" width="0.127" layer="21"/>
<wire x1="10.16" y1="8.255" x2="9.525" y2="7.62" width="0.127" layer="21"/>
<wire x1="8.255" y1="10.16" x2="7.62" y2="10.795" width="0.127" layer="21"/>
<wire x1="7.62" y1="10.795" x2="7.62" y2="12.065" width="0.127" layer="21"/>
<wire x1="7.62" y1="12.065" x2="8.255" y2="12.7" width="0.127" layer="21"/>
<wire x1="9.525" y1="12.7" x2="10.16" y2="12.065" width="0.127" layer="21"/>
<wire x1="10.16" y1="12.065" x2="10.16" y2="10.795" width="0.127" layer="21"/>
<wire x1="10.16" y1="10.795" x2="9.525" y2="10.16" width="0.127" layer="21"/>
<wire x1="8.255" y1="12.7" x2="7.62" y2="13.335" width="0.127" layer="21"/>
<wire x1="7.62" y1="13.335" x2="7.62" y2="14.605" width="0.127" layer="21"/>
<wire x1="7.62" y1="14.605" x2="8.255" y2="15.24" width="0.127" layer="21"/>
<wire x1="9.525" y1="15.24" x2="10.16" y2="14.605" width="0.127" layer="21"/>
<wire x1="10.16" y1="14.605" x2="10.16" y2="13.335" width="0.127" layer="21"/>
<wire x1="10.16" y1="13.335" x2="9.525" y2="12.7" width="0.127" layer="21"/>
<wire x1="8.255" y1="15.24" x2="7.62" y2="15.875" width="0.127" layer="21"/>
<wire x1="7.62" y1="15.875" x2="7.62" y2="17.145" width="0.127" layer="21"/>
<wire x1="7.62" y1="17.145" x2="8.255" y2="17.78" width="0.127" layer="21"/>
<wire x1="9.525" y1="17.78" x2="10.16" y2="17.145" width="0.127" layer="21"/>
<wire x1="10.16" y1="17.145" x2="10.16" y2="15.875" width="0.127" layer="21"/>
<wire x1="10.16" y1="15.875" x2="9.525" y2="15.24" width="0.127" layer="21"/>
<wire x1="8.255" y1="17.78" x2="7.62" y2="18.415" width="0.127" layer="21"/>
<wire x1="7.62" y1="18.415" x2="7.62" y2="19.685" width="0.127" layer="21"/>
<wire x1="7.62" y1="19.685" x2="8.255" y2="20.32" width="0.127" layer="21"/>
<wire x1="9.525" y1="20.32" x2="10.16" y2="19.685" width="0.127" layer="21"/>
<wire x1="10.16" y1="19.685" x2="10.16" y2="18.415" width="0.127" layer="21"/>
<wire x1="10.16" y1="18.415" x2="9.525" y2="17.78" width="0.127" layer="21"/>
<wire x1="8.255" y1="20.32" x2="7.62" y2="20.955" width="0.127" layer="21"/>
<wire x1="7.62" y1="20.955" x2="7.62" y2="22.225" width="0.127" layer="21"/>
<wire x1="7.62" y1="22.225" x2="8.255" y2="22.86" width="0.127" layer="21"/>
<wire x1="9.525" y1="22.86" x2="10.16" y2="22.225" width="0.127" layer="21"/>
<wire x1="10.16" y1="22.225" x2="10.16" y2="20.955" width="0.127" layer="21"/>
<wire x1="10.16" y1="20.955" x2="9.525" y2="20.32" width="0.127" layer="21"/>
<wire x1="8.255" y1="22.86" x2="7.62" y2="23.495" width="0.127" layer="21"/>
<wire x1="7.62" y1="23.495" x2="7.62" y2="24.765" width="0.127" layer="21"/>
<wire x1="7.62" y1="24.765" x2="8.255" y2="25.4" width="0.127" layer="21"/>
<wire x1="9.525" y1="25.4" x2="10.16" y2="24.765" width="0.127" layer="21"/>
<wire x1="10.16" y1="24.765" x2="10.16" y2="23.495" width="0.127" layer="21"/>
<wire x1="10.16" y1="23.495" x2="9.525" y2="22.86" width="0.127" layer="21"/>
<wire x1="8.255" y1="25.4" x2="9.525" y2="25.4" width="0.127" layer="21"/>
<pad name="D_GND" x="2.54" y="-5.715" drill="1.016" diameter="1.778"/>
<pad name="SWDIO" x="5.08" y="-5.715" drill="1.016" diameter="1.778"/>
<pad name="SWCLK" x="0" y="-5.715" drill="1.016" diameter="1.778"/>
<wire x1="6.35" y1="-5.08" x2="6.35" y2="-6.35" width="0.127" layer="21"/>
<wire x1="6.35" y1="-6.35" x2="5.715" y2="-6.985" width="0.127" layer="21"/>
<wire x1="5.715" y1="-6.985" x2="4.445" y2="-6.985" width="0.127" layer="21"/>
<wire x1="4.445" y1="-6.985" x2="3.81" y2="-6.35" width="0.127" layer="21"/>
<wire x1="3.81" y1="-5.08" x2="4.445" y2="-4.445" width="0.127" layer="21"/>
<wire x1="4.445" y1="-4.445" x2="5.715" y2="-4.445" width="0.127" layer="21"/>
<wire x1="5.715" y1="-4.445" x2="6.35" y2="-5.08" width="0.127" layer="21"/>
<wire x1="3.81" y1="-6.35" x2="3.175" y2="-6.985" width="0.127" layer="21"/>
<wire x1="3.175" y1="-6.985" x2="1.905" y2="-6.985" width="0.127" layer="21"/>
<wire x1="1.905" y1="-6.985" x2="1.27" y2="-6.35" width="0.127" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="1.905" y2="-4.445" width="0.127" layer="21"/>
<wire x1="1.905" y1="-4.445" x2="3.175" y2="-4.445" width="0.127" layer="21"/>
<wire x1="3.175" y1="-4.445" x2="3.81" y2="-5.08" width="0.127" layer="21"/>
<wire x1="1.27" y1="-6.35" x2="0.635" y2="-6.985" width="0.127" layer="21"/>
<wire x1="0.635" y1="-6.985" x2="-0.635" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-6.985" x2="-1.27" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-6.35" x2="-1.27" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-0.635" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-4.445" x2="0.635" y2="-4.445" width="0.127" layer="21"/>
<wire x1="0.635" y1="-4.445" x2="1.27" y2="-5.08" width="0.127" layer="21"/>
<text x="0" y="1.27" size="0.8128" layer="21" align="center">Raspberry Pi Pico</text>
<circle x="-7.366" y="24.13" radius="0.254" width="0.127" layer="21"/>
<rectangle x1="-7.62" y1="-24.13" x2="7.62" y2="-7.62" layer="41"/>
<rectangle x1="-7.62" y1="-24.13" x2="7.62" y2="-7.62" layer="42"/>
</package>
<package name="RESISTOR_10.16MM">
<pad name="Y" x="5.08" y="0" drill="1.016" diameter="1.778"/>
<pad name="X" x="-5.08" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0" width="0.127" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.127" layer="21"/>
<wire x1="-2.54" y1="0.889" x2="-2.54" y2="0" width="0.127" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-2.54" y1="0" x2="-5.08" y2="0" width="0.127" layer="21"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.127" layer="21"/>
<text x="0" y="1.651" size="0.8128" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="0.8128" layer="27" align="center">&gt;VALUE</text>
</package>
<package name="PASSIVE_2.54MM">
<pad name="X" x="-1.27" y="0" drill="1.016" diameter="1.778"/>
<pad name="Y" x="1.27" y="0" drill="1.016" diameter="1.778"/>
<text x="-3.175" y="0" size="0.8128" layer="25" rot="R90" align="center">&gt;NAME</text>
<text x="3.175" y="0" size="0.8128" layer="27" align="center-left">&gt;VALUE</text>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.127" layer="21"/>
</package>
<package name="LED_3MM">
<pad name="A" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon"/>
<pad name="C" x="1.27" y="0" drill="1.016" diameter="1.778" shape="square"/>
<text x="2.54" y="0" size="0.8128" layer="27" align="center-left">&gt;VALUE</text>
<wire x1="1.016" y1="1.143" x2="1.016" y2="-1.143" width="0.127" layer="21"/>
<wire x1="1.016" y1="-1.143" x2="1.016" y2="1.143" width="0.127" layer="21" curve="-263.267079"/>
<wire x1="1.016" y1="1.905" x2="1.524" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.524" y1="1.905" x2="-1.016" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.651" x2="-1.27" y2="2.159" width="0.127" layer="21"/>
</package>
<package name="LED_5MM">
<pad name="A" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon"/>
<pad name="C" x="1.27" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="2.159" y1="1.27" x2="2.159" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="2.159" y2="1.27" width="0.127" layer="21" curve="-299.06891"/>
<text x="2.54" y="0" size="0.8128" layer="27" align="center-left">&gt;VALUE</text>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.127" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="1.778" width="0.127" layer="21"/>
</package>
<package name="CAPACITOR_POLAR_4.2MM">
<pad name="A" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon"/>
<pad name="C" x="1.27" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="-0.254" y1="0.635" x2="-0.254" y2="0" width="0.127" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0.254" y1="0.635" x2="0.254" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-0.254" y1="0" x2="-1.27" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="1.27" y2="0" width="0.127" layer="21"/>
<text x="-2.54" y="0" size="0.8128" layer="25" rot="R90" align="bottom-center">&gt;NAME</text>
<text x="2.54" y="0" size="0.8128" layer="27" rot="R90" align="top-center">&gt;VALUE</text>
<circle x="0" y="0" radius="2.1" width="0.127" layer="21"/>
<wire x1="1.651" y1="1.905" x2="2.159" y2="1.905" width="0.127" layer="21"/>
<wire x1="-2.159" y1="1.905" x2="-1.651" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.905" y1="1.651" x2="-1.905" y2="2.159" width="0.127" layer="21"/>
</package>
<package name="CAPACITOR_POLAR_5MM">
<pad name="A" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon"/>
<pad name="C" x="1.27" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="-0.254" y1="0.635" x2="-0.254" y2="0" width="0.127" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0.254" y1="0.635" x2="0.254" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-0.254" y1="0" x2="-1.27" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="1.27" y2="0" width="0.127" layer="21"/>
<text x="-3.175" y="0" size="0.8128" layer="25" rot="R90" align="center">&gt;NAME</text>
<text x="3.175" y="0" size="0.8128" layer="27" rot="R90" align="center">&gt;VALUE</text>
<circle x="0" y="0" radius="2.5" width="0.127" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.127" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="1.778" width="0.127" layer="21"/>
</package>
<package name="CAPACITOR_POLAR_6.4MM">
<pad name="A" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon"/>
<pad name="C" x="1.27" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="-0.254" y1="0.635" x2="-0.254" y2="0" width="0.127" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0.254" y1="0.635" x2="0.254" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-0.254" y1="0" x2="-1.27" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="1.27" y2="0" width="0.127" layer="21"/>
<text x="0" y="-1.905" size="0.8128" layer="25" rot="R180" align="center">&gt;NAME</text>
<text x="3.81" y="0" size="0.8128" layer="27" rot="R90" align="top-center">&gt;VALUE</text>
<circle x="0" y="0" radius="3.2" width="0.127" layer="21"/>
<wire x1="1.016" y1="1.905" x2="1.524" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.524" y1="1.905" x2="-1.016" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.651" x2="-1.27" y2="2.159" width="0.127" layer="21"/>
</package>
<package name="CAPACITOR_POLAR_8MM">
<pad name="A" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon"/>
<pad name="C" x="1.27" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="-0.254" y1="0.635" x2="-0.254" y2="0" width="0.127" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0.254" y1="0.635" x2="0.254" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-0.254" y1="0" x2="-1.27" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="1.27" y2="0" width="0.127" layer="21"/>
<text x="0" y="-1.905" size="0.8128" layer="25" align="center">&gt;NAME</text>
<text x="5.08" y="0" size="0.8128" layer="27" rot="R90" align="center">&gt;VALUE</text>
<circle x="0" y="0" radius="4" width="0.127" layer="21"/>
<wire x1="1.016" y1="1.905" x2="1.524" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.524" y1="1.905" x2="-1.016" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.651" x2="-1.27" y2="2.159" width="0.127" layer="21"/>
</package>
<package name="HEADER_13-PIN">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="-1.27" y="-1.27" radius="0.254" width="0.127" layer="21"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="1.27" width="0.127" layer="21"/>
<pad name="3" x="0" y="5.08" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="3.81" x2="-1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="0.635" y1="6.35" x2="1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="3.81" width="0.127" layer="21"/>
<pad name="4" x="0" y="7.62" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="6.35" x2="-1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="-1.27" y1="8.255" x2="-0.635" y2="8.89" width="0.127" layer="21"/>
<wire x1="0.635" y1="8.89" x2="1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="1.27" y1="8.255" x2="1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="1.27" y1="6.985" x2="0.635" y2="6.35" width="0.127" layer="21"/>
<pad name="5" x="0" y="10.16" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="8.89" x2="-1.27" y2="9.525" width="0.127" layer="21"/>
<wire x1="-1.27" y1="9.525" x2="-1.27" y2="10.795" width="0.127" layer="21"/>
<wire x1="-1.27" y1="10.795" x2="-0.635" y2="11.43" width="0.127" layer="21"/>
<wire x1="0.635" y1="11.43" x2="1.27" y2="10.795" width="0.127" layer="21"/>
<wire x1="1.27" y1="10.795" x2="1.27" y2="9.525" width="0.127" layer="21"/>
<wire x1="1.27" y1="9.525" x2="0.635" y2="8.89" width="0.127" layer="21"/>
<pad name="6" x="0" y="12.7" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="11.43" x2="-1.27" y2="12.065" width="0.127" layer="21"/>
<wire x1="-1.27" y1="12.065" x2="-1.27" y2="13.335" width="0.127" layer="21"/>
<wire x1="-1.27" y1="13.335" x2="-0.635" y2="13.97" width="0.127" layer="21"/>
<wire x1="0.635" y1="13.97" x2="1.27" y2="13.335" width="0.127" layer="21"/>
<wire x1="1.27" y1="13.335" x2="1.27" y2="12.065" width="0.127" layer="21"/>
<wire x1="1.27" y1="12.065" x2="0.635" y2="11.43" width="0.127" layer="21"/>
<pad name="7" x="0" y="15.24" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="13.97" x2="-1.27" y2="14.605" width="0.127" layer="21"/>
<wire x1="-1.27" y1="14.605" x2="-1.27" y2="15.875" width="0.127" layer="21"/>
<wire x1="-1.27" y1="15.875" x2="-0.635" y2="16.51" width="0.127" layer="21"/>
<wire x1="0.635" y1="16.51" x2="1.27" y2="15.875" width="0.127" layer="21"/>
<wire x1="1.27" y1="15.875" x2="1.27" y2="14.605" width="0.127" layer="21"/>
<wire x1="1.27" y1="14.605" x2="0.635" y2="13.97" width="0.127" layer="21"/>
<pad name="8" x="0" y="17.78" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="16.51" x2="-1.27" y2="17.145" width="0.127" layer="21"/>
<wire x1="-1.27" y1="17.145" x2="-1.27" y2="18.415" width="0.127" layer="21"/>
<wire x1="-1.27" y1="18.415" x2="-0.635" y2="19.05" width="0.127" layer="21"/>
<wire x1="0.635" y1="19.05" x2="1.27" y2="18.415" width="0.127" layer="21"/>
<wire x1="1.27" y1="18.415" x2="1.27" y2="17.145" width="0.127" layer="21"/>
<wire x1="1.27" y1="17.145" x2="0.635" y2="16.51" width="0.127" layer="21"/>
<pad name="9" x="0" y="20.32" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="19.05" x2="-1.27" y2="19.685" width="0.127" layer="21"/>
<wire x1="-1.27" y1="19.685" x2="-1.27" y2="20.955" width="0.127" layer="21"/>
<wire x1="1.27" y1="20.955" x2="1.27" y2="19.685" width="0.127" layer="21"/>
<wire x1="1.27" y1="19.685" x2="0.635" y2="19.05" width="0.127" layer="21"/>
<wire x1="-1.27" y1="20.955" x2="-0.635" y2="21.59" width="0.127" layer="21"/>
<wire x1="0.635" y1="21.59" x2="1.27" y2="20.955" width="0.127" layer="21"/>
<pad name="10" x="0" y="22.86" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="21.59" x2="-1.27" y2="22.225" width="0.127" layer="21"/>
<wire x1="-1.27" y1="22.225" x2="-1.27" y2="23.495" width="0.127" layer="21"/>
<wire x1="-1.27" y1="23.495" x2="-0.635" y2="24.13" width="0.127" layer="21"/>
<wire x1="0.635" y1="24.13" x2="1.27" y2="23.495" width="0.127" layer="21"/>
<wire x1="1.27" y1="23.495" x2="1.27" y2="22.225" width="0.127" layer="21"/>
<wire x1="1.27" y1="22.225" x2="0.635" y2="21.59" width="0.127" layer="21"/>
<pad name="11" x="0" y="25.4" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="24.13" x2="-1.27" y2="24.765" width="0.127" layer="21"/>
<wire x1="-1.27" y1="24.765" x2="-1.27" y2="26.035" width="0.127" layer="21"/>
<wire x1="-1.27" y1="26.035" x2="-0.635" y2="26.67" width="0.127" layer="21"/>
<wire x1="0.635" y1="26.67" x2="1.27" y2="26.035" width="0.127" layer="21"/>
<wire x1="1.27" y1="26.035" x2="1.27" y2="24.765" width="0.127" layer="21"/>
<wire x1="1.27" y1="24.765" x2="0.635" y2="24.13" width="0.127" layer="21"/>
<pad name="12" x="0" y="27.94" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="26.67" x2="-1.27" y2="27.305" width="0.127" layer="21"/>
<wire x1="-1.27" y1="27.305" x2="-1.27" y2="28.575" width="0.127" layer="21"/>
<wire x1="-1.27" y1="28.575" x2="-0.635" y2="29.21" width="0.127" layer="21"/>
<wire x1="0.635" y1="29.21" x2="1.27" y2="28.575" width="0.127" layer="21"/>
<wire x1="1.27" y1="28.575" x2="1.27" y2="27.305" width="0.127" layer="21"/>
<wire x1="1.27" y1="27.305" x2="0.635" y2="26.67" width="0.127" layer="21"/>
<pad name="13" x="0" y="30.48" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="29.21" x2="-1.27" y2="29.845" width="0.127" layer="21"/>
<wire x1="-1.27" y1="29.845" x2="-1.27" y2="31.115" width="0.127" layer="21"/>
<wire x1="-1.27" y1="31.115" x2="-0.635" y2="31.75" width="0.127" layer="21"/>
<wire x1="-0.635" y1="31.75" x2="0.635" y2="31.75" width="0.127" layer="21"/>
<wire x1="0.635" y1="31.75" x2="1.27" y2="31.115" width="0.127" layer="21"/>
<wire x1="1.27" y1="31.115" x2="1.27" y2="29.845" width="0.127" layer="21"/>
<wire x1="1.27" y1="29.845" x2="0.635" y2="29.21" width="0.127" layer="21"/>
<text x="-1.905" y="-1.27" size="0.8128" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
</package>
<package name="HEADER_4-PIN">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.778" shape="square"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.127" layer="21"/>
<circle x="-1.27" y="-1.27" radius="0.254" width="0.127" layer="21"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.127" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="1.905" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="1.27" width="0.127" layer="21"/>
<pad name="3" x="0" y="5.08" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="3.81" x2="-1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="6.35" width="0.127" layer="21"/>
<wire x1="0.635" y1="6.35" x2="1.27" y2="5.715" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="4.445" width="0.127" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="3.81" width="0.127" layer="21"/>
<pad name="4" x="0" y="7.62" drill="1.016" diameter="1.778"/>
<wire x1="-0.635" y1="6.35" x2="-1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="-1.27" y1="8.255" x2="-0.635" y2="8.89" width="0.127" layer="21"/>
<wire x1="-0.635" y1="8.89" x2="0.635" y2="8.89" width="0.127" layer="21"/>
<wire x1="0.635" y1="8.89" x2="1.27" y2="8.255" width="0.127" layer="21"/>
<wire x1="1.27" y1="8.255" x2="1.27" y2="6.985" width="0.127" layer="21"/>
<wire x1="1.27" y1="6.985" x2="0.635" y2="6.35" width="0.127" layer="21"/>
<text x="-1.905" y="-1.27" size="0.8128" layer="27" rot="R90" align="center-left">&gt;VALUE</text>
</package>
<package name="R5210_4-PIN">
<pad name="1" x="-3.81" y="0" drill="1.016" diameter="1.778" shape="square"/>
<pad name="2" x="-1.27" y="0" drill="1.016" diameter="1.778"/>
<wire x1="-5.08" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.175" x2="-5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.175" x2="-5.08" y2="2.54" width="0.1524" layer="21"/>
<text x="-3.81" y="-3.937" size="0.8128" layer="27" align="center-left">&gt;VALUE</text>
<pad name="3" x="1.27" y="0" drill="1.016" diameter="1.778"/>
<pad name="4" x="3.81" y="0" drill="1.016" diameter="1.778"/>
<circle x="-3.81" y="-3.175" radius="0.254" width="0.127" layer="21"/>
</package>
<package name="SCREW-TERMINAL_4-WAY">
<pad name="1" x="-7.62" y="0" drill="1.27" diameter="2.032" shape="square"/>
<pad name="2" x="-2.54" y="0" drill="1.27" diameter="2.032"/>
<wire x1="-10.16" y1="-3.81" x2="10.16" y2="-3.81" width="0.127" layer="21"/>
<wire x1="10.16" y1="-3.81" x2="10.16" y2="3.81" width="0.127" layer="21"/>
<wire x1="10.16" y1="3.81" x2="-10.16" y2="3.81" width="0.127" layer="21"/>
<wire x1="-10.16" y1="3.81" x2="-10.16" y2="-3.81" width="0.127" layer="21"/>
<circle x="-7.62" y="-3.81" radius="0.254" width="0.127" layer="21"/>
<text x="0" y="4.699" size="0.8128" layer="27" align="center">&gt;VALUE</text>
<pad name="3" x="2.54" y="0" drill="1.27" diameter="2.032"/>
<pad name="4" x="7.62" y="0" drill="1.27" diameter="2.032"/>
</package>
<package name="TRIM-POT_A">
<pad name="1" x="2.54" y="0" drill="1.016" diameter="1.778"/>
<pad name="X" x="-2.54" y="2.54" drill="1.016" diameter="1.778"/>
<pad name="Y" x="-2.54" y="-2.54" drill="1.016" diameter="1.778"/>
<wire x1="2.54" y1="2.54" x2="-2.54" y2="2.54" width="0.127" layer="21"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0.254" y1="1.27" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.524" y2="1.27" width="0.127" layer="21"/>
<wire x1="-1.524" y1="1.27" x2="-1.524" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.524" y1="-1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0.254" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0.254" y1="-1.27" x2="0.254" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="1.27" width="0.127" layer="21"/>
<wire x1="-2.54" y1="2.54" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-2.54" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="0.889" y2="0.635" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="0.889" y2="-0.635" width="0.127" layer="21"/>
<text x="-0.635" y="0" size="0.8128" layer="25" rot="R90" align="center">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="0.8128" layer="27" align="center-left">&gt;VALUE</text>
<wire x1="2.54" y1="2.54" x2="2.54" y2="0" width="0.127" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="0" x2="0.254" y2="0" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="SHEET">
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="2.54" y="2.54" size="1.27" layer="94" align="center-left">CREATOR:</text>
<wire x1="104.14" y1="0" x2="81.28" y2="0" width="0.254" layer="94"/>
<wire x1="81.28" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="81.28" y2="5.08" width="0.254" layer="94"/>
<wire x1="81.28" y1="5.08" x2="104.14" y2="5.08" width="0.254" layer="94"/>
<wire x1="104.14" y1="5.08" x2="104.14" y2="0" width="0.254" layer="94"/>
<text x="2.54" y="12.7" size="1.27" layer="94" align="center-left">PROJECT:</text>
<wire x1="0" y1="15.24" x2="104.14" y2="15.24" width="0.254" layer="94"/>
<wire x1="104.14" y1="15.24" x2="104.14" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="83.82" y="2.54" size="1.27" layer="94" align="center-left">DATE:               REV: </text>
<text x="2.54" y="7.62" size="1.27" layer="94" align="center-left">PART:</text>
<wire x1="0" y1="10.16" x2="104.14" y2="10.16" width="0.254" layer="94"/>
<wire x1="81.28" y1="5.08" x2="81.28" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="GND">
<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<text x="0" y="-3.81" size="0.8128" layer="95" align="center">GND</text>
</symbol>
<symbol name="JACK_CENTER-POS">
<circle x="0" y="0" radius="1.29515" width="2.54" layer="94"/>
<wire x1="2.54" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94" curve="-270"/>
<pin name="-V" x="0" y="-7.62" visible="off" length="short" direction="sup" rot="R90"/>
<pin name="+V" x="0" y="7.62" visible="off" length="short" direction="pwr" rot="R270"/>
<wire x1="0" y1="5.08" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.032" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="5.588" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="4.572" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-5.08" x2="-3.048" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="-3.556" width="0.1524" layer="94"/>
<text x="2.54" y="-5.08" size="0.8128" layer="95">&gt;NAME</text>
<text x="2.54" y="5.08" size="0.8128" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="+5V">
<wire x1="-2.54" y1="2.54" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<pin name="+5V" x="0" y="0" visible="off" length="middle" direction="sup" rot="R90"/>
<text x="0" y="6.35" size="0.8128" layer="94" align="center">+5V</text>
</symbol>
<symbol name="PORT_3-PIN">
<wire x1="-2.54" y1="7.62" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="middle"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.8128" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="middle"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.8128" layer="94"/>
<pin name="3" x="-5.08" y="5.08" visible="pad" length="middle"/>
<wire x1="0" y1="5.08" x2="-2.54" y2="5.08" width="0.8128" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<text x="-2.54" y="8.89" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="PORT_2-PIN">
<wire x1="-2.54" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="0" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="middle"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.8128" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="middle"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.8128" layer="94"/>
<text x="-2.54" y="6.35" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="RASPBERRY-PI-PICO">
<wire x1="-12.7" y1="30.48" x2="-12.7" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-25.4" x2="12.7" y2="-25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="-25.4" x2="12.7" y2="30.48" width="0.254" layer="94"/>
<wire x1="12.7" y1="30.48" x2="-12.7" y2="30.48" width="0.254" layer="94"/>
<text x="-12.7" y="31.75" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="12.7" y="31.75" size="0.8128" layer="96" align="center-right">&gt;VALUE</text>
<pin name="GP1/RX" x="-17.78" y="25.4" visible="pin" length="middle"/>
<pin name="GP2" x="-17.78" y="22.86" visible="pin" length="middle"/>
<pin name="GP3" x="-17.78" y="20.32" visible="pin" length="middle"/>
<pin name="GP4/SDA" x="-17.78" y="17.78" visible="pin" length="middle"/>
<pin name="GP5/SCL" x="-17.78" y="15.24" visible="pin" length="middle"/>
<pin name="GP6" x="-17.78" y="12.7" visible="pin" length="middle"/>
<pin name="GP7" x="-17.78" y="10.16" visible="pin" length="middle"/>
<pin name="GP8" x="-17.78" y="7.62" visible="pin" length="middle"/>
<pin name="GP9" x="-17.78" y="5.08" visible="pin" length="middle"/>
<pin name="GP10" x="-17.78" y="2.54" visible="pin" length="middle"/>
<pin name="GP11" x="-17.78" y="0" visible="pin" length="middle"/>
<pin name="GP12" x="-17.78" y="-2.54" visible="pin" length="middle"/>
<pin name="GP13" x="-17.78" y="-5.08" visible="pin" length="middle"/>
<pin name="GP14" x="-17.78" y="-7.62" visible="pin" length="middle"/>
<pin name="GP15" x="-17.78" y="-10.16" visible="pin" length="middle"/>
<pin name="GP16" x="-17.78" y="-12.7" visible="pin" length="middle"/>
<pin name="GP17" x="-17.78" y="-15.24" visible="pin" length="middle"/>
<pin name="GP18" x="-17.78" y="-17.78" visible="pin" length="middle"/>
<pin name="GP19" x="-17.78" y="-20.32" visible="pin" length="middle"/>
<pin name="GP20" x="-17.78" y="-22.86" visible="pin" length="middle"/>
<pin name="GP21" x="17.78" y="-17.78" visible="pin" length="middle" rot="R180"/>
<pin name="GP22" x="17.78" y="-15.24" visible="pin" length="middle" rot="R180"/>
<pin name="GP26/ADC0" x="17.78" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="GP27/ADC1" x="17.78" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="GP28/ADC2" x="17.78" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="VBUS" x="17.78" y="27.94" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="VSYS" x="17.78" y="25.4" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="17.78" y="-22.86" visible="pin" length="middle" direction="sup" rot="R180"/>
<pin name="3V3_EN" x="17.78" y="17.78" visible="pin" length="middle" rot="R180"/>
<pin name="3V3(OUT)" x="17.78" y="20.32" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="VREF" x="17.78" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="SWDIO" x="17.78" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="SWCLK" x="17.78" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="GP0/TX" x="-17.78" y="27.94" visible="pin" length="middle"/>
<pin name="RUN/RST" x="17.78" y="7.62" visible="pin" length="middle" rot="R180"/>
</symbol>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<pin name="X" x="-7.62" y="0" visible="off" length="middle" direction="pas" swaplevel="1"/>
<pin name="Y" x="7.62" y="0" visible="off" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.032" y="0" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="0" y="-2.54" size="0.8128" layer="96" align="bottom-center">&gt;VALUE</text>
</symbol>
<symbol name="LED">
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.778" x2="2.032" y2="4.318" width="0.254" layer="94"/>
<wire x1="2.032" y1="4.318" x2="0.762" y2="3.302" width="0.254" layer="94"/>
<wire x1="2.032" y1="4.318" x2="2.032" y2="2.794" width="0.254" layer="94"/>
<wire x1="-0.762" y1="2.54" x2="0.508" y2="5.08" width="0.254" layer="94"/>
<wire x1="0.508" y1="5.08" x2="-0.762" y2="4.064" width="0.254" layer="94"/>
<wire x1="0.508" y1="5.08" x2="0.508" y2="3.556" width="0.254" layer="94"/>
<pin name="A" x="-7.62" y="0" visible="off" length="middle" direction="in"/>
<pin name="C" x="7.62" y="0" visible="off" length="middle" direction="out" rot="R180"/>
<text x="-2.032" y="0" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="3.302" y="-1.27" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="+3V3">
<wire x1="-2.54" y1="2.54" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<pin name="+3V3" x="0" y="0" visible="off" length="middle" direction="sup" rot="R90"/>
<text x="0" y="6.35" size="0.8128" layer="94" align="center">+3V3</text>
</symbol>
<symbol name="CAPACITOR_POLARISED">
<wire x1="-0.762" y1="2.54" x2="-0.762" y2="0" width="0.254" layer="94"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="0" width="0.254" layer="94"/>
<pin name="A" x="-7.62" y="0" visible="off" length="middle" direction="in"/>
<pin name="C" x="7.62" y="0" visible="off" length="middle" direction="out" rot="R180"/>
<wire x1="0.762" y1="0" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="-3.048" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.032" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="1.778" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0.762" y2="0" width="0.1524" layer="94"/>
<text x="2.54" y="1.27" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="2.54" y="-1.27" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="PORT_13-PIN">
<wire x1="-2.54" y1="33.02" x2="2.54" y2="33.02" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="middle"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.8128" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="middle"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.8128" layer="94"/>
<pin name="3" x="-5.08" y="5.08" visible="pad" length="middle"/>
<wire x1="0" y1="5.08" x2="-2.54" y2="5.08" width="0.8128" layer="94"/>
<wire x1="-2.54" y1="33.02" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="4" x="-5.08" y="7.62" visible="pad" length="middle"/>
<wire x1="0" y1="7.62" x2="-2.54" y2="7.62" width="0.8128" layer="94"/>
<pin name="5" x="-5.08" y="10.16" visible="pad" length="middle"/>
<wire x1="0" y1="10.16" x2="-2.54" y2="10.16" width="0.8128" layer="94"/>
<pin name="6" x="-5.08" y="12.7" visible="pad" length="middle"/>
<wire x1="0" y1="12.7" x2="-2.54" y2="12.7" width="0.8128" layer="94"/>
<pin name="7" x="-5.08" y="15.24" visible="pad" length="middle"/>
<wire x1="0" y1="15.24" x2="-2.54" y2="15.24" width="0.8128" layer="94"/>
<pin name="8" x="-5.08" y="17.78" visible="pad" length="middle"/>
<wire x1="0" y1="17.78" x2="-2.54" y2="17.78" width="0.8128" layer="94"/>
<pin name="9" x="-5.08" y="20.32" visible="pad" length="middle"/>
<wire x1="0" y1="20.32" x2="-2.54" y2="20.32" width="0.8128" layer="94"/>
<text x="-2.54" y="34.29" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
<pin name="10" x="-5.08" y="22.86" visible="pad" length="middle"/>
<wire x1="0" y1="22.86" x2="-2.54" y2="22.86" width="0.8128" layer="94"/>
<pin name="11" x="-5.08" y="25.4" visible="pad" length="middle"/>
<wire x1="0" y1="25.4" x2="-2.54" y2="25.4" width="0.8128" layer="94"/>
<pin name="12" x="-5.08" y="27.94" visible="pad" length="middle"/>
<wire x1="0" y1="27.94" x2="-2.54" y2="27.94" width="0.8128" layer="94"/>
<pin name="13" x="-5.08" y="30.48" visible="pad" length="middle"/>
<wire x1="0" y1="30.48" x2="-2.54" y2="30.48" width="0.8128" layer="94"/>
</symbol>
<symbol name="PORT_4-PIN">
<wire x1="-2.54" y1="10.16" x2="2.54" y2="10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="middle"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.8128" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.254" width="0.254" layer="94"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="middle"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.8128" layer="94"/>
<pin name="3" x="-5.08" y="5.08" visible="pad" length="middle"/>
<wire x1="0" y1="5.08" x2="-2.54" y2="5.08" width="0.8128" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<pin name="4" x="-5.08" y="7.62" visible="pad" length="middle"/>
<wire x1="0" y1="7.62" x2="-2.54" y2="7.62" width="0.8128" layer="94"/>
<text x="-2.54" y="11.43" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="RESISTOR_LDR">
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<pin name="X" x="-7.62" y="0" visible="off" length="middle" direction="pas" swaplevel="1"/>
<pin name="Y" x="7.62" y="0" visible="off" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.032" y="0" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="0" y="-2.54" size="0.8128" layer="96" align="bottom-center">&gt;VALUE</text>
<wire x1="0.254" y1="4.318" x2="-1.016" y2="1.778" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="0.254" y2="2.794" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="-1.016" y2="3.302" width="0.254" layer="94"/>
<wire x1="2.032" y1="4.318" x2="0.762" y2="1.778" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.778" x2="2.032" y2="2.794" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.778" x2="0.762" y2="3.302" width="0.254" layer="94"/>
</symbol>
<symbol name="RESISTOR_VARIABLE">
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<pin name="X" x="-7.62" y="0" visible="off" length="middle" direction="pas" swaplevel="1"/>
<pin name="Y" x="7.62" y="0" visible="off" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.032" y="0" size="0.8128" layer="95" align="center-left">&gt;NAME</text>
<text x="0" y="2.54" size="0.8128" layer="96" align="top-center">&gt;VALUE</text>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<pin name="1" x="0" y="-7.62" visible="off" length="middle" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SHEET">
<gates>
<gate name="G$1" symbol="SHEET" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND">
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DC-POWER" prefix="DC" uservalue="yes">
<gates>
<gate name="DC-POWER" symbol="JACK_CENTER-POS" x="0" y="0"/>
</gates>
<devices>
<device name="_5.5X2.1MM_PCB-JACK" package="DC-JACK_5.5X2.1MM">
<connects>
<connect gate="DC-POWER" pin="+V" pad="CENTER"/>
<connect gate="DC-POWER" pin="-V" pad="SLEEVE_A SLEEVE_B" route="any"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_HEADER" package="HEADER_2-PIN">
<connects>
<connect gate="DC-POWER" pin="+V" pad="2"/>
<connect gate="DC-POWER" pin="-V" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_R5210" package="R5210_2-PIN">
<connects>
<connect gate="DC-POWER" pin="+V" pad="2"/>
<connect gate="DC-POWER" pin="-V" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SCREW-TERMINAL" package="SCREW-TERMINAL_2-WAY">
<connects>
<connect gate="DC-POWER" pin="+V" pad="2"/>
<connect gate="DC-POWER" pin="-V" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V">
<gates>
<gate name="G$1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PORT_3-PIN" prefix="P" uservalue="yes">
<gates>
<gate name="P" symbol="PORT_3-PIN" x="0" y="0"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_3-PIN">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="2" pad="2"/>
<connect gate="P" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_R5210" package="R5210_3-PIN">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="2" pad="2"/>
<connect gate="P" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SCREW-TERMINAL" package="SCREW-TERMINAL_3-WAY">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="2" pad="2"/>
<connect gate="P" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PORT_2-PIN" prefix="P" uservalue="yes">
<gates>
<gate name="P" symbol="PORT_2-PIN" x="0" y="0"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_2-PIN">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_R5210" package="R5210_2-PIN">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SCREW-TERMINAL" package="SCREW-TERMINAL_2-WAY">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RASPBERRY-PI-PICO" prefix="RP" uservalue="yes">
<gates>
<gate name="RASP-PI-PICO" symbol="RASPBERRY-PI-PICO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RASPBERRY-PI-PICO">
<connects>
<connect gate="RASP-PI-PICO" pin="3V3(OUT)" pad="36"/>
<connect gate="RASP-PI-PICO" pin="3V3_EN" pad="37"/>
<connect gate="RASP-PI-PICO" pin="GND" pad="3 8 13 18 23 28 33 38 D_GND" route="any"/>
<connect gate="RASP-PI-PICO" pin="GP0/TX" pad="1"/>
<connect gate="RASP-PI-PICO" pin="GP1/RX" pad="2"/>
<connect gate="RASP-PI-PICO" pin="GP10" pad="14"/>
<connect gate="RASP-PI-PICO" pin="GP11" pad="15"/>
<connect gate="RASP-PI-PICO" pin="GP12" pad="16"/>
<connect gate="RASP-PI-PICO" pin="GP13" pad="17"/>
<connect gate="RASP-PI-PICO" pin="GP14" pad="19"/>
<connect gate="RASP-PI-PICO" pin="GP15" pad="20"/>
<connect gate="RASP-PI-PICO" pin="GP16" pad="21"/>
<connect gate="RASP-PI-PICO" pin="GP17" pad="22"/>
<connect gate="RASP-PI-PICO" pin="GP18" pad="24"/>
<connect gate="RASP-PI-PICO" pin="GP19" pad="25"/>
<connect gate="RASP-PI-PICO" pin="GP2" pad="4"/>
<connect gate="RASP-PI-PICO" pin="GP20" pad="26"/>
<connect gate="RASP-PI-PICO" pin="GP21" pad="27"/>
<connect gate="RASP-PI-PICO" pin="GP22" pad="29"/>
<connect gate="RASP-PI-PICO" pin="GP26/ADC0" pad="31"/>
<connect gate="RASP-PI-PICO" pin="GP27/ADC1" pad="32"/>
<connect gate="RASP-PI-PICO" pin="GP28/ADC2" pad="34"/>
<connect gate="RASP-PI-PICO" pin="GP3" pad="5"/>
<connect gate="RASP-PI-PICO" pin="GP4/SDA" pad="6"/>
<connect gate="RASP-PI-PICO" pin="GP5/SCL" pad="7"/>
<connect gate="RASP-PI-PICO" pin="GP6" pad="9"/>
<connect gate="RASP-PI-PICO" pin="GP7" pad="10"/>
<connect gate="RASP-PI-PICO" pin="GP8" pad="11"/>
<connect gate="RASP-PI-PICO" pin="GP9" pad="12"/>
<connect gate="RASP-PI-PICO" pin="RUN/RST" pad="30"/>
<connect gate="RASP-PI-PICO" pin="SWCLK" pad="SWCLK"/>
<connect gate="RASP-PI-PICO" pin="SWDIO" pad="SWDIO"/>
<connect gate="RASP-PI-PICO" pin="VBUS" pad="40"/>
<connect gate="RASP-PI-PICO" pin="VREF" pad="35"/>
<connect gate="RASP-PI-PICO" pin="VSYS" pad="39"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_W" package="RASPBERRY-PI-PICO_W">
<connects>
<connect gate="RASP-PI-PICO" pin="3V3(OUT)" pad="36"/>
<connect gate="RASP-PI-PICO" pin="3V3_EN" pad="37"/>
<connect gate="RASP-PI-PICO" pin="GND" pad="3 8 13 18 23 28 33 38 D_GND" route="any"/>
<connect gate="RASP-PI-PICO" pin="GP0/TX" pad="1"/>
<connect gate="RASP-PI-PICO" pin="GP1/RX" pad="2"/>
<connect gate="RASP-PI-PICO" pin="GP10" pad="14"/>
<connect gate="RASP-PI-PICO" pin="GP11" pad="15"/>
<connect gate="RASP-PI-PICO" pin="GP12" pad="16"/>
<connect gate="RASP-PI-PICO" pin="GP13" pad="17"/>
<connect gate="RASP-PI-PICO" pin="GP14" pad="19"/>
<connect gate="RASP-PI-PICO" pin="GP15" pad="20"/>
<connect gate="RASP-PI-PICO" pin="GP16" pad="21"/>
<connect gate="RASP-PI-PICO" pin="GP17" pad="22"/>
<connect gate="RASP-PI-PICO" pin="GP18" pad="24"/>
<connect gate="RASP-PI-PICO" pin="GP19" pad="25"/>
<connect gate="RASP-PI-PICO" pin="GP2" pad="4"/>
<connect gate="RASP-PI-PICO" pin="GP20" pad="26"/>
<connect gate="RASP-PI-PICO" pin="GP21" pad="27"/>
<connect gate="RASP-PI-PICO" pin="GP22" pad="29"/>
<connect gate="RASP-PI-PICO" pin="GP26/ADC0" pad="31"/>
<connect gate="RASP-PI-PICO" pin="GP27/ADC1" pad="32"/>
<connect gate="RASP-PI-PICO" pin="GP28/ADC2" pad="34"/>
<connect gate="RASP-PI-PICO" pin="GP3" pad="5"/>
<connect gate="RASP-PI-PICO" pin="GP4/SDA" pad="6"/>
<connect gate="RASP-PI-PICO" pin="GP5/SCL" pad="7"/>
<connect gate="RASP-PI-PICO" pin="GP6" pad="9"/>
<connect gate="RASP-PI-PICO" pin="GP7" pad="10"/>
<connect gate="RASP-PI-PICO" pin="GP8" pad="11"/>
<connect gate="RASP-PI-PICO" pin="GP9" pad="12"/>
<connect gate="RASP-PI-PICO" pin="RUN/RST" pad="30"/>
<connect gate="RASP-PI-PICO" pin="SWCLK" pad="SWCLK"/>
<connect gate="RASP-PI-PICO" pin="SWDIO" pad="SWDIO"/>
<connect gate="RASP-PI-PICO" pin="VBUS" pad="40"/>
<connect gate="RASP-PI-PICO" pin="VREF" pad="35"/>
<connect gate="RASP-PI-PICO" pin="VSYS" pad="39"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<gates>
<gate name="R" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="_10.16MM" package="RESISTOR_10.16MM">
<connects>
<connect gate="R" pin="X" pad="X"/>
<connect gate="R" pin="Y" pad="Y"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_2.54MM" package="PASSIVE_2.54MM">
<connects>
<connect gate="R" pin="X" pad="X"/>
<connect gate="R" pin="Y" pad="Y"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED" prefix="LED" uservalue="yes">
<gates>
<gate name="LED" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="_3MM" package="LED_3MM">
<connects>
<connect gate="LED" pin="A" pad="A"/>
<connect gate="LED" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_5MM" package="LED_5MM">
<connects>
<connect gate="LED" pin="A" pad="A"/>
<connect gate="LED" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_R5210" package="R5210_2-PIN">
<connects>
<connect gate="LED" pin="A" pad="2"/>
<connect gate="LED" pin="C" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_HEADER" package="HEADER_2-PIN">
<connects>
<connect gate="LED" pin="A" pad="2"/>
<connect gate="LED" pin="C" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3">
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAPACITOR_POLARISED" prefix="C" uservalue="yes">
<gates>
<gate name="C" symbol="CAPACITOR_POLARISED" x="0" y="0"/>
</gates>
<devices>
<device name="_4.2MM" package="CAPACITOR_POLAR_4.2MM">
<connects>
<connect gate="C" pin="A" pad="A"/>
<connect gate="C" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_5MM" package="CAPACITOR_POLAR_5MM">
<connects>
<connect gate="C" pin="A" pad="A"/>
<connect gate="C" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_6.4MM" package="CAPACITOR_POLAR_6.4MM">
<connects>
<connect gate="C" pin="A" pad="A"/>
<connect gate="C" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_8MM" package="CAPACITOR_POLAR_8MM">
<connects>
<connect gate="C" pin="A" pad="A"/>
<connect gate="C" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PORT_13-PIN" prefix="P" uservalue="yes">
<gates>
<gate name="P" symbol="PORT_13-PIN" x="0" y="0"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_13-PIN">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="10" pad="10"/>
<connect gate="P" pin="11" pad="11"/>
<connect gate="P" pin="12" pad="12"/>
<connect gate="P" pin="13" pad="13"/>
<connect gate="P" pin="2" pad="2"/>
<connect gate="P" pin="3" pad="3"/>
<connect gate="P" pin="4" pad="4"/>
<connect gate="P" pin="5" pad="5"/>
<connect gate="P" pin="6" pad="6"/>
<connect gate="P" pin="7" pad="7"/>
<connect gate="P" pin="8" pad="8"/>
<connect gate="P" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PORT_4-PIN" prefix="P" uservalue="yes">
<gates>
<gate name="P" symbol="PORT_4-PIN" x="0" y="0"/>
</gates>
<devices>
<device name="_HEADER" package="HEADER_4-PIN">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="2" pad="2"/>
<connect gate="P" pin="3" pad="3"/>
<connect gate="P" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_R5210" package="R5210_4-PIN">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="2" pad="2"/>
<connect gate="P" pin="3" pad="3"/>
<connect gate="P" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_SCREW-TERMIMAL" package="SCREW-TERMINAL_4-WAY">
<connects>
<connect gate="P" pin="1" pad="1"/>
<connect gate="P" pin="2" pad="2"/>
<connect gate="P" pin="3" pad="3"/>
<connect gate="P" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR_LRD" prefix="R" uservalue="yes">
<gates>
<gate name="R" symbol="RESISTOR_LDR" x="0" y="0"/>
</gates>
<devices>
<device name="_2.54MM" package="PASSIVE_2.54MM">
<connects>
<connect gate="R" pin="X" pad="X"/>
<connect gate="R" pin="Y" pad="Y"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_R5210" package="R5210_2-PIN">
<connects>
<connect gate="R" pin="X" pad="1"/>
<connect gate="R" pin="Y" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR_VARIABLE" prefix="R" uservalue="yes">
<gates>
<gate name="R" symbol="RESISTOR_VARIABLE" x="0" y="0"/>
</gates>
<devices>
<device name="_SCREW-TERMINAL" package="SCREW-TERMINAL_3-WAY">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="X" pad="2"/>
<connect gate="R" pin="Y" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_TRIM-POT" package="TRIM-POT_A">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="X" pad="X"/>
<connect gate="R" pin="Y" pad="Y"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_R5210" package="R5210_3-PIN">
<connects>
<connect gate="R" pin="1" pad="1"/>
<connect gate="R" pin="X" pad="2"/>
<connect gate="R" pin="Y" pad="3"/>
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
<part name="U$1" library="myLibrary" deviceset="SHEET" device=""/>
<part name="U$3" library="myLibrary" deviceset="GND" device=""/>
<part name="DC1" library="myLibrary" deviceset="DC-POWER" device="_SCREW-TERMINAL" value="+5V IN"/>
<part name="U$2" library="myLibrary" deviceset="+5V" device=""/>
<part name="P1" library="myLibrary" deviceset="PORT_3-PIN" device="_SCREW-TERMINAL" value="LINE 1"/>
<part name="P2" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P3" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P4" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P5" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P6" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P7" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P8" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P9" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P10" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P11" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="P12" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="U$4" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$5" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$6" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$7" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$8" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$9" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$10" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$11" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$12" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$13" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$14" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$15" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$16" library="myLibrary" deviceset="GND" device=""/>
<part name="U$17" library="myLibrary" deviceset="GND" device=""/>
<part name="U$18" library="myLibrary" deviceset="GND" device=""/>
<part name="U$19" library="myLibrary" deviceset="GND" device=""/>
<part name="U$20" library="myLibrary" deviceset="GND" device=""/>
<part name="U$21" library="myLibrary" deviceset="GND" device=""/>
<part name="U$22" library="myLibrary" deviceset="GND" device=""/>
<part name="U$23" library="myLibrary" deviceset="GND" device=""/>
<part name="U$24" library="myLibrary" deviceset="GND" device=""/>
<part name="U$25" library="myLibrary" deviceset="GND" device=""/>
<part name="U$26" library="myLibrary" deviceset="GND" device=""/>
<part name="U$27" library="myLibrary" deviceset="GND" device=""/>
<part name="P13" library="myLibrary" deviceset="PORT_2-PIN" device="_SCREW-TERMINAL" value="LINE X"/>
<part name="U$28" library="myLibrary" deviceset="+5V" device=""/>
<part name="U$29" library="myLibrary" deviceset="GND" device=""/>
<part name="RP1" library="myLibrary" deviceset="RASPBERRY-PI-PICO" device="_W"/>
<part name="U$30" library="myLibrary" deviceset="GND" device=""/>
<part name="U$31" library="myLibrary" deviceset="+5V" device=""/>
<part name="R1" library="myLibrary" deviceset="RESISTOR" device="_10.16MM" value="0"/>
<part name="LED1" library="myLibrary" deviceset="LED" device="_3MM" value="POWER"/>
<part name="LED2" library="myLibrary" deviceset="LED" device="_3MM" value="ACTIVITY"/>
<part name="U$32" library="myLibrary" deviceset="+3V3" device=""/>
<part name="U$33" library="myLibrary" deviceset="+3V3" device=""/>
<part name="U$34" library="myLibrary" deviceset="GND" device=""/>
<part name="U$35" library="myLibrary" deviceset="GND" device=""/>
<part name="R2" library="myLibrary" deviceset="RESISTOR" device="_10.16MM" value="100K?"/>
<part name="R3" library="myLibrary" deviceset="RESISTOR" device="_10.16MM" value="100K?"/>
<part name="C1" library="myLibrary" deviceset="CAPACITOR_POLARISED" device="_8MM" value="1000uf"/>
<part name="C2" library="myLibrary" deviceset="CAPACITOR_POLARISED" device="_8MM" value="1000uf"/>
<part name="C3" library="myLibrary" deviceset="CAPACITOR_POLARISED" device="_8MM" value="1000uf"/>
<part name="P14" library="myLibrary" deviceset="PORT_13-PIN" device="_HEADER"/>
<part name="P15" library="myLibrary" deviceset="PORT_13-PIN" device="_HEADER"/>
<part name="U$36" library="myLibrary" deviceset="+3V3" device=""/>
<part name="U$37" library="myLibrary" deviceset="GND" device=""/>
<part name="P16" library="myLibrary" deviceset="PORT_4-PIN" device="_R5210" value="C5-C8"/>
<part name="P17" library="myLibrary" deviceset="PORT_4-PIN" device="_R5210" value="C1-C4"/>
<part name="P18" library="myLibrary" deviceset="PORT_4-PIN" device="_R5210" value="GND"/>
<part name="P19" library="myLibrary" deviceset="PORT_4-PIN" device="_R5210" value="GND"/>
<part name="U$38" library="myLibrary" deviceset="GND" device=""/>
<part name="U$39" library="myLibrary" deviceset="GND" device=""/>
<part name="R5" library="myLibrary" deviceset="RESISTOR_LRD" device="_2.54MM" value="AMBI"/>
<part name="R6" library="myLibrary" deviceset="RESISTOR_LRD" device="_2.54MM" value="CONTROL"/>
<part name="R7" library="myLibrary" deviceset="RESISTOR_VARIABLE" device="_TRIM-POT" value="DAYLIGHT"/>
<part name="R8" library="myLibrary" deviceset="RESISTOR_VARIABLE" device="_TRIM-POT" value="AMBI"/>
<part name="R9" library="myLibrary" deviceset="RESISTOR_VARIABLE" device="_TRIM-POT" value="CONTROL"/>
<part name="R4" library="myLibrary" deviceset="RESISTOR_LRD" device="_R5210" value="DAYLIGHT"/>
<part name="U$40" library="myLibrary" deviceset="GND" device=""/>
<part name="U$41" library="myLibrary" deviceset="GND" device=""/>
<part name="U$42" library="myLibrary" deviceset="GND" device=""/>
<part name="U$43" library="myLibrary" deviceset="+3V3" device=""/>
<part name="U$44" library="myLibrary" deviceset="+3V3" device=""/>
<part name="U$45" library="myLibrary" deviceset="+3V3" device=""/>
<part name="P20" library="myLibrary" deviceset="PORT_4-PIN" device="_R5210" value="RTC"/>
<part name="U$46" library="myLibrary" deviceset="GND" device=""/>
<part name="U$47" library="myLibrary" deviceset="+3V3" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="U$3" gate="G$1" x="7.62" y="33.02" smashed="yes"/>
<instance part="DC1" gate="DC-POWER" x="7.62" y="43.18" smashed="yes">
<attribute name="NAME" x="10.16" y="38.1" size="0.8128" layer="95"/>
<attribute name="VALUE" x="10.16" y="48.26" size="0.8128" layer="96"/>
</instance>
<instance part="U$2" gate="G$1" x="7.62" y="50.8" smashed="yes"/>
<instance part="P1" gate="P" x="12.7" y="96.52" smashed="yes">
<attribute name="NAME" x="10.16" y="105.41" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="10.16" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P2" gate="P" x="25.4" y="96.52" smashed="yes">
<attribute name="NAME" x="22.86" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="22.86" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P3" gate="P" x="38.1" y="96.52" smashed="yes">
<attribute name="NAME" x="35.56" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="35.56" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P4" gate="P" x="50.8" y="96.52" smashed="yes">
<attribute name="NAME" x="48.26" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="48.26" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P5" gate="P" x="63.5" y="96.52" smashed="yes">
<attribute name="NAME" x="60.96" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="60.96" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P6" gate="P" x="76.2" y="96.52" smashed="yes">
<attribute name="NAME" x="73.66" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="73.66" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P7" gate="P" x="88.9" y="96.52" smashed="yes">
<attribute name="NAME" x="86.36" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="86.36" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P8" gate="P" x="101.6" y="96.52" smashed="yes">
<attribute name="NAME" x="99.06" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="99.06" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P9" gate="P" x="114.3" y="96.52" smashed="yes">
<attribute name="NAME" x="111.76" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="111.76" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P10" gate="P" x="127" y="96.52" smashed="yes">
<attribute name="NAME" x="124.46" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="124.46" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P11" gate="P" x="139.7" y="96.52" smashed="yes">
<attribute name="NAME" x="137.16" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="137.16" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P12" gate="P" x="152.4" y="96.52" smashed="yes">
<attribute name="NAME" x="149.86" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="149.86" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="U$4" gate="G$1" x="7.62" y="104.14" smashed="yes"/>
<instance part="U$5" gate="G$1" x="20.32" y="104.14" smashed="yes"/>
<instance part="U$6" gate="G$1" x="33.02" y="104.14" smashed="yes"/>
<instance part="U$7" gate="G$1" x="45.72" y="104.14" smashed="yes"/>
<instance part="U$8" gate="G$1" x="58.42" y="104.14" smashed="yes"/>
<instance part="U$9" gate="G$1" x="71.12" y="104.14" smashed="yes"/>
<instance part="U$10" gate="G$1" x="83.82" y="104.14" smashed="yes"/>
<instance part="U$11" gate="G$1" x="96.52" y="104.14" smashed="yes"/>
<instance part="U$12" gate="G$1" x="109.22" y="104.14" smashed="yes"/>
<instance part="U$13" gate="G$1" x="121.92" y="104.14" smashed="yes"/>
<instance part="U$14" gate="G$1" x="134.62" y="104.14" smashed="yes"/>
<instance part="U$15" gate="G$1" x="147.32" y="104.14" smashed="yes"/>
<instance part="U$16" gate="G$1" x="5.08" y="91.44" smashed="yes"/>
<instance part="U$17" gate="G$1" x="17.78" y="91.44" smashed="yes"/>
<instance part="U$18" gate="G$1" x="30.48" y="91.44" smashed="yes"/>
<instance part="U$19" gate="G$1" x="43.18" y="91.44" smashed="yes"/>
<instance part="U$20" gate="G$1" x="55.88" y="91.44" smashed="yes"/>
<instance part="U$21" gate="G$1" x="68.58" y="91.44" smashed="yes"/>
<instance part="U$22" gate="G$1" x="81.28" y="91.44" smashed="yes"/>
<instance part="U$23" gate="G$1" x="93.98" y="91.44" smashed="yes"/>
<instance part="U$24" gate="G$1" x="106.68" y="91.44" smashed="yes"/>
<instance part="U$25" gate="G$1" x="119.38" y="91.44" smashed="yes"/>
<instance part="U$26" gate="G$1" x="132.08" y="91.44" smashed="yes"/>
<instance part="U$27" gate="G$1" x="144.78" y="91.44" smashed="yes"/>
<instance part="P13" gate="P" x="165.1" y="96.52" smashed="yes">
<attribute name="NAME" x="162.56" y="102.87" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="162.56" y="92.71" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="U$28" gate="G$1" x="160.02" y="104.14" smashed="yes"/>
<instance part="U$29" gate="G$1" x="157.48" y="91.44" smashed="yes"/>
<instance part="RP1" gate="RASP-PI-PICO" x="68.58" y="48.26" smashed="yes">
<attribute name="NAME" x="55.88" y="80.01" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="81.28" y="80.01" size="0.8128" layer="96" align="center-right"/>
</instance>
<instance part="U$30" gate="G$1" x="86.36" y="22.86" smashed="yes"/>
<instance part="U$31" gate="G$1" x="86.36" y="78.74" smashed="yes"/>
<instance part="R1" gate="R" x="0" y="99.06" smashed="yes">
<attribute name="NAME" x="-2.032" y="99.06" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="0" y="96.52" size="0.8128" layer="96" align="bottom-center"/>
</instance>
<instance part="LED1" gate="LED" x="129.54" y="76.2" smashed="yes">
<attribute name="NAME" x="127.508" y="76.2" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="132.842" y="74.93" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="LED2" gate="LED" x="129.54" y="66.04" smashed="yes">
<attribute name="NAME" x="127.508" y="66.04" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="132.842" y="64.77" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="U$32" gate="G$1" x="93.98" y="78.74" smashed="yes"/>
<instance part="U$33" gate="G$1" x="101.6" y="76.2" smashed="yes"/>
<instance part="U$34" gate="G$1" x="139.7" y="76.2" smashed="yes"/>
<instance part="U$35" gate="G$1" x="139.7" y="66.04" smashed="yes"/>
<instance part="R2" gate="R" x="111.76" y="76.2" smashed="yes">
<attribute name="NAME" x="109.728" y="76.2" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="111.76" y="73.66" size="0.8128" layer="96" align="bottom-center"/>
</instance>
<instance part="R3" gate="R" x="111.76" y="66.04" smashed="yes">
<attribute name="NAME" x="109.728" y="66.04" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="111.76" y="63.5" size="0.8128" layer="96" align="bottom-center"/>
</instance>
<instance part="C1" gate="C" x="17.78" y="43.18" smashed="yes" rot="R270">
<attribute name="NAME" x="19.05" y="40.64" size="0.8128" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="16.51" y="40.64" size="0.8128" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C2" gate="C" x="25.4" y="43.18" smashed="yes" rot="R270">
<attribute name="NAME" x="26.67" y="40.64" size="0.8128" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="24.13" y="40.64" size="0.8128" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C3" gate="C" x="33.02" y="43.18" smashed="yes" rot="R270">
<attribute name="NAME" x="34.29" y="40.64" size="0.8128" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="31.75" y="40.64" size="0.8128" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="P14" gate="P" x="111.76" y="25.4" smashed="yes">
<attribute name="NAME" x="109.22" y="59.69" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="109.22" y="21.59" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P15" gate="P" x="127" y="25.4" smashed="yes" rot="MR0">
<attribute name="NAME" x="129.54" y="59.69" size="0.8128" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="129.54" y="21.59" size="0.8128" layer="96" rot="MR0" align="center-left"/>
</instance>
<instance part="U$36" gate="G$1" x="96.52" y="53.34" smashed="yes"/>
<instance part="U$37" gate="G$1" x="96.52" y="45.72" smashed="yes"/>
<instance part="P16" gate="P" x="152.4" y="45.72" smashed="yes">
<attribute name="NAME" x="149.86" y="57.15" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="149.86" y="41.91" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P17" gate="P" x="152.4" y="25.4" smashed="yes">
<attribute name="NAME" x="149.86" y="36.83" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="149.86" y="21.59" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="P18" gate="P" x="185.42" y="76.2" smashed="yes" rot="R90">
<attribute name="NAME" x="173.99" y="73.66" size="0.8128" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="189.23" y="73.66" size="0.8128" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="P19" gate="P" x="203.2" y="76.2" smashed="yes" rot="R90">
<attribute name="NAME" x="191.77" y="73.66" size="0.8128" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="207.01" y="73.66" size="0.8128" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="U$38" gate="G$1" x="185.42" y="71.12" smashed="yes"/>
<instance part="U$39" gate="G$1" x="203.2" y="71.12" smashed="yes"/>
<instance part="R5" gate="R" x="218.44" y="43.18" smashed="yes">
<attribute name="NAME" x="216.408" y="43.18" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="218.44" y="40.64" size="0.8128" layer="96" align="bottom-center"/>
</instance>
<instance part="R6" gate="R" x="218.44" y="27.94" smashed="yes">
<attribute name="NAME" x="216.408" y="27.94" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="218.44" y="25.4" size="0.8128" layer="96" align="bottom-center"/>
</instance>
<instance part="R7" gate="R" x="198.12" y="58.42" smashed="yes">
<attribute name="NAME" x="196.088" y="58.42" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="198.12" y="60.96" size="0.8128" layer="96" align="top-center"/>
</instance>
<instance part="R8" gate="R" x="198.12" y="43.18" smashed="yes">
<attribute name="NAME" x="196.088" y="43.18" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="198.12" y="45.72" size="0.8128" layer="96" align="top-center"/>
</instance>
<instance part="R9" gate="R" x="198.12" y="27.94" smashed="yes">
<attribute name="NAME" x="196.088" y="27.94" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="198.12" y="30.48" size="0.8128" layer="96" align="top-center"/>
</instance>
<instance part="R4" gate="R" x="218.44" y="58.42" smashed="yes">
<attribute name="NAME" x="216.408" y="58.42" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="218.44" y="55.88" size="0.8128" layer="96" align="bottom-center"/>
</instance>
<instance part="U$40" gate="G$1" x="198.12" y="50.8" smashed="yes"/>
<instance part="U$41" gate="G$1" x="198.12" y="35.56" smashed="yes"/>
<instance part="U$42" gate="G$1" x="198.12" y="20.32" smashed="yes"/>
<instance part="U$43" gate="G$1" x="226.06" y="58.42" smashed="yes"/>
<instance part="U$44" gate="G$1" x="226.06" y="43.18" smashed="yes"/>
<instance part="U$45" gate="G$1" x="226.06" y="27.94" smashed="yes"/>
<instance part="P20" gate="P" x="30.48" y="68.58" smashed="yes">
<attribute name="NAME" x="27.94" y="80.01" size="0.8128" layer="95" align="center-left"/>
<attribute name="VALUE" x="27.94" y="64.77" size="0.8128" layer="96" align="center-left"/>
</instance>
<instance part="U$46" gate="G$1" x="22.86" y="63.5" smashed="yes"/>
<instance part="U$47" gate="G$1" x="22.86" y="78.74" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="DC1" gate="DC-POWER" pin="+V"/>
<pinref part="U$2" gate="G$1" pin="+5V"/>
<pinref part="C1" gate="C" pin="A"/>
<wire x1="7.62" y1="50.8" x2="17.78" y2="50.8" width="0.1524" layer="91"/>
<junction x="7.62" y="50.8"/>
<pinref part="C2" gate="C" pin="A"/>
<wire x1="17.78" y1="50.8" x2="25.4" y2="50.8" width="0.1524" layer="91"/>
<junction x="17.78" y="50.8"/>
<pinref part="C3" gate="C" pin="A"/>
<wire x1="25.4" y1="50.8" x2="33.02" y2="50.8" width="0.1524" layer="91"/>
<junction x="25.4" y="50.8"/>
</segment>
<segment>
<pinref part="P1" gate="P" pin="3"/>
<pinref part="U$4" gate="G$1" pin="+5V"/>
<wire x1="7.62" y1="104.14" x2="7.62" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P2" gate="P" pin="2"/>
<pinref part="U$5" gate="G$1" pin="+5V"/>
<wire x1="20.32" y1="104.14" x2="20.32" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P3" gate="P" pin="2"/>
<pinref part="U$6" gate="G$1" pin="+5V"/>
<wire x1="33.02" y1="104.14" x2="33.02" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P4" gate="P" pin="2"/>
<pinref part="U$7" gate="G$1" pin="+5V"/>
<wire x1="45.72" y1="104.14" x2="45.72" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P5" gate="P" pin="2"/>
<pinref part="U$8" gate="G$1" pin="+5V"/>
<wire x1="58.42" y1="104.14" x2="58.42" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P6" gate="P" pin="2"/>
<pinref part="U$9" gate="G$1" pin="+5V"/>
<wire x1="71.12" y1="104.14" x2="71.12" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P7" gate="P" pin="2"/>
<pinref part="U$10" gate="G$1" pin="+5V"/>
<wire x1="83.82" y1="104.14" x2="83.82" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P8" gate="P" pin="2"/>
<pinref part="U$11" gate="G$1" pin="+5V"/>
<wire x1="96.52" y1="104.14" x2="96.52" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P10" gate="P" pin="2"/>
<pinref part="U$13" gate="G$1" pin="+5V"/>
<wire x1="121.92" y1="104.14" x2="121.92" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P11" gate="P" pin="2"/>
<pinref part="U$14" gate="G$1" pin="+5V"/>
<wire x1="134.62" y1="104.14" x2="134.62" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P12" gate="P" pin="2"/>
<pinref part="U$15" gate="G$1" pin="+5V"/>
<wire x1="147.32" y1="104.14" x2="147.32" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P9" gate="P" pin="2"/>
<pinref part="U$12" gate="G$1" pin="+5V"/>
<wire x1="109.22" y1="104.14" x2="109.22" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P13" gate="P" pin="2"/>
<pinref part="U$28" gate="G$1" pin="+5V"/>
<wire x1="160.02" y1="104.14" x2="160.02" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$31" gate="G$1" pin="+5V"/>
<pinref part="RP1" gate="RASP-PI-PICO" pin="VBUS"/>
<wire x1="86.36" y1="78.74" x2="86.36" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LED_DATA" class="0">
<segment>
<pinref part="RP1" gate="RASP-PI-PICO" pin="GP7"/>
<wire x1="48.26" y1="58.42" x2="50.8" y2="58.42" width="0.1524" layer="91"/>
<label x="45.72" y="58.42" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="R1" gate="R" pin="X"/>
<wire x1="-10.16" y1="99.06" x2="-7.62" y2="99.06" width="0.1524" layer="91"/>
<label x="-12.7" y="99.06" size="1.778" layer="95" align="center-right"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="GND"/>
<pinref part="P1" gate="P" pin="1"/>
<wire x1="5.08" y1="91.44" x2="5.08" y2="96.52" width="0.1524" layer="91"/>
<wire x1="5.08" y1="96.52" x2="7.62" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$17" gate="G$1" pin="GND"/>
<pinref part="P2" gate="P" pin="1"/>
<wire x1="17.78" y1="91.44" x2="17.78" y2="96.52" width="0.1524" layer="91"/>
<wire x1="17.78" y1="96.52" x2="20.32" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$18" gate="G$1" pin="GND"/>
<pinref part="P3" gate="P" pin="1"/>
<wire x1="30.48" y1="91.44" x2="30.48" y2="96.52" width="0.1524" layer="91"/>
<wire x1="30.48" y1="96.52" x2="33.02" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$19" gate="G$1" pin="GND"/>
<pinref part="P4" gate="P" pin="1"/>
<wire x1="43.18" y1="91.44" x2="43.18" y2="96.52" width="0.1524" layer="91"/>
<wire x1="43.18" y1="96.52" x2="45.72" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$20" gate="G$1" pin="GND"/>
<pinref part="P5" gate="P" pin="1"/>
<wire x1="55.88" y1="91.44" x2="55.88" y2="96.52" width="0.1524" layer="91"/>
<wire x1="55.88" y1="96.52" x2="58.42" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$21" gate="G$1" pin="GND"/>
<pinref part="P6" gate="P" pin="1"/>
<wire x1="68.58" y1="91.44" x2="68.58" y2="96.52" width="0.1524" layer="91"/>
<wire x1="68.58" y1="96.52" x2="71.12" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$22" gate="G$1" pin="GND"/>
<pinref part="P7" gate="P" pin="1"/>
<wire x1="81.28" y1="91.44" x2="81.28" y2="96.52" width="0.1524" layer="91"/>
<wire x1="81.28" y1="96.52" x2="83.82" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$23" gate="G$1" pin="GND"/>
<pinref part="P8" gate="P" pin="1"/>
<wire x1="93.98" y1="91.44" x2="93.98" y2="96.52" width="0.1524" layer="91"/>
<wire x1="93.98" y1="96.52" x2="96.52" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$24" gate="G$1" pin="GND"/>
<pinref part="P9" gate="P" pin="1"/>
<wire x1="106.68" y1="91.44" x2="106.68" y2="96.52" width="0.1524" layer="91"/>
<wire x1="106.68" y1="96.52" x2="109.22" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$25" gate="G$1" pin="GND"/>
<pinref part="P10" gate="P" pin="1"/>
<wire x1="119.38" y1="91.44" x2="119.38" y2="96.52" width="0.1524" layer="91"/>
<wire x1="119.38" y1="96.52" x2="121.92" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$26" gate="G$1" pin="GND"/>
<pinref part="P11" gate="P" pin="1"/>
<wire x1="132.08" y1="91.44" x2="132.08" y2="96.52" width="0.1524" layer="91"/>
<wire x1="132.08" y1="96.52" x2="134.62" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$27" gate="G$1" pin="GND"/>
<pinref part="P12" gate="P" pin="1"/>
<wire x1="144.78" y1="91.44" x2="144.78" y2="96.52" width="0.1524" layer="91"/>
<wire x1="144.78" y1="96.52" x2="147.32" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$29" gate="G$1" pin="GND"/>
<pinref part="P13" gate="P" pin="1"/>
<wire x1="157.48" y1="91.44" x2="157.48" y2="96.52" width="0.1524" layer="91"/>
<wire x1="157.48" y1="96.52" x2="160.02" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$30" gate="G$1" pin="GND"/>
<pinref part="RP1" gate="RASP-PI-PICO" pin="GND"/>
<wire x1="86.36" y1="22.86" x2="86.36" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<pinref part="DC1" gate="DC-POWER" pin="-V"/>
<wire x1="7.62" y1="33.02" x2="7.62" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C3" gate="C" pin="C"/>
<pinref part="C2" gate="C" pin="C"/>
<wire x1="33.02" y1="35.56" x2="25.4" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C1" gate="C" pin="C"/>
<wire x1="25.4" y1="35.56" x2="17.78" y2="35.56" width="0.1524" layer="91"/>
<junction x="25.4" y="35.56"/>
<wire x1="17.78" y1="35.56" x2="7.62" y2="35.56" width="0.1524" layer="91"/>
<junction x="17.78" y="35.56"/>
<junction x="7.62" y="35.56"/>
</segment>
<segment>
<pinref part="LED1" gate="LED" pin="C"/>
<wire x1="137.16" y1="76.2" x2="139.7" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$34" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="LED2" gate="LED" pin="C"/>
<wire x1="137.16" y1="66.04" x2="139.7" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$35" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="P14" gate="P" pin="10"/>
<pinref part="U$37" gate="G$1" pin="GND"/>
<wire x1="106.68" y1="48.26" x2="96.52" y2="48.26" width="0.1524" layer="91"/>
<wire x1="96.52" y1="48.26" x2="96.52" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P18" gate="P" pin="4"/>
<pinref part="P18" gate="P" pin="3"/>
<wire x1="177.8" y1="71.12" x2="180.34" y2="71.12" width="0.1524" layer="91"/>
<pinref part="P18" gate="P" pin="2"/>
<wire x1="180.34" y1="71.12" x2="182.88" y2="71.12" width="0.1524" layer="91"/>
<junction x="180.34" y="71.12"/>
<pinref part="P18" gate="P" pin="1"/>
<wire x1="182.88" y1="71.12" x2="185.42" y2="71.12" width="0.1524" layer="91"/>
<junction x="182.88" y="71.12"/>
<pinref part="U$38" gate="G$1" pin="GND"/>
<junction x="185.42" y="71.12"/>
</segment>
<segment>
<pinref part="P19" gate="P" pin="4"/>
<pinref part="P19" gate="P" pin="3"/>
<wire x1="195.58" y1="71.12" x2="198.12" y2="71.12" width="0.1524" layer="91"/>
<pinref part="P19" gate="P" pin="2"/>
<wire x1="198.12" y1="71.12" x2="200.66" y2="71.12" width="0.1524" layer="91"/>
<junction x="198.12" y="71.12"/>
<pinref part="P19" gate="P" pin="1"/>
<wire x1="200.66" y1="71.12" x2="203.2" y2="71.12" width="0.1524" layer="91"/>
<junction x="200.66" y="71.12"/>
<pinref part="U$39" gate="G$1" pin="GND"/>
<junction x="203.2" y="71.12"/>
</segment>
<segment>
<pinref part="U$40" gate="G$1" pin="GND"/>
<pinref part="R7" gate="R" pin="1"/>
</segment>
<segment>
<pinref part="U$41" gate="G$1" pin="GND"/>
<pinref part="R8" gate="R" pin="1"/>
</segment>
<segment>
<pinref part="U$42" gate="G$1" pin="GND"/>
<pinref part="R9" gate="R" pin="1"/>
</segment>
<segment>
<pinref part="P20" gate="P" pin="1"/>
<pinref part="U$46" gate="G$1" pin="GND"/>
<wire x1="25.4" y1="68.58" x2="22.86" y2="68.58" width="0.1524" layer="91"/>
<wire x1="22.86" y1="68.58" x2="22.86" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ACT" class="0">
<segment>
<pinref part="RP1" gate="RASP-PI-PICO" pin="GP10"/>
<wire x1="48.26" y1="50.8" x2="50.8" y2="50.8" width="0.1524" layer="91"/>
<label x="45.72" y="50.8" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="R3" gate="R" pin="X"/>
<wire x1="101.6" y1="66.04" x2="104.14" y2="66.04" width="0.1524" layer="91"/>
<label x="99.06" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="RP1" gate="RASP-PI-PICO" pin="GP4/SDA"/>
<wire x1="48.26" y1="66.04" x2="50.8" y2="66.04" width="0.1524" layer="91"/>
<label x="45.72" y="66.04" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="P14" gate="P" pin="13"/>
<wire x1="104.14" y1="55.88" x2="106.68" y2="55.88" width="0.1524" layer="91"/>
<label x="101.6" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P20" gate="P" pin="3"/>
<wire x1="20.32" y1="73.66" x2="25.4" y2="73.66" width="0.1524" layer="91"/>
<label x="17.78" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="RP1" gate="RASP-PI-PICO" pin="GP5/SCL"/>
<wire x1="48.26" y1="63.5" x2="50.8" y2="63.5" width="0.1524" layer="91"/>
<label x="45.72" y="63.5" size="1.778" layer="95" align="center-right"/>
</segment>
<segment>
<pinref part="P14" gate="P" pin="12"/>
<wire x1="104.14" y1="53.34" x2="106.68" y2="53.34" width="0.1524" layer="91"/>
<label x="101.6" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P20" gate="P" pin="4"/>
<wire x1="20.32" y1="76.2" x2="25.4" y2="76.2" width="0.1524" layer="91"/>
<label x="17.78" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="P1" gate="P" pin="2"/>
<pinref part="R1" gate="R" pin="Y"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="RP1" gate="RASP-PI-PICO" pin="3V3(OUT)"/>
<pinref part="U$32" gate="G$1" pin="+3V3"/>
<wire x1="86.36" y1="68.58" x2="93.98" y2="68.58" width="0.1524" layer="91"/>
<wire x1="93.98" y1="68.58" x2="93.98" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2" gate="R" pin="X"/>
<pinref part="U$33" gate="G$1" pin="+3V3"/>
<wire x1="104.14" y1="76.2" x2="101.6" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P14" gate="P" pin="11"/>
<pinref part="U$36" gate="G$1" pin="+3V3"/>
<wire x1="96.52" y1="53.34" x2="96.52" y2="50.8" width="0.1524" layer="91"/>
<wire x1="96.52" y1="50.8" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$43" gate="G$1" pin="+3V3"/>
<pinref part="R4" gate="R" pin="Y"/>
</segment>
<segment>
<pinref part="U$44" gate="G$1" pin="+3V3"/>
<pinref part="R5" gate="R" pin="Y"/>
</segment>
<segment>
<pinref part="U$45" gate="G$1" pin="+3V3"/>
<pinref part="R6" gate="R" pin="Y"/>
</segment>
<segment>
<pinref part="P20" gate="P" pin="2"/>
<pinref part="U$47" gate="G$1" pin="+3V3"/>
<wire x1="25.4" y1="71.12" x2="22.86" y2="71.12" width="0.1524" layer="91"/>
<wire x1="22.86" y1="71.12" x2="22.86" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R2" gate="R" pin="Y"/>
<pinref part="LED1" gate="LED" pin="A"/>
<wire x1="119.38" y1="76.2" x2="121.92" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="R3" gate="R" pin="Y"/>
<pinref part="LED2" gate="LED" pin="A"/>
<wire x1="119.38" y1="66.04" x2="121.92" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C1" class="0">
<segment>
<pinref part="P15" gate="P" pin="9"/>
<wire x1="132.08" y1="45.72" x2="134.62" y2="45.72" width="0.1524" layer="91"/>
<label x="137.16" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P17" gate="P" pin="1"/>
<wire x1="147.32" y1="25.4" x2="144.78" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C2" class="0">
<segment>
<pinref part="P15" gate="P" pin="8"/>
<wire x1="134.62" y1="43.18" x2="132.08" y2="43.18" width="0.1524" layer="91"/>
<label x="137.16" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P17" gate="P" pin="2"/>
<wire x1="144.78" y1="27.94" x2="147.32" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C3" class="0">
<segment>
<pinref part="P15" gate="P" pin="7"/>
<wire x1="134.62" y1="40.64" x2="132.08" y2="40.64" width="0.1524" layer="91"/>
<label x="137.16" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P17" gate="P" pin="3"/>
<wire x1="144.78" y1="30.48" x2="147.32" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C4" class="0">
<segment>
<pinref part="P15" gate="P" pin="6"/>
<wire x1="134.62" y1="38.1" x2="132.08" y2="38.1" width="0.1524" layer="91"/>
<label x="137.16" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P17" gate="P" pin="4"/>
<wire x1="144.78" y1="33.02" x2="147.32" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C5" class="0">
<segment>
<pinref part="P15" gate="P" pin="5"/>
<wire x1="134.62" y1="35.56" x2="132.08" y2="35.56" width="0.1524" layer="91"/>
<label x="137.16" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P16" gate="P" pin="1"/>
<wire x1="144.78" y1="45.72" x2="147.32" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C6" class="0">
<segment>
<pinref part="P15" gate="P" pin="4"/>
<wire x1="134.62" y1="33.02" x2="132.08" y2="33.02" width="0.1524" layer="91"/>
<label x="137.16" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P16" gate="P" pin="2"/>
<wire x1="144.78" y1="48.26" x2="147.32" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C7" class="0">
<segment>
<pinref part="P15" gate="P" pin="3"/>
<wire x1="134.62" y1="30.48" x2="132.08" y2="30.48" width="0.1524" layer="91"/>
<label x="137.16" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P16" gate="P" pin="3"/>
<wire x1="144.78" y1="50.8" x2="147.32" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C8" class="0">
<segment>
<pinref part="P15" gate="P" pin="2"/>
<wire x1="134.62" y1="27.94" x2="132.08" y2="27.94" width="0.1524" layer="91"/>
<label x="137.16" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P16" gate="P" pin="4"/>
<wire x1="144.78" y1="53.34" x2="147.32" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DAYLIGHT" class="0">
<segment>
<pinref part="RP1" gate="RASP-PI-PICO" pin="GP26/ADC0"/>
<wire x1="88.9" y1="38.1" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<label x="91.44" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R7" gate="R" pin="Y"/>
<pinref part="R4" gate="R" pin="X"/>
<wire x1="205.74" y1="58.42" x2="210.82" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="AMBI" class="0">
<segment>
<pinref part="RP1" gate="RASP-PI-PICO" pin="GP27/ADC1"/>
<wire x1="88.9" y1="40.64" x2="86.36" y2="40.64" width="0.1524" layer="91"/>
<label x="91.44" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R8" gate="R" pin="Y"/>
<pinref part="R5" gate="R" pin="X"/>
<wire x1="205.74" y1="43.18" x2="210.82" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CONTROL" class="0">
<segment>
<pinref part="RP1" gate="RASP-PI-PICO" pin="GP28/ADC2"/>
<wire x1="88.9" y1="43.18" x2="86.36" y2="43.18" width="0.1524" layer="91"/>
<label x="91.44" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R9" gate="R" pin="Y"/>
<pinref part="R6" gate="R" pin="X"/>
<wire x1="205.74" y1="27.94" x2="210.82" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="9.0" severity="warning">
Since Version 9.0, EAGLE supports the align property for labels. 
Labels in schematic will not be understood with this version. Update EAGLE to the latest version 
for full support of labels. 
</note>
</compatibility>
</eagle>
