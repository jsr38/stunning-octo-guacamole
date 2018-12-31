<Qucs Schematic 0.0.19>
<Properties>
  <View=0,0,1211,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=bfp450_test_sp.dat>
  <DataDisplay=bfp450_test_sp.dpl>
  <OpenDisplay=1>
  <Script=bfp450_test_sp.m>
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
  <SPfile X1 1 370 160 -26 -67 0 0 "../../s2p/SPAR/BFP450/BFP450_w_noise_VCE_3.0V_IC_20mA.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Pac P1 1 160 210 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <Pac P2 1 560 210 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 160 300 0 0 0 0>
  <GND * 1 370 300 0 0 0 0>
  <GND * 1 560 300 0 0 0 0>
  <Eqn Eqn1 1 790 200 -31 19 0 0 "K=StabFactor(S)" 1 "Fmindb=w2dbm(Fmin)-30" 1 "Fdb=w2dbm(F)-30" 1 "yes" 0>
  <.SP SP1 0 60 400 0 77 0 0 "lin" 1 "0.03 GHz" 1 "12 GHz" 1 "199" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.SP SP2 1 300 400 0 77 0 0 "const" 1 "1 GHz" 0 "10 GHz" 0 "[137 MHz]" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.SP SP3 0 540 400 0 77 0 0 "lin" 1 "0.1 GHz" 1 "2 GHz" 1 "199" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn2 1 790 340 -31 19 0 0 "GA=GaCircle(S, linspace(500, 3000, 16))" 1 "GP=GpCircle(S, linspace(50, 200, 16))" 1 "SL=StabCircleL(S)" 1 "SG=StabCircleS(S)" 1 "NF=NoiseCircle(Sopt, Fmin, Rn, [Fmin, 1.4, 1.5, 2, 2.5, 3])" 1 "yes" 0>
</Components>
<Wires>
  <160 160 160 180 "" 0 0 0 "">
  <160 160 340 160 "" 0 0 0 "">
  <400 160 560 160 "" 0 0 0 "">
  <560 160 560 180 "" 0 0 0 "">
  <160 240 160 300 "" 0 0 0 "">
  <370 190 370 300 "" 0 0 0 "">
  <560 240 560 300 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
