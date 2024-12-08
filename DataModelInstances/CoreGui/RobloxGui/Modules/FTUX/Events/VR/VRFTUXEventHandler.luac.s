PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["FirstPersonToggleEvent"]
  JUMPIFNOTEQ R0 R2 [+9]
  GETIMPORT R2 K3 [task.spawn]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["StartEvent"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["MoveToGoalEvent"]
  JUMPIFNOTEQ R0 R2 [+9]
  GETIMPORT R2 K3 [task.spawn]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["StartEvent"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["JumpEvent"]
  JUMPIFNOTEQ R0 R2 [+9]
  GETIMPORT R2 K3 [task.spawn]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["StartEvent"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["PerspectiveTooltipEvent"]
  JUMPIFNOTEQ R0 R2 [+8]
  GETIMPORT R2 K3 [task.spawn]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K4 ["StartEvent"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["MovementTooltipEvent"]
  JUMPIFNOTEQ R0 R2 [+8]
  GETIMPORT R2 K3 [task.spawn]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K4 ["StartEvent"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["HapticFeedbackEvent"]
  JUMPIFNOTEQ R0 R2 [+8]
  GETIMPORT R2 K3 [task.spawn]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K4 ["StartEvent"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["SoundFeedbackEvent"]
  JUMPIFNOTEQ R0 R2 [+8]
  GETIMPORT R2 K3 [task.spawn]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K4 ["StartEvent"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["HapticFeedbackTwiceEvent"]
  JUMPIFNOTEQ R0 R2 [+8]
  GETIMPORT R2 K3 [task.spawn]
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K4 ["StartEvent"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["LeaveGameIconHighlightEvent"]
  JUMPIFNOTEQ R0 R2 [+8]
  GETIMPORT R2 K3 [task.spawn]
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K4 ["StartEvent"]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R2 K14 [warn]
  LOADK R4 K15 ["Unmapped VRFTUX event type: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K17 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["FirstPersonToggleEvent"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETIMPORT R1 K3 [task.spawn]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["StopEvent"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["MoveToGoalEvent"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETIMPORT R1 K3 [task.spawn]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["StopEvent"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["JumpEvent"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETIMPORT R1 K3 [task.spawn]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K4 ["StopEvent"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["PerspectiveTooltipEvent"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETIMPORT R1 K3 [task.spawn]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K4 ["StopEvent"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["MovementTooltipEvent"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETIMPORT R1 K3 [task.spawn]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K4 ["StopEvent"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["LeaveGameIconHighlightEvent"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETIMPORT R1 K3 [task.spawn]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K4 ["StopEvent"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["HapticFeedbackTwiceEvent"]
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["HapticFeedbackEvent"]
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K12 ["SoundFeedbackEvent"]
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETIMPORT R1 K14 [warn]
  LOADK R3 K15 ["Unmapped VRFTUX event type: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K17 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Events"]
  GETTABLEKS R3 R4 K6 ["VR"]
  GETTABLEKS R2 R3 K7 ["FirstPersonToggleEvent"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Events"]
  GETTABLEKS R4 R5 K6 ["VR"]
  GETTABLEKS R3 R4 K8 ["HapticFeedbackEvent"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Events"]
  GETTABLEKS R5 R6 K6 ["VR"]
  GETTABLEKS R4 R5 K9 ["HapticFeedbackTwiceEvent"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Events"]
  GETTABLEKS R6 R7 K6 ["VR"]
  GETTABLEKS R5 R6 K10 ["SoundFeedbackEvent"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Events"]
  GETTABLEKS R7 R8 K6 ["VR"]
  GETTABLEKS R6 R7 K11 ["JumpEvent"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Events"]
  GETTABLEKS R8 R9 K6 ["VR"]
  GETTABLEKS R7 R8 K12 ["MoveToGoalEvent"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K5 ["Events"]
  GETTABLEKS R9 R10 K6 ["VR"]
  GETTABLEKS R8 R9 K13 ["PerspectiveTooltipEvent"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K5 ["Events"]
  GETTABLEKS R10 R11 K6 ["VR"]
  GETTABLEKS R9 R10 K14 ["MovementTooltipEvent"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K5 ["Events"]
  GETTABLEKS R11 R12 K6 ["VR"]
  GETTABLEKS R10 R11 K15 ["LeaveGameIconHighlightEvent"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K16 ["Enums"]
  GETTABLEKS R11 R12 K17 ["PlatformEnum"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K18 ["Resources"]
  GETTABLEKS R12 R13 K19 ["FTUXEventTypes"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K2 ["Parent"]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K20 ["EventType"]
  CALL R12 1 1
  GETTABLEKS R14 R10 K21 ["QuestVR"]
  GETTABLE R13 R11 R14
  DUPTABLE R14 K23 [{"Name"}]
  LOADK R15 K24 ["VRFTUXEventHandler"]
  SETTABLEKS R15 R14 K22 ["Name"]
  DUPCLOSURE R15 K25 [PROTO_0]
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K26 ["StartEvent"]
  DUPCLOSURE R15 K27 [PROTO_1]
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K28 ["StopEvent"]
  RETURN R14 1
