PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["getRecentUsersInteractionData"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["UserId"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K3 [tostring]
  CALL R2 1 1
  GETTABLE R4 R1 R2
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_1:
  JUMPIFNOT R1 [+51]
  GETUPVAL R5 0
  NAMECALL R5 R5 K0 ["getRecentUsersInteractionData"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K1 ["UserId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K3 [tostring]
  CALL R6 1 1
  GETTABLE R7 R5 R6
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+35]
  MOVE R4 R2
  DUPTABLE R5 K6 [{"type", "methodOfAbuse"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["PlayerMenuActions"]
  GETTABLEKS R6 R7 K8 ["UpdateMethodOfAbuse"]
  SETTABLEKS R6 R5 K4 ["type"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["AbuseMethods"]
  GETTABLEKS R6 R7 K10 ["VoiceChat"]
  SETTABLEKS R6 R5 K5 ["methodOfAbuse"]
  CALL R4 1 0
  MOVE R4 R3
  DUPTABLE R5 K12 [{"type", "selection"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K13 ["AnalyticsActions"]
  GETTABLEKS R6 R7 K14 ["SetTypeOfAbuseSelection"]
  SETTABLEKS R6 R5 K4 ["type"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["AbuseMethods"]
  GETTABLEKS R6 R7 K10 ["VoiceChat"]
  SETTABLEKS R6 R5 K11 ["selection"]
  CALL R4 1 0
  JUMP [+39]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K15 ["getReportAnythingAvatarEnabled"]
  CALL R4 0 1
  JUMPIFNOT R4 [+34]
  MOVE R4 R2
  DUPTABLE R5 K6 [{"type", "methodOfAbuse"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["PlayerMenuActions"]
  GETTABLEKS R6 R7 K8 ["UpdateMethodOfAbuse"]
  SETTABLEKS R6 R5 K4 ["type"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["AbuseMethods"]
  GETTABLEKS R6 R7 K16 ["TextChat"]
  SETTABLEKS R6 R5 K5 ["methodOfAbuse"]
  CALL R4 1 0
  MOVE R4 R3
  DUPTABLE R5 K12 [{"type", "selection"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K13 ["AnalyticsActions"]
  GETTABLEKS R6 R7 K14 ["SetTypeOfAbuseSelection"]
  SETTABLEKS R6 R5 K4 ["type"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["AbuseMethods"]
  GETTABLEKS R6 R7 K16 ["TextChat"]
  SETTABLEKS R6 R5 K11 ["selection"]
  CALL R4 1 0
  MOVE R4 R2
  DUPTABLE R5 K18 [{"type", "player"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["PlayerMenuActions"]
  GETTABLEKS R6 R7 K19 ["SetPreselectedPlayer"]
  SETTABLEKS R6 R5 K4 ["type"]
  SETTABLEKS R0 R5 K17 ["player"]
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CoreGui"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K8 ["RobloxGui"]
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R0 K11 ["Components"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K13 ["IXP"]
  GETTABLEKS R5 R6 K14 ["TnSIXPWrapper"]
  CALL R4 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R2 K15 ["Modules"]
  GETTABLEKS R8 R9 K16 ["VoiceChat"]
  GETTABLEKS R7 R8 K17 ["VoiceChatServiceManager"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K18 ["default"]
  DUPCLOSURE R6 K19 [PROTO_0]
  CAPTURE VAL R5
  DUPCLOSURE R7 K20 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETGLOBAL R7 K21 ["handlePreselectedPlayer"]
  GETGLOBAL R7 K21 ["handlePreselectedPlayer"]
  RETURN R7 1