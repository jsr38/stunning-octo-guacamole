<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,950,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=bfp740_dc_output_characteristic.dat>
  <DataDisplay=bfp740_dc_output_characteristic.dpl>
  <OpenDisplay=1>
  <Script=bfp740_dc_output_characteristic.m>
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
  <GND * 1 420 320 0 0 0 0>
  <SPICE X1 1 420 200 -26 -97 1 2 "/home/jsr/dev/stunning-octo-guacamole/spice/BFP740ESD_qucs.cir" 1 "_net1,_net2,_net3,_net4" 0 "yes" 0 "none" 0>
  <GND * 1 620 320 0 0 0 0>
  <.DC DC1 1 160 320 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Vdc V1 1 620 230 18 -26 0 1 "3 V" 1>
  <GND * 1 250 260 0 0 0 0>
  <Idc I1 1 290 170 -26 18 0 0 "Ib" 1>
  <Eqn Eqn1 1 420 420 -31 19 0 0 "Ic=-V1.I" 1 "Ic_vs_Ib=PlotVs(Ic, Ib)" 1 "yes" 0>
  <.SW SW1 1 760 220 0 77 0 0 "DC1" 1 "log" 1 "Ib" 1 "1nA" 1 "100uA" 1 "1999" 1>
</Components>
<Wires>
  <380 230 390 230 "" 0 0 0 "">
  <380 230 380 320 "" 0 0 0 "">
  <380 320 420 320 "" 0 0 0 "">
  <450 230 460 230 "" 0 0 0 "">
  <460 230 460 320 "" 0 0 0 "">
  <420 320 460 320 "" 0 0 0 "">
  <420 260 420 320 "" 0 0 0 "">
  <450 170 620 170 "" 0 0 0 "">
  <620 170 620 200 "" 0 0 0 "">
  <620 260 620 320 "" 0 0 0 "">
  <250 170 250 260 "" 0 0 0 "">
  <250 170 260 170 "" 0 0 0 "">
  <320 170 390 170 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
