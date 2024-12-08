PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["incrementControllerBar"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["decrementControllerBar"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Portal"]
  DUPTABLE R3 K3 [{"target"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K2 ["target"]
  DUPTABLE R4 K5 [{"IGMControllerBar"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K6 ["ScreenGui"]
  DUPTABLE R7 K8 [{"DisplayOrder"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["DisplayOrder"]
  GETTABLEKS R8 R9 K9 ["ControllerBar"]
  SETTABLEKS R8 R7 K7 ["DisplayOrder"]
  DUPTABLE R8 K10 [{"ControllerBar"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K13 [{"rightHints", "leftHint"}]
  GETTABLEKS R13 R0 K14 ["props"]
  GETTABLEKS R12 R13 K11 ["rightHints"]
  SETTABLEKS R12 R11 K11 ["rightHints"]
  GETTABLEKS R13 R0 K14 ["props"]
  GETTABLEKS R12 R13 K12 ["leftHint"]
  SETTABLEKS R12 R11 K12 ["leftHint"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K9 ["ControllerBar"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["IGMControllerBar"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K2 [{"incrementControllerBar", "decrementControllerBar"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["incrementControllerBar"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["decrementControllerBar"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["UIBlox"]
  GETTABLEKS R6 R3 K10 ["App"]
  GETTABLEKS R5 R6 K11 ["Bar"]
  GETTABLEKS R4 R5 K12 ["ControllerBar"]
  GETIMPORT R7 K14 [script]
  GETTABLEKS R6 R7 K15 ["Parent"]
  GETTABLEKS R5 R6 K15 ["Parent"]
  GETTABLEKS R6 R2 K16 ["Roact"]
  GETTABLEKS R7 R2 K17 ["t"]
  GETTABLEKS R8 R2 K18 ["RoactRodux"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R5 K19 ["Resources"]
  GETTABLEKS R10 R11 K20 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R5 K21 ["Actions"]
  GETTABLEKS R11 R12 K22 ["IncrementControllerBar"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R5 K21 ["Actions"]
  GETTABLEKS R12 R13 K23 ["DecrementControllerBar"]
  CALL R11 1 1
  GETTABLEKS R12 R6 K24 ["PureComponent"]
  LOADK R14 K25 ["IGMControllerBar2"]
  NAMECALL R12 R12 K26 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R7 K27 ["strictInterface"]
  DUPTABLE R14 K32 [{"rightHints", "leftHint", "incrementControllerBar", "decrementControllerBar"}]
  GETTABLEKS R15 R7 K33 ["table"]
  SETTABLEKS R15 R14 K28 ["rightHints"]
  GETTABLEKS R15 R7 K33 ["table"]
  SETTABLEKS R15 R14 K29 ["leftHint"]
  GETTABLEKS R15 R7 K34 ["callback"]
  SETTABLEKS R15 R14 K30 ["incrementControllerBar"]
  GETTABLEKS R15 R7 K34 ["callback"]
  SETTABLEKS R15 R14 K31 ["decrementControllerBar"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K35 ["validateProps"]
  DUPCLOSURE R13 K36 [PROTO_0]
  SETTABLEKS R13 R12 K37 ["init"]
  DUPCLOSURE R13 K38 [PROTO_1]
  SETTABLEKS R13 R12 K39 ["willUnmount"]
  DUPCLOSURE R13 K40 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K41 ["render"]
  GETTABLEKS R13 R8 K42 ["UNSTABLE_connect2"]
  LOADNIL R14
  DUPCLOSURE R15 K43 [PROTO_5]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CALL R13 2 1
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1
