PROTO_0:
  DUPTABLE R1 K1 [{"isTenFootInterface"}]
  SETTABLEKS R0 R1 K0 ["isTenFootInterface"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["ActionCreator"]
  CALL R0 1 1
  MOVE R1 R0
  LOADK R2 K6 ["SetTenFootInterface"]
  DUPCLOSURE R3 K7 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1
