MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R4 K7 [script]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["Enums"]
  GETTABLEKS R4 R5 K12 ["PlatformEnum"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R2 K13 ["Resources"]
  GETTABLEKS R5 R6 K14 ["FTUXEventTypes"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R1 K15 ["Modules"]
  GETTABLEKS R7 R8 K16 ["Flags"]
  GETTABLEKS R6 R7 K17 ["FFlagVRBottomBarHighlightedLeaveGameIcon"]
  CALL R5 1 1
  GETTABLEKS R7 R3 K18 ["QuestVR"]
  GETTABLE R6 R4 R7
  NEWTABLE R7 1 0
  GETTABLEKS R8 R3 K18 ["QuestVR"]
  NEWTABLE R9 0 4
  NEWTABLE R10 0 3
  GETTABLEKS R11 R6 K19 ["PerspectiveTooltipEvent"]
  GETTABLEKS R12 R6 K20 ["FirstPersonToggleEvent"]
  GETTABLEKS R13 R6 K21 ["HapticFeedbackEvent"]
  SETLIST R10 R11 3 [1]
  NEWTABLE R11 0 4
  GETTABLEKS R12 R6 K22 ["MovementTooltipEvent"]
  GETTABLEKS R13 R6 K23 ["MoveToGoalEvent"]
  GETTABLEKS R14 R6 K24 ["SoundFeedbackEvent"]
  GETTABLEKS R15 R6 K25 ["HapticFeedbackTwiceEvent"]
  SETLIST R11 R12 4 [1]
  NEWTABLE R12 0 2
  GETTABLEKS R13 R6 K21 ["HapticFeedbackEvent"]
  GETTABLEKS R14 R6 K24 ["SoundFeedbackEvent"]
  SETLIST R12 R13 2 [1]
  NEWTABLE R13 0 2
  GETTABLEKS R14 R6 K24 ["SoundFeedbackEvent"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R15 R6 K26 ["LeaveGameIconHighlightEvent"]
  JUMP [+2]
  GETTABLEKS R15 R6 K24 ["SoundFeedbackEvent"]
  SETLIST R13 R14 2 [1]
  SETLIST R9 R10 4 [1]
  SETTABLE R9 R7 R8
  RETURN R7 1