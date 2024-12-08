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
  DUPTABLE R3 K10 [{"BackgroundTransparency", "Image", "Size", "Position", "AnchorPoint", "LayoutOrder"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["BackgroundTransparency"]
  GETUPVAL R5 4
  GETTABLEKS R6 R0 K11 ["input"]
  GETTABLE R4 R5 R6
  SETTABLEKS R4 R3 K5 ["Image"]
  GETIMPORT R4 K14 [UDim2.new]
  LOADN R5 0
  LOADN R6 36
  LOADN R7 0
  LOADN R8 36
  CALL R4 4 1
  SETTABLEKS R4 R3 K6 ["Size"]
  GETTABLEKS R4 R0 K7 ["Position"]
  SETTABLEKS R4 R3 K7 ["Position"]
  GETTABLEKS R4 R0 K8 ["AnchorPoint"]
  SETTABLEKS R4 R3 K8 ["AnchorPoint"]
  GETTABLEKS R4 R0 K9 ["LayoutOrder"]
  SETTABLEKS R4 R3 K9 ["LayoutOrder"]
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
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K16 ["GlobalConfig"]
  CALL R7 1 1
  GETTABLEKS R10 R4 K17 ["Core"]
  GETTABLEKS R9 R10 K18 ["ImageSet"]
  GETTABLEKS R8 R9 K19 ["ImageSetLabel"]
  NEWTABLE R9 4 0
  GETIMPORT R10 K23 [Enum.UserInputType.MouseButton1]
  GETTABLEKS R12 R6 K24 ["Images"]
  GETTABLEKS R11 R12 K25 ["Mouse1Press"]
  SETTABLE R11 R9 R10
  GETIMPORT R10 K27 [Enum.UserInputType.MouseButton2]
  GETTABLEKS R12 R6 K24 ["Images"]
  GETTABLEKS R11 R12 K28 ["Mouse2Press"]
  SETTABLE R11 R9 R10
  GETIMPORT R10 K30 [Enum.UserInputType.MouseWheel]
  GETTABLEKS R12 R6 K24 ["Images"]
  GETTABLEKS R11 R12 K31 ["MouseWheelScroll"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K32 ["strictInterface"]
  DUPTABLE R11 K37 [{"input", "AnchorPoint", "Position", "LayoutOrder"}]
  GETTABLEKS R12 R3 K38 ["enum"]
  GETIMPORT R13 K39 [Enum.UserInputType]
  CALL R12 1 1
  SETTABLEKS R12 R11 K33 ["input"]
  GETTABLEKS R12 R3 K40 ["optional"]
  GETTABLEKS R13 R3 K41 ["Vector2"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K34 ["AnchorPoint"]
  GETTABLEKS R12 R3 K40 ["optional"]
  GETTABLEKS R13 R3 K42 ["UDim2"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K35 ["Position"]
  GETTABLEKS R12 R3 K40 ["optional"]
  GETTABLEKS R13 R3 K43 ["integer"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K36 ["LayoutOrder"]
  CALL R10 1 1
  DUPCLOSURE R11 K44 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R11 1