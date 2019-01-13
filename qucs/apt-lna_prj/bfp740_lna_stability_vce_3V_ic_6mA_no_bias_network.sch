<Qucs Schematic 0.0.19>
<Properties>
  <View=0,4,1308,1040,1,0,0>
  <Grid=10,10,1>
  <DataSet=bfp740_lna_stability_vce_3V_ic_6mA_no_bias_network.dat>
  <DataDisplay=bfp740_lna_stability_vce_3V_ic_6mA_no_bias_network.dpl>
  <OpenDisplay=1>
  <Script=bfp740_lna_stability_vce_3V_ic_6mA_no_bias_network.m>
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
  <.DC DC1 1 90 530 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 80 360 0 0 0 0>
  <IProbe Pr1 1 690 200 -26 16 0 0>
  <GND * 1 740 360 0 0 0 0>
  <GND * 1 450 310 0 0 0 0>
  <C C1 1 170 200 -26 17 0 0 "100 nF" 1 "" 0 "neutral" 0>
  <C C3 1 610 200 -26 17 0 0 "100 nF" 1 "" 0 "neutral" 0>
  <IProbe Pr3 1 370 200 -26 16 0 0>
  <Pac P1 1 80 270 18 -26 0 1 "1" 1 "50 Ohm" 1 "-95 dBm" 0 "0.137 GHz" 0 "26.85" 0>
  <Pac P2 1 740 290 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <SPfile X1 1 450 200 -26 -67 0 0 "/home/jsr/dev/stunning-octo-guacamole/s2p/SPAR/BFP740ESD/BFP740ESD_w_noise_VCE_3.0V_IC_6.0mA.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <.SP SP1 0 920 340 0 77 0 0 "lin" 1 "0.1 GHz" 1 "10 GHz" 1 "1999" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.SP SP2 1 920 560 0 77 0 0 "const" 1 "1 GHz" 0 "10 GHz" 0 "[0.137 GHz;]" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 0 330 450 -31 19 0 0 "dbS21=dB(S[2,1])" 1 "FmindB=w2dbm(Fmin)-30" 1 "FdB=w2dbm(F)-30" 1 "K=StabFactor(S)" 1 "dbS12=dB(S[1,2])" 1 "yes" 0>
  <Eqn Eqn2 1 540 450 -31 19 0 0 "Ga=GaCircle(S,linspace(150,3500,16))" 1 "GammaS=0.468-j0.407" 1 "GammaLconj=S[2,2] + S[1,2] * S[2,1] * GammaS / (1 - S[1,1] * GammaS)" 1 "dBS21=dB(S[2,1])" 1 "dBS12=dB(S[1,2])" 1 "Gp=GpCircle(S,linspace(150,3500,16))" 1 "SG=StabCircleS(S)" 1 "SL=StabCircleL(S)" 1 "NF=NoiseCircle(Sopt, Fmin,Rn, [Fmin, 1.3, 1.4, 1.5, 1.6, 1.8, 2.0, 2.5])" 1 "FmindB=w2dbm(Fmin)-30" 1 "FdB=w2dbm(F)-30" 1 "yes" 0>
</Components>
<Wires>
  <80 300 80 360 "" 0 0 0 "">
  <80 200 140 200 "" 0 0 0 "">
  <80 200 80 240 "" 0 0 0 "">
  <200 200 340 200 "Vbb" 350 120 120 "">
  <640 200 660 200 "" 0 0 0 "">
  <720 200 740 200 "" 0 0 0 "">
  <480 200 580 200 "VC" 540 230 61 "">
  <400 200 420 200 "" 0 0 0 "">
  <740 200 740 260 "" 0 0 0 "">
  <740 320 740 360 "" 0 0 0 "">
  <450 230 450 310 "" 0 0 0 "">
  <80 200 80 200 "Vi" 110 170 0 "">
  <740 200 740 200 "v_o" 770 170 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
