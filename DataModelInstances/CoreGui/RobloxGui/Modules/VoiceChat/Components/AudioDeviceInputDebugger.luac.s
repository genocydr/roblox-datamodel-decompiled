PROTO_0:
  GETTABLEKS R2 R0 K0 ["Player"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["createElement"]
  LOADK R4 K2 ["TextLabel"]
  DUPTABLE R5 K7 [{"Text", "Size", "AutomaticSize", "Position"}]
  LOADK R7 K8 ["ADI: "]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R8 R2 K9 ["Name"]
  JUMP [+1]
  LOADK R8 K10 ["Unnamed"]
  LOADK R9 K11 [" "]
  GETTABLEKS R12 R0 K12 ["Active"]
  JUMPIFNOT R12 [+2]
  LOADK R10 K13 ["Active "]
  JUMP [+1]
  LOADK R10 K14 ["Inactive "]
  JUMPIFNOT R2 [+7]
  GETUPVAL R13 1
  GETTABLEKS R14 R2 K15 ["UserId"]
  GETTABLE R12 R13 R14
  JUMPIFNOT R12 [+2]
  LOADK R11 K16 ["localmuted"]
  JUMP [+1]
  LOADK R11 K17 ["not-localmuted"]
  CONCAT R6 R7 R11
  SETTABLEKS R6 R5 K3 ["Text"]
  GETIMPORT R6 K20 [UDim2.fromOffset]
  LOADN R7 200
  LOADN R8 25
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["Size"]
  GETIMPORT R6 K23 [Enum.AutomaticSize.X]
  SETTABLEKS R6 R5 K5 ["AutomaticSize"]
  GETIMPORT R6 K20 [UDim2.fromOffset]
  LOADN R7 10
  MULK R8 R1 K24 [28]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Position"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["instances"]
  GETTABLEKS R2 R0 K1 ["mutedPlayers"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["ScreenGui"]
  DUPTABLE R5 K9 [{"AutoLocalize", "DisplayOrder", "IgnoreGuiInset", "OnTopOfCoreBlur", "ZIndexBehavior"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K4 ["AutoLocalize"]
  LOADN R6 100
  SETTABLEKS R6 R5 K5 ["DisplayOrder"]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["IgnoreGuiInset"]
  LOADB R6 1
  SETTABLEKS R6 R5 K7 ["OnTopOfCoreBlur"]
  GETIMPORT R6 K12 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K8 ["ZIndexBehavior"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["createFragment"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K14 ["List"]
  GETTABLEKS R7 R8 K15 ["map"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K16 ["Dictionary"]
  GETTABLEKS R8 R9 K17 ["keys"]
  MOVE R9 R1
  CALL R8 1 1
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CALL R7 2 -1
  CALL R6 -1 -1
  CALL R3 -1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
