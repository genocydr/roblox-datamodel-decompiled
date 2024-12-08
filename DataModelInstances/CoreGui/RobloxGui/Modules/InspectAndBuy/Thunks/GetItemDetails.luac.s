PROTO_0:
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.AvatarItemType.Asset]
  JUMPIFNOTEQ R1 R2 [+18]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["fromGetItemDetails"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 2
  GETUPVAL R4 3
  NEWTABLE R5 0 1
  MOVE R6 R1
  SETLIST R5 R6 1 [1]
  CALL R4 1 -1
  NAMECALL R2 R2 K5 ["dispatch"]
  CALL R2 -1 0
  JUMP [+33]
  GETUPVAL R1 0
  GETIMPORT R2 K7 [Enum.AvatarItemType.Bundle]
  JUMPIFNOTEQ R1 R2 [+18]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K4 ["fromGetItemDetails"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 2
  GETUPVAL R4 5
  NEWTABLE R5 0 1
  MOVE R6 R1
  SETLIST R5 R6 1 [1]
  CALL R4 1 -1
  NAMECALL R2 R2 K5 ["dispatch"]
  CALL R2 -1 0
  JUMP [+11]
  GETUPVAL R1 2
  GETUPVAL R3 6
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K8 ["Counters"]
  GETTABLEKS R4 R5 K9 ["GetItemDetailsRespondedWithUnknownItemType"]
  CALL R3 1 -1
  NAMECALL R1 R1 K5 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 2
  GETUPVAL R3 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K8 ["Counters"]
  GETTABLEKS R5 R7 K10 ["GetItemDetails"]
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K11 ["CounterSuffix"]
  GETTABLEKS R6 R7 K12 ["RequestSucceeded"]
  CONCAT R4 R5 R6
  CALL R3 1 -1
  NAMECALL R1 R1 K5 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["Counters"]
  GETTABLEKS R5 R7 K1 ["GetItemDetails"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["CounterSuffix"]
  GETTABLEKS R6 R7 K3 ["RequestRejected"]
  CONCAT R4 R5 R6
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getItemDetails"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NAMECALL R0 R0 K1 ["andThen"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["Counters"]
  GETTABLEKS R5 R7 K1 ["GetItemDetails"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["CounterSuffix"]
  GETTABLEKS R6 R7 K3 ["RequestFailed"]
  CONCAT R4 R5 R6
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R3 1
  NAMECALL R5 R0 K0 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K1 ["storeId"]
  GETUPVAL R5 2
  GETUPVAL R6 3
  CALL R3 3 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K2 ["Single"]
  MOVE R5 R3
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CALL R4 2 1
  MOVE R5 R0
  CALL R4 1 1
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  NAMECALL R4 R4 K3 ["catch"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  GETIMPORT R4 K2 [script]
  GETTABLEKS R3 R4 K3 ["Name"]
  GETUPVAL R4 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Http"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["PerformFetch"]
  GETIMPORT R4 K11 [script]
  GETTABLEKS R3 R4 K12 ["Parent"]
  GETTABLEKS R2 R3 K12 ["Parent"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K13 ["Thunk"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R2 K14 ["Models"]
  GETTABLEKS R5 R6 K15 ["AssetInfo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R2 K14 ["Models"]
  GETTABLEKS R6 R7 K16 ["BundleInfo"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R2 K17 ["Services"]
  GETTABLEKS R7 R8 K18 ["Network"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R2 K19 ["Actions"]
  GETTABLEKS R8 R9 K20 ["SetAssets"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R2 K19 ["Actions"]
  GETTABLEKS R9 R10 K21 ["SetBundles"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R2 K22 ["createInspectAndBuyKeyMapper"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R2 K23 ["Thunks"]
  GETTABLEKS R11 R12 K24 ["SendCounter"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R2 K25 ["Constants"]
  CALL R11 1 1
  NEWTABLE R12 0 1
  MOVE R13 R6
  SETLIST R12 R13 1 [1]
  MOVE R13 R9
  LOADK R14 K26 ["getItemDetails"]
  CALL R13 1 1
  DUPCLOSURE R14 K27 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R11
  RETURN R14 1
