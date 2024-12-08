PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Secondary"]
  GETTABLEKS R2 R0 K1 ["skip"]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["NextButton"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K3 ["PrimaryContextual"]
  GETTABLEKS R2 R0 K4 ["next"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K12 [{"buttonType", "text", "fontStyle", "layoutOrder", "size", "onActivated"}]
  SETTABLEKS R1 R5 K6 ["buttonType"]
  SETTABLEKS R2 R5 K7 ["text"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K13 ["Body"]
  SETTABLEKS R6 R5 K8 ["fontStyle"]
  LOADN R6 4
  SETTABLEKS R6 R5 K9 ["layoutOrder"]
  GETIMPORT R6 K16 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADK R9 K17 [0.6]
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["size"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K11 ["onActivated"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R2 R1 K0 ["Font"]
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K1 ["platform"]
  GETTABLE R3 R4 R5
  GETTABLEKS R4 R0 K2 ["currentIndex"]
  GETTABLEKS R5 R0 K3 ["increaseCurrentIndex"]
  GETTABLE R7 R3 R4
  GETTABLEKS R6 R7 K4 ["button"]
  GETUPVAL R7 2
  DUPTABLE R8 K7 [{"skip", "next"}]
  LOADK R9 K8 ["CoreScripts.VRFTUX.Action.Skip"]
  SETTABLEKS R9 R8 K5 ["skip"]
  LOADK R9 K9 ["CoreScripts.VRFTUX.Action.Next"]
  SETTABLEKS R9 R8 K6 ["next"]
  CALL R7 1 1
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R6
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  CAPTURE VAL R5
  CALL R7 1 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["UIBlox"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K9 ["App"]
  GETTABLEKS R4 R5 K10 ["Button"]
  GETTABLEKS R3 R4 K10 ["Button"]
  GETTABLEKS R7 R2 K9 ["App"]
  GETTABLEKS R6 R7 K10 ["Button"]
  GETTABLEKS R5 R6 K11 ["Enum"]
  GETTABLEKS R4 R5 K12 ["ButtonType"]
  GETTABLEKS R7 R2 K13 ["Core"]
  GETTABLEKS R6 R7 K14 ["Style"]
  GETTABLEKS R5 R6 K15 ["useStyle"]
  GETIMPORT R9 K17 [script]
  GETTABLEKS R8 R9 K18 ["Parent"]
  GETTABLEKS R7 R8 K18 ["Parent"]
  GETTABLEKS R6 R7 K18 ["Parent"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R6 K19 ["Resources"]
  GETTABLEKS R8 R9 K20 ["FTUXSlideshowData"]
  CALL R7 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K21 ["Workspace"]
  GETTABLEKS R11 R12 K6 ["Packages"]
  GETTABLEKS R10 R11 K22 ["Localization"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K23 ["withLocalization"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R6 K24 ["Enums"]
  GETTABLEKS R10 R11 K25 ["PlatformEnum"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R6 K24 ["Enums"]
  GETTABLEKS R11 R12 K26 ["ButtonEnum"]
  CALL R10 1 1
  DUPCLOSURE R11 K27 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R11 1
