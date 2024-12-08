PROTO_0:
  LOADN R1 0
  LOADN R2 0
  GETTABLEKS R3 R0 K0 ["Magnitude"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["ThumbstickDeadzone"]
  JUMPIFNOTLE R4 R3 [+80]
  GETTABLEKS R4 R0 K2 ["y"]
  GETTABLEKS R5 R0 K3 ["x"]
  FASTCALL2 MATH_ATAN2 R4 R5 [+3]
  GETIMPORT R3 K6 [math.atan2]
  CALL R3 2 1
  FASTCALL1 MATH_COS R3 [+3]
  MOVE R7 R3
  GETIMPORT R6 K8 [math.cos]
  CALL R6 1 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["ThumbstickDeadzone"]
  MUL R5 R6 R7
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K10 [math.abs]
  CALL R4 1 1
  FASTCALL1 MATH_SIN R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K12 [math.sin]
  CALL R7 1 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["ThumbstickDeadzone"]
  MUL R6 R7 R8
  FASTCALL1 MATH_ABS R6 [+2]
  GETIMPORT R5 K10 [math.abs]
  CALL R5 1 1
  GETTABLEKS R10 R0 K3 ["x"]
  FASTCALL1 MATH_ABS R10 [+2]
  GETIMPORT R9 K10 [math.abs]
  CALL R9 1 1
  SUB R8 R9 R4
  FASTCALL2K MATH_MAX R8 K13 [+4]
  LOADK R9 K13 [0]
  GETIMPORT R7 K15 [math.max]
  CALL R7 2 1
  SUBRK R8 R16 K4 ["math"]
  DIV R6 R7 R8
  GETTABLEKS R8 R0 K3 ["x"]
  FASTCALL1 MATH_SIGN R8 [+2]
  GETIMPORT R7 K18 [math.sign]
  CALL R7 1 1
  MUL R1 R6 R7
  GETTABLEKS R10 R0 K2 ["y"]
  FASTCALL1 MATH_ABS R10 [+2]
  GETIMPORT R9 K10 [math.abs]
  CALL R9 1 1
  SUB R8 R9 R5
  FASTCALL2K MATH_MAX R8 K13 [+4]
  LOADK R9 K13 [0]
  GETIMPORT R7 K15 [math.max]
  CALL R7 2 1
  SUBRK R8 R16 K5 ["atan2"]
  DIV R6 R7 R8
  GETTABLEKS R8 R0 K2 ["y"]
  FASTCALL1 MATH_SIGN R8 [+2]
  GETIMPORT R7 K18 [math.sign]
  CALL R7 1 1
  MUL R2 R6 R7
  GETIMPORT R3 K21 [Vector2.new]
  MOVE R4 R1
  MINUS R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETIMPORT R3 K3 [Enum.UserInputState.Change]
  JUMPIFNOTEQ R1 R3 [+17]
  GETIMPORT R3 K6 [Vector2.new]
  GETTABLEKS R5 R2 K7 ["Position"]
  GETTABLEKS R4 R5 K8 ["x"]
  GETTABLEKS R7 R2 K7 ["Position"]
  GETTABLEKS R6 R7 K10 ["y"]
  MULK R5 R6 K9 [-1]
  CALL R3 2 1
  SETUPVAL R3 0
  GETIMPORT R3 K13 [Enum.ContextActionResult.Sink]
  RETURN R3 1
  GETIMPORT R3 K6 [Vector2.new]
  CALL R3 0 1
  SETUPVAL R3 0
  GETIMPORT R3 K15 [Enum.ContextActionResult.Pass]
  RETURN R3 1

PROTO_2:
  GETUPVAL R1 0
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.Gamepad1]
  JUMPIFNOTEQ R1 R2 [+19]
  GETTABLEKS R1 R0 K4 ["KeyCode"]
  GETIMPORT R2 K6 [Enum.KeyCode.ButtonA]
  JUMPIFNOTEQ R1 R2 [+13]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["SelectedObject"]
  JUMPIF R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["SelectedCoreObject"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 2
  NAMECALL R1 R1 K9 ["PlayCursorTweenActivate"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.Gamepad1]
  JUMPIFNOTEQ R1 R2 [+11]
  GETTABLEKS R1 R0 K4 ["KeyCode"]
  GETIMPORT R2 K6 [Enum.KeyCode.ButtonA]
  JUMPIFNOTEQ R1 R2 [+5]
  GETUPVAL R1 1
  NAMECALL R1 R1 K7 ["PlayCursorTweenDefault"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 1
  SETUPVAL R1 0
  RETURN R0 0

PROTO_7:
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["GamepadThumbstick1Changed"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  SETUPVAL R1 0
  GETUPVAL R1 4
  LOADK R3 K2 ["VirtualCursorThumbstick1Movement"]
  DUPCLOSURE R4 K3 [PROTO_7]
  LOADB R5 0
  GETIMPORT R7 K7 [Enum.ContextActionPriority.High]
  GETTABLEKS R6 R7 K8 ["Value"]
  GETIMPORT R7 K11 [Enum.KeyCode.Thumbstick1]
  NAMECALL R1 R1 K12 ["BindCoreActionAtPriority"]
  CALL R1 6 0
  GETUPVAL R1 4
  LOADK R3 K13 ["VirtualCursorThumbstick2Movement"]
  GETUPVAL R4 5
  LOADB R5 0
  GETIMPORT R7 K7 [Enum.ContextActionPriority.High]
  GETTABLEKS R6 R7 K8 ["Value"]
  GETIMPORT R7 K15 [Enum.KeyCode.Thumbstick2]
  NAMECALL R1 R1 K12 ["BindCoreActionAtPriority"]
  CALL R1 6 0
  LOADB R1 1
  SETUPVAL R1 6
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 0
  GETUPVAL R1 1
  LOADK R3 K1 ["VirtualCursorThumbstick1Movement"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADK R3 K3 ["VirtualCursorThumbstick2Movement"]
  NAMECALL R1 R1 K2 ["UnbindCoreAction"]
  CALL R1 2 0
  GETIMPORT R1 K7 [Enum.UserInputState.Cancel]
  GETIMPORT R2 K9 [Enum.UserInputState.Change]
  JUMPIFNOTEQ R1 R2 [+19]
  GETIMPORT R2 K12 [Vector2.new]
  LOADNIL R5
  GETTABLEKS R4 R5 K13 ["Position"]
  GETTABLEKS R3 R4 K14 ["x"]
  LOADNIL R7
  GETTABLEKS R6 R7 K13 ["Position"]
  GETTABLEKS R5 R6 K16 ["y"]
  MULK R4 R5 K15 [-1]
  CALL R2 2 1
  SETUPVAL R2 2
  GETIMPORT R2 K19 [Enum.ContextActionResult.Sink]
  JUMP [+6]
  GETIMPORT R2 K12 [Vector2.new]
  CALL R2 0 1
  SETUPVAL R2 2
  GETIMPORT R2 K21 [Enum.ContextActionResult.Pass]
  LOADB R1 0
  SETUPVAL R1 3
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["ContextActionService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["GuiService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K4 [game]
  LOADK R5 K8 ["UserInputService"]
  NAMECALL R3 R3 K6 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K4 [game]
  LOADK R6 K9 ["GamepadService"]
  NAMECALL R4 R4 K6 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K4 [game]
  LOADK R7 K10 ["CoreGui"]
  NAMECALL R5 R5 K6 ["GetService"]
  CALL R5 2 1
  LOADK R8 K11 ["RobloxGui"]
  NAMECALL R6 R5 K12 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K14 [require]
  GETTABLEKS R8 R0 K15 ["Properties"]
  CALL R7 1 1
  GETIMPORT R8 K14 [require]
  GETTABLEKS R9 R0 K16 ["Interface"]
  CALL R8 1 1
  NEWTABLE R9 4 0
  GETIMPORT R10 K19 [Vector2.new]
  CALL R10 0 1
  GETIMPORT R11 K19 [Vector2.new]
  CALL R11 0 1
  LOADB R12 0
  LOADNIL R13
  DUPCLOSURE R14 K20 [PROTO_0]
  CAPTURE VAL R7
  NEWCLOSURE R15 P1
  CAPTURE REF R11
  GETTABLEKS R16 R3 K21 ["InputBegan"]
  NEWCLOSURE R18 P2
  CAPTURE REF R12
  CAPTURE VAL R2
  CAPTURE VAL R8
  NAMECALL R16 R16 K22 ["Connect"]
  CALL R16 2 0
  GETTABLEKS R16 R3 K23 ["InputEnded"]
  NEWCLOSURE R18 P3
  CAPTURE REF R12
  CAPTURE VAL R8
  NAMECALL R16 R16 K22 ["Connect"]
  CALL R16 2 0
  NEWCLOSURE R16 P4
  CAPTURE REF R10
  SETTABLEKS R16 R9 K24 ["GetThumbstickVector"]
  NEWCLOSURE R16 P5
  CAPTURE REF R11
  SETTABLEKS R16 R9 K25 ["GetThumbstick2Vector"]
  NEWCLOSURE R16 P6
  CAPTURE REF R13
  CAPTURE VAL R4
  CAPTURE REF R10
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE REF R12
  SETTABLEKS R16 R9 K26 ["EnableInput"]
  NEWCLOSURE R16 P7
  CAPTURE REF R13
  CAPTURE VAL R1
  CAPTURE REF R11
  CAPTURE REF R12
  SETTABLEKS R16 R9 K27 ["DisableInput"]
  CLOSEUPVALS R10
  RETURN R9 1
