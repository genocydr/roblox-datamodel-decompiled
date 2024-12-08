PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["menuEverShown"]
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADNIL R2
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Person"]
  JUMPIFNOTEQ R3 R4 [+13]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["forPersonReport"]
  GETUPVAL R4 0
  MOVE R5 R0
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["getAccumulatedParameters"]
  CALL R6 0 -1
  CALL R3 -1 1
  MOVE R2 R3
  JUMP [+11]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["forExperienceReport"]
  GETUPVAL R4 0
  MOVE R5 R0
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["getAccumulatedParameters"]
  CALL R6 0 -1
  CALL R3 -1 1
  MOVE R2 R3
  GETUPVAL R3 5
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["reportInGameAbuseReportInteraction"]
  CALL R3 2 0
  MOVE R3 R1
  DUPTABLE R4 K7 [{"type"}]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K8 ["ReportAnythingActions"]
  GETTABLEKS R5 R6 K9 ["ClearAnnotationFlowProperties"]
  SETTABLEKS R5 R4 K6 ["type"]
  CALL R3 1 0
  GETUPVAL R3 7
  DUPTABLE R4 K7 [{"type"}]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K10 ["AnalyticsActions"]
  GETTABLEKS R5 R6 K11 ["Reset"]
  SETTABLEKS R5 R4 K6 ["type"]
  CALL R3 1 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K12 ["clear"]
  CALL R3 0 0
  GETUPVAL R3 8
  LOADNIL R4
  CALL R3 1 0
  GETUPVAL R3 5
  NAMECALL R3 R3 K13 ["endAbuseReportSession"]
  CALL R3 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["CorePackages"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["ReportTypes"]
  GETIMPORT R5 K9 [game]
  LOADK R7 K14 ["EventIngestService"]
  NAMECALL R5 R5 K11 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K9 [game]
  LOADK R8 K15 ["RbxAnalyticsService"]
  NAMECALL R6 R6 K11 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K16 ["ReportAnything"]
  GETTABLEKS R9 R10 K17 ["Utility"]
  GETTABLEKS R8 R9 K18 ["ReportAnythingAnalytics"]
  CALL R7 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R2 K19 ["Workspace"]
  GETTABLEKS R12 R13 K20 ["Packages"]
  GETTABLEKS R11 R12 K21 ["Analytics"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K22 ["AnalyticsReporters"]
  GETTABLEKS R8 R9 K23 ["EventIngest"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R2 K19 ["Workspace"]
  GETTABLEKS R13 R14 K20 ["Packages"]
  GETTABLEKS R12 R13 K21 ["Analytics"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K21 ["Analytics"]
  GETTABLEKS R9 R10 K24 ["new"]
  MOVE R10 R6
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K21 ["Analytics"]
  GETTABLEKS R11 R12 K25 ["ReportAbuseAnalytics"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K21 ["Analytics"]
  GETTABLEKS R12 R13 K26 ["collectAnalyticsParameters"]
  CALL R11 1 1
  GETTABLEKS R12 R10 K24 ["new"]
  GETTABLEKS R13 R8 K24 ["new"]
  MOVE R14 R5
  CALL R13 1 1
  GETTABLEKS R14 R9 K27 ["Diag"]
  GETTABLEKS R16 R10 K28 ["MenuContexts"]
  GETTABLEKS R15 R16 K29 ["NewMenu"]
  CALL R12 3 1
  DUPCLOSURE R13 K30 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R3
  RETURN R13 1