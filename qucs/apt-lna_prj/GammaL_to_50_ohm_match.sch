<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,933,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=GammaL_to_50_ohm_match.dat>
  <DataDisplay=GammaL_to_50_ohm_match.dpl>
  <OpenDisplay=1>
  <Script=GammaL_to_50_ohm_match.m>
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
  <Pac P2 1 760 230 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 760 360 0 0 0 0>
  <C C1 1 410 180 -26 17 0 0 "5.64 pF" 1 "" 0 "neutral" 0>
  <GND * 1 470 300 0 0 0 0>
  <L L1 1 470 270 5 -20 0 1 "345 nH" 1 "" 0>
</Components>
<Wires>
  <200 260 200 360 "" 0 0 0 "">
  <760 260 760 360 "" 0 0 0 "">
  <760 180 760 200 "" 0 0 0 "">
  <440 180 470 180 "" 0 0 0 "">
  <470 180 470 240 "" 0 0 0 "">
  <200 180 200 200 "" 0 0 0 "">
  <200 180 380 180 "" 0 0 0 "">
  <470 180 760 180 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 300 150 12 #000000 0 "Port 1">
  <Text 490 150 12 #000000 0 "Port 2">
</Paintings>
