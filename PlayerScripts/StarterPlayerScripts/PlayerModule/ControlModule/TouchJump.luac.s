PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R2 1
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K2 [setmetatable]
  CALL R0 2 1
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["parentUIFrame"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["jumpButton"]
  GETUPVAL R1 2
  JUMPIF R1 [+21]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["characterAddedConn"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["humanoidStateEnabledChangedConn"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["humanoidJumpPowerConn"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["humanoidParentConn"]
  LOADN R1 0
  SETTABLEKS R1 R0 K9 ["jumpPower"]
  LOADB R1 1
  SETTABLEKS R1 R0 K10 ["jumpStateEnabled"]
  LOADNIL R1
  SETTABLEKS R1 R0 K11 ["humanoid"]
  LOADB R1 0
  SETTABLEKS R1 R0 K12 ["externallyEnabled"]
  LOADB R1 0
  SETTABLEKS R1 R0 K13 ["isJumping"]
  GETUPVAL R1 2
  JUMPIFNOT R1 [+9]
  LOADB R1 0
  SETTABLEKS R1 R0 K14 ["_active"]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K15 ["_connectionUtil"]
  RETURN R0 1

PROTO_1:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["isJumping"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["touchObject"]
  GETTABLEKS R1 R0 K2 ["jumpButton"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K2 ["jumpButton"]
  GETIMPORT R2 K5 [Vector2.new]
  LOADN R3 1
  LOADN R4 146
  CALL R2 2 1
  SETTABLEKS R2 R1 K6 ["ImageRectOffset"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["touchObject"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["_reset"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["touchObject"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["_reset"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+81]
  GETTABLEKS R2 R0 K0 ["_active"]
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 0
  JUMPIFNOT R1 [+45]
  GETTABLEKS R2 R0 K1 ["jumpButton"]
  JUMPIF R2 [+3]
  NAMECALL R2 R0 K2 ["Create"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K1 ["jumpButton"]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["Visible"]
  GETTABLEKS R2 R0 K4 ["_connectionUtil"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["JUMP_INPUT_ENDED"]
  GETTABLEKS R6 R0 K1 ["jumpButton"]
  GETTABLEKS R5 R6 K6 ["InputEnded"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  NAMECALL R5 R5 K7 ["Connect"]
  CALL R5 2 -1
  NAMECALL R2 R2 K8 ["trackConnection"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K4 ["_connectionUtil"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["MENU_OPENED"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["MenuOpened"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  NAMECALL R5 R5 K7 ["Connect"]
  CALL R5 2 -1
  NAMECALL R2 R2 K8 ["trackConnection"]
  CALL R2 -1 0
  JUMP [+24]
  GETTABLEKS R2 R0 K1 ["jumpButton"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K1 ["jumpButton"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["Visible"]
  GETTABLEKS R2 R0 K4 ["_connectionUtil"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["JUMP_INPUT_ENDED"]
  NAMECALL R2 R2 K11 ["disconnect"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K4 ["_connectionUtil"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["MENU_OPENED"]
  NAMECALL R2 R2 K11 ["disconnect"]
  CALL R2 2 0
  NAMECALL R2 R0 K12 ["_reset"]
  CALL R2 1 0
  SETTABLEKS R1 R0 K0 ["_active"]
  RETURN R0 0
  JUMPIFNOT R1 [+39]
  GETTABLEKS R2 R0 K1 ["jumpButton"]
  JUMPIF R2 [+3]
  NAMECALL R2 R0 K2 ["Create"]
  CALL R2 1 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K13 ["LocalPlayer"]
  GETTABLEKS R2 R3 K14 ["Character"]
  JUMPIFNOT R2 [+9]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K13 ["LocalPlayer"]
  GETTABLEKS R2 R3 K14 ["Character"]
  LOADK R4 K15 ["Humanoid"]
  NAMECALL R2 R2 K16 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIFNOT R2 [+37]
  GETTABLEKS R3 R0 K17 ["externallyEnabled"]
  JUMPIFNOT R3 [+34]
  GETTABLEKS R3 R0 K17 ["externallyEnabled"]
  JUMPIFNOT R3 [+31]
  GETTABLEKS R3 R2 K18 ["JumpPower"]
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+27]
  GETTABLEKS R3 R0 K1 ["jumpButton"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["Visible"]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["jumpButton"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["Visible"]
  LOADNIL R2
  SETTABLEKS R2 R0 K19 ["touchObject"]
  LOADB R2 0
  SETTABLEKS R2 R0 K20 ["isJumping"]
  GETTABLEKS R2 R0 K1 ["jumpButton"]
  GETIMPORT R3 K23 [Vector2.new]
  LOADN R4 1
  LOADN R5 146
  CALL R3 2 1
  SETTABLEKS R3 R2 K24 ["ImageRectOffset"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+31]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["getChild"]
  LOADK R2 K1 ["Humanoid"]
  LOADK R3 K1 ["Humanoid"]
  CALL R1 2 1
  JUMPIFNOT R1 [+19]
  GETTABLEKS R2 R0 K2 ["externallyEnabled"]
  JUMPIFNOT R2 [+16]
  GETTABLEKS R2 R1 K3 ["JumpPower"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+12]
  GETIMPORT R4 K7 [Enum.HumanoidStateType.Jumping]
  NAMECALL R2 R1 K8 ["GetStateEnabled"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  LOADB R4 1
  NAMECALL R2 R0 K9 ["EnableButton"]
  CALL R2 2 0
  RETURN R0 0
  LOADB R4 0
  NAMECALL R2 R0 K9 ["EnableButton"]
  CALL R2 2 0
  RETURN R0 0
  GETTABLEKS R1 R0 K10 ["jumpPower"]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+9]
  GETTABLEKS R1 R0 K11 ["jumpStateEnabled"]
  JUMPIFNOT R1 [+5]
  LOADB R3 1
  NAMECALL R1 R0 K9 ["EnableButton"]
  CALL R1 2 0
  RETURN R0 0
  LOADB R3 0
  NAMECALL R1 R0 K9 ["EnableButton"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["UpdateEnabled"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["UpdateEnabled"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["_connectionUtil"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["HUMANOID_JUMP_POWER"]
  LOADK R6 K3 ["JumpPower"]
  NAMECALL R4 R0 K4 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  GETUPVAL R6 2
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 -1
  NAMECALL R1 R1 K6 ["trackConnection"]
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["_connectionUtil"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["HUMANOID_STATE_ENABLED_CHANGED"]
  GETTABLEKS R4 R0 K8 ["StateEnabledChanged"]
  GETUPVAL R6 2
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 -1
  NAMECALL R1 R1 K6 ["trackConnection"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["onChild"]
  LOADK R3 K1 ["Humanoid"]
  LOADK R4 K1 ["Humanoid"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 3 1
  GETTABLEKS R3 R0 K2 ["_connectionUtil"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["HUMANOID"]
  MOVE R6 R2
  NAMECALL R3 R3 K4 ["trackConnection"]
  CALL R3 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["LocalPlayer"]
  GETTABLEKS R2 R3 K1 ["Character"]
  JUMPIFNOT R2 [+9]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["LocalPlayer"]
  GETTABLEKS R2 R3 K1 ["Character"]
  LOADK R4 K2 ["Humanoid"]
  NAMECALL R2 R2 K3 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIFNOT R2 [+20]
  JUMPIFNOTEQKS R1 K4 ["JumpPower"] [+9]
  GETTABLEKS R3 R2 K4 ["JumpPower"]
  SETTABLEKS R3 R0 K5 ["jumpPower"]
  NAMECALL R3 R0 K6 ["UpdateEnabled"]
  CALL R3 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K7 ["Parent"] [+9]
  GETTABLEKS R3 R2 K7 ["Parent"]
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K8 ["humanoidChangeConn"]
  NAMECALL R3 R3 K9 ["Disconnect"]
  CALL R3 1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R3 K3 [Enum.HumanoidStateType.Jumping]
  JUMPIFNOTEQ R1 R3 [+6]
  SETTABLEKS R2 R0 K4 ["jumpStateEnabled"]
  NAMECALL R3 R0 K5 ["UpdateEnabled"]
  CALL R3 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["humanoid"]
  GETTABLEKS R1 R2 K1 ["JumpPower"]
  SETTABLEKS R1 R0 K2 ["jumpPower"]
  GETUPVAL R0 0
  NAMECALL R0 R0 K3 ["UpdateEnabled"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["humanoid"]
  GETTABLEKS R0 R1 K1 ["Parent"]
  JUMPIF R0 [+20]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["humanoidJumpPowerConn"]
  NAMECALL R0 R0 K3 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["humanoidJumpPowerConn"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["humanoidParentConn"]
  NAMECALL R0 R0 K3 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["humanoidParentConn"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["HumanoidStateEnabledChanged"]
  CALL R2 3 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["humanoidChangeConn"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K0 ["humanoidChangeConn"]
  NAMECALL R2 R2 K1 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["humanoidChangeConn"]
  LOADK R4 K2 ["Humanoid"]
  NAMECALL R2 R1 K3 ["FindFirstChildOfClass"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["humanoid"]
  GETTABLEKS R2 R0 K4 ["humanoid"]
  JUMPIF R2 [+12]
  GETTABLEKS R2 R1 K5 ["ChildAdded"]
  NAMECALL R2 R2 K6 ["wait"]
  CALL R2 1 0
  LOADK R4 K2 ["Humanoid"]
  NAMECALL R2 R1 K3 ["FindFirstChildOfClass"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["humanoid"]
  JUMPBACK [-15]
  GETTABLEKS R2 R0 K4 ["humanoid"]
  LOADK R4 K7 ["JumpPower"]
  NAMECALL R2 R2 K8 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["humanoidJumpPowerConn"]
  GETTABLEKS R2 R0 K4 ["humanoid"]
  LOADK R4 K11 ["Parent"]
  NAMECALL R2 R2 K8 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K12 ["humanoidParentConn"]
  GETTABLEKS R3 R0 K4 ["humanoid"]
  GETTABLEKS R2 R3 K13 ["StateEnabledChanged"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K14 ["humanoidStateEnabledChangedConn"]
  GETTABLEKS R3 R0 K4 ["humanoid"]
  GETTABLEKS R2 R3 K7 ["JumpPower"]
  SETTABLEKS R2 R0 K15 ["jumpPower"]
  GETTABLEKS R2 R0 K4 ["humanoid"]
  GETIMPORT R4 K19 [Enum.HumanoidStateType.Jumping]
  NAMECALL R2 R2 K20 ["GetStateEnabled"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K21 ["jumpStateEnabled"]
  NAMECALL R2 R0 K22 ["UpdateEnabled"]
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["CharacterAdded"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["LocalPlayer"]
  GETTABLEKS R1 R2 K1 ["CharacterAdded"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["characterAddedConn"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["LocalPlayer"]
  GETTABLEKS R1 R2 K4 ["Character"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["LocalPlayer"]
  GETTABLEKS R3 R4 K4 ["Character"]
  NAMECALL R1 R0 K1 ["CharacterAdded"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  JUMPIFNOT R2 [+2]
  SETTABLEKS R2 R0 K0 ["parentUIFrame"]
  SETTABLEKS R1 R0 K1 ["externallyEnabled"]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+14]
  NAMECALL R3 R0 K2 ["UpdateEnabled"]
  CALL R3 1 0
  JUMPIFNOT R1 [+4]
  NAMECALL R3 R0 K3 ["_setupConfigurations"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R3 R0 K4 ["_connectionUtil"]
  NAMECALL R3 R3 K5 ["disconnectAll"]
  CALL R3 1 0
  RETURN R0 0
  MOVE R5 R1
  NAMECALL R3 R0 K6 ["EnableButton"]
  CALL R3 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["parentUIFrame"]
  GETTABLEKS R2 R3 K1 ["AbsoluteSize"]
  GETTABLEKS R1 R2 K2 ["x"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["parentUIFrame"]
  GETTABLEKS R3 R4 K1 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K3 ["y"]
  FASTCALL2 MATH_MIN R1 R2 [+3]
  GETIMPORT R0 K6 [math.min]
  CALL R0 2 1
  LOADN R2 244
  JUMPIFLE R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+2]
  LOADN R2 70
  JUMP [+1]
  LOADN R2 120
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["jumpButton"]
  GETIMPORT R4 K10 [UDim2.new]
  LOADN R5 0
  MOVE R6 R2
  LOADN R7 0
  MOVE R8 R2
  CALL R4 4 1
  SETTABLEKS R4 R3 K11 ["Size"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["jumpButton"]
  JUMPIFNOT R1 [+11]
  GETIMPORT R4 K10 [UDim2.new]
  LOADN R5 1
  MULK R8 R2 K13 [1.5]
  SUBK R7 R8 K12 [10]
  MINUS R6 R7
  LOADN R7 1
  MINUS R9 R2
  SUBK R8 R9 K14 [20]
  CALL R4 4 1
  JUMPIF R4 [+10]
  GETIMPORT R4 K10 [UDim2.new]
  LOADN R5 1
  MULK R8 R2 K13 [1.5]
  SUBK R7 R8 K12 [10]
  MINUS R6 R7
  LOADN R7 1
  MINUS R9 R2
  MULK R8 R9 K15 [1.75]
  CALL R4 4 1
  SETTABLEKS R4 R3 K16 ["Position"]
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["touchObject"]
  JUMPIF R1 [+12]
  GETTABLEKS R1 R0 K1 ["UserInputType"]
  GETIMPORT R2 K4 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R1 R2 [+7]
  GETTABLEKS R1 R0 K5 ["UserInputState"]
  GETIMPORT R2 K7 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["touchObject"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["jumpButton"]
  GETIMPORT R2 K11 [Vector2.new]
  LOADN R3 146
  LOADN R4 146
  CALL R2 2 1
  SETTABLEKS R2 R1 K12 ["ImageRectOffset"]
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K13 ["isJumping"]
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["touchObject"]
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["isJumping"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["jumpButton"]
  GETIMPORT R1 K5 [Vector2.new]
  LOADN R2 1
  LOADN R3 146
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["ImageRectOffset"]
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["touchObject"]
  JUMPIFNOTEQ R0 R1 [+19]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["touchObject"]
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["isJumping"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["jumpButton"]
  GETIMPORT R2 K5 [Vector2.new]
  LOADN R3 1
  LOADN R4 146
  CALL R2 2 1
  SETTABLEKS R2 R1 K6 ["ImageRectOffset"]
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["touchObject"]
  JUMPIFNOT R0 [+18]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["touchObject"]
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["isJumping"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["jumpButton"]
  GETIMPORT R1 K5 [Vector2.new]
  LOADN R2 1
  LOADN R3 146
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["ImageRectOffset"]
  RETURN R0 0

PROTO_23:
  GETTABLEKS R1 R0 K0 ["parentUIFrame"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["jumpButton"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K1 ["jumpButton"]
  NAMECALL R1 R1 K2 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["jumpButton"]
  GETTABLEKS R1 R0 K3 ["absoluteSizeChangedConn"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["absoluteSizeChangedConn"]
  NAMECALL R1 R1 K4 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["absoluteSizeChangedConn"]
  GETIMPORT R1 K7 [Instance.new]
  LOADK R2 K8 ["ImageButton"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["jumpButton"]
  GETTABLEKS R1 R0 K1 ["jumpButton"]
  LOADK R2 K9 ["JumpButton"]
  SETTABLEKS R2 R1 K10 ["Name"]
  GETTABLEKS R1 R0 K1 ["jumpButton"]
  LOADB R2 0
  SETTABLEKS R2 R1 K11 ["Visible"]
  GETTABLEKS R1 R0 K1 ["jumpButton"]
  LOADN R2 1
  SETTABLEKS R2 R1 K12 ["BackgroundTransparency"]
  GETTABLEKS R1 R0 K1 ["jumpButton"]
  LOADK R2 K13 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
  SETTABLEKS R2 R1 K14 ["Image"]
  GETTABLEKS R1 R0 K1 ["jumpButton"]
  GETIMPORT R2 K16 [Vector2.new]
  LOADN R3 1
  LOADN R4 146
  CALL R2 2 1
  SETTABLEKS R2 R1 K17 ["ImageRectOffset"]
  GETTABLEKS R1 R0 K1 ["jumpButton"]
  GETIMPORT R2 K16 [Vector2.new]
  LOADN R3 144
  LOADN R4 144
  CALL R2 2 1
  SETTABLEKS R2 R1 K18 ["ImageRectSize"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  MOVE R2 R1
  CALL R2 0 0
  GETTABLEKS R2 R0 K0 ["parentUIFrame"]
  LOADK R4 K19 ["AbsoluteSize"]
  NAMECALL R2 R2 K20 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  MOVE R4 R1
  NAMECALL R2 R2 K21 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K3 ["absoluteSizeChangedConn"]
  LOADNIL R2
  SETTABLEKS R2 R0 K22 ["touchObject"]
  GETTABLEKS R3 R0 K1 ["jumpButton"]
  GETTABLEKS R2 R3 K23 ["InputBegan"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K24 ["connect"]
  CALL R2 2 0
  GETUPVAL R2 0
  JUMPIF R2 [+25]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  GETTABLEKS R4 R0 K1 ["jumpButton"]
  GETTABLEKS R3 R4 K25 ["InputEnded"]
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  NAMECALL R3 R3 K24 ["connect"]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K26 ["MenuOpened"]
  NEWCLOSURE R5 P4
  CAPTURE VAL R0
  NAMECALL R3 R3 K24 ["connect"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K27 ["characterAddedConn"]
  JUMPIF R3 [+3]
  NAMECALL R3 R0 K28 ["SetupCharacterAddedFunction"]
  CALL R3 1 0
  GETTABLEKS R2 R0 K1 ["jumpButton"]
  GETTABLEKS R3 R0 K0 ["parentUIFrame"]
  SETTABLEKS R3 R2 K29 ["Parent"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  LOADK R4 K8 ["CommonUtils"]
  NAMECALL R2 R2 K9 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K11 [require]
  LOADK R6 K12 ["FlagUtil"]
  NAMECALL R4 R2 K9 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETTABLEKS R4 R3 K13 ["getUserFlag"]
  LOADK R5 K14 ["UserUpdateTouchJump2"]
  CALL R4 1 1
  LOADNIL R5
  LOADNIL R6
  JUMPIFNOT R4 [+16]
  GETIMPORT R7 K11 [require]
  LOADK R10 K15 ["ConnectionUtil"]
  NAMECALL R8 R2 K9 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  MOVE R5 R7
  GETIMPORT R7 K11 [require]
  LOADK R10 K16 ["CharacterUtil"]
  NAMECALL R8 R2 K9 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  MOVE R6 R7
  DUPTABLE R7 K22 [{"HUMANOID_STATE_ENABLED_CHANGED", "HUMANOID_JUMP_POWER", "HUMANOID", "JUMP_INPUT_ENDED", "MENU_OPENED"}]
  LOADK R8 K17 ["HUMANOID_STATE_ENABLED_CHANGED"]
  SETTABLEKS R8 R7 K17 ["HUMANOID_STATE_ENABLED_CHANGED"]
  LOADK R8 K18 ["HUMANOID_JUMP_POWER"]
  SETTABLEKS R8 R7 K18 ["HUMANOID_JUMP_POWER"]
  LOADK R8 K19 ["HUMANOID"]
  SETTABLEKS R8 R7 K19 ["HUMANOID"]
  LOADK R8 K20 ["JUMP_INPUT_ENDED"]
  SETTABLEKS R8 R7 K20 ["JUMP_INPUT_ENDED"]
  LOADK R8 K21 ["MENU_OPENED"]
  SETTABLEKS R8 R7 K21 ["MENU_OPENED"]
  GETIMPORT R8 K11 [require]
  GETIMPORT R10 K6 [script]
  GETTABLEKS R9 R10 K7 ["Parent"]
  LOADK R11 K23 ["BaseCharacterController"]
  NAMECALL R9 R9 K9 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  NEWTABLE R10 16 0
  FASTCALL2 SETMETATABLE R10 R8 [+4]
  MOVE R11 R8
  GETIMPORT R9 K25 [setmetatable]
  CALL R9 2 1
  SETTABLEKS R9 R9 K26 ["__index"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE REF R5
  SETTABLEKS R10 R9 K27 ["new"]
  JUMPIFNOT R4 [+3]
  DUPCLOSURE R10 K28 [PROTO_1]
  SETTABLEKS R10 R9 K29 ["_reset"]
  DUPCLOSURE R10 K30 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K31 ["EnableButton"]
  NEWCLOSURE R10 P3
  CAPTURE VAL R4
  CAPTURE REF R6
  SETTABLEKS R10 R9 K32 ["UpdateEnabled"]
  JUMPIFNOT R4 [+5]
  NEWCLOSURE R10 P4
  CAPTURE REF R6
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K33 ["_setupConfigurations"]
  JUMPIF R4 [+14]
  DUPCLOSURE R10 K34 [PROTO_9]
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K35 ["HumanoidChanged"]
  DUPCLOSURE R10 K36 [PROTO_10]
  SETTABLEKS R10 R9 K37 ["HumanoidStateEnabledChanged"]
  DUPCLOSURE R10 K38 [PROTO_14]
  SETTABLEKS R10 R9 K39 ["CharacterAdded"]
  DUPCLOSURE R10 K40 [PROTO_16]
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K41 ["SetupCharacterAddedFunction"]
  DUPCLOSURE R10 K42 [PROTO_17]
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K43 ["Enable"]
  DUPCLOSURE R10 K44 [PROTO_23]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K45 ["Create"]
  CLOSEUPVALS R5
  RETURN R9 1