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
  GETTABLEKS R1 R0 K0 ["path"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K1 ["verifyString"]
  GETTABLEKS R2 R0 K0 ["path"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R1 R0 K2 ["id"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K1 ["verifyString"]
  GETTABLEKS R2 R0 K2 ["id"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R1 R0 K3 ["source"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K4 ["verifySource"]
  GETTABLEKS R2 R0 K3 ["source"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R1 R0 K5 ["payload"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K6 ["verifyPayload"]
  GETTABLEKS R2 R0 K5 ["payload"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["universe"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K1 ["verifyString"]
  GETTABLEKS R2 R0 K0 ["universe"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K1 ["verifyString"]
  GETTABLEKS R2 R0 K0 ["type"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R1 R0 K2 ["messageId"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K1 ["verifyString"]
  GETTABLEKS R2 R0 K2 ["messageId"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R1 R0 K3 ["joinExperience"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K4 ["verifyJoinExperience"]
  GETTABLEKS R2 R0 K3 ["joinExperience"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R1 R0 K5 ["analyticsData"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K6 ["verifyAnalyticsData"]
  GETTABLEKS R2 R0 K5 ["analyticsData"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R1 R0 K7 ["parameters"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K8 ["verifyParameters"]
  GETTABLEKS R2 R0 K7 ["parameters"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["launchData"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K1 ["verifyString"]
  GETTABLEKS R2 R0 K0 ["launchData"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["category"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K1 ["verifyString"]
  GETTABLEKS R2 R0 K0 ["category"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_6:
  GETIMPORT R1 K1 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  LOADN R6 0
  GETTABLEKS R7 R5 K2 ["stringValue"]
  JUMPIFEQKNIL R7 [+10]
  ADDK R6 R6 K3 [1]
  GETGLOBAL R7 K4 ["verifyString"]
  GETTABLEKS R8 R5 K2 ["stringValue"]
  CALL R7 1 1
  JUMPIFEQKNIL R7 [+2]
  RETURN R7 1
  GETTABLEKS R7 R5 K5 ["int64Value"]
  JUMPIFEQKNIL R7 [+10]
  ADDK R6 R6 K3 [1]
  GETGLOBAL R7 K6 ["verifyNumber"]
  GETTABLEKS R8 R5 K5 ["int64Value"]
  CALL R7 1 1
  JUMPIFEQKNIL R7 [+2]
  RETURN R7 1
  LOADN R7 1
  JUMPIFNOTLT R7 R6 [+6]
  GETGLOBAL R7 K7 ["returnInvalidArgumentError"]
  LOADK R8 K8 ["Too many parameters provided for oneOf object!"]
  CALL R7 1 -1
  RETURN R7 -1
  FORGLOOP R1 2 [-36]
  LOADNIL R1
  RETURN R1 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsStudio"]
  CALL R0 1 1
  JUMPIFNOT R0 [+2]
  LOADK R0 K1 ["user"]
  RETURN R0 1
  LOADK R0 K2 ["rcc"]
  RETURN R0 1

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["BaseUrl"]
  NAMECALL R2 R2 K1 ["lower"]
  CALL R2 1 1
  GETIMPORT R3 K4 [string.gsub]
  MOVE R4 R2
  LOADK R5 K5 ["http:"]
  LOADK R6 K6 ["https:"]
  CALL R3 3 1
  MOVE R2 R3
  GETIMPORT R3 K4 [string.gsub]
  MOVE R4 R2
  LOADK R5 K7 ["www"]
  LOADK R6 K8 ["apis"]
  CALL R3 3 1
  GETIMPORT R4 K10 [string.format]
  LOADK R5 K11 ["%s%s/cloud/v2/users/%d/notifications"]
  MOVE R6 R3
  GETGLOBAL R7 K12 ["getUrlPrefix"]
  CALL R7 0 1
  MOVE R8 R0
  CALL R4 4 1
  RETURN R4 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["user"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K1 ["verifyNumber"]
  GETTABLEKS R2 R0 K0 ["user"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETTABLEKS R1 R0 K2 ["userNotification"]
  JUMPIFEQKNIL R1 [+9]
  GETGLOBAL R1 K3 ["verifyUserNotification"]
  GETTABLEKS R2 R0 K2 ["userNotification"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+2]
  RETURN R1 1
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K2 ["userNotification"]
  NAMECALL R1 R1 K4 ["JSONEncode"]
  CALL R1 2 1
  GETUPVAL R2 1
  NEWTABLE R4 4 0
  GETGLOBAL R5 K5 ["createUserNotificationUrl"]
  GETTABLEKS R6 R0 K0 ["user"]
  GETTABLEKS R7 R0 K2 ["userNotification"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Url"]
  LOADK R5 K7 ["POST"]
  SETTABLEKS R5 R4 K8 ["Request_Type"]
  SETTABLEKS R1 R4 K9 ["Body"]
  NAMECALL R2 R2 K10 ["HttpRequestAsync"]
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
  LOADK R5 K6 ["RunService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  DUPCLOSURE R4 K7 [PROTO_0]
  CAPTURE VAL R1
  SETGLOBAL R4 K8 ["returnInvalidArgumentError"]
  DUPCLOSURE R4 K9 [PROTO_1]
  SETGLOBAL R4 K10 ["verifyUserNotification"]
  DUPCLOSURE R4 K11 [PROTO_2]
  SETGLOBAL R4 K12 ["verifySource"]
  DUPCLOSURE R4 K13 [PROTO_3]
  SETGLOBAL R4 K14 ["verifyPayload"]
  DUPCLOSURE R4 K15 [PROTO_4]
  SETGLOBAL R4 K16 ["verifyJoinExperience"]
  DUPCLOSURE R4 K17 [PROTO_5]
  SETGLOBAL R4 K18 ["verifyAnalyticsData"]
  DUPCLOSURE R4 K19 [PROTO_6]
  SETGLOBAL R4 K20 ["verifyParameters"]
  DUPCLOSURE R4 K21 [PROTO_7]
  SETGLOBAL R4 K22 ["verifyNumber"]
  DUPCLOSURE R4 K23 [PROTO_8]
  SETGLOBAL R4 K24 ["verifyString"]
  DUPCLOSURE R4 K25 [PROTO_9]
  CAPTURE VAL R3
  SETGLOBAL R4 K26 ["getUrlPrefix"]
  DUPCLOSURE R4 K27 [PROTO_10]
  CAPTURE VAL R0
  SETGLOBAL R4 K28 ["createUserNotificationUrl"]
  DUPCLOSURE R4 K29 [PROTO_11]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETGLOBAL R4 K30 ["userNotification"]
  LOADK R6 K31 ["v2"]
  LOADK R7 K30 ["userNotification"]
  GETGLOBAL R8 K30 ["userNotification"]
  NAMECALL R4 R2 K32 ["RegisterOpenCloud"]
  CALL R4 4 0
  NAMECALL R4 R2 K33 ["RegistrationComplete"]
  CALL R4 1 0
  RETURN R0 0
