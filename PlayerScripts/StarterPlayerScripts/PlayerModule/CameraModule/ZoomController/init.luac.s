PROTO_0:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["CameraMinZoomDistance"]
  SETUPVAL R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["CameraMaxZoomDistance"]
  SETUPVAL R0 2
  RETURN R0 0

PROTO_1:
  FASTCALL3 MATH_CLAMP R1 R2 R3
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  GETUPVAL R4 0
  CALL R4 3 1
  MOVE R1 R4
  DUPTABLE R5 K6 [{"freq", "x", "v", "minValue", "maxValue", "goal"}]
  SETTABLEKS R0 R5 K0 ["freq"]
  SETTABLEKS R1 R5 K1 ["x"]
  LOADN R6 0
  SETTABLEKS R6 R5 K2 ["v"]
  SETTABLEKS R2 R5 K3 ["minValue"]
  SETTABLEKS R3 R5 K4 ["maxValue"]
  SETTABLEKS R1 R5 K5 ["goal"]
  GETUPVAL R6 1
  FASTCALL2 SETMETATABLE R5 R6 [+3]
  GETIMPORT R4 K8 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

PROTO_2:
  GETTABLEKS R4 R0 K2 ["freq"]
  MULK R3 R4 K1 [2]
  MULK R2 R3 K0 [3.14159265358979]
  GETTABLEKS R3 R0 K3 ["x"]
  GETTABLEKS R4 R0 K4 ["v"]
  GETTABLEKS R5 R0 K5 ["minValue"]
  GETTABLEKS R6 R0 K6 ["maxValue"]
  GETTABLEKS R7 R0 K7 ["goal"]
  SUB R8 R7 R3
  MUL R9 R2 R1
  MINUS R11 R9
  FASTCALL1 MATH_EXP R11 [+1]
  GETUPVAL R10 0
  CALL R10 1 1
  MUL R14 R4 R1
  ADDK R16 R9 K8 [1]
  MUL R15 R8 R16
  SUB R13 R14 R15
  MUL R12 R13 R10
  ADD R11 R7 R12
  MUL R16 R8 R2
  SUB R15 R16 R4
  MUL R14 R15 R9
  ADD R13 R14 R4
  MUL R12 R13 R10
  JUMPIFNOTLT R11 R5 [+4]
  MOVE R11 R5
  LOADN R12 0
  JUMP [+4]
  JUMPIFNOTLT R6 R11 [+3]
  MOVE R11 R6
  LOADN R12 0
  SETTABLEKS R11 R0 K3 ["x"]
  SETTABLEKS R12 R0 K4 ["v"]
  RETURN R11 1

PROTO_3:
  LOADN R8 1
  MULK R9 R0 K0 [0.0375]
  ADD R7 R8 R9
  MUL R6 R1 R7
  ADD R5 R0 R6
  FASTCALL3 MATH_CLAMP R5 R2 R3
  MOVE R6 R2
  MOVE R7 R3
  GETUPVAL R4 0
  CALL R4 3 1
  MOVE R0 R4
  LOADN R4 1
  JUMPIFNOTLT R0 R4 [+8]
  LOADN R5 0
  JUMPIFNOTLE R1 R5 [+3]
  MOVE R4 R2
  JUMPIF R4 [+1]
  LOADN R4 1
  MOVE R0 R4
  RETURN R0 1

PROTO_4:
  LOADK R3 K0 [∞]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["goal"]
  LOADN R5 1
  JUMPIFNOTLT R5 R4 [+49]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["x"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["goal"]
  GETUPVAL R8 1
  GETUPVAL R9 2
  GETUPVAL R10 3
  LOADN R15 1
  MULK R16 R7 K3 [0.0375]
  ADD R14 R15 R16
  MUL R13 R8 R14
  ADD R12 R7 R13
  FASTCALL3 MATH_CLAMP R12 R9 R10
  MOVE R13 R9
  MOVE R14 R10
  GETUPVAL R11 4
  CALL R11 3 1
  MOVE R7 R11
  LOADN R11 1
  JUMPIFNOTLT R7 R11 [+8]
  LOADN R12 0
  JUMPIFNOTLE R8 R12 [+3]
  MOVE R11 R9
  JUMPIF R11 [+1]
  LOADN R11 1
  MOVE R7 R11
  MOVE R6 R7
  FASTCALL2 MATH_MAX R5 R6 [+2]
  GETUPVAL R4 5
  CALL R4 2 1
  GETUPVAL R5 6
  GETIMPORT R7 K7 [CFrame.new]
  LOADN R8 0
  LOADN R9 0
  LOADK R10 K4 [0.5]
  CALL R7 3 1
  MUL R6 R1 R7
  SUBK R7 R4 K4 [0.5]
  MOVE R8 R2
  CALL R5 3 1
  ADDK R3 R5 K4 [0.5]
  GETUPVAL R4 0
  LOADK R5 K4 [0.5]
  SETTABLEKS R5 R4 K8 ["minValue"]
  GETUPVAL R4 0
  GETUPVAL R6 3
  FASTCALL2 MATH_MIN R6 R3 [+3]
  MOVE R7 R3
  GETUPVAL R5 7
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["maxValue"]
  GETUPVAL R4 0
  MOVE R6 R0
  NAMECALL R4 R4 K10 ["Step"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["x"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R2 0
  SETTABLEKS R0 R2 K0 ["goal"]
  SETUPVAL R1 1
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["goal"]
  SETTABLEKS R1 R0 K1 ["x"]
  GETUPVAL R0 0
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["v"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R1 K3 [script]
  LOADK R3 K4 ["Popper"]
  NAMECALL R1 R1 K5 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K8 [math.clamp]
  GETIMPORT R2 K10 [math.exp]
  GETIMPORT R3 K12 [math.min]
  GETIMPORT R4 K14 [math.max]
  LOADNIL R5
  LOADNIL R6
  GETIMPORT R8 K16 [game]
  LOADK R10 K17 ["Players"]
  NAMECALL R8 R8 K18 ["GetService"]
  CALL R8 2 1
  GETTABLEKS R7 R8 K19 ["LocalPlayer"]
  FASTCALL1 ASSERT R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K21 [assert]
  CALL R8 1 0
  NEWCLOSURE R8 P0
  CAPTURE REF R5
  CAPTURE VAL R7
  CAPTURE REF R6
  GETTABLEKS R5 R7 K22 ["CameraMinZoomDistance"]
  GETTABLEKS R6 R7 K23 ["CameraMaxZoomDistance"]
  LOADK R11 K22 ["CameraMinZoomDistance"]
  NAMECALL R9 R7 K24 ["GetPropertyChangedSignal"]
  CALL R9 2 1
  MOVE R11 R8
  NAMECALL R9 R9 K25 ["Connect"]
  CALL R9 2 0
  LOADK R11 K23 ["CameraMaxZoomDistance"]
  NAMECALL R9 R7 K24 ["GetPropertyChangedSignal"]
  CALL R9 2 1
  MOVE R11 R8
  NAMECALL R9 R9 K25 ["Connect"]
  CALL R9 2 0
  NEWTABLE R7 4 0
  SETTABLEKS R7 R7 K26 ["__index"]
  DUPCLOSURE R8 K27 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K28 ["new"]
  DUPCLOSURE R8 K29 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K30 ["Step"]
  GETTABLEKS R8 R7 K28 ["new"]
  LOADK R9 K31 [4.5]
  LOADK R10 K32 [12.5]
  LOADK R11 K33 [0.5]
  MOVE R12 R6
  CALL R8 4 1
  DUPCLOSURE R9 K34 [PROTO_3]
  CAPTURE VAL R1
  LOADN R10 0
  NEWTABLE R11 4 0
  NEWCLOSURE R12 P4
  CAPTURE VAL R8
  CAPTURE REF R10
  CAPTURE REF R5
  CAPTURE REF R6
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K35 ["Update"]
  DUPCLOSURE R12 K36 [PROTO_5]
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K37 ["GetZoomRadius"]
  NEWCLOSURE R12 P6
  CAPTURE VAL R8
  CAPTURE REF R10
  SETTABLEKS R12 R11 K38 ["SetZoomParameters"]
  DUPCLOSURE R12 K39 [PROTO_7]
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K40 ["ReleaseSpring"]
  CLOSEUPVALS R5
  RETURN R11 1