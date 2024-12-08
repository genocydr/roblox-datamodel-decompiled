PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R3 1
  JUMPIFNOT R3 [+7]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["parentBundleId"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADNIL R4
  LOADNIL R5
  JUMPIFNOT R3 [+8]
  LOADK R4 K1 ["Bundle"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["getBundleId"]
  GETUPVAL R7 1
  CALL R6 1 1
  MOVE R5 R6
  JUMP [+4]
  LOADK R4 K3 ["Asset"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["assetId"]
  GETTABLEKS R6 R2 K5 ["reportItemDetailPageOpened"]
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R8 3
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K6 ["Counters"]
  GETTABLEKS R9 R10 K7 ["ItemDetailPageOpened"]
  CALL R8 1 -1
  NAMECALL R6 R0 K8 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  GETIMPORT R3 K2 [script]
  GETTABLEKS R2 R3 K3 ["Name"]
  GETUPVAL R3 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Thunk"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K6 ["Services"]
  GETTABLEKS R3 R4 K7 ["Analytics"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K8 ["UtilityFunctions"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["Thunks"]
  GETTABLEKS R5 R6 K10 ["SendCounter"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R0 K11 ["Constants"]
  CALL R5 1 1
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  DUPCLOSURE R7 K12 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R7 1