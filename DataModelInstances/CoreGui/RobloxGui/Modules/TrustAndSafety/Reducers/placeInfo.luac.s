PROTO_0:
  DUPTABLE R2 K2 [{"name", "description"}]
  GETTABLEKS R3 R1 K0 ["name"]
  SETTABLEKS R3 R2 K0 ["name"]
  GETTABLEKS R3 R1 K1 ["description"]
  SETTABLEKS R3 R2 K1 ["description"]
  RETURN R2 1

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
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K12 ["Actions"]
  GETTABLEKS R5 R6 K13 ["SetPlaceInfo"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K14 ["createReducer"]
  DUPTABLE R6 K17 [{"name", "description"}]
  LOADK R7 K18 [""]
  SETTABLEKS R7 R6 K15 ["name"]
  LOADK R7 K18 [""]
  SETTABLEKS R7 R6 K16 ["description"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R4 K15 ["name"]
  DUPCLOSURE R9 K19 [PROTO_0]
  SETTABLE R9 R7 R8
  CALL R5 2 -1
  RETURN R5 -1