PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reject"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["UnknownFailureNoItemName"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["getProductInfo"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 1
  DUPCLOSURE R5 K1 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R3 R3 K2 ["catch"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Enums"]
  GETTABLEKS R2 R3 K6 ["PurchaseError"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K7 ["Promise"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
