PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["QuestVR"]
  JUMPIFNOTEQ R0 R1 [+3]
  GETUPVAL R1 1
  CALL R1 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Features"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Enums"]
  GETTABLEKS R3 R4 K7 ["PlatformEnum"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K8 ["EnableSafetyBubbleDummy"]
  CALL R3 1 1
  DUPCLOSURE R4 K9 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETGLOBAL R4 K10 ["GetFeatures"]
  GETGLOBAL R4 K10 ["GetFeatures"]
  RETURN R4 1