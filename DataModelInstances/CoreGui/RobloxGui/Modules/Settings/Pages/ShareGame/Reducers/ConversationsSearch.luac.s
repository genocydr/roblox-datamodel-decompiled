PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  MOVE R0 R2
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+11]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["Set"]
  MOVE R3 R0
  LOADK R4 K3 ["SearchAreaActive"]
  GETTABLEKS R5 R1 K4 ["isActive"]
  CALL R2 3 1
  MOVE R0 R2
  RETURN R0 1
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+11]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["Set"]
  MOVE R3 R0
  LOADK R4 K5 ["SearchText"]
  GETTABLEKS R5 R1 K6 ["searchText"]
  CALL R2 3 1
  MOVE R0 R2
  RETURN R0 1
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+2]
  GETUPVAL R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K5 ["RobloxGui"]
  GETTABLEKS R2 R3 K6 ["Modules"]
  GETTABLEKS R5 R2 K7 ["Settings"]
  GETTABLEKS R4 R5 K8 ["Pages"]
  GETTABLEKS R3 R4 K9 ["ShareGame"]
  GETIMPORT R5 K11 [require]
  GETTABLEKS R8 R1 K12 ["Workspace"]
  GETTABLEKS R7 R8 K13 ["Packages"]
  GETTABLEKS R6 R7 K14 ["AppCommonLib"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K15 ["Immutable"]
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R3 K16 ["Actions"]
  GETTABLEKS R6 R7 K17 ["ClosePage"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R3 K16 ["Actions"]
  GETTABLEKS R7 R8 K18 ["SetSearchAreaActive"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R9 R3 K16 ["Actions"]
  GETTABLEKS R8 R9 K19 ["SetSearchText"]
  CALL R7 1 1
  DUPTABLE R8 K22 [{"SearchAreaActive", "SearchText"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K20 ["SearchAreaActive"]
  LOADK R9 K23 [""]
  SETTABLEKS R9 R8 K21 ["SearchText"]
  DUPCLOSURE R9 K24 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R9 1
