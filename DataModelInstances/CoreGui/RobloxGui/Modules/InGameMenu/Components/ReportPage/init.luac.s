PROTO_0:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [ipairs]
  GETUPVAL R2 0
  NAMECALL R2 R2 K2 ["GetPlayers"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_INEXT R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["LocalPlayer"]
  JUMPIFEQ R5 R6 [+8]
  FASTCALL2 TABLE_INSERT R0 R5 [+5]
  MOVE R7 R0
  MOVE R8 R5
  GETIMPORT R6 K6 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [inext] [-13]
  RETURN R0 1

PROTO_1:
  DUPTABLE R3 K1 [{"players"}]
  GETUPVAL R4 0
  CALL R4 0 1
  SETTABLEKS R4 R3 K0 ["players"]
  NAMECALL R1 R0 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"players"}]
  GETUPVAL R3 1
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["players"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"pageTitle"}]
  GETTABLEKS R5 R0 K3 ["props"]
  GETTABLEKS R4 R5 K1 ["pageTitle"]
  SETTABLEKS R4 R3 K1 ["pageTitle"]
  DUPTABLE R4 K6 [{"PlayerList", "Watcher"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K8 [{"players"}]
  GETTABLEKS R9 R0 K9 ["state"]
  GETTABLEKS R8 R9 K7 ["players"]
  SETTABLEKS R8 R7 K7 ["players"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["PlayerList"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K12 [{"desiredPage", "onNavigateTo"}]
  LOADK R8 K13 ["Report"]
  SETTABLEKS R8 R7 K10 ["desiredPage"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R8 R7 K11 ["onNavigateTo"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Watcher"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Roact"]
  GETTABLEKS R4 R2 K10 ["t"]
  GETIMPORT R7 K12 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R5 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["PageNavigationWatcher"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R5 K14 ["Components"]
  GETTABLEKS R8 R9 K16 ["Page"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETIMPORT R10 K12 [script]
  GETTABLEKS R9 R10 K17 ["ReportList"]
  CALL R8 1 1
  DUPCLOSURE R9 K18 [PROTO_0]
  CAPTURE VAL R0
  GETTABLEKS R10 R3 K19 ["PureComponent"]
  LOADK R12 K20 ["ReportPage"]
  NAMECALL R10 R10 K21 ["extend"]
  CALL R10 2 1
  GETTABLEKS R11 R4 K22 ["strictInterface"]
  DUPTABLE R12 K24 [{"pageTitle"}]
  GETTABLEKS R13 R4 K25 ["string"]
  SETTABLEKS R13 R12 K23 ["pageTitle"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K26 ["validateProps"]
  DUPCLOSURE R11 K27 [PROTO_1]
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K28 ["init"]
  DUPCLOSURE R11 K29 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K30 ["render"]
  RETURN R10 1