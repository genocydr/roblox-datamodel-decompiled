PROTO_0:
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["default"]
  GETTABLEKS R1 R2 K1 ["currentSquadId"]
  RETURN R1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Instance"]
  GETTABLEKS R2 R3 K3 ["AppChatPage"]
  GETTABLEKS R1 R2 K4 ["CurrentSquadId"]
  RETURN R1 1

PROTO_1:
  JUMPIFNOT R0 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["default"]
  NAMECALL R1 R1 K1 ["getVisible"]
  CALL R1 1 -1
  RETURN R1 -1
  LOADB R1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Instance"]
  GETTABLEKS R3 R4 K3 ["Pages"]
  GETTABLEKS R2 R3 K4 ["CurrentPage"]
  JUMPIFEQKNIL R2 [+25]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["Instance"]
  GETTABLEKS R5 R6 K3 ["Pages"]
  GETTABLEKS R4 R5 K4 ["CurrentPage"]
  GETTABLEKS R3 R4 K5 ["Page"]
  GETTABLEKS R2 R3 K6 ["Name"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["Instance"]
  GETTABLEKS R5 R6 K7 ["AppChatPage"]
  GETTABLEKS R4 R5 K5 ["Page"]
  GETTABLEKS R3 R4 K6 ["Name"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOTEQKS R1 K0 [""] [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["default"]
  GETTABLEKS R1 R3 K1 ["currentSquadId"]
  JUMP [+8]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["Instance"]
  GETTABLEKS R3 R4 K3 ["AppChatPage"]
  GETTABLEKS R1 R3 K4 ["CurrentSquadId"]
  JUMP [0]
  CALL R0 1 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+22]
  GETUPVAL R0 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["default"]
  GETTABLEKS R1 R2 K1 ["currentSquadId"]
  CALL R0 1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["default"]
  GETTABLEKS R1 R2 K5 ["currentSquadIdSignal"]
  GETTABLEKS R0 R1 K6 ["Event"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K7 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1
  GETUPVAL R0 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["Instance"]
  GETTABLEKS R2 R3 K3 ["AppChatPage"]
  GETTABLEKS R1 R2 K4 ["CurrentSquadId"]
  CALL R0 1 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["Instance"]
  GETTABLEKS R2 R3 K3 ["AppChatPage"]
  GETTABLEKS R1 R2 K8 ["CurrentSquadIdSignal"]
  GETTABLEKS R0 R1 K6 ["Event"]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K7 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["Instance"]
  GETTABLEKS R5 R6 K1 ["AppChatPage"]
  GETTABLEKS R4 R5 K2 ["Page"]
  GETTABLEKS R3 R4 K3 ["Name"]
  JUMPIFEQ R3 R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R1 1 -1
  CALL R0 -1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+15]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["default"]
  GETTABLEKS R1 R2 K1 ["visibilitySignal"]
  GETTABLEKS R0 R1 K2 ["Event"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K3 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K4 ["Instance"]
  GETTABLEKS R0 R1 K5 ["CurrentPageSignal"]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  NAMECALL R0 R0 K6 ["connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  RETURN R1 1

PROTO_13:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+13]
  JUMPIFNOT R0 [+12]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["setKeepOutArea"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["ConnectIconKeepOutAreaId"]
  GETTABLEKS R3 R0 K2 ["AbsolutePosition"]
  GETTABLEKS R4 R0 K3 ["AbsoluteSize"]
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["removeKeepOutArea"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["ConnectIconKeepOutAreaId"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["current"]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 2
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["toggleVisibility"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetVisibility"]
  CALL R0 1 1
  JUMPIFNOT R0 [+11]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Instance"]
  LOADB R3 0
  LOADB R4 1
  NAMECALL R1 R1 K2 ["PopMenu"]
  CALL R1 3 0
  RETURN R0 0
  JUMPIF R0 [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Instance"]
  LOADB R3 1
  LOADB R4 0
  NAMECALL R1 R1 K3 ["SetVisibility"]
  CALL R1 3 0
  GETUPVAL R1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Instance"]
  GETTABLEKS R3 R4 K4 ["AppChatPage"]
  NAMECALL R1 R1 K5 ["SwitchToPage"]
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  GETIMPORT R1 K2 [UDim2.fromOffset]
  MOVE R2 R0
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["default"]
  NAMECALL R1 R1 K1 ["shouldUseIndependentAppChatContainer"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useRef"]
  LOADNIL R3
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["useState"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K0 ["default"]
  GETTABLEKS R4 R5 K4 ["currentSquadId"]
  JUMP [+8]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["Instance"]
  GETTABLEKS R5 R6 K6 ["AppChatPage"]
  GETTABLEKS R4 R5 K7 ["CurrentSquadId"]
  JUMP [0]
  CALL R3 1 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["useState"]
  GETUPVAL R6 4
  MOVE R7 R1
  CALL R6 1 -1
  CALL R5 -1 2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["useMemo"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  NEWTABLE R9 0 1
  MOVE R10 R3
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 5
  LOADN R9 30
  LOADN R10 26
  JUMPIFNOT R5 [+2]
  GETUPVAL R11 6
  JUMP [+1]
  GETUPVAL R11 7
  CALL R8 3 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["useEffect"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NEWTABLE R11 0 1
  MOVE R12 R1
  SETLIST R11 R12 1 [1]
  CALL R9 2 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["useEffect"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R6
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NEWTABLE R11 0 1
  MOVE R12 R1
  SETLIST R11 R12 1 [1]
  CALL R9 2 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["useCallback"]
  NEWCLOSURE R10 P3
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  NEWTABLE R11 0 3
  MOVE R12 R7
  GETTABLEKS R13 R0 K11 ["setKeepOutArea"]
  GETTABLEKS R14 R0 K12 ["removeKeepOutArea"]
  SETLIST R11 R12 3 [1]
  CALL R9 2 1
  NEWCLOSURE R10 P4
  CAPTURE VAL R2
  CAPTURE VAL R9
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["useEffect"]
  NEWCLOSURE R12 P5
  CAPTURE UPVAL U9
  CAPTURE VAL R2
  CAPTURE VAL R9
  NEWTABLE R13 0 1
  MOVE R14 R9
  SETLIST R13 R14 1 [1]
  CALL R11 2 0
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K10 ["useCallback"]
  DUPCLOSURE R12 K13 [PROTO_16]
  CAPTURE UPVAL U2
  NEWTABLE R13 0 0
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["useCallback"]
  NEWCLOSURE R13 P7
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  NEWTABLE R14 0 1
  MOVE R15 R5
  SETLIST R14 R15 1 [1]
  CALL R12 2 1
  GETUPVAL R14 10
  GETTABLEKS R13 R14 K14 ["createElement"]
  LOADK R14 K15 ["TextButton"]
  NEWTABLE R15 8 0
  LOADK R16 K16 [""]
  SETTABLEKS R16 R15 K17 ["Text"]
  SETTABLEKS R7 R15 K18 ["Visible"]
  LOADN R16 1
  SETTABLEKS R16 R15 K19 ["BackgroundTransparency"]
  GETIMPORT R16 K22 [UDim2.new]
  LOADN R17 0
  LOADN R18 30
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K23 ["Size"]
  GETTABLEKS R16 R0 K24 ["layoutOrder"]
  SETTABLEKS R16 R15 K25 ["LayoutOrder"]
  LOADB R16 0
  SETTABLEKS R16 R15 K26 ["Selectable"]
  GETUPVAL R18 10
  GETTABLEKS R17 R18 K27 ["Change"]
  GETTABLEKS R16 R17 K28 ["AbsoluteSize"]
  GETUPVAL R18 9
  JUMPIFNOT R18 [+2]
  MOVE R17 R9
  JUMP [+1]
  LOADNIL R17
  SETTABLE R17 R15 R16
  GETUPVAL R18 10
  GETTABLEKS R17 R18 K27 ["Change"]
  GETTABLEKS R16 R17 K29 ["AbsolutePosition"]
  GETUPVAL R18 9
  JUMPIFNOT R18 [+2]
  MOVE R17 R9
  JUMP [+1]
  LOADNIL R17
  SETTABLE R17 R15 R16
  DUPTABLE R16 K32 [{"Background", "BadgeContainer"}]
  GETUPVAL R18 10
  GETTABLEKS R17 R18 K14 ["createElement"]
  GETUPVAL R18 11
  NEWTABLE R19 8 0
  GETTABLEKS R22 R8 K33 ["image"]
  GETTABLEKS R21 R22 K34 ["backgroundColor"]
  JUMPIFNOTEQKNIL R21 [+3]
  LOADN R20 1
  JUMP [+1]
  LOADN R20 0
  SETTABLEKS R20 R19 K35 ["backgroundTransparency"]
  GETTABLEKS R21 R8 K33 ["image"]
  GETTABLEKS R20 R21 K34 ["backgroundColor"]
  SETTABLEKS R20 R19 K36 ["backgroundColor3"]
  GETTABLEKS R21 R8 K33 ["image"]
  GETTABLEKS R20 R21 K37 ["thumbnail"]
  SETTABLEKS R20 R19 K38 ["icon"]
  GETIMPORT R20 K40 [UDim.new]
  LOADN R21 0
  LOADN R22 6
  CALL R20 2 1
  SETTABLEKS R20 R19 K41 ["backgroundCornerRadius"]
  GETTABLEKS R20 R8 K42 ["size"]
  DUPCLOSURE R22 K43 [PROTO_18]
  NAMECALL R20 R20 K44 ["map"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K45 ["iconSize"]
  JUMPIFNOT R1 [+2]
  MOVE R20 R11
  JUMP [+1]
  MOVE R20 R12
  SETTABLEKS R20 R19 K46 ["onActivated"]
  GETUPVAL R21 10
  GETTABLEKS R20 R21 K47 ["Ref"]
  SETTABLE R10 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K30 ["Background"]
  GETUPVAL R18 10
  GETTABLEKS R17 R18 K14 ["createElement"]
  LOADK R18 K48 ["Frame"]
  DUPTABLE R19 K52 [{"BackgroundTransparency", "AnchorPoint", "Position", "ZIndex"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K19 ["BackgroundTransparency"]
  GETIMPORT R20 K54 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K49 ["AnchorPoint"]
  GETIMPORT R20 K56 [UDim2.fromOffset]
  LOADN R21 19
  LOADN R22 8
  CALL R20 2 1
  SETTABLEKS R20 R19 K50 ["Position"]
  LOADN R20 2
  SETTABLEKS R20 R19 K51 ["ZIndex"]
  DUPTABLE R20 K58 [{"Badge"}]
  GETUPVAL R22 10
  GETTABLEKS R21 R22 K14 ["createElement"]
  GETUPVAL R22 12
  DUPTABLE R23 K60 [{"variant"}]
  GETUPVAL R25 13
  GETTABLEKS R24 R25 K61 ["Primary"]
  SETTABLEKS R24 R23 K59 ["variant"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K57 ["Badge"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["BadgeContainer"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K12 ["UIBlox"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K13 ["Foundation"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K14 ["Badge"]
  GETTABLEKS R9 R6 K15 ["Enums"]
  GETTABLEKS R8 R9 K16 ["BadgeVariant"]
  GETTABLEKS R11 R5 K17 ["App"]
  GETTABLEKS R10 R11 K18 ["ImageSet"]
  GETTABLEKS R9 R10 K19 ["Images"]
  GETIMPORT R10 K8 [require]
  GETIMPORT R13 K21 [script]
  GETTABLEKS R12 R13 K22 ["Parent"]
  GETTABLEKS R11 R12 K23 ["IconButton"]
  CALL R10 1 1
  GETIMPORT R14 K21 [script]
  GETTABLEKS R13 R14 K22 ["Parent"]
  GETTABLEKS R12 R13 K22 ["Parent"]
  GETTABLEKS R11 R12 K22 ["Parent"]
  GETTABLEKS R13 R11 K22 ["Parent"]
  GETTABLEKS R12 R13 K24 ["Chrome"]
  GETIMPORT R13 K8 [require]
  GETTABLEKS R15 R11 K25 ["Flags"]
  GETTABLEKS R14 R15 K26 ["GetFFlagEnableChromeBackwardsSignalAPI"]
  CALL R13 1 1
  CALL R13 0 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R15 R11 K27 ["Constants"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R18 R12 K28 ["Integrations"]
  GETTABLEKS R17 R18 K29 ["Party"]
  GETTABLEKS R16 R17 K30 ["usePartyIcon"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETTABLEKS R19 R2 K31 ["Modules"]
  GETTABLEKS R18 R19 K32 ["Settings"]
  GETTABLEKS R17 R18 K33 ["SettingsHub"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R20 R0 K34 ["Workspace"]
  GETTABLEKS R19 R20 K9 ["Packages"]
  GETTABLEKS R18 R19 K35 ["AppChat"]
  CALL R17 1 1
  GETTABLEKS R19 R17 K17 ["App"]
  GETTABLEKS R18 R19 K36 ["InExperienceAppChatExperimentation"]
  GETTABLEKS R20 R17 K17 ["App"]
  GETTABLEKS R19 R20 K37 ["InExperienceAppChatModal"]
  GETIMPORT R21 K8 [require]
  GETTABLEKS R24 R0 K34 ["Workspace"]
  GETTABLEKS R23 R24 K9 ["Packages"]
  GETTABLEKS R22 R23 K38 ["SharedFlags"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K39 ["FFlagAppChatRebrandInNonChrome"]
  JUMPIFNOT R20 [+3]
  GETTABLEKS R21 R9 K40 ["icons/menu/2-person-with-bubble"]
  JUMP [+2]
  GETTABLEKS R21 R9 K41 ["icons/menu/platformChatOff"]
  JUMPIFNOT R20 [+3]
  GETTABLEKS R22 R9 K42 ["icons/menu/2-person-with-bubble-on"]
  JUMP [+2]
  GETTABLEKS R22 R9 K43 ["icons/menu/platformChatOn"]
  DUPCLOSURE R23 K44 [PROTO_0]
  CAPTURE VAL R19
  CAPTURE VAL R16
  DUPCLOSURE R24 K45 [PROTO_1]
  CAPTURE VAL R19
  CAPTURE VAL R16
  DUPCLOSURE R25 K46 [PROTO_19]
  CAPTURE VAL R18
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE VAL R16
  CAPTURE VAL R24
  CAPTURE VAL R15
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETGLOBAL R25 K47 ["ConnectIcon"]
  GETGLOBAL R25 K47 ["ConnectIcon"]
  RETURN R25 1