PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+11]
  DUPTABLE R2 K2 [{"IsOpen", "Route"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["IsOpen"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["PageRoute"]
  GETTABLEKS R3 R4 K4 ["NONE"]
  SETTABLEKS R3 R2 K1 ["Route"]
  MOVE R0 R2
  GETTABLEKS R2 R1 K5 ["type"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["name"]
  JUMPIFNOTEQ R2 R3 [+22]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["JoinDictionaries"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"IsOpen", "Route"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K0 ["IsOpen"]
  GETTABLEKS R5 R1 K8 ["route"]
  JUMPIF R5 [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["PageRoute"]
  GETTABLEKS R5 R6 K4 ["NONE"]
  SETTABLEKS R5 R4 K1 ["Route"]
  CALL R2 2 1
  MOVE R0 R2
  RETURN R0 1
  GETTABLEKS R2 R1 K5 ["type"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["name"]
  JUMPIFNOTEQ R2 R3 [+21]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["JoinDictionaries"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"IsOpen", "Route"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["IsOpen"]
  GETTABLEKS R5 R1 K8 ["route"]
  JUMPIF R5 [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["PageRoute"]
  GETTABLEKS R5 R6 K4 ["NONE"]
  SETTABLEKS R5 R4 K1 ["Route"]
  CALL R2 2 1
  MOVE R0 R2
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K4 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R2 R3 K5 ["RobloxGui"]
  GETTABLEKS R1 R2 K6 ["Modules"]
  GETTABLEKS R4 R1 K7 ["Settings"]
  GETTABLEKS R3 R4 K8 ["Pages"]
  GETTABLEKS R2 R3 K9 ["ShareGame"]
  GETIMPORT R4 K11 [require]
  GETTABLEKS R7 R0 K12 ["Workspace"]
  GETTABLEKS R6 R7 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["AppCommonLib"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K15 ["Immutable"]
  GETIMPORT R4 K11 [require]
  GETTABLEKS R5 R2 K16 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R2 K17 ["Actions"]
  GETTABLEKS R6 R7 K18 ["OpenPage"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R2 K17 ["Actions"]
  GETTABLEKS R7 R8 K19 ["ClosePage"]
  CALL R6 1 1
  DUPCLOSURE R7 K20 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1