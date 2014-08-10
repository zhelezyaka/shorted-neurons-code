PCBNEW-LibModule-V1  09/04/2010 13:36:26
$INDEX
HFSAX
HFSRA
HFSRA_b
HFSRA_C
HFVK200
ALTNC
ALTNC_S
HFBOB7_1
HFBOB10_1
Transfo_CP
SM0805I
SM1206I
SM1210I
SM1812I
SM1008I
SM2220I
Transfo_thy
HFSRA_L
HFSRA_LB
L_HF3_1
L_HF3_2
L_HF3_3
L_HF12_3
L_HF3_4
L_HF3_5
L_HF3_6
IND_CMS
Pot_ferrite_RM
Pot_ferrite_P
$EndINDEX
$MODULE HFSRA
Po 0 0 0 15 48E73687 00000000 ~~
Li HFSRA
Sc 00000000
AR
Op 0 0 0
T0 0 -2000 600 600 0 120 N V 21 "HFSRA"
T1 0 -3000 600 600 0 120 N V 21 "L**"
DC 0 0 1000 0 150 21
DS 1000 0 500 0 150 21
DS -1000 0 -500 0 150 21
$PAD
Sh "1" R 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1000 0
$EndPAD
$PAD
Sh "2" C 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 0
$EndPAD
$EndMODULE  HFSRA
$MODULE HFSAX
Po 0 0 0 15 48B64314 00000000 ~~
Li HFSAX
Sc 00000000
AR
Op 0 0 0
T0 0 1500 600 600 0 120 N V 21 N"HFSAX"
T1 -500 -1500 600 600 0 120 N V 21 N"L**"
DS 1500 0 2000 0 150 21
DS -2000 0 -1500 0 150 21
DS -1500 0 -1500 -500 150 21
DS -1500 -500 1500 -500 150 21
DS 1500 -500 1500 500 150 21
DS 1500 500 -1500 500 150 21
DS -1500 500 -1500 0 150 21
$PAD
Sh "1" R 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 0
$EndPAD
$PAD
Sh "2" C 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 0
$EndPAD
$SHAPE3D
Na "inductances/HFSA_x.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  HFSAX
$MODULE ALTNC
Po 0 0 0 15 4BB6FF9F 00000000 ~~
Li ALTNC
Sc 00000000
AR
Op 0 0 0
T0 0 3750 600 600 0 120 N V 21 N"ALTNC"
T1 -300 -3600 600 600 0 120 N V 21 N"L**"
DS 2000 4250 2500 4250 150 21
DS -2500 4750 2000 4250 150 21
DS 2000 -5500 2500 -5500 150 21
DS -2500 -5000 2000 -5500 150 21
DS -2500 -2000 2000 -2500 150 21
DS -2500 -3000 2000 -3500 150 21
DS -2500 -4000 2000 -4500 150 21
DS 2000 -2500 2500 -2500 150 21
DS 2000 -3500 2500 -3500 150 21
DS 2000 -4500 2500 -4500 150 21
DS -2500 4000 2000 3500 150 21
DS -2500 3000 2000 2500 150 21
DS -2500 2000 2000 1500 150 21
DS 2000 3500 2500 3500 150 21
DS 2000 2500 2500 2500 150 21
DS 2000 1500 2500 1500 150 21
DS 2500 -5750 2750 -5750 150 21
DS 2750 -5750 2750 4750 150 21
DS 2750 4750 -2750 4750 150 21
DS -2750 4750 -2750 -5750 150 21
DS -2750 -5750 2500 -5750 150 21
DS -3250 -5750 -3000 -6000 150 21
DS -3000 -6000 -2750 -6250 150 21
DS -2750 -6250 2750 -6250 150 21
DS 2750 -6250 3250 -5750 150 21
DS 3250 -5750 3250 4750 150 21
DS 3250 4750 3000 5000 150 21
DS 3000 5000 2750 5250 150 21
DS 2750 5250 -2750 5250 150 21
DS -2750 5250 -3250 4750 150 21
DS -3250 4750 -3250 -5750 150 21
DS -3000 5000 -3000 -6000 150 21
DS -3000 -6000 3000 -6000 150 21
DS 3000 -6000 3000 5000 150 21
DS 3000 5000 -3000 5000 150 21
DS 2000 -1500 2500 -1500 150 21
DS 2000 -500 2500 -500 150 21
DS 2000 500 2500 500 150 21
DS -2500 -1000 2000 -1500 150 21
DS -2500 0 2000 -500 150 21
DS -2500 1000 2000 500 150 21
$PAD
Sh "1" R 1276 1276 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1500 -1500
$EndPAD
$PAD
Sh "2" C 1276 1276 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 1500
$EndPAD
$SHAPE3D
Na "inductances/slef_torique.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 90.000000 180.000000 270.000000
$EndSHAPE3D
$EndMODULE  ALTNC
$MODULE HFSRA_C
Po 0 0 0 15 48E736DB 00000000 ~~
Li HFSRA_C
Sc 00000000
AR
Op 0 0 0
T0 0 3000 600 600 0 120 N V 21 N"HFSRA_C"
T1 -1000 -2500 600 600 0 120 N V 21 N"L**"
DC 0 0 2000 500 150 21
$PAD
Sh "1" R 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1000 0
$EndPAD
$PAD
Sh "2" C 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 0
$EndPAD
$SHAPE3D
Na "inductances/HFSRA_cy.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  HFSRA_C
$MODULE HFSRA_b
Po 0 0 0 15 48E736BB 00000000 ~~
Li HFSRA_b
Sc 00000000
AR
Op 0 0 0
T0 500 2000 600 600 0 120 N V 21 N"HFSRA_b"
T1 0 -2000 600 600 0 120 N V 21 N"L**"
DS -1500 1000 -1500 -1000 150 21
DS -1500 -1000 1500 -1000 150 21
DS 1500 -1000 1500 1000 150 21
DS 1500 1000 -1500 1000 150 21
$PAD
Sh "1" R 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1000 0
$EndPAD
$PAD
Sh "2" C 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 0
$EndPAD
$SHAPE3D
Na "inductances/HFSRA_pa.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  HFSRA_b
$MODULE HFVK200
Po 0 0 0 15 48E736F8 00000000 ~~
Li HFVK200
Sc 00000000
AR
Op 0 0 0
T0 0 3000 600 600 0 120 N V 21 N"HFVK200"
T1 -1000 -2500 600 600 0 120 N V 21 N"L**"
DS 1000 -1000 -1000 0 150 21
DS -1000 0 1000 0 150 21
DS 1000 0 -1000 1000 150 21
DS -1000 1000 1000 1000 150 21
DS -1000 -1000 1000 -1000 150 21
DC 0 0 2000 500 150 21
$PAD
Sh "1" R 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1000 -1000
$EndPAD
$PAD
Sh "2" C 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 1000
$EndPAD
$SHAPE3D
Na "inductances/VK200.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 90.000000 180.000000 180.000000
$EndSHAPE3D
$EndMODULE  HFVK200
$MODULE L_HF3_1
Po 0 0 0 15 49638492 00000000 ~~
Li L_HF3_1
Sc 00000000
AR
Op 0 0 0
T0 1000 -2000 600 600 0 120 N V 21 N"L_HF_3_1"
T1 0 -3000 600 600 0 120 N V 21 N"L**"
DS 500 1250 250 -1250 150 21
DS 250 -1250 250 1250 150 21
DS 250 1250 0 0 150 21
DS 750 -1250 1000 0 150 21
DS 500 1250 500 -1250 150 21
DS 500 -1250 750 1250 150 21
DS 750 1250 750 -1250 150 21
$PAD
Sh "1" R 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "2" C 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 0
$EndPAD
$SHAPE3D
Na "inductances/L_HF_3_1.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 90.000000 180.000000 270.000000
$EndSHAPE3D
$EndMODULE  L_HF3_1
$MODULE L_HF3_2
Po 0 0 0 15 49638502 00000000 ~~
Li L_HF3_2
Sc 00000000
AR
Op 0 0 0
T0 1000 -2000 600 600 0 120 N V 21 N"L_HF_3_2"
T1 0 -3000 600 600 0 120 N V 21 N"L**"
DS 0 0 0 -1250 150 21
DS 0 -1250 500 1250 150 21
DS 500 1250 500 -1250 150 21
DS 500 -1250 1000 1250 150 21
DS 1000 1250 1000 -1250 150 21
DS 1000 -1250 1500 1250 150 21
DS 1500 1250 1500 -1250 150 21
DS 1500 -1250 2000 1250 150 21
DS 2000 1250 2000 0 150 21
$PAD
Sh "1" R 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "2" C 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 0
$EndPAD
$SHAPE3D
Na "inductances/L_HF_3_2.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 90.000000 180.000000 270.000000
$EndSHAPE3D
$EndMODULE  L_HF3_2
$MODULE HFSRA_L
Po 0 0 0 15 48F6CC1B 00000000 ~~
Li HFSRA_L
Sc 00000000
AR
Op 0 0 0
T0 0 -2000 600 600 0 120 N V 21 N"HFSRA_L"
T1 0 -3000 600 600 0 120 N V 21 N"L**"
DC 0 0 1500 0 150 21
$PAD
Sh "1" R 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1500 0
$EndPAD
$PAD
Sh "2" C 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1500 0
$EndPAD
$SHAPE3D
Na "inductances/inductorV1.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  HFSRA_L
$MODULE HFSRA_LB
Po 0 0 0 15 48F6CC73 00000000 ~~
Li HFSRA_LB
Sc 00000000
AR
Op 0 0 0
T0 0 -2000 600 600 0 120 N V 21 N"HFSRA_LB"
T1 0 -3000 600 600 0 120 N V 21 N"L**"
DS 1500 0 2000 0 150 21
DS -1500 0 -2000 0 150 21
DC 0 0 1500 0 150 21
$PAD
Sh "1" R 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 0
$EndPAD
$PAD
Sh "2" C 882 882 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 0
$EndPAD
$SHAPE3D
Na "inductances/inductorV2.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  HFSRA_LB
$MODULE L_HF3_3
Po 0 0 0 15 49638548 00000000 ~~
Li L_HF3_3
Sc 00000000
AR
Op 0 0 0
T0 1000 -2000 600 600 0 120 N V 21 N"L_HF_3_3"
T1 0 -3000 600 600 0 120 N V 21 N"L**"
DS 0 0 0 -1250 150 21
DS 0 -1250 500 1250 150 21
DS 500 1250 500 -1250 150 21
DS 500 -1250 1000 1250 150 21
DS 1000 1250 1000 -1250 150 21
DS 1000 -1250 1500 1250 150 21
DS 1500 1250 1500 -1250 150 21
DS 1500 -1250 2000 1250 150 21
DS 2000 1250 2000 -1250 150 21
DS 2000 -1250 2500 1250 150 21
DS 2500 1250 2500 -1250 150 21
DS 2500 -1250 3000 1250 150 21
DS 3000 1250 3000 0 150 21
$PAD
Sh "1" R 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "2" C 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 3000 0
$EndPAD
$SHAPE3D
Na "inductances/L_HF_3_3.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 90.000000 180.000000 270.000000
$EndSHAPE3D
$EndMODULE  L_HF3_3
$MODULE L_HF3_4
Po 0 0 0 15 49638593 00000000 ~~
Li L_HF3_4
Sc 00000000
AR
Op 0 0 0
T0 1000 -2000 600 600 0 120 N V 21 N"L_HF_3_4"
T1 0 -3000 600 600 0 120 N V 21 N"L**"
DS 3000 1250 3000 -1250 150 21
DS 3000 -1250 3500 1250 150 21
DS 3500 1250 3500 -1250 150 21
DS 3500 -1250 4000 1250 150 21
DS 4000 1250 4000 0 150 21
DS 0 0 0 -1250 150 21
DS 0 -1250 500 1250 150 21
DS 500 1250 500 -1250 150 21
DS 500 -1250 1000 1250 150 21
DS 1000 1250 1000 -1250 150 21
DS 1000 -1250 1500 1250 150 21
DS 1500 1250 1500 -1250 150 21
DS 1500 -1250 2000 1250 150 21
DS 2000 1250 2000 -1250 150 21
DS 2000 -1250 2500 1250 150 21
DS 2500 1250 2500 -1250 150 21
DS 2500 -1250 3000 1250 150 21
$PAD
Sh "1" R 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "2" C 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 4000 0
$EndPAD
$SHAPE3D
Na "inductances/L_HF_3_4.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 90.000000 180.000000 270.000000
$EndSHAPE3D
$EndMODULE  L_HF3_4
$MODULE L_HF3_5
Po 0 0 0 15 496385D5 00000000 ~~
Li L_HF3_5
Sc 00000000
AR
Op 0 0 0
T0 2000 -2000 600 600 0 120 N V 21 N"L_HF_3_5"
T1 1000 -3000 600 600 0 120 N V 21 N"L**"
DS 4000 1250 4000 -1250 150 21
DS 4000 -1250 4500 1250 150 21
DS 4500 1250 4500 -1250 150 21
DS 4500 -1250 5000 1250 150 21
DS 5000 1250 5000 0 150 21
DS 3000 1250 3000 -1250 150 21
DS 3000 -1250 3500 1250 150 21
DS 3500 1250 3500 -1250 150 21
DS 3500 -1250 4000 1250 150 21
DS 0 0 0 -1250 150 21
DS 0 -1250 500 1250 150 21
DS 500 1250 500 -1250 150 21
DS 500 -1250 1000 1250 150 21
DS 1000 1250 1000 -1250 150 21
DS 1000 -1250 1500 1250 150 21
DS 1500 1250 1500 -1250 150 21
DS 1500 -1250 2000 1250 150 21
DS 2000 1250 2000 -1250 150 21
DS 2000 -1250 2500 1250 150 21
DS 2500 1250 2500 -1250 150 21
DS 2500 -1250 3000 1250 150 21
$PAD
Sh "1" R 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "2" C 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 5000 0
$EndPAD
$SHAPE3D
Na "inductances/L_HF_3_5.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 90.000000 180.000000 270.000000
$EndSHAPE3D
$EndMODULE  L_HF3_5
$MODULE L_HF3_6
Po 0 0 0 15 49638623 00000000 ~~
Li L_HF3_6
Sc 00000000
AR
Op 0 0 0
T0 3000 -2000 600 600 0 120 N V 21 N"L_HF_3_6"
T1 1250 -3000 600 600 0 120 N V 21 N"L**"
DS 5000 0 5000 -1250 150 21
DS 5000 -1250 5500 1250 150 21
DS 5500 1250 5500 -1250 150 21
DS 5500 -1250 6000 1250 150 21
DS 6000 1250 6000 0 150 21
DS 4000 1250 4000 -1250 150 21
DS 4000 -1250 4500 1250 150 21
DS 4500 1250 4500 -1250 150 21
DS 4500 -1250 5000 1250 150 21
DS 5000 1250 5000 0 150 21
DS 3000 1250 3000 -1250 150 21
DS 3000 -1250 3500 1250 150 21
DS 3500 1250 3500 -1250 150 21
DS 3500 -1250 4000 1250 150 21
DS 0 0 0 -1250 150 21
DS 0 -1250 500 1250 150 21
DS 500 1250 500 -1250 150 21
DS 500 -1250 1000 1250 150 21
DS 1000 1250 1000 -1250 150 21
DS 1000 -1250 1500 1250 150 21
DS 1500 1250 1500 -1250 150 21
DS 1500 -1250 2000 1250 150 21
DS 2000 1250 2000 -1250 150 21
DS 2000 -1250 2500 1250 150 21
DS 2500 1250 2500 -1250 150 21
DS 2500 -1250 3000 1250 150 21
$PAD
Sh "1" R 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "2" C 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 6000 0
$EndPAD
$SHAPE3D
Na "inductances/L_HF_3_6.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 90.000000 180.000000 270.000000
$EndSHAPE3D
$EndMODULE  L_HF3_6
$MODULE L_HF12_3
Po 0 0 0 15 49636098 00000000 ~~
Li L_HF12_3
Sc 00000000
AR
Op 0 0 0
T0 1000 -2000 600 600 0 120 N V 21 N"L_HF_12_3"
T1 0 -3000 600 600 0 120 N V 21 N"L**"
DS 2750 1250 3000 -1250 150 21
DS 3000 -1250 3000 0 150 21
DS 0 0 0 1250 150 21
DS 0 1250 250 -1250 150 21
DS 250 -1250 250 1250 150 21
DS 250 1250 500 -1250 150 21
DS 500 -1250 500 1250 150 21
DS 500 1250 750 -1250 150 21
DS 750 -1250 750 1250 150 21
DS 750 1250 1000 -1250 150 21
DS 1000 -1250 1000 1250 150 21
DS 1000 1250 1250 -1250 150 21
DS 1250 -1250 1250 1250 150 21
DS 1250 1250 1500 -1250 150 21
DS 1500 -1250 1500 1250 150 21
DS 1500 1250 1750 -1250 150 21
DS 1750 -1250 1750 1250 150 21
DS 1750 1250 2000 -1250 150 21
DS 2000 -1250 2000 1250 150 21
DS 2000 1250 2250 -1250 150 21
DS 2250 -1250 2250 1250 150 21
DS 2250 1250 2500 -1250 150 21
DS 2500 -1250 2500 1250 150 21
DS 2500 1250 2750 -1250 150 21
DS 2750 -1250 2750 1250 150 21
$PAD
Sh "1" R 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "2" C 787 787 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 3000 0
$EndPAD
$SHAPE3D
Na "inductances/L_HF_12_3.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 90.000000 180.000000 270.000000
$EndSHAPE3D
$EndMODULE  L_HF12_3
$MODULE ALTNC_S
Po 0 0 0 15 48F59865 00000000 ~~
Li ALTNC_S
Sc 00000000
AR
Op 0 0 0
T0 0 2500 600 600 0 120 N V 21 N"ALTNC_S"
T1 -500 -2500 600 600 0 120 N V 21 N"L**"
DS 2000 2000 2500 0 150 21
DS 1000 2000 2000 -2000 150 21
DS 0 2000 1000 -2000 150 21
DS -1000 2000 0 -2000 150 21
DS -2000 2000 -1000 -2000 150 21
DS -3000 2000 -2000 -2000 150 21
DS 2500 2000 2500 -2000 150 21
DS 2500 -2000 -3000 -2000 150 21
DS -3000 -2000 -3000 2000 150 21
DS -3000 2000 2500 2000 150 21
$PAD
Sh "1" R 1276 1276 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1000 -1000
$EndPAD
$PAD
Sh "2" C 1276 1276 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 1000
$EndPAD
$SHAPE3D
Na "inductances/slef_torique2.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 270.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  ALTNC_S
$MODULE IND_CMS
Po 0 0 0 15 4BBC3469 00000000 ~~
Li IND_CMS
Kw CMS SM
Sc 00000000
AR
Op 0 0 0
At SMD
T0 -294 0 400 300 900 50 N V 21 N"IND_CMS"
T1 300 0 400 300 900 50 N V 21 N"Val*"
DS 600 800 1250 800 50 21
DS 1250 800 1250 -800 50 21
DS 1250 -800 600 -800 50 21
DS -600 -800 -1250 -800 50 21
DS -1250 -800 -1250 800 50 21
DS -1250 800 -600 800 50 21
$PAD
Sh "1" R 850 2000 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po -900 0
$EndPAD
$PAD
Sh "2" R 850 2000 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 900 0
$EndPAD
$SHAPE3D
Na "inductances/cms_self.wrl"
Sc 0.410000 0.400000 0.300000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  IND_CMS
$MODULE SM2220I
Po 0 0 0 15 48F59EC5 00000000 ~~
Li SM2220I
Kw CMS SM
Sc 00000000
AR
Op 0 0 0
At SMD
T0 -294 0 400 300 900 50 N V 21 N"SM220I"
T1 300 0 400 300 900 50 N V 21 N"Val*"
DS 600 800 1250 800 50 21
DS 1250 800 1250 -800 50 21
DS 1250 -800 600 -800 50 21
DS -600 -800 -1250 -800 50 21
DS -1250 -800 -1250 800 50 21
DS -1250 800 -600 800 50 21
$PAD
Sh "1" R 850 2000 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po -900 0
$EndPAD
$PAD
Sh "2" R 850 2000 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 900 0
$EndPAD
$SHAPE3D
Na "inductances/chip_cms.wrl"
Sc 0.210000 0.300000 0.200000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  SM2220I
$MODULE SM1210I
Po 0 0 0 15 48F59D53 00000000 ~~
Li SM1210I
Kw CMS SM
Sc 00000000
AR
Op 0 0 0
At SMD
T0 0 -200 300 300 0 50 N V 21 N"SM1210I"
T1 0 200 300 300 0 50 N V 21 N"Val**"
DS -300 -550 -900 -550 50 21
DS -900 -550 -900 550 50 21
DS -900 550 -300 550 50 21
DS 300 550 900 550 50 21
DS 900 550 900 -550 50 21
DS 900 -550 300 -550 50 21
$PAD
Sh "1" R 500 1000 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po -600 0
$EndPAD
$PAD
Sh "2" R 500 1000 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 600 0
$EndPAD
$SHAPE3D
Na "inductances/chip_cms.wrl"
Sc 0.170000 0.200000 0.170000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  SM1210I
$MODULE SM1812I
Po 0 0 0 15 48F59D8B 00000000 ~~
Li SM1812I
Kw CMS SM
Sc 00000000
AR
Op 0 0 0
At SMD
T0 -294 0 400 300 900 50 N V 21 N"SM1812I"
T1 300 0 400 300 900 50 N V 21 N"Val*"
DS 600 800 1250 800 50 21
DS 1250 800 1250 -800 50 21
DS 1250 -800 600 -800 50 21
DS -600 -800 -1250 -800 50 21
DS -1250 -800 -1250 800 50 21
DS -1250 800 -600 800 50 21
$PAD
Sh "1" R 550 1500 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po -900 0
$EndPAD
$PAD
Sh "2" R 550 1500 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 900 0
$EndPAD
$SHAPE3D
Na "inductances/chip_cms.wrl"
Sc 0.210000 0.300000 0.200000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  SM1812I
$MODULE SM1008I
Po 0 0 0 15 48F59E1B 00000000 ~~
Li SM1008I
Kw CMS SM
Sc 00000000
AR
Op 0 0 0
At SMD
T0 0 -200 300 300 0 50 N V 21 N"SM1008I"
T1 0 200 300 300 0 50 N V 21 N"Val**"
DS -300 -550 -900 -550 50 21
DS -900 -550 -900 550 50 21
DS -900 550 -300 550 50 21
DS 300 550 900 550 50 21
DS 900 550 900 -550 50 21
DS 900 -550 300 -550 50 21
$PAD
Sh "1" R 700 1000 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po -600 0
$EndPAD
$PAD
Sh "2" R 700 1000 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 600 0
$EndPAD
$SHAPE3D
Na "inductances/chip_cms.wrl"
Sc 0.170000 0.200000 0.170000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  SM1008I
$MODULE SM1206I
Po 0 0 0 15 48F59D03 00000000 ~~
Li SM1206I
Sc 00000000
AR
Op 0 0 0
At SMD
T0 0 0 300 300 0 50 N V 21 N"SM1206I"
T1 0 0 300 300 0 50 N I 21 N"Val**"
DS -1000 -450 -1000 450 50 21
DS -1000 450 -350 450 50 21
DS 350 -450 1000 -450 50 21
DS 1000 -450 1000 450 50 21
DS 1000 450 350 450 50 21
DS -350 -450 -1000 -450 50 21
$PAD
Sh "1" R 600 800 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po -650 0
$EndPAD
$PAD
Sh "2" R 600 800 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 650 0
$EndPAD
$SHAPE3D
Na "inductances/chip_cms.wrl"
Sc 0.170000 0.160000 0.160000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  SM1206I
$MODULE SM0805I
Po 0 0 0 15 48F59CC1 00000000 ~~
Li SM0805I
Sc 00000000
AR
Op 0 0 0
At SMD
T0 0 0 250 250 0 50 N V 21 N"SM0805I"
T1 0 0 250 250 0 50 N I 21 N"Val*"
DC -650 300 -650 250 50 21
DS -200 300 -600 300 50 21
DS -600 300 -600 -300 50 21
DS -600 -300 -200 -300 50 21
DS 200 -300 600 -300 50 21
DS 600 -300 600 300 50 21
DS 600 300 200 300 50 21
$PAD
Sh "1" R 350 550 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po -375 0
$EndPAD
$PAD
Sh "2" R 350 550 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 375 0
$EndPAD
$SHAPE3D
Na "inductances/chip_cms.wrl"
Sc 0.100000 0.100000 0.100000
Of 0.000000 0.000000 0.000000
Ro 0.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  SM0805I
$MODULE Transfo_CP
Po 0 0 0 15 4BBADA7E 00000000 ~~
Li Transfo_CP
Sc 00000000
AR
Op 0 0 0
T0 -1000 0 600 600 0 120 N V 21 N"Transfo_CP"
T1 0 -2500 600 600 0 120 N V 21 N"L**"
DC 0 0 2500 -2000 150 21
$PAD
Sh "1" R 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 -1500
$EndPAD
$PAD
Sh "2" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 1500
$EndPAD
$PAD
Sh "3" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 1500
$EndPAD
$PAD
Sh "4" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 0
$EndPAD
$PAD
Sh "5" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 -1500
$EndPAD
$SHAPE3D
Na "inductances/trans_CP.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 270.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  Transfo_CP
$MODULE Transfo_thy
Po 0 0 0 15 4BBADA5F 00000000 ~~
Li Transfo_thy
Sc 00000000
AR
Op 0 0 0
T0 1500 2000 600 600 0 120 N V 21 N"Transfo_Thy"
T1 0 -2500 600 600 0 120 N V 21 N"L**"
T2 -2000 -1500 600 600 0 120 N V 21 N"text"
DC -2750 -2000 -2500 -1750 150 21
DS -4000 3000 -4000 4000 150 21
DS -4000 4000 3000 4000 150 21
DS 3000 4000 3000 3000 150 21
DS -4000 -2000 -4000 -3000 150 21
DS -4000 -3000 3000 -3000 150 21
DS 3000 -3000 3000 -2000 150 21
DS 3000 3000 3000 -2000 150 21
DS -4000 3000 -4000 -2000 150 21
$PAD
Sh "1" R 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 -1500
$EndPAD
$PAD
Sh "2" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 1500
$EndPAD
$PAD
Sh "3" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1500 1500
$EndPAD
$PAD
Sh "4" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 -1500
$EndPAD
$SHAPE3D
Na "inductances/trans_thy.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 270.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  Transfo_thy
$MODULE HFBOB7_1
Po 0 0 0 15 48F59972 00000000 ~~
Li HFBOB7_1
Sc 00000000
AR
Op 0 0 0
T0 500 2500 600 600 0 120 N V 21 N"HFBOB7_1"
T1 -1000 -2500 600 600 0 120 N V 21 N"L**"
DS -250 250 250 -250 150 21
DC 0 0 -500 0 150 21
DS -1500 -1500 1500 -1500 150 21
DS 1500 -1500 1500 1500 150 21
DS 1500 1500 -1500 1500 150 21
DS -1500 1500 -1500 -1500 150 21
$PAD
Sh "1" R 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1000 -1000
$EndPAD
$PAD
Sh "2" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1000 1000
$EndPAD
$PAD
Sh "3" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 1000
$EndPAD
$PAD
Sh "4" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 0
$EndPAD
$PAD
Sh "5" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 -1000
$EndPAD
$PAD
Sh "6" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 -1500
$EndPAD
$PAD
Sh "7" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 1500
$EndPAD
$SHAPE3D
Na "inductances/HF_BOB7_1.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 270.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  HFBOB7_1
$MODULE HFBOB10_1
Po 0 0 0 15 48F59AF1 00000000 ~~
Li HFBOB10_1
Sc 00000000
AR
Op 0 0 0
T0 500 2500 600 600 0 120 N V 21 N"HFBOB10_1"
T1 -1000 -2500 600 600 0 120 N V 21 N"L**"
DS -1000 500 1000 -500 150 21
DC 0 0 500 -1000 150 21
DS -1500 2000 -2500 2000 150 21
DS -2500 2000 -2500 -2000 150 21
DS -2500 -2000 -1500 -2000 150 21
DS 1500 -2000 2000 -2000 150 21
DS 2000 -2000 2500 -2000 150 21
DS 2500 -2000 2500 2000 150 21
DS 2500 2000 1500 2000 150 21
DS 1500 -2000 -1500 -2000 150 21
DS -1500 2000 1500 2000 150 21
$PAD
Sh "1" R 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 -1500
$EndPAD
$PAD
Sh "2" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 1500
$EndPAD
$PAD
Sh "3" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 1500
$EndPAD
$PAD
Sh "4" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 0
$EndPAD
$PAD
Sh "5" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 -1500
$EndPAD
$PAD
Sh "6" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 -2000
$EndPAD
$PAD
Sh "7" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 2000
$EndPAD
$SHAPE3D
Na "inductances/HF_BOB10_1.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 270.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  HFBOB10_1
$MODULE Pot_ferrite_RM
Po 0 0 0 15 4BBF0C77 00000000 ~~
Li Pot_ferrite_RM
Sc 00000000
AR
Op 0 0 0
T0 0 0 600 600 0 120 N V 21 N"Pot_RM"
T1 0 -2500 600 600 0 120 N V 21 N"L**"
DC 0 0 3000 -1000 150 21
DS 1250 1250 2750 2750 150 21
DS 2750 2750 3000 2750 150 21
DS 4000 1000 4000 -1000 150 21
DS 2500 -750 2500 -1000 150 21
DS 2500 -1000 4250 -1000 150 21
DS 4250 -1000 4250 1000 150 21
DS 4250 1000 2500 1000 150 21
DS 2500 1000 2500 -750 150 21
DS -4000 -1000 -4000 750 150 21
DS -4000 -1000 -2500 -1000 150 21
DS -2500 -1000 -2500 1000 150 21
DS -2500 1000 -4250 1000 150 21
DS -4250 1000 -4250 -1000 150 21
DS -4250 -1000 -4000 -1000 150 21
DS -3000 2750 -2750 2750 150 21
DS -2750 2750 -1250 1250 150 21
DS -1250 1250 1250 1250 150 21
DS -3000 -2750 -2750 -2750 150 21
DS -2750 -2750 -1000 -1250 150 21
DS -1000 -1250 1250 -1250 150 21
DS 1250 -1250 2750 -2750 150 21
DS 2750 -2750 3000 -2750 150 21
DC 0 0 4000 1000 150 21
$PAD
Sh "1" R 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 -2000
$EndPAD
$PAD
Sh "2" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2000 2000
$EndPAD
$PAD
Sh "3" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 2000
$EndPAD
$PAD
Sh "4" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2000 -2000
$EndPAD
$PAD
Sh "5" C 600 600 0 0 0
Dr 320 0 0
At STD N 0000FFFF
Ne 0 ""
Po 4000 0
$EndPAD
$PAD
Sh "6" C 600 600 0 0 0
Dr 320 0 0
At STD N 0000FFFF
Ne 0 ""
Po -4000 0
$EndPAD
$SHAPE3D
Na "inductances/pot_ferrite-RM.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 270.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  Pot_ferrite_RM
$MODULE Pot_ferrite_P
Po 0 0 0 15 4BBF1121 00000000 ~~
Li Pot_ferrite_P
Sc 00000000
AR 
Op 0 0 0
T0 0 0 600 600 0 120 N V 21 N"Pot_P"
T1 500 -1000 600 600 0 120 N V 21 N"L**"
DS -1000 -3500 -1000 -3700 150 21
DS -1000 -3700 -1300 -3900 150 21
DS 1000 -3500 1000 -3700 150 21
DS 1000 -3700 1300 -3900 150 21
DS -1500 -2000 -1000 -1500 150 21
DS -1000 -1500 900 -1500 150 21
DS 900 -1500 1000 -1500 150 21
DS 1000 -1500 1500 -2000 150 21
DS 1500 -2000 1500 -2700 150 21
DS -1500 1800 -1200 1500 150 21
DS -1200 1500 1200 1500 150 21
DS 1200 1500 1500 1800 150 21
DS -1000 3600 -1000 3700 150 21
DS -1000 3600 -1000 3200 150 21
DS -1000 3700 -1200 3900 150 21
DS 1000 3000 1000 3700 150 21
DS 1000 3700 1200 3900 150 21
DS -1500 -2000 -1500 -2750 150 21
DS -1500 -2750 -1000 -3000 150 21
DS -1000 -3000 -1000 -3500 150 21
DS 1500 -2500 1500 -2750 150 21
DS 1500 -2750 1000 -3000 150 21
DS 1000 -3000 1000 -3500 150 21
DS 1500 1750 1500 2500 150 21
DS 1500 2500 1500 2750 150 21
DS 1500 2750 1000 3000 150 21
DS -1000 3250 -1000 3000 150 21
DS -1000 3000 -1500 2750 150 21
DS -1500 2750 -1500 1750 150 21
DC 0 0 3000 -1000 150 21
DS 4000 1000 4000 -1000 150 21
DS 2500 -750 2500 -1000 150 21
DS 2500 -1000 4250 -1000 150 21
DS 4250 -1000 4250 1000 150 21
DS 4250 1000 2500 1000 150 21
DS 2500 1000 2500 -750 150 21
DS -4000 -1000 -4000 750 150 21
DS -4000 -1000 -2500 -1000 150 21
DS -2500 -1000 -2500 1000 150 21
DS -2500 1000 -4250 1000 150 21
DS -4250 1000 -4250 -1000 150 21
DS -4250 -1000 -4000 -1000 150 21
DC 0 0 4000 1000 150 21
$PAD
Sh "1" R 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1000 -2250
$EndPAD
$PAD
Sh "2" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1000 2250
$EndPAD
$PAD
Sh "3" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 2250
$EndPAD
$PAD
Sh "4" C 720 720 0 0 0
Dr 320 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1000 -2250
$EndPAD
$PAD
Sh "5" C 600 600 0 0 0
Dr 320 0 0
At STD N 0000FFFF
Ne 0 ""
Po 4000 0
$EndPAD
$PAD
Sh "6" C 600 600 0 0 0
Dr 320 0 0
At STD N 0000FFFF
Ne 0 ""
Po -4000 0
$EndPAD
$SHAPE3D
Na "inductances/pot_ferrite-P.wrl"
Sc 1.000000 1.000000 1.000000
Of 0.000000 0.000000 0.000000
Ro 270.000000 0.000000 0.000000
$EndSHAPE3D
$EndMODULE  Pot_ferrite_P
$EndLIBRARY