\ Model 3 bus OPF
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  7.92 Pgen[0,0] + 7.85 Pgen[1,0] + 7.97 Pgen[2,0] + 949 Constant + [
   0.003124 Pgen[0,0] ^2 + 0.00388 Pgen[1,0] ^2 + 0.00964 Pgen[2,0] ^2
   ] / 2 
Subject To
 PowerFlow[0,1,0]: 1000 Delta[0,0] - 1000 Delta[1,0] + PF[0,1,0] = 0
 PowerFlow[0,2,0]: 800 Delta[0,0] - 800 Delta[2,0] + PF[0,2,0] = 0
 PowerFlow[1,2,0]: 500 Delta[1,0] - 500 Delta[2,0] + PF[1,2,0] = 0
 PowerFlow[1,0,0]: - 1000 Delta[0,0] + 1000 Delta[1,0] + PF[1,0,0] = 0
 PowerFlow[2,0,0]: - 800 Delta[0,0] + 800 Delta[2,0] + PF[2,0,0] = 0
 PowerFlow[2,1,0]: - 500 Delta[1,0] + 500 Delta[2,0] + PF[2,1,0] = 0
 NetBus[0,0]: Pgen[0,0] - PF[0,1,0] - PF[0,2,0] = 200
 NetBus[1,0]: Pgen[1,0] - PF[1,2,0] - PF[1,0,0] = 550
 NetBus[2,0]: Pgen[2,0] - PF[2,0,0] - PF[2,1,0] = 100
 Pmax[0,0]: Pgen[0,0] - 600 Status[0,0] <= 0
 Pmax[1,0]: Pgen[1,0] - 400 Status[1,0] <= 0
 Pmax[2,0]: Pgen[2,0] - 200 Status[2,0] <= 0
 Pin[0,0]: Pgen[0,0] - 150 Status[0,0] >= 0
 Pin[1,0]: Pgen[1,0] - 100 Status[1,0] >= 0
 Pin[2,0]: Pgen[2,0] - 50 Status[2,0] >= 0
Bounds
 Delta[0,0] = 0
 -6 <= Delta[1,0] <= 6
 -6 <= Delta[2,0] <= 6
 -1000 <= PF[0,1,0] <= 1000
 -1000 <= PF[0,2,0] <= 1000
 -1500 <= PF[1,2,0] <= 1500
 -1000 <= PF[1,0,0] <= 1000
 -1000 <= PF[2,0,0] <= 1000
 -1500 <= PF[2,1,0] <= 1500
 Constant = 1
Binaries
 Status[0,0] Status[1,0] Status[2,0]
End
