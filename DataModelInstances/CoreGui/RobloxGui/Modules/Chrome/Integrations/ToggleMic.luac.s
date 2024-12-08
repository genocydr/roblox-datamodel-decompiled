PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["ChromeIntegrationsToggleMic"]
  NAMECALL R1 R1 K1 ["ToggleMic"]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADK R3 K2 ["SelfView"]
  NAMECALL R1 R1 K3 ["setLastCtx"]
  CALL R1 2 0
  GETUPVAL R1 2
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["localMuted"]
  NOT R3 R4
  NAMECALL R1 R1 K5 ["onToggleMuteSelf"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["RejoinPreviousChannel"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["ShowVoiceChatLoadingMessage"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K4 [{"Size", "BackgroundTransparency"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K2 ["Size"]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["BackgroundTransparency"]
  NEWTABLE R4 0 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K11 [{"userId", "hideOnError", "iconStyle", "selectable", "size", "showConnectingShimmer"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K12 ["LocalPlayer"]
  GETTABLEKS R9 R10 K13 ["UserId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K15 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K5 ["userId"]
  LOADB R8 0
  SETTABLEKS R8 R7 K6 ["hideOnError"]
  LOADK R8 K16 ["MicLight"]
  SETTABLEKS R8 R7 K7 ["iconStyle"]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADB R8 0
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K8 ["selectable"]
  GETUPVAL R8 1
  SETTABLEKS R8 R7 K9 ["size"]
  LOADB R8 1
  SETTABLEKS R8 R7 K10 ["showConnectingShimmer"]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K18 [{"position"}]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 1
  LOADN R11 249
  LOADN R12 1
  LOADN R13 249
  CALL R9 4 1
  SETTABLEKS R9 R8 K17 ["position"]
  CALL R6 2 1
  SETLIST R4 R5 2 [1]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["voiceUIVisible"]
  JUMPIFNOT R0 [+17]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["availability"]
  NAMECALL R0 R0 K2 ["pinned"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["availability"]
  NAMECALL R0 R0 K3 ["available"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["availability"]
  NAMECALL R0 R0 K4 ["unavailable"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R5 K1 [Enum]
  GETTABLEKS R4 R5 K2 ["VoiceChatState"]
  GETTABLEKS R3 R4 K3 ["Ended"]
  JUMPIFNOTEQ R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+47]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+28]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["voiceUIVisible"]
  JUMPIFNOT R3 [+17]
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["availability"]
  NAMECALL R3 R3 K6 ["pinned"]
  CALL R3 1 0
  JUMP [+37]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["availability"]
  NAMECALL R3 R3 K7 ["available"]
  CALL R3 1 0
  JUMP [+30]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["availability"]
  NAMECALL R3 R3 K8 ["unavailable"]
  CALL R3 1 0
  JUMP [+23]
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["availability"]
  NAMECALL R3 R3 K6 ["pinned"]
  CALL R3 1 0
  JUMP [+13]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["availability"]
  NAMECALL R3 R3 K7 ["available"]
  CALL R3 1 0
  JUMP [+6]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["availability"]
  NAMECALL R3 R3 K8 ["unavailable"]
  CALL R3 1 0
  GETIMPORT R6 K1 [Enum]
  GETTABLEKS R5 R6 K2 ["VoiceChatState"]
  GETTABLEKS R4 R5 K9 ["Failed"]
  JUMPIFEQ R1 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADB R4 1
  GETIMPORT R7 K1 [Enum]
  GETTABLEKS R6 R7 K2 ["VoiceChatState"]
  GETTABLEKS R5 R6 K10 ["Joining"]
  JUMPIFEQ R1 R5 [+11]
  GETIMPORT R7 K1 [Enum]
  GETTABLEKS R6 R7 K2 ["VoiceChatState"]
  GETTABLEKS R5 R6 K11 ["JoiningRetry"]
  JUMPIFEQ R1 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R5 3
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K12 ["activated"]
  RETURN R0 0
  JUMPIFNOT R4 [+5]
  GETUPVAL R5 3
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K12 ["activated"]
  RETURN R0 0
  GETUPVAL R5 3
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K12 ["activated"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getService"]
  CALL R0 1 1
  JUMPIFNOT R0 [+74]
  GETTABLEKS R1 R0 K1 ["StateChanged"]
  GETUPVAL R3 1
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K3 ["SetupParticipantListeners"]
  CALL R1 1 0
  GETUPVAL R1 2
  JUMPIFNOT R1 [+46]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["showVoiceUI"]
  GETTABLEKS R1 R2 K5 ["Event"]
  GETUPVAL R3 3
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["hideVoiceUI"]
  GETTABLEKS R1 R2 K5 ["Event"]
  GETUPVAL R3 3
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["voiceUIVisible"]
  JUMPIFNOT R1 [+17]
  GETUPVAL R1 4
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K9 ["pinned"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K10 ["available"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K11 ["unavailable"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 4
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K9 ["pinned"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K10 ["available"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["asyncInit"]
  CALL R0 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R0 R0 K1 ["andThen"]
  CALL R0 2 1
  DUPCLOSURE R2 K2 [PROTO_7]
  NAMECALL R0 R0 K3 ["catch"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getService"]
  CALL R0 1 1
  JUMPIFNOT R0 [+74]
  GETTABLEKS R1 R0 K1 ["StateChanged"]
  GETUPVAL R3 1
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K3 ["SetupParticipantListeners"]
  CALL R1 1 0
  GETUPVAL R1 2
  JUMPIFNOT R1 [+46]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["showVoiceUI"]
  GETTABLEKS R1 R2 K5 ["Event"]
  GETUPVAL R3 3
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["hideVoiceUI"]
  GETTABLEKS R1 R2 K5 ["Event"]
  GETUPVAL R3 3
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["voiceUIVisible"]
  JUMPIFNOT R1 [+17]
  GETUPVAL R1 4
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K9 ["pinned"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K10 ["available"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K11 ["unavailable"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 4
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K9 ["pinned"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K8 ["availability"]
  NAMECALL R1 R1 K10 ["available"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["CoreGui"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  LOADK R5 K9 ["RobloxGui"]
  NAMECALL R3 R2 K10 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K5 [game]
  LOADK R6 K11 ["Players"]
  NAMECALL R4 R4 K7 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K5 [game]
  LOADK R7 K12 ["RbxAnalyticsService"]
  NAMECALL R5 R5 K7 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K14 [require]
  GETTABLEKS R8 R1 K15 ["Packages"]
  GETTABLEKS R7 R8 K16 ["React"]
  CALL R6 1 1
  GETIMPORT R8 K14 [require]
  GETTABLEKS R11 R3 K17 ["Modules"]
  GETTABLEKS R10 R11 K18 ["VoiceChat"]
  GETTABLEKS R9 R10 K19 ["VoiceChatServiceManager"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K20 ["default"]
  GETIMPORT R8 K14 [require]
  GETTABLEKS R12 R3 K17 ["Modules"]
  GETTABLEKS R11 R12 K18 ["VoiceChat"]
  GETTABLEKS R10 R11 K21 ["Components"]
  GETTABLEKS R9 R10 K22 ["VoiceIndicatorFunc"]
  CALL R8 1 1
  GETIMPORT R9 K14 [require]
  GETTABLEKS R13 R3 K17 ["Modules"]
  GETTABLEKS R12 R13 K23 ["Settings"]
  GETTABLEKS R11 R12 K24 ["Analytics"]
  GETTABLEKS R10 R11 K25 ["VoiceAnalytics"]
  CALL R9 1 1
  GETIMPORT R10 K14 [require]
  GETTABLEKS R13 R3 K17 ["Modules"]
  GETTABLEKS R12 R13 K26 ["Flags"]
  GETTABLEKS R11 R12 K27 ["GetFFlagEnableVoiceMuteAnalytics"]
  CALL R10 1 1
  GETIMPORT R11 K14 [require]
  GETTABLEKS R13 R0 K26 ["Flags"]
  GETTABLEKS R12 R13 K28 ["GetFFlagFixMicSelection"]
  CALL R11 1 1
  GETIMPORT R12 K14 [require]
  GETTABLEKS R14 R0 K26 ["Flags"]
  GETTABLEKS R13 R14 K29 ["GetFFlagTweakedMicPinning"]
  CALL R12 1 1
  GETIMPORT R13 K5 [game]
  LOADK R15 K30 ["AudioFocusManagement"]
  NAMECALL R13 R13 K31 ["GetEngineFeature"]
  CALL R13 2 1
  GETIMPORT R14 K5 [game]
  LOADK R16 K32 ["EnableChromeAudioFocusManagement"]
  LOADB R17 0
  NAMECALL R14 R14 K33 ["DefineFastFlag"]
  CALL R14 3 1
  GETIMPORT R16 K14 [require]
  GETTABLEKS R19 R1 K34 ["Workspace"]
  GETTABLEKS R18 R19 K15 ["Packages"]
  GETTABLEKS R17 R18 K35 ["SharedFlags"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K36 ["FFlagFixTopBarSlowLoad"]
  AND R16 R13 R14
  GETIMPORT R17 K14 [require]
  GETTABLEKS R18 R0 K37 ["Service"]
  CALL R17 1 1
  GETIMPORT R18 K14 [require]
  GETTABLEKS R20 R0 K38 ["Integrations"]
  GETTABLEKS R19 R20 K39 ["RedVoiceDot"]
  CALL R18 1 1
  GETIMPORT R19 K14 [require]
  GETTABLEKS R22 R0 K40 ["ChromeShared"]
  GETTABLEKS R21 R22 K41 ["Unibar"]
  GETTABLEKS R20 R21 K42 ["Constants"]
  CALL R19 1 1
  GETIMPORT R20 K45 [UDim2.new]
  LOADN R21 0
  GETTABLEKS R22 R19 K46 ["ICON_SIZE"]
  LOADN R23 0
  GETTABLEKS R24 R19 K46 ["ICON_SIZE"]
  CALL R20 4 1
  GETIMPORT R22 K14 [require]
  GETTABLEKS R25 R3 K17 ["Modules"]
  GETTABLEKS R24 R25 K47 ["SelfView"]
  GETTABLEKS R23 R24 K24 ["Analytics"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K44 ["new"]
  CALL R21 0 1
  LOADNIL R22
  MOVE R23 R10
  CALL R23 0 1
  JUMPIFNOT R23 [+6]
  GETTABLEKS R23 R9 K44 ["new"]
  MOVE R24 R5
  LOADK R25 K48 ["Chrome.Integrations.ToggleMic"]
  CALL R23 2 1
  MOVE R22 R23
  LOADNIL R23
  NEWCLOSURE R24 P0
  CAPTURE VAL R7
  CAPTURE VAL R21
  CAPTURE REF R22
  DUPCLOSURE R25 K49 [PROTO_1]
  CAPTURE VAL R7
  DUPCLOSURE R26 K50 [PROTO_2]
  CAPTURE VAL R7
  DUPTABLE R29 K55 [{"id", "label", "activated", "components"}]
  LOADK R30 K56 ["toggle_mic_mute"]
  SETTABLEKS R30 R29 K51 ["id"]
  LOADK R30 K57 ["CoreScripts.TopBar.ToggleMic"]
  SETTABLEKS R30 R29 K52 ["label"]
  SETTABLEKS R24 R29 K53 ["activated"]
  DUPTABLE R30 K59 [{"Icon"}]
  DUPCLOSURE R31 K60 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R20
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R18
  SETTABLEKS R31 R30 K58 ["Icon"]
  SETTABLEKS R30 R29 K54 ["components"]
  NAMECALL R27 R17 K61 ["register"]
  CALL R27 2 1
  MOVE R23 R27
  NEWCLOSURE R27 P4
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE REF R23
  NEWCLOSURE R28 P5
  CAPTURE VAL R16
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE REF R23
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R24
  GETIMPORT R29 K5 [game]
  LOADK R31 K62 ["VoiceChatSupported"]
  NAMECALL R29 R29 K31 ["GetEngineFeature"]
  CALL R29 2 1
  JUMPIFNOT R29 [+29]
  JUMPIFNOT R15 [+11]
  GETIMPORT R29 K65 [task.spawn]
  NEWCLOSURE R30 P6
  CAPTURE VAL R7
  CAPTURE VAL R28
  CAPTURE VAL R16
  CAPTURE VAL R27
  CAPTURE VAL R12
  CAPTURE REF R23
  CALL R29 1 0
  JUMP [+17]
  NAMECALL R29 R7 K66 ["asyncInit"]
  CALL R29 1 1
  NEWCLOSURE R31 P7
  CAPTURE VAL R7
  CAPTURE VAL R28
  CAPTURE VAL R16
  CAPTURE VAL R27
  CAPTURE VAL R12
  CAPTURE REF R23
  NAMECALL R29 R29 K67 ["andThen"]
  CALL R29 2 1
  DUPCLOSURE R31 K68 [PROTO_10]
  NAMECALL R29 R29 K69 ["catch"]
  CALL R29 2 0
  CLOSEUPVALS R22
  RETURN R23 1
