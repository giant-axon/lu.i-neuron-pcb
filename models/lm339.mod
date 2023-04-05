* WARNING : please consider following remarks before usage
*
* 1) All models are a tradeoff between accuracy and complexity (ie. simulation 
*    time).
* 2) Macromodels are not a substitute to breadboarding, they rather confirm the
*    validity of a design approach and help to select surrounding component values.
*
* 3) A macromodel emulates the NOMINAL performance of a TYPICAL device within 
*    SPECIFIED OPERATING CONDITIONS (ie. temperature, supply voltage, etc.).
*    Thus the macromodel is often not as exhaustive as the datasheet, its goal
*    is to illustrate the main parameters of the product.
*
* 4) Data issued from macromodels used outside of its specified conditions
*    (Vcc, Temperature, etc) or even worse: outside of the device operating 
*    conditions (Vcc, Vicm, etc) are not reliable in any way.
*-----------------------------------------------------------------------------------------

.SUBCKT LM339 OUT2 OUT1 VCCP IN1M IN1P IN2M IN2P IN3M IN3P IN4M IN4P VCCN OUT4 OUT3
XU0 IN1P IN1M VCCP VCCN OUT1 LMx39
XU1 IN2P IN2M VCCP VCCN OUT2 LMx39
XU2 IN3P IN3M VCCP VCCN OUT3 LMx39
XU3 IN4P IN4M VCCP VCCN OUT4 LMx39
.ENDS




* LM139/LM239/LM339 spice macromodel
* CONNECTIONS : (corrected feb/17)
* 2 NON-INVERTING INPUT
* 1 INVERTING INPUT
* 44 POSITIVE POWER SUPPLY
* 55 NEGATIVE POWER SUPPLY
* 30 OUTPUT
*
**********************************************************
.SUBCKT LMx39 2 1 44 55 30
EVCCP 4 0 44 0 1.0
EVCCN 5 0 55 0 1.0
VREADIO 3 30 DC 0
G_ICCSAT 44 55 VALUE={2.1E-4+3E-6*V(44,55)}
G_IOUT_SINKED 55 0 VALUE={IF (V(1)<V(2), 0, I(VreadIo))}
.MODEL MDTH D IS=1E-11 KF=1.050321E-32 CJO=10F
* INPUT STAGE
CIP 2 5 1.000000E-12
CIN 1 5 1.000000E-12
EIP 102 0 2 0 1
VIO 10 102 438.3U
EIN 16 0 1 0 1
RIP 10 11 6.500000E+01
RIN 15 16 6.500000E+01
RIS 11 15 1.939046E+02
DIP 11 12 MDTH 400E-12
DIN 15 14 MDTH 400E-12
VOFP 12 13 DC 0.000000E+00
VOFN 13 14 DC 0
IPOL 13 0 100E-06
CPS 11 15 5.5E-09
DINN 17 13 MDTH 400E-12
VIN 17 5 0.000000e+00
DINR 15 18 MDTH 400E-12
VIP 4 18 1.500000E+00
FCP 4 5 VOFP 0.175 
FCN 5 4 VOFN 0.175 
FIBP 2 0 VOFN 4.000000E-04
FIBN 0 1 VOFP 4.000000E-04
* AMPLIFYING STAGE
RG1 5 19 2.85E+05
RG2 4 19 2.85E+05
DOP 19 25 MDTH 400E-12
VOP 4 25 1.097
DON 24 19 MDTH 400E-12
VON 24 5 1.097
FIP 0 19 VOFP -104 
FIN 0 19 VOFN -104
EOUT 26 5 19 5 1 
.MODEL NMOD NPN(IS=0.1E-09 BF=4000)
RBOUT 27 26 800K
QOUT 103 27 28 28 NMOD
REOUT 28 5 20
RSOUT 3 0 1E+12
VNUL 3 103 0
DSTOP 32 103 MDTH 400E-12
HSTOP 32 33 VNUL 135
VSTOP 33 5 0.5
.ENDS
 
