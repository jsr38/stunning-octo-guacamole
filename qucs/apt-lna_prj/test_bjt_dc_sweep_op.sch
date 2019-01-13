<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,938,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=test_bjt_dc_sweep_op.dat>
  <DataDisplay=test_bjt_dc_sweep_op.dpl>
  <OpenDisplay=1>
  <Script=test_bjt_dc_sweep_op.m>
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
  <GND * 1 240 320 0 0 0 0>
  <Vdc V1 1 580 210 18 -26 0 1 "1 V" 1>
  <GND * 1 580 320 0 0 0 0>
  <Idc I1 1 290 140 -26 18 0 0 "Ib" 1>
  <.DC DC1 1 100 400 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn1 1 350 430 -31 19 0 0 "Ic=-V1.I" 1 "Beta=Ic/Ib" 1 "Beta_vs_ic=PlotVs(Beta,Ic)" 1 "yes" 0>
  <.SW SW1 1 710 160 0 77 0 0 "DC1" 1 "log" 1 "Ib" 1 "10n" 1 "10m" 1 "101" 1>
  <SPICE X1 1 410 170 -26 -97 1 2 "../../spice/BFU630F_qucs.prm" 1 "_net1,_net2,_net3" 0 "yes" 0 "none" 0>
</Components>
<Wires>
  <240 140 260 140 "" 0 0 0 "">
  <240 140 240 320 "" 0 0 0 "">
  <320 140 380 140 "" 0 0 0 "">
  <410 230 410 320 "" 0 0 0 "">
  <410 320 420 320 "" 0 0 0 "">
  <440 200 460 200 "" 0 0 0 "">
  <460 200 460 320 "" 0 0 0 "">
  <420 320 460 320 "" 0 0 0 "">
  <440 140 580 140 "" 0 0 0 "">
  <580 140 580 180 "" 0 0 0 "">
  <580 240 580 320 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
