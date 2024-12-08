PROTO_0:
  NEWTABLE R1 2 0
  LOADN R2 144
  SETTABLEKS R2 R1 K0 ["StatusCode"]
  GETUPVAL R2 0
  NEWTABLE R4 2 0
  LOADK R5 K1 ["INVALID_ARGUMENT"]
  SETTABLEKS R5 R4 K2 ["code"]
  SETTABLEKS R0 R4 K3 ["message"]
  NAMECALL R2 R2 K4 ["JSONEncode"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["Body"]
  RETURN R1 1

PROTO_1:
  GETGLOBAL R1 K0 ["verifyPlayer"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETUPVAL R2 0
  NAMECALL R2 R2 K1 ["GetPlayers"]
  CALL R2 1 1
  GETIMPORT R3 K3 [ipairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R8 R7 K4 ["UserId"]
  GETTABLEKS R9 R0 K4 ["UserId"]
  JUMPIFNOTEQ R8 R9 [+3]
  LOADNIL R8
  RETURN R8 1
  FORGLOOP R3 2 [inext] [-9]
  GETGLOBAL R3 K5 ["returnInvalidArgumentError"]
  LOADK R4 K6 ["Player not found on server."]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_2:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["Instance"] [+5]
  GETTABLEKS R1 R0 K3 ["ClassName"]
  JUMPIFEQKS R1 K4 ["Player"] [+6]
  GETGLOBAL R1 K5 ["returnInvalidArgumentError"]
  LOADK R2 K6 ["user argument not a Player instance."]
  CALL R1 1 -1
  RETURN R1 -1
  LOADNIL R1
  RETURN R1 1

PROTO_3:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["string"] [+6]
  GETGLOBAL R1 K3 ["returnInvalidArgumentError"]
  LOADK R2 K4 ["Argument not a string."]
  CALL R1 1 -1
  RETURN R1 -1
  LOADNIL R1
  RETURN R1 1

PROTO_4:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["number"] [+6]
  GETGLOBAL R1 K3 ["returnInvalidArgumentError"]
  LOADK R2 K4 ["Argument not a number."]
  CALL R1 1 -1
  RETURN R1 -1
  LOADNIL R1
  RETURN R1 1

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsStudio"]
  CALL R0 1 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K1 ["user"]
  RETURN R0 1
  LOADK R0 K2 ["rcc"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["BaseUrl"]
  NAMECALL R4 R4 K1 ["lower"]
  CALL R4 1 1
  GETIMPORT R5 K4 [string.gsub]
  MOVE R6 R4
  LOADK R7 K5 ["http:"]
  LOADK R8 K6 ["https:"]
  CALL R5 3 1
  MOVE R4 R5
  GETIMPORT R5 K4 [string.gsub]
  MOVE R6 R4
  LOADK R7 K7 ["www"]
  LOADK R8 K8 ["apis"]
  CALL R5 3 1
  GETIMPORT R6 K10 [string.format]
  LOADK R7 K11 ["%s%s/cloud/v2/users/%d/inventory-items"]
  MOVE R8 R5
  GETGLOBAL R9 K12 ["getUrlPrefix"]
  CALL R9 0 1
  MOVE R10 R0
  CALL R6 4 1
  JUMPIFNOTEQKNIL R1 [+6]
  JUMPIFNOTEQKNIL R2 [+4]
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R6 1
  NEWTABLE R7 0 0
  JUMPIFEQKNIL R1 [+11]
  MOVE R9 R7
  GETIMPORT R10 K10 [string.format]
  LOADK R11 K13 ["maxPageSize=%d"]
  MOVE R12 R1
  CALL R10 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K16 [table.insert]
  CALL R8 -1 0
  JUMPIFEQKNIL R2 [+11]
  MOVE R9 R7
  GETIMPORT R10 K10 [string.format]
  LOADK R11 K17 ["pageToken=%s"]
  MOVE R12 R2
  CALL R10 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K16 [table.insert]
  CALL R8 -1 0
  JUMPIFEQKNIL R3 [+11]
  MOVE R9 R7
  GETIMPORT R10 K10 [string.format]
  LOADK R11 K18 ["filter=%s"]
  MOVE R12 R3
  CALL R10 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K16 [table.insert]
  CALL R8 -1 0
  GETIMPORT R8 K10 [string.format]
  LOADK R9 K19 ["%s?%s"]
  MOVE R10 R6
  GETIMPORT R11 K21 [table.concat]
  MOVE R12 R7
  LOADK R13 K22 ["&"]
  CALL R11 2 -1
  CALL R8 -1 1
  MOVE R6 R8
  RETURN R6 1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["user"]
  JUMPIFNOTEQKNIL R1 [+6]
  GETGLOBAL R1 K1 ["returnInvalidArgumentError"]
  LOADK R2 K2 ["user argument was not provided."]
  CALL R1 1 -1
  RETURN R1 -1
  GETGLOBAL R1 K3 ["verifyPlayerOnServer"]
  GETTABLEKS R2 R0 K0 ["user"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R2 R0 K4 ["maxPageSize"]
  JUMPIFEQKNIL R2 [+10]
  GETGLOBAL R2 K5 ["verifyNumber"]
  GETTABLEKS R3 R0 K4 ["maxPageSize"]
  CALL R2 1 1
  MOVE R1 R2
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R2 R0 K6 ["pageToken"]
  JUMPIFEQKNIL R2 [+10]
  GETGLOBAL R2 K7 ["verifyString"]
  GETTABLEKS R3 R0 K6 ["pageToken"]
  CALL R2 1 1
  MOVE R1 R2
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R2 R0 K8 ["filter"]
  JUMPIFEQKNIL R2 [+10]
  GETGLOBAL R2 K7 ["verifyString"]
  GETTABLEKS R3 R0 K8 ["filter"]
  CALL R2 1 1
  MOVE R1 R2
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETUPVAL R2 0
  NEWTABLE R4 2 0
  GETGLOBAL R5 K9 ["createListInventoryItemsUrl"]
  GETTABLEKS R7 R0 K0 ["user"]
  GETTABLEKS R6 R7 K10 ["UserId"]
  GETTABLEKS R7 R0 K4 ["maxPageSize"]
  GETTABLEKS R8 R0 K6 ["pageToken"]
  GETTABLEKS R9 R0 K8 ["filter"]
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["Url"]
  LOADK R5 K12 ["GET"]
  SETTABLEKS R5 R4 K13 ["Request_Type"]
  NAMECALL R2 R2 K14 ["HttpRequestAsync"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["OpenCloudService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["Players"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["RunService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  DUPCLOSURE R5 K8 [PROTO_0]
  CAPTURE VAL R1
  SETGLOBAL R5 K9 ["returnInvalidArgumentError"]
  DUPCLOSURE R5 K10 [PROTO_1]
  CAPTURE VAL R3
  SETGLOBAL R5 K11 ["verifyPlayerOnServer"]
  DUPCLOSURE R5 K12 [PROTO_2]
  SETGLOBAL R5 K13 ["verifyPlayer"]
  DUPCLOSURE R5 K14 [PROTO_3]
  SETGLOBAL R5 K15 ["verifyString"]
  DUPCLOSURE R5 K16 [PROTO_4]
  SETGLOBAL R5 K17 ["verifyNumber"]
  DUPCLOSURE R5 K18 [PROTO_5]
  CAPTURE VAL R4
  SETGLOBAL R5 K19 ["getUrlPrefix"]
  DUPCLOSURE R5 K20 [PROTO_6]
  CAPTURE VAL R0
  SETGLOBAL R5 K21 ["createListInventoryItemsUrl"]
  DUPCLOSURE R5 K22 [PROTO_7]
  CAPTURE VAL R2
  SETGLOBAL R5 K23 ["listInventoryItems"]
  LOADK R7 K24 ["v2"]
  LOADK R8 K23 ["listInventoryItems"]
  GETGLOBAL R9 K23 ["listInventoryItems"]
  NAMECALL R5 R2 K25 ["RegisterOpenCloud"]
  CALL R5 4 0
  NAMECALL R5 R2 K26 ["RegistrationComplete"]
  CALL R5 1 0
  RETURN R0 0
