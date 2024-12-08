PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchOpenReportDialog"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["userId"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["userName"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  NEWTABLE R3 8 0
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["Selectable"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["Images"]
  GETTABLEKS R4 R5 K3 ["ReportIcon"]
  SETTABLEKS R4 R3 K4 ["Image"]
  GETIMPORT R4 K7 [UDim2.new]
  LOADN R5 0
  LOADN R6 36
  LOADN R7 0
  LOADN R8 36
  CALL R4 4 1
  SETTABLEKS R4 R3 K8 ["Size"]
  GETIMPORT R4 K11 [Color3.fromRGB]
  LOADN R5 255
  LOADN R6 255
  LOADN R7 255
  CALL R4 3 1
  SETTABLEKS R4 R3 K12 ["ImageColor3"]
  LOADN R4 1
  SETTABLEKS R4 R3 K13 ["BackgroundTransparency"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K14 ["LayoutOrder"]
  SETTABLEKS R4 R3 K14 ["LayoutOrder"]
  MOVE R4 R0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K15 ["RoundedRectNoInset"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["SelectionImageObject"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["Event"]
  GETTABLEKS R4 R5 K18 ["Activated"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U3
  SETTABLE R5 R3 R4
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["propValidation"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 -1 0
  GETUPVAL R1 2
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"dispatchOpenReportDialog"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchOpenReportDialog"]
  RETURN R1 1

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
  GETTABLEKS R3 R1 K9 ["RoactRodux"]
  GETTABLEKS R4 R1 K10 ["t"]
  GETTABLEKS R5 R1 K11 ["UIBlox"]
  GETIMPORT R9 K13 [script]
  GETTABLEKS R8 R9 K14 ["Parent"]
  GETTABLEKS R7 R8 K14 ["Parent"]
  GETTABLEKS R6 R7 K14 ["Parent"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K15 ["GlobalConfig"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R6 K16 ["Resources"]
  GETTABLEKS R9 R10 K17 ["Assets"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R6 K18 ["Actions"]
  GETTABLEKS R10 R11 K19 ["OpenReportDialog"]
  CALL R9 1 1
  GETTABLEKS R12 R5 K20 ["Core"]
  GETTABLEKS R11 R12 K21 ["ImageSet"]
  GETTABLEKS R10 R11 K22 ["ImageSetButton"]
  GETTABLEKS R13 R5 K23 ["App"]
  GETTABLEKS R12 R13 K24 ["SelectionImage"]
  GETTABLEKS R11 R12 K25 ["withSelectionCursorProvider"]
  GETTABLEKS R14 R5 K23 ["App"]
  GETTABLEKS R13 R14 K24 ["SelectionImage"]
  GETTABLEKS R12 R13 K26 ["CursorKind"]
  GETTABLEKS R13 R4 K27 ["strictInterface"]
  DUPTABLE R14 K32 [{"userId", "userName", "LayoutOrder", "dispatchOpenReportDialog"}]
  GETTABLEKS R15 R4 K33 ["optional"]
  GETTABLEKS R16 R4 K34 ["integer"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K28 ["userId"]
  GETTABLEKS R15 R4 K33 ["optional"]
  GETTABLEKS R16 R4 K35 ["string"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K29 ["userName"]
  GETTABLEKS R15 R4 K34 ["integer"]
  SETTABLEKS R15 R14 K30 ["LayoutOrder"]
  GETTABLEKS R15 R4 K36 ["callback"]
  SETTABLEKS R15 R14 K31 ["dispatchOpenReportDialog"]
  CALL R13 1 1
  DUPCLOSURE R14 K37 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R12
  GETTABLEKS R15 R3 K38 ["UNSTABLE_connect2"]
  LOADNIL R16
  DUPCLOSURE R17 K39 [PROTO_4]
  CAPTURE VAL R9
  CALL R15 2 1
  MOVE R16 R14
  CALL R15 1 -1
  RETURN R15 -1