MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["LoggingProtocol"]
  CALL R1 1 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K9 ["AvatarChatHeartbeatStatsEventThrottleHundrethsPercent"]
  LOADN R5 0
  NAMECALL R2 R2 K10 ["DefineFastInt"]
  CALL R2 3 0
  DUPTABLE R2 K17 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R3 K18 ["avatarChatHeartbeatStats"]
  SETTABLEKS R3 R2 K11 ["eventName"]
  NEWTABLE R3 0 1
  GETTABLEKS R5 R1 K19 ["TelemetryBackends"]
  GETTABLEKS R4 R5 K20 ["Points"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K12 ["backends"]
  GETIMPORT R3 K1 [game]
  LOADK R5 K9 ["AvatarChatHeartbeatStatsEventThrottleHundrethsPercent"]
  NAMECALL R3 R3 K21 ["GetFastInt"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K13 ["throttlingPercentage"]
  NEWTABLE R3 0 3
  LOADN R4 23
  LOADN R5 3
  LOADN R6 15
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K14 ["lastUpdated"]
  LOADK R3 K22 ["Report Avatar Chat session heartbeat to EventIngest."]
  SETTABLEKS R3 R2 K15 ["description"]
  LOADK R3 K23 ["https://roblox.atlassian.net/wiki/spaces/DA/pages/2025358355/Logging+Specs+Avatar+Chat+Heartbeat+Stats"]
  SETTABLEKS R3 R2 K16 ["links"]
  RETURN R2 1
