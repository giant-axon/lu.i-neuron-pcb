* This is the potentiometer
*
*  1---/\/\/\/---2
*        |
*        3
*
.SUBCKT pot 1 2 3
R0 1 2 {value*ratio + 1m}
R1 2 3 {value*(1 - ratio) + 1m}
.param value=1k
.param ratio=1
.ENDS



