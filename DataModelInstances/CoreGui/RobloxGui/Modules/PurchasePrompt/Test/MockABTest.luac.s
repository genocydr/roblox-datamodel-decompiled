PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_2:
  NEWTABLE R1 2 0
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K0 ["getLayerData"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K1 ["logUserLayerExposure"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_2]
  SETTABLEKS R1 R0 K1 ["new"]
  RETURN R0 1
