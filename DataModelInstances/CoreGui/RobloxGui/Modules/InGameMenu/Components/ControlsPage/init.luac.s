PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["closeButtonRef"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["closeButtonRef"]
  NAMECALL R0 R0 K1 ["getValue"]
  CALL R0 1 1
  GETUPVAL R1 1
  LOADK R3 K2 ["IGMControlsPage_CloseButtonSelectionGroup"]
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["AddSelectionParent"]
  CALL R1 3 0
  GETUPVAL R1 1
  SETTABLEKS R0 R1 K4 ["SelectedCoreObject"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["IGMControlsPage_CloseButtonSelectionGroup"]
  NAMECALL R0 R0 K1 ["RemoveSelectionGroup"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["controlLayout"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["ControlLayouts"]
  GETTABLEKS R2 R3 K3 ["KEYBOARD"]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 2
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["ControlLayouts"]
  GETTABLEKS R2 R3 K5 ["GAMEPAD"]
  JUMPIFNOTEQ R1 R2 [+58]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K6 ["VREnabled"]
  JUMPIFNOT R2 [+12]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K7 ["getCurrentControllerType"]
  CALL R2 0 1
  JUMPIFNOTEQKS R2 K8 ["Touch"] [+7]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 5
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["createFragment"]
  DUPTABLE R3 K12 [{"GamepadControls", "FocusHandler"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 6
  DUPTABLE R6 K14 [{"closeButtonRef"}]
  GETTABLEKS R7 R0 K13 ["closeButtonRef"]
  SETTABLEKS R7 R6 K13 ["closeButtonRef"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["GamepadControls"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 7
  DUPTABLE R6 K18 [{"isFocused", "didFocus", "didBlur"}]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K19 ["canCaptureFocus"]
  SETTABLEKS R7 R6 K15 ["isFocused"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  SETTABLEKS R7 R6 K16 ["didFocus"]
  DUPCLOSURE R7 K20 [PROTO_2]
  CAPTURE UPVAL U8
  SETTABLEKS R7 R6 K17 ["didBlur"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["FocusHandler"]
  CALL R2 1 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["controlLayout"]
  DUPTABLE R2 K2 [{"controlLayout", "canCaptureFocus"}]
  SETTABLEKS R1 R2 K0 ["controlLayout"]
  GETTABLEKS R4 R0 K3 ["menuPage"]
  JUMPIFEQKS R4 K4 ["Controls"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["canCaptureFocus"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K7 ["Workspace"]
  GETTABLEKS R4 R5 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["MockableProxyServices"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["VRService"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["InGameMenuDependencies"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K12 ["Roact"]
  GETTABLEKS R6 R4 K13 ["RoactRodux"]
  GETTABLEKS R7 R4 K14 ["t"]
  GETIMPORT R10 K16 [script]
  GETTABLEKS R9 R10 K17 ["Parent"]
  GETTABLEKS R8 R9 K17 ["Parent"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R8 K18 ["Resources"]
  GETTABLEKS R10 R11 K19 ["Controls"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETIMPORT R13 K16 [script]
  GETTABLEKS R12 R13 K20 ["ControlLayouts"]
  GETTABLEKS R11 R12 K21 ["KeyboardControls"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETIMPORT R14 K16 [script]
  GETTABLEKS R13 R14 K20 ["ControlLayouts"]
  GETTABLEKS R12 R13 K22 ["GamepadControls"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETIMPORT R15 K16 [script]
  GETTABLEKS R14 R15 K20 ["ControlLayouts"]
  GETTABLEKS R13 R14 K23 ["VRGamepadControls"]
  CALL R12 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K7 ["Workspace"]
  GETTABLEKS R16 R17 K8 ["Packages"]
  GETTABLEKS R15 R16 K24 ["VrCommon"]
  CALL R14 1 1
  GETTABLEKS R13 R14 K25 ["VRUtil"]
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R8 K26 ["Components"]
  GETTABLEKS R16 R17 K27 ["Connection"]
  GETTABLEKS R15 R16 K28 ["FocusHandler"]
  CALL R14 1 1
  GETTABLEKS R15 R5 K29 ["PureComponent"]
  LOADK R17 K30 ["ControlsPage"]
  NAMECALL R15 R15 K31 ["extend"]
  CALL R15 2 1
  GETTABLEKS R16 R7 K32 ["strictInterface"]
  DUPTABLE R17 K36 [{"pageTitle", "controlLayout", "canCaptureFocus"}]
  GETTABLEKS R18 R7 K37 ["string"]
  SETTABLEKS R18 R17 K33 ["pageTitle"]
  GETTABLEKS R18 R7 K38 ["optional"]
  GETTABLEKS R19 R7 K37 ["string"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K34 ["controlLayout"]
  GETTABLEKS R18 R7 K38 ["optional"]
  GETTABLEKS R19 R7 K39 ["boolean"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K35 ["canCaptureFocus"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K40 ["validateProps"]
  DUPCLOSURE R16 K41 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K42 ["init"]
  DUPCLOSURE R16 K43 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R1
  SETTABLEKS R16 R15 K44 ["render"]
  GETTABLEKS R16 R6 K45 ["UNSTABLE_connect2"]
  DUPCLOSURE R17 K46 [PROTO_4]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 -1
  RETURN R16 -1