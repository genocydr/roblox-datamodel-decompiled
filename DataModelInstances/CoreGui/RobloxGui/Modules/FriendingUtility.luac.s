PROTO_0:
  GETIMPORT R0 K2 [string.gsub]
  GETUPVAL R1 0
  LOADK R2 K3 ["{userId}"]
  GETUPVAL R4 1
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K5 [tostring]
  CALL R3 1 1
  CALL R0 3 1
  GETUPVAL R1 2
  MOVE R3 R0
  NAMECALL R1 R1 K6 ["GetAsyncFullUrl"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R4 0
  NOT R3 R4
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["Should not call GetFriendCountAsync when FFlagRemoveHardCodedFriendLimitPrompt is enabled"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  LOADNIL R2
  GETIMPORT R3 K4 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CALL R3 1 2
  JUMPIF R3 [+8]
  GETIMPORT R5 K6 [print]
  GETUPVAL R6 1
  LOADK R7 K7 ["failed because"]
  MOVE R8 R4
  CALL R5 3 0
  LOADNIL R5
  RETURN R5 1
  GETUPVAL R5 3
  MOVE R7 R4
  NAMECALL R5 R5 K8 ["JSONDecode"]
  CALL R5 2 1
  MOVE R4 R5
  GETTABLEKS R5 R4 K9 ["count"]
  JUMPIFNOT R5 [+2]
  GETTABLEKS R2 R4 K9 ["count"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Should not call MaxFriendCount when FFlagRemoveHardCodedFriendLimitPrompt is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  LOADN R1 200
  RETURN R1 1

PROTO_3:
  GETIMPORT R2 K3 [Enum.FriendStatus.Friend]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K4 ["Fire"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K6 [Enum.FriendStatus.NotFriend]
  JUMPIFNOTEQ R1 R2 [+6]
  GETUPVAL R2 1
  MOVE R4 R0
  NAMECALL R2 R2 K4 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_5:
  GETUPVAL R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpRbxApiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["StarterGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["Players"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["CoreGui"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  LOADK R7 K8 ["RobloxGui"]
  NAMECALL R5 R4 K9 ["WaitForChild"]
  CALL R5 2 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R9 R5 K12 ["Modules"]
  GETTABLEKS R8 R9 K13 ["Flags"]
  GETTABLEKS R7 R8 K14 ["FFlagRemoveHardCodedFriendLimitPrompt"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K15 ["LocalPlayer"]
  JUMPIF R7 [+10]
  LOADK R10 K15 ["LocalPlayer"]
  NAMECALL R8 R3 K16 ["GetPropertyChangedSignal"]
  CALL R8 2 1
  NAMECALL R8 R8 K17 ["Wait"]
  CALL R8 1 0
  GETTABLEKS R7 R3 K15 ["LocalPlayer"]
  JUMPBACK [-11]
  NEWTABLE R8 4 0
  SETTABLEKS R8 R8 K18 ["__index"]
  GETIMPORT R10 K1 [game]
  LOADK R12 K19 ["ContentProvider"]
  NAMECALL R10 R10 K3 ["GetService"]
  CALL R10 2 1
  GETTABLEKS R9 R10 K20 ["BaseUrl"]
  NAMECALL R9 R9 K21 ["lower"]
  CALL R9 1 1
  GETIMPORT R10 K24 [string.gsub]
  MOVE R11 R9
  LOADK R12 K25 ["http:"]
  LOADK R13 K26 ["https:"]
  CALL R10 3 1
  MOVE R9 R10
  GETIMPORT R13 K24 [string.gsub]
  MOVE R14 R9
  LOADK R15 K27 ["www"]
  LOADK R16 K28 ["friends"]
  CALL R13 3 1
  MOVE R11 R13
  LOADK R12 K29 ["v1/users/{userId}/friends/count"]
  CONCAT R10 R11 R12
  DUPCLOSURE R11 K30 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R11 R8 K31 ["GetFriendCountAsync"]
  DUPCLOSURE R11 K32 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R11 R8 K33 ["MaxFriendCount"]
  GETIMPORT R11 K36 [Instance.new]
  LOADK R12 K37 ["BindableEvent"]
  CALL R11 1 1
  GETIMPORT R12 K36 [Instance.new]
  LOADK R13 K37 ["BindableEvent"]
  CALL R12 1 1
  GETTABLEKS R13 R7 K38 ["FriendStatusChanged"]
  DUPCLOSURE R15 K39 [PROTO_3]
  CAPTURE VAL R11
  CAPTURE VAL R12
  NAMECALL R13 R13 K40 ["connect"]
  CALL R13 2 0
  LOADK R15 K41 ["PlayerFriendedEvent"]
  DUPCLOSURE R16 K42 [PROTO_4]
  CAPTURE VAL R11
  NAMECALL R13 R2 K43 ["RegisterGetCore"]
  CALL R13 3 0
  LOADK R15 K44 ["PlayerUnfriendedEvent"]
  DUPCLOSURE R16 K45 [PROTO_5]
  CAPTURE VAL R12
  NAMECALL R13 R2 K43 ["RegisterGetCore"]
  CALL R13 3 0
  RETURN R8 1
