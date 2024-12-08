PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Portal"]
  DUPTABLE R3 K3 [{"target"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K2 ["target"]
  DUPTABLE R4 K5 [{"InGameMenuModalBlur"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K6 ["ScreenGui"]
  DUPTABLE R7 K11 [{"OnTopOfCoreBlur", "Enabled", "IgnoreGuiInset", "DisplayOrder"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["OnTopOfCoreBlur"]
  GETTABLEKS R9 R0 K12 ["props"]
  GETTABLEKS R8 R9 K8 ["Enabled"]
  SETTABLEKS R8 R7 K8 ["Enabled"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["IgnoreGuiInset"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K10 ["DisplayOrder"]
  GETTABLEKS R8 R9 K13 ["BlurredModalPortal"]
  SETTABLEKS R8 R7 K10 ["DisplayOrder"]
  GETTABLEKS R9 R0 K12 ["props"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["Children"]
  GETTABLE R8 R9 R10
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["InGameMenuModalBlur"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VREnabled"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K1 ["Enabled"]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K1 ["Enabled"]
  JUMPIFEQ R2 R3 [+6]
  GETUPVAL R4 1
  MOVE R6 R3
  NAMECALL R4 R4 K3 ["SetRobloxGuiFocused"]
  CALL R4 2 0
  RETURN R0 0

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
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RunService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["VRService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["InGameMenuDependencies"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["Roact"]
  GETTABLEKS R6 R4 K12 ["t"]
  GETIMPORT R7 K14 [script]
  LOADK R9 K15 ["InGameMenu"]
  NAMECALL R7 R7 K16 ["FindFirstAncestor"]
  CALL R7 2 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R7 K17 ["Resources"]
  GETTABLEKS R9 R10 K18 ["Constants"]
  CALL R8 1 1
  GETTABLEKS R9 R5 K19 ["PureComponent"]
  LOADK R11 K20 ["BlurredModalPortal"]
  NAMECALL R9 R9 K21 ["extend"]
  CALL R9 2 1
  GETTABLEKS R10 R6 K22 ["strictInterface"]
  NEWTABLE R11 2 0
  GETTABLEKS R12 R6 K23 ["boolean"]
  SETTABLEKS R12 R11 K24 ["Enabled"]
  GETTABLEKS R12 R5 K25 ["Children"]
  GETTABLEKS R13 R6 K26 ["optional"]
  GETTABLEKS R14 R6 K27 ["table"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  CALL R10 1 1
  SETTABLEKS R10 R9 K28 ["validateProps"]
  DUPCLOSURE R10 K29 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K30 ["render"]
  DUPCLOSURE R10 K31 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K32 ["didUpdate"]
  RETURN R9 1
