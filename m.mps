NAME 3 bus OPF
ROWS
 N  OBJ
 E  PowerFlow[0,0]
 E  PowerFlow[0,1]
 E  PowerFlow[0,2]
 E  PowerFlow[1,0]
 E  PowerFlow[1,1]
 E  PowerFlow[1,2]
 E  PowerFlow[2,0]
 E  PowerFlow[2,1]
 E  PowerFlow[2,2]
 E  NetBus[0]
 E  NetBus[1]
 E  NetBus[2]
COLUMNS
    Pgen[0]   OBJ       7.92
    Pgen[0]   NetBus[0]  1
    Pgen[1]   OBJ       7.85
    Pgen[1]   NetBus[1]  1
    Pgen[2]   OBJ       7.97
    Pgen[2]   NetBus[2]  1
    Delta[0]  PowerFlow[0,1]  1000
    Delta[0]  PowerFlow[0,2]  800
    Delta[0]  PowerFlow[1,0]  -1000
    Delta[0]  PowerFlow[2,0]  -800
    Delta[1]  PowerFlow[0,1]  -1000
    Delta[1]  PowerFlow[1,0]  1000
    Delta[1]  PowerFlow[1,2]  500
    Delta[1]  PowerFlow[2,1]  -500
    Delta[2]  PowerFlow[0,2]  -800
    Delta[2]  PowerFlow[1,2]  -500
    Delta[2]  PowerFlow[2,0]  800
    Delta[2]  PowerFlow[2,1]  500
    PF[0,0]   PowerFlow[0,0]  1
    PF[0,0]   NetBus[0]  -1
    PF[0,1]   PowerFlow[0,1]  1
    PF[0,1]   NetBus[0]  -1
    PF[0,2]   PowerFlow[0,2]  1
    PF[0,2]   NetBus[0]  -1
    PF[1,0]   PowerFlow[1,0]  1
    PF[1,0]   NetBus[1]  -1
    PF[1,1]   PowerFlow[1,1]  1
    PF[1,1]   NetBus[1]  -1
    PF[1,2]   PowerFlow[1,2]  1
    PF[1,2]   NetBus[1]  -1
    PF[2,0]   PowerFlow[2,0]  1
    PF[2,0]   NetBus[2]  -1
    PF[2,1]   PowerFlow[2,1]  1
    PF[2,1]   NetBus[2]  -1
    PF[2,2]   PowerFlow[2,2]  1
    PF[2,2]   NetBus[2]  -1
RHS
    RHS1      OBJ       -949
    RHS1      NetBus[0]  200
    RHS1      NetBus[1]  550
    RHS1      NetBus[2]  100
BOUNDS
 LO BND1      Pgen[0]   150
 UP BND1      Pgen[0]   600
 LO BND1      Pgen[1]   100
 UP BND1      Pgen[1]   400
 LO BND1      Pgen[2]   50
 UP BND1      Pgen[2]   200
 FX BND1      Delta[0]  0
 LO BND1      Delta[1]  -6
 UP BND1      Delta[1]  6
 LO BND1      Delta[2]  -6
 UP BND1      Delta[2]  6
 LO BND1      PF[0,0]   -1000
 UP BND1      PF[0,0]   1000
 LO BND1      PF[0,1]   -1000
 UP BND1      PF[0,1]   1000
 LO BND1      PF[0,2]   -1000
 UP BND1      PF[0,2]   1000
 LO BND1      PF[1,0]   -1000
 UP BND1      PF[1,0]   1000
 LO BND1      PF[1,1]   -1000
 UP BND1      PF[1,1]   1000
 LO BND1      PF[1,2]   -1000
 UP BND1      PF[1,2]   1000
 LO BND1      PF[2,0]   -1000
 UP BND1      PF[2,0]   1000
 LO BND1      PF[2,1]   -1000
 UP BND1      PF[2,1]   1000
 LO BND1      PF[2,2]   -1000
 UP BND1      PF[2,2]   1000
QUADOBJ
    Pgen[0]   Pgen[0]   0.003124
    Pgen[1]   Pgen[1]   0.00388
    Pgen[2]   Pgen[2]   0.00964
ENDATA
