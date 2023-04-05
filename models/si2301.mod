********************************
* Copyright:                   *
* Vishay Intertechnology, Inc. *
********************************
*Aug 18, 2014
*ECN S14-1662, Rev. B
*File Name: Si2301CDS_PS_RC.txt and Si2301CDS_PS_RC.lib
*This document is intended as a SPICE modeling guideline and does not
*constitute a commercial product data sheet.  Designers should refer to the
*appropriate data sheet of the same number for guaranteed specification
*limits.
.SUBCKT Si2301CDS D G S
M1  3  GX S S PMOS W=500000u L=0.250u 
M2  S  GX S D NMOS W=500000u L=0.416u
RG  G  GX     6
R1  D  3      RTEMP 3E-2
CGS G  S      100E-12
DBD D  S      DBD
************************************************************ 
.MODEL  PMOS         PMOS (LEVEL  = 3        TOX    = 1.7E-8
+ RS     = 4.5E-2          RD     = 0        NSUB   = 1E16   
+ KP     = 1E-5            UO     = 400             
+ VMAX   = 0               XJ     = 5E-7     KAPPA  = 1E-3
+ ETA    = 1E-4            TPG    = -1  
+ IS     = 0               LD     = 0                 
+ CGSO   = 0               CGDO   = 0        CGBO   = 0 
+ NFS    = 0.8E12          DELTA  = 0.1)
************************************************************* 
.MODEL  NMOS         NMOS (LEVEL  = 3        TOX    = 1.7E-8
+NSUB    = 9E16            IS     = 0        TPG    = -1)   
************************************************************* 
.MODEL DBD D (CJO=80E-12 VJ=0.38 M=0.39
+FC=0.5 TT=1.8e-08 T_MEASURED=25 BV=20.5
+RS=3.308e-02 N=2.756 IS=6.178e-05 IKF=1000
+EG=8.569e-01 XTI=2.641 TRS1=1.602e-07)
************************************************************* 
.MODEL RTEMP RES (TC1=7E-3 TC2=5.5E-6)
************************************************************* 
.ENDS

* source GENERARTE-COMP PCH
.SUBCKT Si2301CDS_PS_RC D G S PARAMS: C2=1000 C3=1000 R1=1M C4=1000 R2=1M
+  C5=1000 R3=1M R4=1M R5=1M C1=1000
C_CT6         N11708 N11712  115.1624u  TC=0,0 
C_CF2         0 N16364  1.7423m  TC=0,0 
R_RT1         j-a-Temp-Tank N11404  21.7093 TC=0,0 
C_CF7         0 N18737  4.8278m  TC=0,0 
R_RT7         N11712 N11716  28.1417 TC=0,0 
C_CF4         0 N16388  1.4185  TC=0,0 
G_G7         0 JUNCTION-TEMPERATURE-1RC VALUE {
+  (V(Source)-V(Drain))*I(V_V_Source)+(V(Source)-V(Gate))*(-I(V_V_Gate)) }
C_C10         N94536 N94151  {C4}  TC=0,0 
C_C12         N95722 N95798  {C2}  TC=0,0 
C_C5         N92368 N92773  {C2}  TC=0,0 
V_V_Gate         G GATE 0VDC
R_RT3         N11408 N11412  74.1761 TC=0,0 
C_C8         N94061 N94123  {C2}  TC=0,0 
R_RF3         N16384 N16388  77.5694 TC=0,0 
V_V4         N11732 0 {TEMP}
R_R10         N94536 N94151  {R4} TC=0,0 
R_R5         N92368 N92773  {R2} TC=0,0 
C_C3         N91434 N91125  {C2}  TC=0,0 
R_R12         N95722 N95798  {R2} TC=0,0 
R_R8         N94061 N94123  {R2} TC=0,0 
R_RT8         N11716 N11732  33.6520 TC=0,0 
R_RT6         N11708 N11712  3.6412 TC=0,0 
R_R3         N91434 N91125  {R2} TC=0,0 
G_DissipationPower         0 j-a-Temp-Filter VALUE {
+  (V(Source)-V(Drain))*I(V_V_Source)+(V(Source)-V(Gate))*(-I(V_V_Gate)) }
C_CT2         N11404 N11408  6.3002m  TC=0,0 
R_RT5         j-f-Temp-Tank N11708  12.5651 TC=0,0 
C_C1         JUNCTION-TEMPERATURE-1RC N89014  {C1}  TC=0,0 
C_C13         N95798 N95860  {C3}  TC=0,0 
R_RF2         N16364 N16384  45.7533 TC=0,0 
V_V3         N11450 0 {TEMP}
C_C9         N94123 N94536  {C3}  TC=0,0 
R_R13         N95798 N95860  {R3} TC=0,0 
R_RF8         N18741 N18767  14.6648 TC=0,0 
C_CT1         j-a-Temp-Tank N11404  912.9326u  TC=0,0 
R_RF1         j-a-Temp-Filter N16364  13.0369 TC=0,0 
R_RT2         N11404 N11408  38.9649 TC=0,0 
R_R9         N94123 N94536  {R3} TC=0,0 
C_CT4         N11412 N11450  1.3989  TC=0,0 
R_RF5         j-f-Temp-Filter N18733  3.4209 TC=0,0 
V_V5         N16436 0 {TEMP}
C_CT3         N11408 N11412  18.5836m  TC=0,0 
G_G5         0 j-a-Temp-Tank VALUE {
+  (V(Source)-V(Drain))*I(V_V_Source)+(V(Source)-V(Gate))*(-I(V_V_Gate)) }
C_C4         JUNCTION-TEMPERATURE-3RC N92368  {C1}  TC=0,0 
R_RF7         N18737 N18741  43.1277 TC=0,0 
C_C14         N95860 N96370  {C4}  TC=0,0 
C_C11         JUNCTION-TEMPERATURE-5RC N95722  {C1}  TC=0,0 
R_RT4         N11412 N11450  40.1497 TC=0,0 
C_CF8         0 N18741  62.2955m  TC=0,0 
C_C7         JUNCTION-TEMPERATURE-4RC N94061  {C1}  TC=0,0 
R_R1         JUNCTION-TEMPERATURE-1RC N89014  {R1} TC=0,0 
C_C2         JUNCTION-TEMPERATURE-2RC N91434  {C1}  TC=0,0 
R_R4         JUNCTION-TEMPERATURE-3RC N92368  {R1} TC=0,0 
X_U1         DRAIN GATE SOURCE SI2301CDS 
R_R14         N95860 N96370  {R4} TC=0,0 
R_R11         JUNCTION-TEMPERATURE-5RC N95722  {R1} TC=0,0 
C_CF5         0 j-f-Temp-Filter  88.0878u  TC=0,0 
C_CF1         0 j-a-Temp-Filter  432.6249u  TC=0,0 
R_R7         JUNCTION-TEMPERATURE-4RC N94061  {R1} TC=0,0 
R_R2         JUNCTION-TEMPERATURE-2RC N91434  {R1} TC=0,0 
C_CT5         j-f-Temp-Tank N11708  2.3531m  TC=0,0 
C_C15         N96370 N95888  {C5}  TC=0,0 
V_V9         N92392 0 {TEMP}
V_V_Source         S SOURCE 0VDC
V_V11         N95888 0 {TEMP}
R_RF4         N16388 N16436  38.6404 TC=0,0 
C_CT8         N11716 N11732  24.8971m  TC=0,0 
V_V10         N94151 0 {TEMP}
R_R15         N96370 N95888  {R5} TC=0,0 
G_G4         0 j-f-Temp-Filter VALUE {
+  (V(Source)-V(Drain))*I(V_V_Source)+(V(Source)-V(Gate))*(-I(V_V_Gate)) }
V_V8         N91125 0 {TEMP}
C_C6         N92773 N92392  {C3}  TC=0,0 
C_CT7         N11712 N11716  8.5129m  TC=0,0 
G_G9         0 JUNCTION-TEMPERATURE-3RC VALUE {
+  (V(Source)-V(Drain))*I(V_V_Source)+(V(Source)-V(Gate))*(-I(V_V_Gate)) }
C_CF6         0 N18733  1.2591m  TC=0,0 
R_R6         N92773 N92392  {R3} TC=0,0 
G_G11         0 JUNCTION-TEMPERATURE-5RC VALUE {
+  (V(Source)-V(Drain))*I(V_V_Source)+(V(Source)-V(Gate))*(-I(V_V_Gate)) }
V_V7         N89014 0 {TEMP}
C_CF3         0 N16384  12.0840m  TC=0,0 
G_G10         0 JUNCTION-TEMPERATURE-4RC VALUE {
+  (V(Source)-V(Drain))*I(V_V_Source)+(V(Source)-V(Gate))*(-I(V_V_Gate)) }
G_G8         0 JUNCTION-TEMPERATURE-2RC VALUE {
+  (V(Source)-V(Drain))*I(V_V_Source)+(V(Source)-V(Gate))*(-I(V_V_Gate)) }
R_RF6         N18733 N18737  16.7866 TC=0,0 
V_V_Drain         DRAIN D 0VDC
G_G6         0 j-f-Temp-Tank VALUE {
+  (V(Source)-V(Drain))*I(V_V_Source)+(V(Source)-V(Gate))*(-I(V_V_Gate)) }
V_V6         N18767 0 {TEMP}
.ENDS
