*August 11, 2008
*Doc. ID: 68508, S-81826, Rev. A
*File Name: Si2302CDS_PS.txt and Si2302CDS_PS.lib
*This document is intended as a SPICE modeling guideline and does not
*constitute a commercial product data sheet.  Designers should refer to the
*appropriate data sheet of the same number for guaranteed specification
*limits.
.SUBCKT Si2302CDS D G S
M1  3  GX S S NMOS W=273327u L=0.250u       
M2  S  GX S D PMOS W=273327u L=0.235u       
RG  G  GX     4
R1  D  3      RTEMP 18E-3
CGS GX S      201E-12
DBD S  D      DBD
*********************************************************** 
.MODEL  NMOS       NMOS ( LEVEL  = 3        TOX    = 1.7E-8
+ RS     = 18E-3          RD     = 0        NSUB   = 2.45E17  
+ KP     = 2.8E-5         UO     = 650             
+ VMAX   = 0              XJ     = 5E-7     KAPPA  = 3E-2
+ ETA    = 1E-4           TPG    = 1  
+ IS     = 0              LD     = 0            
+ CGSO   = 0              CGDO   = 0        CGBO   = 0 
+ NFS    = 0.8E12         DELTA  = 0.1)
************************************************************ 
.MODEL  PMOS       PMOS ( LEVEL  = 3        TOX    = 1.7E-8
+NSUB    = 2E17           IS     = 0        TPG    = -1)   
************************************************************ 
.MODEL DBD D (CJO=60E-12 VJ=0.38 M=0.26
+FC=0.5 TT=4.71E-8 T_MEASURED=25 BV=21
+RS=4.856e-02 N=1.214 IS=5.289e-09 IKF=1000  
+EG=5.600e-01 XTI=8.258 TRS1=2.944e-12)
************************************************************ 
.MODEL RTEMP RES (TC1=8E-3 TC2=5.5E-6)
************************************************************ 
.ENDS 
