PROTO_0:
  GETTABLEKS R1 R0 K0 ["purchased"]
  JUMPIF R1 [+4]
  GETTABLEKS R1 R0 K1 ["reason"]
  JUMPIFNOTEQKS R1 K2 ["AlreadyOwned"] [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["resolve"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K1 ["reason"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["PurchaseFailureReason"]
  GETTABLEKS R2 R3 K5 ["EconomyDisabled"]
  JUMPIFNOTEQ R1 R2 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["reject"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["PurchaseDisabled"]
  CALL R1 1 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K1 ["reason"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["PurchaseFailureReason"]
  GETTABLEKS R2 R3 K8 ["TwoStepVerificationRequired"]
  JUMPIFNOTEQ R1 R2 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["reject"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["TwoFactorNeeded"]
  CALL R1 1 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K10 ["transactionStatus"]
  JUMPIFNOTEQKN R1 K11 [24] [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["reject"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["TwoFactorNeeded"]
  CALL R1 1 -1
  RETURN R1 -1
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["reject"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["reject"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K12 ["UnknownFailure"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reject"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["UnknownFailure"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R10 R0 K0 ["performPurchase"]
  MOVE R11 R1
  MOVE R12 R2
  MOVE R13 R3
  MOVE R14 R4
  MOVE R15 R5
  MOVE R16 R6
  MOVE R17 R7
  MOVE R18 R8
  MOVE R19 R9
  CALL R10 9 1
  DUPCLOSURE R12 K1 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  DUPCLOSURE R13 K2 [PROTO_1]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  NAMECALL R10 R10 K3 ["andThen"]
  CALL R10 3 -1
  RETURN R10 -1

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
  GETTABLEKS R4 R0 K7 ["Misc"]
  GETTABLEKS R3 R4 K8 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K9 ["Promise"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K10 ["Utils"]
  GETTABLEKS R5 R6 K11 ["isGenericChallengeResponse"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R5 1