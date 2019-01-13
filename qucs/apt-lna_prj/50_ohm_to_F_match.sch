<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,933,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=50_ohm_to_F_match.dat>
  <DataDisplay=50_ohm_to_F_match.dpl>
  <OpenDisplay=1>
  <Script=50_ohm_to_F_match.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Pac P1 1 200 230 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 200 360 0 0 0 0>
  <.SP SP1 1 180 500 0 77 0 0 "lin" 1 "0.1 GHz" 1 "10 GHz" 1 "1999" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <C C1 1 400 180 -26 17 0 0 "14 pF" 1 "" 0 "neutral" 0>
  <GND * 1 460 300 0 0 0 0>
  <L L1 1 460 270 5 -20 0 1 "641 nH" 1 "" 0>
  <Pac P2 1 760 230 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 760 360 0 0 0 0>
  <GND * 1 620 340 0 0 0 0>
  <R R1 1 620 230 15 -26 0 1 "2782 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <200 260 200 360 "" 0 0 0 "">
  <200 180 200 200 "" 0 0 0 "">
  <200 180 370 180 "" 0 0 0 "">
  <430 180 460 180 "" 0 0 0 "">
  <460 180 460 240 "" 0 0 0 "">
  <760 260 760 360 "" 0 0 0 "">
  <460 180 620 180 "" 0 0 0 "">
  <760 180 760 200 "" 0 0 0 "">
  <620 180 760 180 "" 0 0 0 "">
  <620 180 620 200 "" 0 0 0 "">
  <620 260 620 340 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 290 150 12 #000000 0 "Port 1">
  <Text 480 150 12 #000000 0 "Port 2">
</Paintings>
