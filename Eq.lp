\ Model 3 bus OPF
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  7.92 Pgen[0] + 7.85 Pgen[1] + 7.97 Pgen[2] + 949 Constant + [
   0.003124 Pgen[0] ^2 + 0.00388 Pgen[1] ^2 + 0.00964 Pgen[2] ^2 ] / 2 
Subject To
 PowerFlow[0,0]: PF[0,0] = 0
 PowerFlow[0,1]: 1000 Delta[0] - 1000 Delta[1] + PF[0,1] = 0
 PowerFlow[0,2]: 800 Delta[0] - 800 Delta[2] + PF[0,2] = 0
 PowerFlow[1,0]: - 1000 Delta[0] + 1000 Delta[1] + PF[1,0] = 0
 PowerFlow[1,1]: PF[1,1] = 0
 PowerFlow[1,2]: 500 Delta[1] - 500 Delta[2] + PF[1,2] = 0
 PowerFlow[2,0]: - 800 Delta[0] + 800 Delta[2] + PF[2,0] = 0
 PowerFlow[2,1]: - 500 Delta[1] + 500 Delta[2] + PF[2,1] = 0
 PowerFlow[2,2]: PF[2,2] = 0
 NetBus[0]: Pgen[0] - PF[0,0] - PF[0,1] - PF[0,2] = 200
 NetBus[1]: Pgen[1] - PF[1,0] - PF[1,1] - PF[1,2] = 550
 NetBus[2]: Pgen[2] - PF[2,0] - PF[2,1] - PF[2,2] = 100
Bounds
 150 <= Pgen[0] <= 600
 100 <= Pgen[1] <= 400
 50 <= Pgen[2] <= 200
 Delta[0] = 0
 -6 <= Delta[1] <= 6
 -6 <= Delta[2] <= 6
 -1000 <= PF[0,0] <= 1000
 -1000 <= PF[0,1] <= 1000
 -1000 <= PF[0,2] <= 1000
 -1000 <= PF[1,0] <= 1000
 -1000 <= PF[1,1] <= 1000
 -1000 <= PF[1,2] <= 1000
 -1000 <= PF[2,0] <= 1000
 -1000 <= PF[2,1] <= 1000
 -1000 <= PF[2,2] <= 1000
 Constant = 1
End
