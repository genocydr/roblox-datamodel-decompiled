PROTO_0:
  GETTABLEKS R1 R0 K0 ["parentBundleId"]
  JUMPIFEQKNIL R1 [+4]
  GETTABLEKS R1 R0 K0 ["parentBundleId"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  MOVE R1 R0
  JUMPIFNOT R1 [+14]
  GETTABLEKS R1 R0 K0 ["productType"]
  JUMPIFNOT R1 [+11]
  GETTABLEKS R2 R0 K0 ["productType"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["ProductType"]
  GETTABLEKS R3 R4 K2 ["CollectibleItem"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["isLimited"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K1 ["isLimitedUnique"]
  JUMP [+1]
  LOADNIL R2
  GETTABLEKS R3 R0 K2 ["collectibleIsLimited"]
  MOVE R4 R1
  JUMPIF R4 [+3]
  MOVE R4 R2
  JUMPIF R4 [+1]
  MOVE R4 R3
  RETURN R4 1

PROTO_3:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["isLimited"]
  JUMPIF R1 [+2]
  GETTABLEKS R1 R0 K1 ["isLimitedUnique"]
  RETURN R1 1

PROTO_4:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["isLimitedUnique"]
  RETURN R1 1

PROTO_5:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["collectibleIsLimited"]
  RETURN R1 1

PROTO_6:
  JUMPIFNOT R0 [+1]
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["hasLimitedQuantity"]
  MOVE R4 R1
  CALL R3 1 1
  NOT R2 R3
  GETTABLEKS R4 R1 K1 ["productType"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["ProductType"]
  GETTABLEKS R5 R6 K3 ["CollectibleItem"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["ItemType"]
  GETTABLEKS R5 R6 K5 ["Asset"]
  JUMPIFEQ R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  MOVE R5 R2
  JUMPIFNOT R5 [+3]
  MOVE R5 R3
  JUMPIFNOT R5 [+1]
  MOVE R5 R4
  RETURN R5 1

PROTO_7:
  JUMPIFNOT R0 [+1]
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R1 K0 ["collectibleIsLimited"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["ItemType"]
  GETTABLEKS R4 R5 K2 ["Bundle"]
  JUMPIFEQ R0 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  AND R4 R2 R3
  RETURN R4 1

PROTO_8:
  JUMPIFNOT R0 [+1]
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R3 R1 K0 ["collectibleIsLimited"]
  NOT R2 R3
  GETTABLEKS R4 R1 K1 ["productType"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["ProductType"]
  GETTABLEKS R5 R6 K3 ["CollectibleItem"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["ItemType"]
  GETTABLEKS R5 R6 K5 ["Bundle"]
  JUMPIFEQ R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  MOVE R5 R2
  JUMPIFNOT R5 [+3]
  MOVE R5 R3
  JUMPIFNOT R5 [+1]
  MOVE R5 R4
  RETURN R5 1

PROTO_9:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["hasLimitedQuantity"]
  MOVE R2 R0
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["productType"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["ProductType"]
  GETTABLEKS R4 R5 K3 ["CollectibleItem"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  AND R3 R1 R2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K6 ["Flags"]
  GETTABLEKS R3 R4 K7 ["GetFFlagIBEnableCollectiblesSystemSupport"]
  CALL R2 1 1
  NEWTABLE R3 16 0
  DUPCLOSURE R4 K8 [PROTO_0]
  SETTABLEKS R4 R3 K9 ["getBundleId"]
  DUPCLOSURE R4 K10 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K11 ["isCollectibles"]
  DUPCLOSURE R4 K12 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K13 ["hasLimitedQuantity"]
  DUPCLOSURE R4 K14 [PROTO_3]
  SETTABLEKS R4 R3 K15 ["isLimited1Point0"]
  DUPCLOSURE R4 K16 [PROTO_4]
  SETTABLEKS R4 R3 K17 ["isLimited1Point0_LimitedUnique"]
  DUPCLOSURE R4 K18 [PROTO_5]
  SETTABLEKS R4 R3 K19 ["isLimited2Point0_Or_LimitedCollectible"]
  DUPCLOSURE R4 K20 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K21 ["isUnlimitedCollectibleAsset"]
  DUPCLOSURE R4 K22 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K23 ["isLimitedBundle"]
  DUPCLOSURE R4 K24 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K25 ["isUnlimitedCollectibleBundle"]
  DUPCLOSURE R4 K26 [PROTO_9]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K27 ["isLimitedCollectible"]
  RETURN R3 1