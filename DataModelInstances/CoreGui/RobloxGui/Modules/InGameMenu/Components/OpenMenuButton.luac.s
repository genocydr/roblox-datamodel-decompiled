PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["propValidation"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 -1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 3
  NEWTABLE R3 8 0
  GETIMPORT R4 K6 [Vector2.new]
  LOADK R5 K7 [0.5]
  LOADK R6 K7 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["AnchorPoint"]
  LOADN R4 1
  SETTABLEKS R4 R3 K9 ["BackgroundTransparency"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K10 ["Images"]
  GETTABLEKS R4 R5 K11 ["RobloxLogo"]
  SETTABLEKS R4 R3 K12 ["Image"]
  GETIMPORT R4 K14 [UDim2.new]
  LOADN R5 0
  LOADN R6 50
  LOADK R7 K7 [0.5]
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K15 ["Position"]
  GETIMPORT R4 K14 [UDim2.new]
  LOADN R5 0
  LOADN R6 32
  LOADN R7 0
  LOADN R8 32
  CALL R4 4 1
  SETTABLEKS R4 R3 K16 ["Size"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K17 ["Event"]
  GETTABLEKS R4 R5 K18 ["Activated"]
  GETTABLEKS R5 R0 K19 ["onClick"]
  SETTABLE R5 R3 R4
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["t"]
  GETTABLEKS R4 R1 K10 ["UIBlox"]
  GETIMPORT R7 K12 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R5 K14 ["Resources"]
  GETTABLEKS R7 R8 K15 ["Assets"]
  CALL R6 1 1
  GETTABLEKS R9 R4 K16 ["Core"]
  GETTABLEKS R8 R9 K17 ["ImageSet"]
  GETTABLEKS R7 R8 K18 ["ImageSetButton"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R5 K19 ["GlobalConfig"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K20 ["strictInterface"]
  DUPTABLE R10 K22 [{"onClick"}]
  GETTABLEKS R11 R3 K23 ["callback"]
  SETTABLEKS R11 R10 K21 ["onClick"]
  CALL R9 1 1
  DUPCLOSURE R10 K24 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  RETURN R10 1
