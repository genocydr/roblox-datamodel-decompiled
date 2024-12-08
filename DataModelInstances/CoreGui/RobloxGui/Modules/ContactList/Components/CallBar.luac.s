PROTO_0:
  DIVK R2 R0 K0 [3600]
  FASTCALL1 MATH_FLOOR R2 [+2]
  GETIMPORT R1 K3 [math.floor]
  CALL R1 1 1
  MODK R4 R0 K0 [3600]
  DIVK R3 R4 K4 [60]
  FASTCALL1 MATH_FLOOR R3 [+2]
  GETIMPORT R2 K3 [math.floor]
  CALL R2 1 1
  MODK R3 R0 K4 [60]
  GETIMPORT R4 K7 [string.format]
  LOADK R5 K8 ["%02d"]
  MOVE R6 R1
  CALL R4 2 1
  GETIMPORT R5 K7 [string.format]
  LOADK R6 K8 ["%02d"]
  MOVE R7 R2
  CALL R5 2 1
  GETIMPORT R6 K7 [string.format]
  LOADK R7 K8 ["%02d"]
  MOVE R8 R3
  CALL R6 2 1
  LOADK R7 K9 [""]
  LOADN R8 0
  JUMPIFNOTLT R8 R1 [+8]
  MOVE R8 R4
  LOADK R9 K10 [":"]
  MOVE R10 R5
  LOADK R11 K10 [":"]
  MOVE R12 R6
  CONCAT R7 R8 R12
  RETURN R7 1
  MOVE R8 R5
  LOADK R9 K10 [":"]
  MOVE R10 R6
  CONCAT R7 R8 R10
  RETURN R7 1

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Enums"]
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["Connecting"]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R2 K3 ["Feature.Call.Label.Calling"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Enums"]
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K4 ["Teleporting"]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R2 K5 ["Feature.Call.Label.Teleporting"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Enums"]
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K6 ["Active"]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R2 K7 ["Feature.Call.Label.RobloxCall"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Enums"]
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K8 ["Idle"]
  JUMPIFNOTEQ R0 R2 [+3]
  LOADK R2 K9 ["Feature.Call.Label.CallEnded"]
  RETURN R2 1
  GETIMPORT R2 K11 [error]
  LOADK R4 K12 ["Invalid status for call bar: "]
  MOVE R5 R0
  LOADK R6 K13 ["."]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  GETTABLEKS R1 R2 K2 ["callId"]
  RETURN R1 1
  LOADK R1 K3 [""]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  GETTABLEKS R1 R2 K2 ["callerId"]
  RETURN R1 1
  LOADK R1 K3 [""]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  GETTABLEKS R1 R2 K2 ["calleeId"]
  RETURN R1 1
  LOADK R1 K3 [""]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  GETTABLEKS R1 R2 K2 ["status"]
  RETURN R1 1
  LOADK R1 K3 [""]
  RETURN R1 1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  JUMPIFEQKNIL R2 [+8]
  GETTABLEKS R3 R0 K0 ["Call"]
  GETTABLEKS R2 R3 K1 ["currentCall"]
  GETTABLEKS R1 R2 K2 ["instanceId"]
  RETURN R1 1
  LOADK R1 K3 [""]
  RETURN R1 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["Call"]
  GETTABLEKS R1 R2 K1 ["currentCall"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K2 ["callerId"]
  JUMPIFNOTEQ R2 R3 [+4]
  GETTABLEKS R2 R1 K3 ["calleeId"]
  RETURN R2 1
  GETTABLEKS R2 R1 K2 ["callerId"]
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

PROTO_8:
  LOADB R0 0
  GETUPVAL R1 0
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  CALL R1 0 0
  LOADB R0 1
  JUMP [+51]
  GETUPVAL R1 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["Enums"]
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["Active"]
  JUMPIFNOTEQ R1 R2 [+25]
  GETUPVAL R1 4
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K3 ["HangUp"]
  GETTABLEKS R3 R4 K4 ["Name"]
  DUPTABLE R4 K6 [{"Volume"}]
  LOADK R5 K7 [0.5]
  SETTABLEKS R5 R4 K5 ["Volume"]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K8 ["Iris"]
  NAMECALL R1 R1 K9 ["PlaySound"]
  CALL R1 4 0
  GETUPVAL R2 7
  GETTABLEKS R1 R2 K10 ["callProtocol"]
  GETUPVAL R3 8
  NAMECALL R1 R1 K11 ["finishCall"]
  CALL R1 2 0
  JUMP [+17]
  GETUPVAL R1 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["Enums"]
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K12 ["Connecting"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETUPVAL R2 7
  GETTABLEKS R1 R2 K10 ["callProtocol"]
  GETUPVAL R3 8
  NAMECALL R1 R1 K13 ["cancelCall"]
  CALL R1 2 0
  GETUPVAL R2 9
  GETTABLEKS R1 R2 K14 ["fireEvent"]
  GETUPVAL R3 10
  GETTABLEKS R2 R3 K15 ["CallBarHangUpClicked"]
  DUPTABLE R3 K22 [{"eventTimestampMs", "callerUserId", "calleeUserId", "callId", "callStatus", "isRetry"}]
  GETIMPORT R5 K26 [os.time]
  CALL R5 0 1
  MULK R4 R5 K23 [1000]
  SETTABLEKS R4 R3 K16 ["eventTimestampMs"]
  GETUPVAL R4 11
  SETTABLEKS R4 R3 K17 ["callerUserId"]
  GETUPVAL R4 12
  SETTABLEKS R4 R3 K18 ["calleeUserId"]
  GETUPVAL R4 8
  SETTABLEKS R4 R3 K19 ["callId"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K20 ["callStatus"]
  SETTABLEKS R0 R3 K21 ["isRetry"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["activeUtc"]
  JUMPIFNOTEQKN R0 K1 [0] [+2]
  RETURN R0 0
  LOADN R1 0
  GETIMPORT R3 K4 [os.time]
  CALL R3 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["activeUtc"]
  DIVK R4 R5 K5 [1000]
  SUB R2 R3 R4
  FASTCALL2 MATH_MAX R1 R2 [+3]
  GETIMPORT R0 K8 [math.max]
  CALL R0 2 1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Heartbeat"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["Call"]
  GETTABLEKS R1 R2 K1 ["currentCall"]
  JUMPIFNOT R1 [+13]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K2 ["callerId"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETTABLEKS R3 R1 K4 ["calleeCombinedName"]
  ORK R2 R3 K3 [""]
  RETURN R2 1
  GETTABLEKS R3 R1 K5 ["callerCombinedName"]
  ORK R2 R3 K3 [""]
  RETURN R2 1
  LOADK R2 K3 [""]
  RETURN R2 1

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 2
  CALL R2 0 1
  GETUPVAL R3 3
  CALL R3 0 1
  GETTABLEKS R4 R2 K2 ["Theme"]
  GETTABLEKS R5 R2 K3 ["Font"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K4 ["useState"]
  LOADK R7 K5 ["00:00"]
  CALL R6 1 2
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K6 ["useCallback"]
  DUPCLOSURE R9 K7 [PROTO_2]
  CALL R8 1 1
  GETUPVAL R9 5
  MOVE R10 R8
  CALL R9 1 1
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K6 ["useCallback"]
  DUPCLOSURE R11 K8 [PROTO_3]
  CALL R10 1 1
  GETUPVAL R11 5
  MOVE R12 R10
  CALL R11 1 1
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K6 ["useCallback"]
  DUPCLOSURE R13 K9 [PROTO_4]
  CALL R12 1 1
  GETUPVAL R13 5
  MOVE R14 R12
  CALL R13 1 1
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K6 ["useCallback"]
  DUPCLOSURE R15 K10 [PROTO_5]
  CALL R14 1 1
  GETUPVAL R15 5
  MOVE R16 R14
  CALL R15 1 1
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K6 ["useCallback"]
  DUPCLOSURE R17 K11 [PROTO_6]
  CALL R16 1 1
  GETUPVAL R17 5
  MOVE R18 R16
  CALL R17 1 1
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K6 ["useCallback"]
  DUPCLOSURE R19 K12 [PROTO_7]
  CAPTURE UPVAL U6
  CALL R18 1 1
  GETUPVAL R19 5
  MOVE R20 R18
  CALL R19 1 1
  LOADNIL R20
  JUMPIFNOT R19 [+4]
  GETUPVAL R21 7
  MOVE R22 R19
  CALL R21 1 1
  MOVE R20 R21
  GETUPVAL R21 8
  DUPTABLE R22 K14 [{"callStatusLabel"}]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K15 ["Enums"]
  GETTABLEKS R25 R26 K16 ["Status"]
  GETTABLEKS R24 R25 K17 ["Connecting"]
  JUMPIFNOTEQ R15 R24 [+3]
  LOADK R23 K18 ["Feature.Call.Label.Calling"]
  JUMP [+41]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K15 ["Enums"]
  GETTABLEKS R25 R26 K16 ["Status"]
  GETTABLEKS R24 R25 K19 ["Teleporting"]
  JUMPIFNOTEQ R15 R24 [+3]
  LOADK R23 K20 ["Feature.Call.Label.Teleporting"]
  JUMP [+30]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K15 ["Enums"]
  GETTABLEKS R25 R26 K16 ["Status"]
  GETTABLEKS R24 R25 K21 ["Active"]
  JUMPIFNOTEQ R15 R24 [+3]
  LOADK R23 K22 ["Feature.Call.Label.RobloxCall"]
  JUMP [+19]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K15 ["Enums"]
  GETTABLEKS R25 R26 K16 ["Status"]
  GETTABLEKS R24 R25 K23 ["Idle"]
  JUMPIFNOTEQ R15 R24 [+3]
  LOADK R23 K24 ["Feature.Call.Label.CallEnded"]
  JUMP [+8]
  GETIMPORT R24 K26 [error]
  LOADK R26 K27 ["Invalid status for call bar: "]
  MOVE R27 R15
  LOADK R28 K28 ["."]
  CONCAT R25 R26 R28
  CALL R24 1 0
  LOADNIL R23
  SETTABLEKS R23 R22 K13 ["callStatusLabel"]
  CALL R21 1 1
  GETTABLEKS R22 R21 K13 ["callStatusLabel"]
  LOADB R23 0
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K15 ["Enums"]
  GETTABLEKS R25 R26 K16 ["Status"]
  GETTABLEKS R24 R25 K23 ["Idle"]
  JUMPIFNOTEQ R15 R24 [+9]
  GETIMPORT R25 K30 [game]
  GETTABLEKS R24 R25 K31 ["JobId"]
  JUMPIFEQ R24 R17 [+2]
  LOADB R23 0 +1
  LOADB R23 1
  LOADB R24 1
  GETUPVAL R28 9
  GETTABLEKS R27 R28 K15 ["Enums"]
  GETTABLEKS R26 R27 K16 ["Status"]
  GETTABLEKS R25 R26 K21 ["Active"]
  JUMPIFEQ R15 R25 [+12]
  LOADB R24 1
  GETUPVAL R28 9
  GETTABLEKS R27 R28 K15 ["Enums"]
  GETTABLEKS R26 R27 K16 ["Status"]
  GETTABLEKS R25 R26 K17 ["Connecting"]
  JUMPIFEQ R15 R25 [+2]
  MOVE R24 R23
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K6 ["useCallback"]
  NEWCLOSURE R26 P6
  CAPTURE VAL R23
  CAPTURE UPVAL U10
  CAPTURE VAL R15
  CAPTURE UPVAL U9
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE UPVAL U14
  CAPTURE VAL R11
  CAPTURE VAL R13
  NEWTABLE R27 0 3
  MOVE R28 R15
  GETTABLEKS R29 R1 K32 ["callProtocol"]
  MOVE R30 R23
  SETLIST R27 R28 3 [1]
  CALL R25 2 1
  JUMPIFNOT R23 [+5]
  GETTABLEKS R27 R2 K2 ["Theme"]
  GETTABLEKS R26 R27 K33 ["SystemPrimaryDefault"]
  JUMP [+4]
  GETTABLEKS R27 R2 K2 ["Theme"]
  GETTABLEKS R26 R27 K34 ["Alert"]
  JUMPIFNOT R23 [+2]
  LOADK R27 K35 ["rbxassetid://15123605982"]
  JUMP [+1]
  LOADK R27 K36 ["rbxassetid://15239778319"]
  JUMPIFNOT R23 [+4]
  GETUPVAL R29 15
  GETTABLEKS R28 R29 K37 ["Slate"]
  JUMP [+3]
  GETUPVAL R29 15
  GETTABLEKS R28 R29 K38 ["White"]
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K39 ["useEffect"]
  NEWCLOSURE R30 P7
  CAPTURE UPVAL U16
  CAPTURE VAL R1
  CAPTURE UPVAL U17
  CAPTURE VAL R7
  NEWTABLE R31 0 1
  GETTABLEKS R32 R1 K40 ["activeUtc"]
  SETLIST R31 R32 1 [1]
  CALL R29 2 0
  GETUPVAL R31 18
  GETTABLEKS R30 R31 K41 ["Hooks"]
  GETTABLEKS R29 R30 K42 ["useUserProfilesFetch"]
  DUPTABLE R30 K45 [{"userIds", "query"}]
  NEWTABLE R31 0 1
  FASTCALL1 TOSTRING R19 [+3]
  MOVE R33 R19
  GETIMPORT R32 K47 [tostring]
  CALL R32 1 1
  SETLIST R31 R32 1 [1]
  SETTABLEKS R31 R30 K43 ["userIds"]
  GETUPVAL R33 18
  GETTABLEKS R32 R33 K48 ["Queries"]
  GETTABLEKS R31 R32 K49 ["userProfilesCombinedNameAndUsernameByUserIds"]
  SETTABLEKS R31 R30 K44 ["query"]
  CALL R29 1 1
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K6 ["useCallback"]
  DUPCLOSURE R31 K50 [PROTO_12]
  CAPTURE UPVAL U6
  CALL R30 1 1
  GETUPVAL R31 5
  MOVE R32 R30
  CALL R31 1 1
  LOADK R32 K51 [""]
  GETTABLEKS R33 R29 K52 ["data"]
  JUMPIFNOT R33 [+11]
  GETUPVAL R35 18
  GETTABLEKS R34 R35 K53 ["Selectors"]
  GETTABLEKS R33 R34 K54 ["getCombinedNameFromId"]
  GETTABLEKS R34 R29 K52 ["data"]
  MOVE R35 R19
  CALL R33 2 1
  MOVE R32 R33
  JUMP [+4]
  GETTABLEKS R33 R29 K25 ["error"]
  JUMPIFNOT R33 [+1]
  MOVE R32 R31
  GETUPVAL R34 4
  GETTABLEKS R33 R34 K55 ["createElement"]
  LOADK R34 K56 ["Frame"]
  DUPTABLE R35 K63 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R36 K66 [UDim2.fromOffset]
  GETTABLEKS R38 R1 K67 ["size"]
  GETTABLEKS R37 R38 K68 ["X"]
  GETTABLEKS R39 R1 K67 ["size"]
  GETTABLEKS R38 R39 K69 ["Y"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K57 ["Size"]
  GETTABLEKS R36 R1 K70 ["position"]
  SETTABLEKS R36 R35 K58 ["Position"]
  GETIMPORT R36 K73 [Vector2.new]
  LOADN R37 0
  LOADN R38 0
  CALL R36 2 1
  SETTABLEKS R36 R35 K59 ["AnchorPoint"]
  GETTABLEKS R37 R4 K74 ["BackgroundMuted"]
  GETTABLEKS R36 R37 K75 ["Color"]
  SETTABLEKS R36 R35 K60 ["BackgroundColor3"]
  GETTABLEKS R37 R4 K74 ["BackgroundMuted"]
  GETTABLEKS R36 R37 K76 ["Transparency"]
  SETTABLEKS R36 R35 K61 ["BackgroundTransparency"]
  LOADN R36 0
  SETTABLEKS R36 R35 K62 ["BorderSizePixel"]
  DUPTABLE R36 K83 [{"UICorner", "UIListLayout", "UIPadding", "ProfileImage", "Content", "ActionButton"}]
  GETUPVAL R38 4
  GETTABLEKS R37 R38 K55 ["createElement"]
  LOADK R38 K77 ["UICorner"]
  DUPTABLE R39 K85 [{"CornerRadius"}]
  GETIMPORT R40 K87 [UDim.new]
  LOADK R41 K88 [0.5]
  LOADN R42 0
  CALL R40 2 1
  SETTABLEKS R40 R39 K84 ["CornerRadius"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K77 ["UICorner"]
  GETUPVAL R38 4
  GETTABLEKS R37 R38 K55 ["createElement"]
  LOADK R38 K78 ["UIListLayout"]
  DUPTABLE R39 K93 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R40 K96 [Enum.FillDirection.Horizontal]
  SETTABLEKS R40 R39 K89 ["FillDirection"]
  GETIMPORT R40 K87 [UDim.new]
  LOADN R41 0
  LOADN R42 8
  CALL R40 2 1
  SETTABLEKS R40 R39 K90 ["Padding"]
  GETIMPORT R40 K98 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R40 R39 K91 ["SortOrder"]
  GETIMPORT R40 K100 [Enum.VerticalAlignment.Center]
  SETTABLEKS R40 R39 K92 ["VerticalAlignment"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K78 ["UIListLayout"]
  GETUPVAL R38 4
  GETTABLEKS R37 R38 K55 ["createElement"]
  LOADK R38 K79 ["UIPadding"]
  DUPTABLE R39 K105 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R40 K87 [UDim.new]
  LOADN R41 0
  LOADN R42 4
  CALL R40 2 1
  SETTABLEKS R40 R39 K101 ["PaddingLeft"]
  GETIMPORT R40 K87 [UDim.new]
  LOADN R41 0
  LOADN R42 4
  CALL R40 2 1
  SETTABLEKS R40 R39 K102 ["PaddingTop"]
  GETIMPORT R40 K87 [UDim.new]
  LOADN R41 0
  LOADN R42 4
  CALL R40 2 1
  SETTABLEKS R40 R39 K103 ["PaddingRight"]
  GETIMPORT R40 K87 [UDim.new]
  LOADN R41 0
  LOADN R42 4
  CALL R40 2 1
  SETTABLEKS R40 R39 K104 ["PaddingBottom"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K79 ["UIPadding"]
  GETUPVAL R38 4
  GETTABLEKS R37 R38 K55 ["createElement"]
  GETUPVAL R38 19
  DUPTABLE R39 K107 [{"Position", "Size", "Image", "LayoutOrder"}]
  GETIMPORT R40 K66 [UDim2.fromOffset]
  LOADN R41 0
  LOADN R42 0
  CALL R40 2 1
  SETTABLEKS R40 R39 K58 ["Position"]
  GETIMPORT R40 K66 [UDim2.fromOffset]
  LOADN R41 36
  LOADN R42 36
  CALL R40 2 1
  SETTABLEKS R40 R39 K57 ["Size"]
  SETTABLEKS R20 R39 K106 ["Image"]
  LOADN R40 1
  SETTABLEKS R40 R39 K97 ["LayoutOrder"]
  DUPTABLE R40 K108 [{"UICorner"}]
  GETUPVAL R42 4
  GETTABLEKS R41 R42 K55 ["createElement"]
  LOADK R42 K77 ["UICorner"]
  DUPTABLE R43 K85 [{"CornerRadius"}]
  GETIMPORT R44 K87 [UDim.new]
  LOADN R45 1
  LOADN R46 0
  CALL R44 2 1
  SETTABLEKS R44 R43 K84 ["CornerRadius"]
  CALL R41 2 1
  SETTABLEKS R41 R40 K77 ["UICorner"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K80 ["ProfileImage"]
  GETUPVAL R38 4
  GETTABLEKS R37 R38 K55 ["createElement"]
  LOADK R38 K56 ["Frame"]
  DUPTABLE R39 K110 [{"AutomaticSize", "Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R40 K111 [Enum.AutomaticSize.Y]
  SETTABLEKS R40 R39 K109 ["AutomaticSize"]
  GETIMPORT R40 K112 [UDim2.new]
  LOADN R41 1
  LOADN R42 168
  LOADN R43 0
  LOADN R44 0
  CALL R40 4 1
  SETTABLEKS R40 R39 K57 ["Size"]
  LOADN R40 1
  SETTABLEKS R40 R39 K61 ["BackgroundTransparency"]
  LOADN R40 0
  SETTABLEKS R40 R39 K62 ["BorderSizePixel"]
  LOADN R40 2
  SETTABLEKS R40 R39 K97 ["LayoutOrder"]
  DUPTABLE R40 K115 [{"UIListLayout", "DisplayName", "DetailsText"}]
  GETUPVAL R42 4
  GETTABLEKS R41 R42 K55 ["createElement"]
  LOADK R42 K78 ["UIListLayout"]
  DUPTABLE R43 K116 [{"FillDirection", "SortOrder"}]
  GETIMPORT R44 K118 [Enum.FillDirection.Vertical]
  SETTABLEKS R44 R43 K89 ["FillDirection"]
  GETIMPORT R44 K98 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R44 R43 K91 ["SortOrder"]
  CALL R41 2 1
  SETTABLEKS R41 R40 K78 ["UIListLayout"]
  GETUPVAL R42 4
  GETTABLEKS R41 R42 K55 ["createElement"]
  LOADK R42 K119 ["TextLabel"]
  DUPTABLE R43 K126 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder", "Text", "TextColor3", "TextSize", "TextTransparency", "TextTruncate", "TextXAlignment"}]
  GETIMPORT R44 K112 [UDim2.new]
  LOADN R45 1
  LOADN R46 0
  LOADN R47 0
  LOADN R48 22
  CALL R44 4 1
  SETTABLEKS R44 R43 K57 ["Size"]
  LOADN R44 1
  SETTABLEKS R44 R43 K61 ["BackgroundTransparency"]
  LOADN R44 0
  SETTABLEKS R44 R43 K62 ["BorderSizePixel"]
  GETTABLEKS R45 R5 K127 ["CaptionHeader"]
  GETTABLEKS R44 R45 K3 ["Font"]
  SETTABLEKS R44 R43 K3 ["Font"]
  LOADN R44 1
  SETTABLEKS R44 R43 K97 ["LayoutOrder"]
  SETTABLEKS R32 R43 K120 ["Text"]
  GETTABLEKS R45 R4 K128 ["TextEmphasis"]
  GETTABLEKS R44 R45 K75 ["Color"]
  SETTABLEKS R44 R43 K121 ["TextColor3"]
  GETTABLEKS R45 R5 K129 ["BaseSize"]
  GETTABLEKS R47 R5 K127 ["CaptionHeader"]
  GETTABLEKS R46 R47 K130 ["RelativeSize"]
  MUL R44 R45 R46
  SETTABLEKS R44 R43 K122 ["TextSize"]
  GETTABLEKS R45 R4 K128 ["TextEmphasis"]
  GETTABLEKS R44 R45 K76 ["Transparency"]
  SETTABLEKS R44 R43 K123 ["TextTransparency"]
  GETIMPORT R44 K132 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R44 R43 K124 ["TextTruncate"]
  GETIMPORT R44 K134 [Enum.TextXAlignment.Left]
  SETTABLEKS R44 R43 K125 ["TextXAlignment"]
  CALL R41 2 1
  SETTABLEKS R41 R40 K113 ["DisplayName"]
  GETUPVAL R42 4
  GETTABLEKS R41 R42 K55 ["createElement"]
  LOADK R42 K119 ["TextLabel"]
  DUPTABLE R43 K126 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder", "Text", "TextColor3", "TextSize", "TextTransparency", "TextTruncate", "TextXAlignment"}]
  GETIMPORT R44 K112 [UDim2.new]
  LOADN R45 1
  LOADN R46 0
  LOADN R47 0
  LOADN R48 14
  CALL R44 4 1
  SETTABLEKS R44 R43 K57 ["Size"]
  LOADN R44 1
  SETTABLEKS R44 R43 K61 ["BackgroundTransparency"]
  LOADN R44 0
  SETTABLEKS R44 R43 K62 ["BorderSizePixel"]
  GETTABLEKS R45 R5 K135 ["Footer"]
  GETTABLEKS R44 R45 K3 ["Font"]
  SETTABLEKS R44 R43 K3 ["Font"]
  LOADN R44 2
  SETTABLEKS R44 R43 K97 ["LayoutOrder"]
  GETUPVAL R48 9
  GETTABLEKS R47 R48 K15 ["Enums"]
  GETTABLEKS R46 R47 K16 ["Status"]
  GETTABLEKS R45 R46 K21 ["Active"]
  JUMPIFNOTEQ R15 R45 [+3]
  MOVE R44 R6
  JUMP [+1]
  MOVE R44 R22
  SETTABLEKS R44 R43 K120 ["Text"]
  GETUPVAL R45 15
  GETTABLEKS R44 R45 K38 ["White"]
  SETTABLEKS R44 R43 K121 ["TextColor3"]
  GETTABLEKS R45 R5 K129 ["BaseSize"]
  GETTABLEKS R47 R5 K135 ["Footer"]
  GETTABLEKS R46 R47 K130 ["RelativeSize"]
  MUL R44 R45 R46
  SETTABLEKS R44 R43 K122 ["TextSize"]
  LOADK R44 K136 [0.4]
  SETTABLEKS R44 R43 K123 ["TextTransparency"]
  GETIMPORT R44 K132 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R44 R43 K124 ["TextTruncate"]
  GETIMPORT R44 K134 [Enum.TextXAlignment.Left]
  SETTABLEKS R44 R43 K125 ["TextXAlignment"]
  CALL R41 2 1
  SETTABLEKS R41 R40 K114 ["DetailsText"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K81 ["Content"]
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K15 ["Enums"]
  GETTABLEKS R39 R40 K16 ["Status"]
  GETTABLEKS R38 R39 K137 ["Failed"]
  JUMPIFEQ R15 R38 [+72]
  GETUPVAL R38 4
  GETTABLEKS R37 R38 K55 ["createElement"]
  LOADK R38 K138 ["ImageButton"]
  NEWTABLE R39 16 0
  GETIMPORT R40 K66 [UDim2.fromOffset]
  LOADN R41 0
  LOADN R42 0
  CALL R40 2 1
  SETTABLEKS R40 R39 K58 ["Position"]
  SETTABLEKS R24 R39 K21 ["Active"]
  GETIMPORT R40 K73 [Vector2.new]
  LOADN R41 1
  LOADN R42 1
  CALL R40 2 1
  SETTABLEKS R40 R39 K59 ["AnchorPoint"]
  LOADN R40 3
  SETTABLEKS R40 R39 K97 ["LayoutOrder"]
  GETIMPORT R40 K66 [UDim2.fromOffset]
  LOADN R41 36
  LOADN R42 36
  CALL R40 2 1
  SETTABLEKS R40 R39 K57 ["Size"]
  GETTABLEKS R40 R26 K76 ["Transparency"]
  SETTABLEKS R40 R39 K61 ["BackgroundTransparency"]
  GETTABLEKS R40 R26 K75 ["Color"]
  SETTABLEKS R40 R39 K60 ["BackgroundColor3"]
  LOADN R40 0
  SETTABLEKS R40 R39 K62 ["BorderSizePixel"]
  SETTABLEKS R27 R39 K106 ["Image"]
  SETTABLEKS R28 R39 K139 ["ImageColor3"]
  GETUPVAL R42 4
  GETTABLEKS R41 R42 K140 ["Event"]
  GETTABLEKS R40 R41 K141 ["Activated"]
  SETTABLE R25 R39 R40
  DUPTABLE R40 K108 [{"UICorner"}]
  GETUPVAL R42 4
  GETTABLEKS R41 R42 K55 ["createElement"]
  LOADK R42 K77 ["UICorner"]
  DUPTABLE R43 K85 [{"CornerRadius"}]
  GETIMPORT R44 K87 [UDim.new]
  LOADN R45 0
  LOADN R46 36
  CALL R44 2 1
  SETTABLEKS R44 R43 K84 ["CornerRadius"]
  CALL R41 2 1
  SETTABLEKS R41 R40 K77 ["UICorner"]
  CALL R37 3 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K82 ["ActionButton"]
  CALL R33 3 -1
  RETURN R33 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R1 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R1 K10 ["Workspace"]
  GETTABLEKS R6 R7 K7 ["Packages"]
  GETTABLEKS R5 R6 K11 ["CallProtocol"]
  CALL R4 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R1 K10 ["Workspace"]
  GETTABLEKS R8 R9 K7 ["Packages"]
  GETTABLEKS R7 R8 K12 ["SoundManager"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K13 ["Sounds"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R1 K10 ["Workspace"]
  GETTABLEKS R9 R10 K7 ["Packages"]
  GETTABLEKS R8 R9 K12 ["SoundManager"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K14 ["SoundGroups"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R1 K10 ["Workspace"]
  GETTABLEKS R10 R11 K7 ["Packages"]
  GETTABLEKS R9 R10 K12 ["SoundManager"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K12 ["SoundManager"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R1 K10 ["Workspace"]
  GETTABLEKS R10 R11 K7 ["Packages"]
  GETTABLEKS R9 R10 K15 ["UserProfiles"]
  CALL R8 1 1
  LOADK R11 K16 ["RobloxGui"]
  NAMECALL R9 R0 K17 ["WaitForChild"]
  CALL R9 2 1
  GETTABLEKS R11 R9 K18 ["Modules"]
  GETTABLEKS R10 R11 K19 ["ContactList"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R10 K20 ["dependencies"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R10 K21 ["Analytics"]
  GETTABLEKS R13 R14 K22 ["useAnalytics"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R10 K21 ["Analytics"]
  GETTABLEKS R14 R15 K23 ["EventNamesEnum"]
  CALL R13 1 1
  GETTABLEKS R14 R11 K24 ["UIBlox"]
  GETTABLEKS R15 R11 K25 ["RoduxCall"]
  GETTABLEKS R16 R11 K26 ["getStandardSizeAvatarHeadShotRbxthumb"]
  GETTABLEKS R17 R11 K27 ["teleportToRootPlace"]
  GETTABLEKS R20 R14 K28 ["App"]
  GETTABLEKS R19 R20 K29 ["Style"]
  GETTABLEKS R18 R19 K30 ["Colors"]
  GETTABLEKS R21 R14 K31 ["Core"]
  GETTABLEKS R20 R21 K32 ["ImageSet"]
  GETTABLEKS R19 R20 K33 ["ImageSetLabel"]
  GETTABLEKS R22 R14 K31 ["Core"]
  GETTABLEKS R21 R22 K29 ["Style"]
  GETTABLEKS R20 R21 K34 ["useStyle"]
  GETTABLEKS R22 R11 K35 ["Hooks"]
  GETTABLEKS R21 R22 K36 ["useLocalization"]
  GETTABLEKS R23 R11 K35 ["Hooks"]
  GETTABLEKS R22 R23 K37 ["useSelector"]
  GETIMPORT R23 K1 [game]
  LOADK R25 K38 ["Players"]
  NAMECALL R23 R23 K3 ["GetService"]
  CALL R23 2 1
  GETIMPORT R24 K1 [game]
  LOADK R26 K39 ["RunService"]
  NAMECALL R24 R24 K3 ["GetService"]
  CALL R24 2 1
  GETTABLEKS R25 R23 K40 ["LocalPlayer"]
  JUMPIFNOT R25 [+3]
  GETTABLEKS R26 R25 K41 ["UserId"]
  JUMPIF R26 [+1]
  LOADN R26 0
  DUPTABLE R27 K43 [{"callProtocol"}]
  GETTABLEKS R29 R4 K11 ["CallProtocol"]
  GETTABLEKS R28 R29 K44 ["default"]
  SETTABLEKS R28 R27 K42 ["callProtocol"]
  DUPCLOSURE R28 K45 [PROTO_0]
  DUPCLOSURE R29 K46 [PROTO_1]
  CAPTURE VAL R15
  DUPCLOSURE R30 K47 [PROTO_13]
  CAPTURE VAL R3
  CAPTURE VAL R27
  CAPTURE VAL R20
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R22
  CAPTURE VAL R26
  CAPTURE VAL R16
  CAPTURE VAL R21
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R24
  CAPTURE VAL R28
  CAPTURE VAL R8
  CAPTURE VAL R19
  RETURN R30 1
