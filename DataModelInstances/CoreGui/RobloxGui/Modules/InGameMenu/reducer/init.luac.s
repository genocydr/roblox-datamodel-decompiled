PROTO_0:
  LOADNIL R2
  GETTABLEKS R3 R1 K0 ["isMenuOpen"]
  JUMPIF R3 [+1]
  LOADB R2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K5 [{"isMenuOpen", "isMainPageMoreMenuOpen", "currentZone"}]
  GETTABLEKS R6 R1 K0 ["isMenuOpen"]
  SETTABLEKS R6 R5 K0 ["isMenuOpen"]
  SETTABLEKS R2 R5 K3 ["isMainPageMoreMenuOpen"]
  GETTABLEKS R7 R0 K0 ["isMenuOpen"]
  GETTABLEKS R8 R1 K0 ["isMenuOpen"]
  JUMPIFEQ R7 R8 [+3]
  LOADN R6 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K4 ["currentZone"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"isMainPageMoreMenuOpen"}]
  GETTABLEKS R5 R1 K2 ["isMainPageMoreMenuOpen"]
  SETTABLEKS R5 R4 K2 ["isMainPageMoreMenuOpen"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"leavingGame"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["leavingGame"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"leavingGame"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["leavingGame"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"menuPage", "isMainPageMoreMenuOpen", "currentZone"}]
  GETTABLEKS R5 R1 K6 ["newPage"]
  SETTABLEKS R5 R4 K2 ["menuPage"]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["isMainPageMoreMenuOpen"]
  GETTABLEKS R6 R1 K6 ["newPage"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["InitalPageKey"]
  JUMPIFNOTEQ R6 R7 [+3]
  LOADN R5 0
  JUMP [+1]
  LOADN R5 1
  SETTABLEKS R5 R4 K4 ["currentZone"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["controlLayout"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"controlLayout"}]
  SETTABLEKS R2 R5 K0 ["controlLayout"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"screenSize"}]
  GETTABLEKS R5 R1 K4 ["newScreenSize"]
  SETTABLEKS R5 R4 K2 ["screenSize"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"recording"}]
  GETTABLEKS R5 R1 K2 ["recording"]
  SETTABLEKS R5 R4 K2 ["recording"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  LOADNIL R2
  GETTABLEKS R3 R1 K0 ["respawning"]
  JUMPIFNOT R3 [+2]
  LOADB R2 0
  JUMP [+2]
  GETTABLEKS R2 R0 K1 ["isMainPageMoreMenuOpen"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Dictionary"]
  GETTABLEKS R3 R4 K3 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"isMainPageMoreMenuOpen"}]
  SETTABLEKS R2 R5 K1 ["isMainPageMoreMenuOpen"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"currentZone"}]
  GETTABLEKS R5 R1 K4 ["zone"]
  SETTABLEKS R5 R4 K2 ["currentZone"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"controllerBarHeight"}]
  GETTABLEKS R5 R1 K2 ["controllerBarHeight"]
  SETTABLEKS R5 R4 K2 ["controllerBarHeight"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"controllerBarCount"}]
  GETTABLEKS R6 R0 K2 ["controllerBarCount"]
  ADDK R5 R6 K4 [1]
  SETTABLEKS R5 R4 K2 ["controllerBarCount"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"controllerBarCount"}]
  GETTABLEKS R6 R0 K2 ["controllerBarCount"]
  SUBK R5 R6 K4 [1]
  SETTABLEKS R5 R4 K2 ["controllerBarCount"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  JUMPIFNOTEQKNIL R0 [+82]
  DUPTABLE R2 K17 [{"controlLayout", "isMenuOpen", "leavingGame", "currentZone", "menuPage", "voiceState", "invites", "respawn", "gameInfo", "friends", "displayOptions", "screenSize", "recording", "isMainPageMoreMenuOpen", "nativeClosePrompt", "controllerBarHeight", "controllerBarCount"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["ControlLayouts"]
  GETTABLEKS R3 R4 K19 ["KEYBOARD"]
  SETTABLEKS R3 R2 K0 ["controlLayout"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["isMenuOpen"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["leavingGame"]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["currentZone"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K20 ["defaultPageKey"]
  SETTABLEKS R3 R2 K4 ["menuPage"]
  LOADNIL R3
  SETTABLEKS R3 R2 K5 ["voiceState"]
  GETUPVAL R3 2
  LOADNIL R4
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K6 ["invites"]
  GETUPVAL R3 3
  LOADNIL R4
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K7 ["respawn"]
  GETUPVAL R3 4
  LOADNIL R4
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K8 ["gameInfo"]
  GETUPVAL R3 5
  LOADNIL R4
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K9 ["friends"]
  GETUPVAL R3 6
  LOADNIL R4
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K10 ["displayOptions"]
  GETIMPORT R3 K23 [Vector2.new]
  LOADN R4 0
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K11 ["screenSize"]
  LOADB R3 0
  SETTABLEKS R3 R2 K12 ["recording"]
  LOADB R3 0
  SETTABLEKS R3 R2 K13 ["isMainPageMoreMenuOpen"]
  GETUPVAL R3 7
  LOADNIL R4
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["nativeClosePrompt"]
  LOADN R3 0
  SETTABLEKS R3 R2 K15 ["controllerBarHeight"]
  LOADN R3 0
  SETTABLEKS R3 R2 K16 ["controllerBarCount"]
  MOVE R0 R2
  GETUPVAL R3 8
  GETTABLEKS R4 R1 K24 ["type"]
  GETTABLE R2 R3 R4
  JUMPIFEQKNIL R2 [+6]
  MOVE R3 R2
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  MOVE R0 R3
  GETUPVAL R3 9
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  MOVE R0 R3
  GETUPVAL R3 3
  GETTABLEKS R4 R0 K7 ["respawn"]
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R0 K7 ["respawn"]
  GETUPVAL R3 2
  GETTABLEKS R4 R0 K6 ["invites"]
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R0 K6 ["invites"]
  GETUPVAL R3 10
  GETTABLEKS R4 R0 K5 ["voiceState"]
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["voiceState"]
  GETUPVAL R3 4
  GETTABLEKS R4 R0 K8 ["gameInfo"]
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R0 K8 ["gameInfo"]
  GETUPVAL R3 11
  GETTABLEKS R4 R0 K25 ["report"]
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R0 K25 ["report"]
  GETUPVAL R3 5
  GETTABLEKS R4 R0 K9 ["friends"]
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["friends"]
  GETUPVAL R3 6
  GETTABLEKS R4 R0 K10 ["displayOptions"]
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R0 K10 ["displayOptions"]
  GETUPVAL R3 7
  GETTABLEKS R4 R0 K14 ["nativeClosePrompt"]
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R0 K14 ["nativeClosePrompt"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Cryo"]
  GETIMPORT R4 K10 [script]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K12 ["Actions"]
  GETTABLEKS R5 R6 K13 ["SetMenuOpen"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K12 ["Actions"]
  GETTABLEKS R6 R7 K14 ["SetMainPageMoreMenuOpen"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R3 K12 ["Actions"]
  GETTABLEKS R7 R8 K15 ["SetCurrentPage"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R3 K12 ["Actions"]
  GETTABLEKS R8 R9 K16 ["SetScreenSize"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R3 K12 ["Actions"]
  GETTABLEKS R9 R10 K17 ["StartLeavingGame"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R3 K12 ["Actions"]
  GETTABLEKS R10 R11 K18 ["CancelLeavingGame"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R3 K12 ["Actions"]
  GETTABLEKS R11 R12 K19 ["SetControlLayout"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R3 K12 ["Actions"]
  GETTABLEKS R12 R13 K20 ["SetVideoRecording"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R3 K12 ["Actions"]
  GETTABLEKS R13 R14 K21 ["SetRespawning"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R3 K12 ["Actions"]
  GETTABLEKS R14 R15 K22 ["SetCurrentZone"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R3 K12 ["Actions"]
  GETTABLEKS R15 R16 K23 ["SetControllerBarHeight"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R3 K12 ["Actions"]
  GETTABLEKS R16 R17 K24 ["DecrementControllerBar"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R3 K12 ["Actions"]
  GETTABLEKS R17 R18 K25 ["IncrementControllerBar"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETIMPORT R19 K10 [script]
  GETTABLEKS R18 R19 K26 ["navigationReducer"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETIMPORT R20 K10 [script]
  GETTABLEKS R19 R20 K27 ["respawn"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETIMPORT R21 K10 [script]
  GETTABLEKS R20 R21 K28 ["invites"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETIMPORT R22 K10 [script]
  GETTABLEKS R21 R22 K29 ["gameInfo"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETIMPORT R23 K10 [script]
  GETTABLEKS R22 R23 K30 ["report"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETIMPORT R24 K10 [script]
  GETTABLEKS R23 R24 K31 ["friends"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETIMPORT R25 K10 [script]
  GETTABLEKS R24 R25 K32 ["displayOptions"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETIMPORT R26 K10 [script]
  GETTABLEKS R25 R26 K33 ["nativeClosePrompt"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R29 R3 K11 ["Parent"]
  GETTABLEKS R28 R29 K34 ["VoiceChat"]
  GETTABLEKS R27 R28 K35 ["Reducers"]
  GETTABLEKS R26 R27 K36 ["voiceState"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R28 R3 K37 ["Flags"]
  GETTABLEKS R27 R28 K38 ["FFlagRecordRecording"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R29 R3 K39 ["Resources"]
  GETTABLEKS R28 R29 K40 ["Constants"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R30 R3 K39 ["Resources"]
  GETTABLEKS R29 R30 K41 ["Controls"]
  CALL R28 1 1
  NEWTABLE R29 16 0
  GETTABLEKS R30 R4 K42 ["name"]
  DUPCLOSURE R31 K43 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R5 K42 ["name"]
  DUPCLOSURE R31 K44 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R8 K42 ["name"]
  DUPCLOSURE R31 K45 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R9 K42 ["name"]
  DUPCLOSURE R31 K46 [PROTO_3]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R6 K42 ["name"]
  DUPCLOSURE R31 K47 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R27
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R10 K42 ["name"]
  DUPCLOSURE R31 K48 [PROTO_5]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R7 K42 ["name"]
  DUPCLOSURE R31 K49 [PROTO_6]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R11 K42 ["name"]
  JUMPIFNOT R26 [+3]
  DUPCLOSURE R31 K50 [PROTO_7]
  CAPTURE VAL R2
  JUMPIF R31 [+1]
  LOADNIL R31
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R12 K42 ["name"]
  DUPCLOSURE R31 K51 [PROTO_8]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R13 K42 ["name"]
  DUPCLOSURE R31 K52 [PROTO_9]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R14 K42 ["name"]
  DUPCLOSURE R31 K53 [PROTO_10]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R16 K42 ["name"]
  DUPCLOSURE R31 K54 [PROTO_11]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R15 K42 ["name"]
  DUPCLOSURE R31 K55 [PROTO_12]
  CAPTURE VAL R2
  SETTABLE R31 R29 R30
  DUPCLOSURE R30 K56 [PROTO_13]
  CAPTURE VAL R28
  CAPTURE VAL R27
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R29
  CAPTURE VAL R17
  CAPTURE VAL R25
  CAPTURE VAL R21
  RETURN R30 1